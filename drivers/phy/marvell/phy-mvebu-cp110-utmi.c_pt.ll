; ModuleID = '/llk/IR_all_yes/drivers/phy/marvell/phy-mvebu-cp110-utmi.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-mvebu-cp110-utmi.c"
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
%struct.mvebu_cp110_utmi = type { ptr, ptr, ptr, ptr }
%struct.mvebu_cp110_utmi_port = type { ptr, i32, i32 }

@__initcall__kmod_phy_mvebu_cp110_utmi__293_380_mvebu_cp110_utmi_driver_init6 = internal global ptr @mvebu_cp110_utmi_driver_init, section ".initcall6.init", align 4
@mvebu_cp110_utmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_cp110_utmi_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_cp110_utmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mvebu_cp110_utmi_driver_exit = internal global ptr @mvebu_cp110_utmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [70 x i8] c"phy_mvebu_cp110_utmi.author=Konstatin Porotchkin <kostap@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [70 x i8] c"phy_mvebu_cp110_utmi.description=Marvell Armada CP110 UTMI PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [67 x i8] c"phy_mvebu_cp110_utmi.file=drivers/phy/marvell/phy-mvebu-cp110-utmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [36 x i8] c"phy_mvebu_cp110_utmi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvebu-cp110-utmi-phy\00", [43 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,cp110-utmi-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,system-controller\00", [38 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Missing UTMI system controller\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mvebu_cp110_utmi_phy_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/phy/marvell/phy-mvebu-cp110-utmi.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry_ptr = internal global ptr @mvebu_cp110_utmi_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid 'reg' property on child %pOF\0A\00", [58 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry_ptr.10 = internal global ptr @mvebu_cp110_utmi_phy_probe._entry.8, section ".printk_index", align 4
@mvebu_cp110_utmi_phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 334, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Missing dual role setting of the port%d, will use HOST mode\0A\00", [35 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry_ptr.13 = internal global ptr @mvebu_cp110_utmi_phy_probe._entry.11, section ".printk_index", align 4
@mvebu_cp110_utmi_phy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Single USB device allowed! Port%d will use HOST mode\0A\00", [42 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry_ptr.16 = internal global ptr @mvebu_cp110_utmi_phy_probe._entry.14, section ".printk_index", align 4
@mvebu_cp110_utmi_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @mvebu_cp110_utmi_phy_power_on, ptr @mvebu_cp110_utmi_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create the UTMI PHY\0A\00", [33 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_probe._entry_ptr.19 = internal global ptr @mvebu_cp110_utmi_phy_probe._entry.17, section ".printk_index", align 4
@mvebu_cp110_utmi_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UTMI power OFF before power ON failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mvebu_cp110_utmi_phy_power_on\00", [34 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_power_on._entry_ptr = internal global ptr @mvebu_cp110_utmi_phy_power_on._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mvebu_cp110_utmi_phy_power_on._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to end UTMI impedance calibration\0A\00", [54 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_power_on._entry_ptr.24 = internal global ptr @mvebu_cp110_utmi_phy_power_on._entry.22, section ".printk_index", align 4
@mvebu_cp110_utmi_phy_power_on._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to end UTMI PLL calibration\0A\00", [60 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_power_on._entry_ptr.27 = internal global ptr @mvebu_cp110_utmi_phy_power_on._entry.25, section ".printk_index", align 4
@mvebu_cp110_utmi_phy_power_on._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PLL is not ready\0A\00", [46 x i8] zeroinitializer }, align 32
@mvebu_cp110_utmi_phy_power_on._entry_ptr.30 = internal global ptr @mvebu_cp110_utmi_phy_power_on._entry.28, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"mvebu_cp110_utmi_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 373, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 376, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"mvebu_cp110_utmi_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 276, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 298, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 300, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 315, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 317, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 332, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 341, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"mvebu_cp110_utmi_phy_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 270, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 354, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 200, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 242, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 251, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [46 x i8] c"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 260, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_mvebu_cp110_utmi_driver_exit, ptr @__initcall__kmod_phy_mvebu_cp110_utmi__293_380_mvebu_cp110_utmi_driver_init6, ptr @mvebu_cp110_utmi_driver_exit, ptr @mvebu_cp110_utmi_phy_power_on._entry, ptr @mvebu_cp110_utmi_phy_power_on._entry.22, ptr @mvebu_cp110_utmi_phy_power_on._entry.25, ptr @mvebu_cp110_utmi_phy_power_on._entry.28, ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr, ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr.24, ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr.27, ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr.30, ptr @mvebu_cp110_utmi_phy_probe._entry, ptr @mvebu_cp110_utmi_phy_probe._entry.11, ptr @mvebu_cp110_utmi_phy_probe._entry.14, ptr @mvebu_cp110_utmi_phy_probe._entry.17, ptr @mvebu_cp110_utmi_phy_probe._entry.8, ptr @mvebu_cp110_utmi_phy_probe._entry_ptr, ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.10, ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.13, ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.16, ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.19, ptr @mvebu_cp110_utmi_driver, ptr @.str, ptr @mvebu_cp110_utmi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @mvebu_cp110_utmi_phy_ops, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_power_on._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_power_on._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_cp110_utmi_phy_power_on._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_cp110_utmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_cp110_utmi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_cp110_utmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_cp110_utmi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_cp110_utmi_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %port_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup71_crit_edge, label %if.end

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup71

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.mvebu_cp110_utmi, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %syscon = getelementptr inbounds %struct.mvebu_cp110_utmi, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %syscon, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %4 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscon, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup71

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %call.i, align 4
  %cmp.i121 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call10 to i32
  br label %cleanup71

if.end16:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call18 = tail call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef null) #6
  %cmp.not130 = icmp eq ptr %call18, null
  br i1 %cmp.not130, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %ops = getelementptr inbounds %struct.mvebu_cp110_utmi, ptr %call.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %usb_devices.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %usb_devices.2, %for.inc.for.body_crit_edge ]
  %child.0131 = phi ptr [ %call18, %for.body.lr.ph ], [ %call68, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_id) #6
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %port_id, align 4, !annotation !72
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0131, ptr noundef nonnull @.str.7, ptr noundef nonnull %port_id, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp20 = icmp slt i32 %call.i.i, 0
  br i1 %cmp20, label %for.body.do.end25_crit_edge, label %lor.lhs.false

for.body.do.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

lor.lhs.false:                                    ; preds = %for.body
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp ugt i32 %13, 1
  br i1 %cmp21, label %lor.lhs.false.do.end25_crit_edge, label %if.end26

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %for.body.do.end25_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %child.0131) #9
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false
  %call.i122 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool28.not = icmp eq ptr %call.i122, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child.0131) #6
  br label %cleanup.thread

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @of_usb_get_dr_mode_by_phy(ptr noundef nonnull %child.0131, i32 noundef -1) #6
  %dr_mode = getelementptr inbounds %struct.mvebu_cp110_utmi_port, ptr %call.i122, i32 0, i32 2
  %14 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call31, ptr %dr_mode, align 4
  %call31.off = add i32 %call31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call31.off)
  %switch = icmp ult i32 %call31.off, 2
  br i1 %switch, label %if.end42, label %if.end42.thread

if.end42.thread:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %16) #9
  br label %if.end53.sink.split

if.end42:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call31)
  %cmp44 = icmp eq i32 %call31, 2
  br i1 %cmp44, label %if.then45, label %if.end42.if.end53_crit_edge

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then45:                                        ; preds = %if.end42
  %inc = add i32 %usb_devices.0134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp46 = icmp ugt i32 %inc, 1
  br i1 %cmp46, label %do.end50, label %if.then45.if.end53_crit_edge

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end50:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %18) #9
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %do.end50, %if.end42.thread
  %usb_devices.1.ph = phi i32 [ %usb_devices.0134, %if.end42.thread ], [ %inc, %do.end50 ]
  %19 = ptrtoint ptr %dr_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %dr_mode, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.then45.if.end53_crit_edge, %if.end42.if.end53_crit_edge
  %usb_devices.1 = phi i32 [ %inc, %if.then45.if.end53_crit_edge ], [ %usb_devices.0134, %if.end42.if.end53_crit_edge ], [ %usb_devices.1.ph, %if.end53.sink.split ]
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mvebu_cp110_utmi_phy_ops, ptr %ops, align 4
  %call55 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child.0131, ptr noundef nonnull @mvebu_cp110_utmi_phy_ops) #6
  %cmp.i123 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  call void @of_node_put(ptr noundef nonnull %child.0131) #6
  %21 = ptrtoint ptr %call55 to i32
  br label %cleanup.thread

if.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call.i122 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %call.i122, align 4
  %23 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_id, align 4
  %id = getelementptr inbounds %struct.mvebu_cp110_utmi_port, ptr %call.i122, i32 0, i32 1
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %id, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call55, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i122, ptr %driver_data.i.i, align 4
  %call63 = call i32 @mvebu_cp110_utmi_phy_power_off(ptr noundef %call55)
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end60, %if.then29
  %retval.1.ph = phi i32 [ -12, %if.then29 ], [ %21, %do.end60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_id) #6
  br label %cleanup71

for.inc:                                          ; preds = %if.end62, %do.end25
  %usb_devices.2 = phi i32 [ %usb_devices.0134, %do.end25 ], [ %usb_devices.1, %if.end62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_id) #6
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call68 = call ptr @of_get_next_available_child(ptr noundef %28, ptr noundef nonnull %child.0131) #6
  %cmp.not = icmp eq ptr %call68, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call69 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %call69 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %30, i32 0
  br label %cleanup71

cleanup71:                                        ; preds = %for.end, %cleanup.thread, %if.then13, %do.end, %entry.cleanup71_crit_edge
  %retval.2 = phi i32 [ %6, %do.end ], [ %8, %if.then13 ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup71_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_dr_mode_by_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_cp110_utmi_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
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
  %syscon = getelementptr inbounds %struct.mvebu_cp110_utmi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscon, align 4
  %id = getelementptr inbounds %struct.mvebu_cp110_utmi_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %mul = shl i32 %7, 2
  %add = add i32 %mul, 1088
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syscon, align 4
  %call5 = tail call i32 @regmap_test_bits(ptr noundef %9, i32 noundef 1088, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %for.cond, label %entry.cleanup9_crit_edge

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

for.cond:                                         ; preds = %entry
  %10 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syscon, align 4
  %call5.1 = tail call i32 @regmap_test_bits(ptr noundef %11, i32 noundef 1092, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %cmp6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %cmp6.not.1, label %for.cond.1, label %for.cond.cleanup9_crit_edge

for.cond.cleanup9_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %syscon, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 1056, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup9

cleanup9:                                         ; preds = %for.cond.1, %for.cond.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_cp110_utmi_phy_power_on(ptr noundef %phy) #2 align 64 {
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
  %call2 = tail call i32 @mvebu_cp110_utmi_phy_power_off(ptr noundef %phy)
  %dr_mode = getelementptr inbounds %struct.mvebu_cp110_utmi_port, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dr_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then3, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %syscon = getelementptr inbounds %struct.mvebu_cp110_utmi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscon, align 4
  %id = getelementptr inbounds %struct.mvebu_cp110_utmi_port, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %shl = shl i32 %9, 1
  %or = or i32 %shl, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1056, i32 noundef 3, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %id7 = getelementptr inbounds %struct.mvebu_cp110_utmi_port, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id7, align 4
  %mul = shl i32 %15, 12
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %17 = or i32 %16, 16386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id7, align 4
  %mul18 = shl i32 %23, 12
  %add.ptr19 = getelementptr i8, ptr %21, i32 %mul18
  %add.ptr20 = getelementptr i8, ptr %add.ptr19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %17) #6, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id7, align 4
  %mul.i = shl i32 %30, 12
  %add.ptr.i = getelementptr i8, ptr %28, i32 %mul.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %32 = and i32 %31, -2130771762
  %33 = or i32 %32, 83910656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id7, align 4
  %mul6.i = shl i32 %39, 12
  %add.ptr7.i = getelementptr i8, ptr %37, i32 %mul6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %33) #6, !srcloc !76
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id7, align 4
  %mul14.i = shl i32 %45, 12
  %add.ptr15.i = getelementptr i8, ptr %43, i32 %mul14.i
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %47 = or i32 %46, 458752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id7, align 4
  %mul28.i = shl i32 %53, 12
  %add.ptr29.i = getelementptr i8, ptr %51, i32 %mul28.i
  %add.ptr30.i = getelementptr i8, ptr %add.ptr29.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %47) #6, !srcloc !76
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id7, align 4
  %mul36.i = shl i32 %59, 12
  %add.ptr37.i = getelementptr i8, ptr %57, i32 %mul36.i
  %add.ptr38.i = getelementptr i8, ptr %add.ptr37.i, i32 12
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %61 = and i32 %60, -28673
  %62 = or i32 %61, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id7, align 4
  %mul50.i = shl i32 %68, 12
  %add.ptr51.i = getelementptr i8, ptr %66, i32 %mul50.i
  %add.ptr52.i = getelementptr i8, ptr %add.ptr51.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %62) #6, !srcloc !76
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id7, align 4
  %mul58.i = shl i32 %74, 12
  %add.ptr59.i = getelementptr i8, ptr %72, i32 %mul58.i
  %add.ptr60.i = getelementptr i8, ptr %add.ptr59.i, i32 20
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %76 = and i32 %75, -8388625
  %77 = or i32 %76, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id7, align 4
  %mul72.i = shl i32 %83, 12
  %add.ptr73.i = getelementptr i8, ptr %81, i32 %mul72.i
  %add.ptr74.i = getelementptr i8, ptr %add.ptr73.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %77) #6, !srcloc !76
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id7, align 4
  %mul80.i = shl i32 %89, 12
  %add.ptr81.i = getelementptr i8, ptr %87, i32 %mul80.i
  %add.ptr82.i = getelementptr i8, ptr %add.ptr81.i, i32 24
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %91 = and i32 %90, -251658241
  %92 = or i32 %91, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %97 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id7, align 4
  %mul94.i = shl i32 %98, 12
  %add.ptr95.i = getelementptr i8, ptr %96, i32 %mul94.i
  %add.ptr96.i = getelementptr i8, ptr %add.ptr95.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96.i, i32 %92) #6, !srcloc !76
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %103 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %id7, align 4
  %mul102.i = shl i32 %104, 12
  %add.ptr103.i = getelementptr i8, ptr %102, i32 %mul102.i
  %add.ptr104.i = getelementptr i8, ptr %add.ptr103.i, i32 56
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %106 = and i32 %105, -983041
  %107 = or i32 %106, 327680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id7, align 4
  %mul116.i = shl i32 %113, 12
  %add.ptr117.i = getelementptr i8, ptr %111, i32 %mul116.i
  %add.ptr118.i = getelementptr i8, ptr %add.ptr117.i, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118.i, i32 %107) #6, !srcloc !76
  %syscon21 = getelementptr inbounds %struct.mvebu_cp110_utmi, ptr %3, i32 0, i32 1
  %114 = ptrtoint ptr %syscon21 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %syscon21, align 4
  %116 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %id7, align 4
  %mul23 = shl i32 %117, 2
  %add = add i32 %mul23, 1088
  %call.i303 = tail call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef %add, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %122 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %id7, align 4
  %mul30 = shl i32 %123, 12
  %add.ptr31 = getelementptr i8, ptr %121, i32 %mul30
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 36
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %125 = and i32 %124, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %130 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %id7, align 4
  %mul42 = shl i32 %131, 12
  %add.ptr43 = getelementptr i8, ptr %129, i32 %mul42
  %add.ptr44 = getelementptr i8, ptr %add.ptr43, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %125) #6, !srcloc !76
  %call45 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call45, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 240) #6
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %id7, align 4
  %mul64323 = shl i32 %137, 12
  %add.ptr65324 = getelementptr i8, ptr %135, i32 %mul64323
  %add.ptr66325 = getelementptr i8, ptr %add.ptr65324, i32 8
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66325) #6, !srcloc !73
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %and70326 = and i32 %139, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70326)
  %tobool71.not327 = icmp eq i32 %and70326, 0
  br i1 %tobool71.not327, label %if.end5.land.lhs.true_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then92.land.lhs.true_crit_edge, %if.end5.land.lhs.true_crit_edge
  %call75 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call75, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call75, %add.i
  br i1 %cmp3.i, label %if.then78, label %if.then92

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %id7, align 4
  %mul84 = shl i32 %145, 12
  %add.ptr85 = getelementptr i8, ptr %143, i32 %mul84
  %add.ptr86 = getelementptr i8, ptr %add.ptr85, i32 8
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #6, !srcloc !73
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  br label %for.end

if.then92:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %152 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %id7, align 4
  %mul64 = shl i32 %153, 12
  %add.ptr65 = getelementptr i8, ptr %151, i32 8
  %add.ptr66 = getelementptr i8, ptr %add.ptr65, i32 %mul64
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #6, !srcloc !73
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %and70 = and i32 %155, 8388608
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then92.land.lhs.true_crit_edge, label %if.then92.for.end_crit_edge

if.then92.for.end_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then92.land.lhs.true_crit_edge:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then92.for.end_crit_edge, %if.then78, %if.end5.for.end_crit_edge
  %reg.0 = phi i32 [ %147, %if.then78 ], [ %139, %if.end5.for.end_crit_edge ], [ %155, %if.then92.for.end_crit_edge ]
  %and96 = and i32 %reg.0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.end102, label %if.end103

do.end102:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end103:                                        ; preds = %for.end
  %call107 = tail call i64 @ktime_get() #6
  %add.i304 = add i64 %call107, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 249) #6
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %160 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %id7, align 4
  %mul127328 = shl i32 %161, 12
  %add.ptr128329 = getelementptr i8, ptr %159, i32 %mul127328
  %add.ptr129330 = getelementptr i8, ptr %add.ptr128329, i32 8
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129330) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %.mask331 = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask331)
  %tobool134.not332 = icmp eq i32 %.mask331, 0
  br i1 %tobool134.not332, label %if.end103.land.lhs.true138_crit_edge, label %if.end103.if.end170_crit_edge

if.end103.if.end170_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.end103.land.lhs.true138_crit_edge:             ; preds = %if.end103
  br label %land.lhs.true138

land.lhs.true138:                                 ; preds = %if.then156.land.lhs.true138_crit_edge, %if.end103.land.lhs.true138_crit_edge
  %call139 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call139, i64 %add.i304)
  %cmp3.i306 = icmp sgt i64 %call139, %add.i304
  br i1 %cmp3.i306, label %for.end160, label %if.then156

if.then156:                                       ; preds = %land.lhs.true138
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %167 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %id7, align 4
  %mul127 = shl i32 %168, 12
  %add.ptr128 = getelementptr i8, ptr %166, i32 8
  %add.ptr129 = getelementptr i8, ptr %add.ptr128, i32 %mul127
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %.mask = and i32 %169, 128
  %tobool134.not = icmp eq i32 %.mask, 0
  br i1 %tobool134.not, label %if.then156.land.lhs.true138_crit_edge, label %if.then156.if.end170_crit_edge

if.then156.if.end170_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then156.land.lhs.true138_crit_edge:            ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true138

for.end160:                                       ; preds = %land.lhs.true138
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %174 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %id7, align 4
  %mul148 = shl i32 %175, 12
  %add.ptr149 = getelementptr i8, ptr %173, i32 %mul148
  %add.ptr150 = getelementptr i8, ptr %add.ptr149, i32 8
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %.mask321 = and i32 %176, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask321)
  %tobool163.not.inv.not = icmp eq i32 %.mask321, 0
  br i1 %tobool163.not.inv.not, label %do.end169, label %for.end160.if.end170_crit_edge

for.end160.if.end170_crit_edge:                   ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

do.end169:                                        ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end170:                                        ; preds = %for.end160.if.end170_crit_edge, %if.then156.if.end170_crit_edge, %if.end103.if.end170_crit_edge
  %call174 = tail call i64 @ktime_get() #6
  %add.i309 = add i64 %call174, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 258) #6
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %181 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %id7, align 4
  %mul194333 = shl i32 %182, 12
  %add.ptr195334 = getelementptr i8, ptr %180, i32 %mul194333
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195334) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %.mask319335 = and i32 %183, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask319335)
  %tobool201.not336 = icmp eq i32 %.mask319335, 0
  br i1 %tobool201.not336, label %if.end170.land.lhs.true205_crit_edge, label %if.end170.if.end237_crit_edge

if.end170.if.end237_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237

if.end170.land.lhs.true205_crit_edge:             ; preds = %if.end170
  br label %land.lhs.true205

land.lhs.true205:                                 ; preds = %if.then223.land.lhs.true205_crit_edge, %if.end170.land.lhs.true205_crit_edge
  %call206 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call206, i64 %add.i309)
  %cmp3.i311 = icmp sgt i64 %call206, %add.i309
  br i1 %cmp3.i311, label %for.end227, label %if.then223

if.then223:                                       ; preds = %land.lhs.true205
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %188 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %id7, align 4
  %mul194 = shl i32 %189, 12
  %add.ptr195 = getelementptr i8, ptr %187, i32 %mul194
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %.mask319 = and i32 %190, 128
  %tobool201.not = icmp eq i32 %.mask319, 0
  br i1 %tobool201.not, label %if.then223.land.lhs.true205_crit_edge, label %if.then223.if.end237_crit_edge

if.then223.if.end237_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237

if.then223.land.lhs.true205_crit_edge:            ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true205

for.end227:                                       ; preds = %land.lhs.true205
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %195 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %id7, align 4
  %mul215 = shl i32 %196, 12
  %add.ptr216 = getelementptr i8, ptr %194, i32 %mul215
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr216) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %.mask320 = and i32 %197, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask320)
  %tobool230.not.inv.not = icmp eq i32 %.mask320, 0
  br i1 %tobool230.not.inv.not, label %do.end236, label %for.end227.if.end237_crit_edge

for.end227.if.end237_crit_edge:                   ; preds = %for.end227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237

do.end236:                                        ; preds = %for.end227
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end237:                                        ; preds = %for.end227.if.end237_crit_edge, %if.then223.if.end237_crit_edge, %if.end170.if.end237_crit_edge
  %198 = ptrtoint ptr %syscon21 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %syscon21, align 4
  %call.i314 = tail call i32 @regmap_update_bits_base(ptr noundef %199, i32 noundef 1056, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end237, %do.end236, %do.end169, %do.end102
  %retval.0 = phi i32 [ -110, %do.end102 ], [ -110, %do.end169 ], [ -110, %do.end236 ], [ 0, %if.end237 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_test_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_phy_mvebu_cp110_utmi__293_380_mvebu_cp110_utmi_driver_init6, !1, !"__initcall__kmod_phy_mvebu_cp110_utmi__293_380_mvebu_cp110_utmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 380, i32 1}
!2 = !{ptr @__exitcall_mvebu_cp110_utmi_driver_exit, !1, !"__exitcall_mvebu_cp110_utmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 382, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 383, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 384, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 376, i32 12}
!12 = !{ptr @mvebu_cp110_utmi_driver, !13, !"mvebu_cp110_utmi_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 373, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 298, i32 14}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 300, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mvebu_cp110_utmi_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mvebu_cp110_utmi_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 315, i32 37}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 317, i32 4}
!28 = !{ptr @mvebu_cp110_utmi_phy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 332, i32 4}
!32 = !{ptr @mvebu_cp110_utmi_phy_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 341, i32 5}
!36 = !{ptr @mvebu_cp110_utmi_phy_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 354, i32 4}
!40 = !{ptr @mvebu_cp110_utmi_phy_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mvebu_cp110_utmi_phy_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @mvebu_cp110_utmi_phy_ops, !43, !"mvebu_cp110_utmi_phy_ops", i1 false, i1 false}
!43 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 270, i32 29}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 200, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 242, i32 3}
!51 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 251, i32 3}
!55 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 260, i32 3}
!59 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mvebu_cp110_utmi_phy_power_on._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mvebu_cp110_utmi_of_match, !62, !"mvebu_cp110_utmi_of_match", i1 false, i1 false}
!62 = !{!"../drivers/phy/marvell/phy-mvebu-cp110-utmi.c", i32 276, i32 34}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{i64 694496}
!74 = !{i64 2155335216}
!75 = !{i64 2155335686}
!76 = !{i64 694078}
!77 = !{i64 2155320012}
!78 = !{i64 2155322384}
!79 = !{i64 2155323271}
!80 = !{i64 2155324260}
!81 = !{i64 2155325147}
!82 = !{i64 2155326146}
!83 = !{i64 2155327038}
!84 = !{i64 2155327508}
!85 = !{i64 2155328401}
!86 = !{i64 2155329463}
!87 = !{i64 2155330356}
!88 = !{i64 2155332033}
!89 = !{i64 2155337977}
!90 = !{i64 2155338363}
!91 = !{i64 2155340681}
!92 = !{i64 2155341307}
!93 = !{i64 2155345176}
!94 = !{i64 2155345802}
!95 = !{i64 2155349617}
!96 = !{i64 2155350243}
