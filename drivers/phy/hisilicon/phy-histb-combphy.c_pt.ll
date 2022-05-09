; ModuleID = '/llk/IR_all_yes/drivers/phy/hisilicon/phy-histb-combphy.c_pt.bc'
source_filename = "../drivers/phy/hisilicon/phy-histb-combphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.histb_combphy_priv = type { ptr, ptr, ptr, ptr, ptr, %struct.histb_combphy_mode }
%struct.histb_combphy_mode = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_histb_combphy__291_281_histb_combphy_driver_init6 = internal global ptr @histb_combphy_driver_init, section ".initcall6.init", align 4
@histb_combphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @histb_combphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @histb_combphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_histb_combphy_driver_exit = internal global ptr @histb_combphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description292 = internal constant [59 x i8] c"phy_histb_combphy.description=HiSilicon STB COMBPHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [63 x i8] c"phy_histb_combphy.file=drivers/phy/hisilicon/phy-histb-combphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [33 x i8] c"phy_histb_combphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"combphy\00", [24 x i8] zeroinitializer }, align 32
@histb_combphy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-combphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to find peri_ctrl syscon regmap\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"histb_combphy_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/hisilicon/phy-histb-combphy.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry_ptr = internal global ptr @histb_combphy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisilicon,fixed-mode\00", [43 x i8] zeroinitializer }, align 32
@histb_combphy_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_histb_combphy\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"found fixed phy mode %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hisilicon,mode-select-bits\00", [37 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"found select bits for fixed mode phy\0A\00", [58 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry_ptr.12 = internal global ptr @histb_combphy_probe._entry.10, section ".printk_index", align 4
@histb_combphy_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"found mode select bits\0A\00", [40 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no valid select bits found for non-fixed phy\0A\00", [50 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry_ptr.16 = internal global ptr @histb_combphy_probe._entry.14, section ".printk_index", align 4
@histb_combphy_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find ref clock\0A\00", [38 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry_ptr.19 = internal global ptr @histb_combphy_probe._entry.17, section ".printk_index", align 4
@histb_combphy_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get poweron reset\0A\00", [35 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry_ptr.22 = internal global ptr @histb_combphy_probe._entry.20, section ".printk_index", align 4
@histb_combphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @histb_combphy_init, ptr @histb_combphy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to create combphy\0A\00", [38 x i8] zeroinitializer }, align 32
@histb_combphy_probe._entry_ptr.25 = internal global ptr @histb_combphy_probe._entry.23, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@histb_combphy_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid number of arguments\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"histb_combphy_xlate\00", [44 x i8] zeroinitializer }, align 32
@histb_combphy_xlate._entry_ptr = internal global ptr @histb_combphy_xlate._entry, section ".printk_index", align 4
@histb_combphy_xlate._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid phy mode select argument\0A\00", [62 x i8] zeroinitializer }, align 32
@histb_combphy_xlate._entry_ptr.30 = internal global ptr @histb_combphy_xlate._entry.28, section ".printk_index", align 4
@histb_combphy_xlate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mode select %d mismatch fixed phy mode %d\0A\00", [53 x i8] zeroinitializer }, align 32
@histb_combphy_xlate._entry_ptr.33 = internal global ptr @histb_combphy_xlate._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"histb_combphy_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 274, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 277, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"histb_combphy_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 268, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 213, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 220, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 222, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 224, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 228, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 235, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 238, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 245, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 251, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"histb_combphy_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 158, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 257, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 171, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 178, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [45 x i8] c"../drivers/phy/hisilicon/phy-histb-combphy.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 183, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_histb_combphy_driver_exit, ptr @__initcall__kmod_phy_histb_combphy__291_281_histb_combphy_driver_init6, ptr @histb_combphy_driver_exit, ptr @histb_combphy_probe._entry, ptr @histb_combphy_probe._entry.10, ptr @histb_combphy_probe._entry.14, ptr @histb_combphy_probe._entry.17, ptr @histb_combphy_probe._entry.20, ptr @histb_combphy_probe._entry.23, ptr @histb_combphy_probe._entry_ptr, ptr @histb_combphy_probe._entry_ptr.12, ptr @histb_combphy_probe._entry_ptr.16, ptr @histb_combphy_probe._entry_ptr.19, ptr @histb_combphy_probe._entry_ptr.22, ptr @histb_combphy_probe._entry_ptr.25, ptr @histb_combphy_xlate._entry, ptr @histb_combphy_xlate._entry.28, ptr @histb_combphy_xlate._entry.31, ptr @histb_combphy_xlate._entry_ptr, ptr @histb_combphy_xlate._entry_ptr.30, ptr @histb_combphy_xlate._entry_ptr.33, ptr @histb_combphy_driver, ptr @.str, ptr @histb_combphy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @histb_combphy_ops, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_xlate._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_combphy_xlate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_combphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @histb_combphy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @histb_combphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @histb_combphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_combphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %vals = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %vals) #6
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vals, align 4, !annotation !77
  %3 = getelementptr inbounds [3 x i32], ptr %vals, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !77
  %5 = getelementptr inbounds [3 x i32], ptr %vals, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !77
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %call9 = tail call ptr @syscon_node_to_regmap(ptr noundef %10) #6
  %syscon = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %syscon, align 4
  %cmp.i154 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %12 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %syscon, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %mode16 = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %mode16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mode16, align 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %mode16, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp = icmp sgt i32 %call.i.i, -1
  br i1 %cmp, label %do.body20, label %if.end15.if.end30_crit_edge

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.body20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @histb_combphy_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@histb_combphy_probe, %if.then25)) #6
          to label %if.end30 [label %if.then25], !srcloc !78

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @histb_combphy_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %17) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %do.body20, %if.end15.if.end30_crit_edge
  %call.i155 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %vals, i32 noundef 3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i155)
  %cmp32 = icmp sgt i32 %call.i155, -1
  %18 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i.not = icmp eq i32 %19, 0
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  br i1 %cmp.not.i.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vals, align 4
  %reg = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %reg, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %shift = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %shift, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 4
  %mask = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @histb_combphy_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@histb_combphy_probe, %if.then55)) #6
          to label %if.end66 [label %if.then55], !srcloc !78

if.then55:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @histb_combphy_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  br label %if.end66

if.else:                                          ; preds = %if.end30
  br i1 %cmp.not.i.not, label %do.end64, label %if.else.if.end66_crit_edge

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end66:                                         ; preds = %if.else.if.end66_crit_edge, %if.then55, %if.end40
  %call67 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %ref_clk = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call67, ptr %ref_clk, align 4
  %cmp.i158 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  %30 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ref_clk, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end76:                                         ; preds = %if.end66
  %call.i.i159 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %por_rst = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %por_rst to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i159, ptr %por_rst, align 4
  %cmp.i160 = icmp ugt ptr %call.i.i159, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %do.end83, label %if.end86

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  %34 = ptrtoint ptr %por_rst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %por_rst, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup

if.end86:                                         ; preds = %if.end76
  %call87 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @histb_combphy_ops) #6
  %phy = getelementptr inbounds %struct.histb_combphy_priv, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call87, ptr %phy, align 4
  %cmp.i161 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %do.end93, label %if.end96

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #9
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end96:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call87, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call98 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @histb_combphy_xlate) #6
  %cmp.i.i = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  %43 = ptrtoint ptr %call98 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %43, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end93, %do.end83, %do.end73, %do.end64, %do.end39, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then5 ], [ %14, %do.end ], [ -22, %do.end39 ], [ %32, %do.end73 ], [ %36, %do.end83 ], [ %40, %do.end93 ], [ %spec.select.i, %if.end96 ], [ -19, %do.end64 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %vals) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @histb_combphy_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode1 = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 5
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args3 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args3, align 4
  %select = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %select to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %select, align 4
  %7 = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %7)
  %8 = icmp ult i32 %7, -4
  br i1 %8, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %9 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %10)
  %cmp16.not = icmp eq i32 %5, %10
  %or.cond40 = select i1 %cmp.not.i.not, i1 true, i1 %cmp16.not
  br i1 %or.cond40, label %if.end24, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %5, i32 noundef %10) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %phy = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end20, %do.end11, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end11 ], [ inttoptr (i32 -22 to ptr), %do.end20 ], [ %12, %if.end24 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_combphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode1.i = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 5
  %syscon2.i = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %syscon2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %syscon2.i, align 4
  %4 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %select.i = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %select.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %select.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.i.cleanup_crit_edge [
    i32 1, label %if.end.i.histb_combphy_set_mode.exit_crit_edge
    i32 2, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

if.end.i.histb_combphy_set_mode.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %histb_combphy_set_mode.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %histb_combphy_set_mode.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %histb_combphy_set_mode.exit

histb_combphy_set_mode.exit:                      ; preds = %sw.bb4.i, %sw.bb3.i, %if.end.i.histb_combphy_set_mode.exit_crit_edge
  %hw_sel.0.i = phi i32 [ 1, %sw.bb4.i ], [ 0, %sw.bb3.i ], [ 2, %if.end.i.histb_combphy_set_mode.exit_crit_edge ]
  %reg.i = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %mask.i = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 5, i32 4
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %hw_sel.0.i, %14
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %10, i32 noundef %12, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %histb_combphy_set_mode.exit.if.end_crit_edge, label %histb_combphy_set_mode.exit.cleanup_crit_edge

histb_combphy_set_mode.exit.cleanup_crit_edge:    ; preds = %histb_combphy_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

histb_combphy_set_mode.exit.if.end_crit_edge:     ; preds = %histb_combphy_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %histb_combphy_set_mode.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %18 = and i32 %17, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !82
  %ref_clk = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i41, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i41:                                       ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  %por_rst = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %por_rst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %por_rst, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %24) #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %28 = or i32 %27, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %39 = and i32 %38, -15790337
  %40 = or i32 %39, 1081344
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %40) #6, !srcloc !82
  %and5.i = and i32 %41, -24240129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %42) #6, !srcloc !82
  %or9.i = or i32 %41, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %43) #6, !srcloc !82
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %47 = and i32 %46, -15790337
  %48 = or i32 %47, 12619776
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %48) #6, !srcloc !82
  %and5.i46 = and i32 %49, -23146497
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %and5.i46) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %50) #6, !srcloc !82
  %or9.i47 = or i32 %49, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %or9.i47) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %51) #6, !srcloc !82
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %55 = and i32 %54, -15790337
  %56 = or i32 %55, 10502400
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %56) #6, !srcloc !82
  %and5.i51 = and i32 %57, -28332033
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %and5.i51) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %58) #6, !srcloc !82
  %or9.i52 = or i32 %57, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %or9.i52) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %59) #6, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3.i, %if.end.cleanup_crit_edge, %histb_combphy_set_mode.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call.i.i, %histb_combphy_set_mode.exit.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_combphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !82
  %por_rst = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %por_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %por_rst, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %9) #6
  %ref_clk = getelementptr inbounds %struct.histb_combphy_priv, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_phy_histb_combphy__291_281_histb_combphy_driver_init6, !1, !"__initcall__kmod_phy_histb_combphy__291_281_histb_combphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_histb_combphy_driver_exit, !1, !"__exitcall_histb_combphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description292, !4, !"__UNIQUE_ID_description292", i1 false, i1 false}
!4 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 283, i32 1}
!5 = !{ptr @__UNIQUE_ID_file293, !6, !"__UNIQUE_ID_file293", i1 false, i1 false}
!6 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 284, i32 1}
!7 = !{ptr @__UNIQUE_ID_license294, !6, !"__UNIQUE_ID_license294", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 277, i32 11}
!10 = !{ptr @histb_combphy_driver, !11, !"histb_combphy_driver", i1 false, i1 false}
!11 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 274, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 213, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @histb_combphy_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @histb_combphy_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 220, i32 33}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 222, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @histb_combphy_probe.__UNIQUE_ID_ddebug289, !23, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 224, i32 39}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 228, i32 4}
!30 = !{ptr @histb_combphy_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @histb_combphy_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 235, i32 3}
!34 = !{ptr @histb_combphy_probe.__UNIQUE_ID_ddebug290, !33, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 238, i32 4}
!37 = !{ptr @histb_combphy_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @histb_combphy_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 245, i32 3}
!41 = !{ptr @histb_combphy_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @histb_combphy_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 251, i32 3}
!45 = !{ptr @histb_combphy_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @histb_combphy_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 257, i32 3}
!49 = !{ptr @histb_combphy_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @histb_combphy_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @histb_combphy_ops, !52, !"histb_combphy_ops", i1 false, i1 false}
!52 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 158, i32 29}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 171, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @histb_combphy_xlate._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @histb_combphy_xlate._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 178, i32 3}
!60 = !{ptr @histb_combphy_xlate._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @histb_combphy_xlate._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 183, i32 3}
!64 = !{ptr @histb_combphy_xlate._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @histb_combphy_xlate._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @histb_combphy_of_match, !67, !"histb_combphy_of_match", i1 false, i1 false}
!67 = !{!"../drivers/phy/hisilicon/phy-histb-combphy.c", i32 268, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148726812, i64 2148726817, i64 2148726830, i64 2148726874, i64 2148726908, i64 2148726929}
!79 = !{i64 3074820}
!80 = !{i64 2155213699}
!81 = !{i64 2155214000}
!82 = !{i64 3074402}
!83 = !{i64 2155214660}
!84 = !{i64 2155214959}
!85 = !{i64 2155210555}
!86 = !{i64 2155212145}
!87 = !{i64 2155212590}
!88 = !{i64 2155213035}
!89 = !{i64 2155216907}
!90 = !{i64 2155217206}
