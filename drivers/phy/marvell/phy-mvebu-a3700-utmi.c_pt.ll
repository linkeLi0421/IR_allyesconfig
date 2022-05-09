; ModuleID = '/llk/IR_all_yes/drivers/phy/marvell/phy-mvebu-a3700-utmi.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-mvebu-a3700-utmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mvebu_a3700_utmi_caps = type { i32, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mvebu_a3700_utmi = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_mvebu_a3700_utmi__289_265_mvebu_a3700_utmi_driver_init6 = internal global ptr @mvebu_a3700_utmi_driver_init, section ".initcall6.init", align 4
@mvebu_a3700_utmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvebu_a3700_utmi_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_a3700_utmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mvebu_a3700_utmi_driver_exit = internal global ptr @mvebu_a3700_utmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [62 x i8] c"phy_mvebu_a3700_utmi.author=Igal Liberman <igall@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [70 x i8] c"phy_mvebu_a3700_utmi.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [67 x i8] c"phy_mvebu_a3700_utmi.description=Marvell EBU A3700 UTMI PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [67 x i8] c"phy_mvebu_a3700_utmi.file=drivers/phy/marvell/phy-mvebu-a3700-utmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [36 x i8] c"phy_mvebu_a3700_utmi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvebu-a3700-utmi-phy\00", [43 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,a3700-utmi-otg-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mvebu_a3700_utmi_otg_phy_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,a3700-utmi-host-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mvebu_a3700_utmi_host_phy_caps }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,usb-misc-reg\00", [43 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Missing USB misc purpose system controller\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mvebu_a3700_utmi_phy_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/phy/marvell/phy-mvebu-a3700-utmi.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_probe._entry_ptr = internal global ptr @mvebu_a3700_utmi_phy_probe._entry, section ".printk_index", align 4
@mvebu_a3700_utmi_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create the UTMI PHY\0A\00", [33 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_probe._entry_ptr.9 = internal global ptr @mvebu_a3700_utmi_phy_probe._entry.7, section ".printk_index", align 4
@mvebu_a3700_utmi_otg_phy_caps = internal constant { %struct.mvebu_a3700_utmi_caps, [24 x i8] } { %struct.mvebu_a3700_utmi_caps { i32 1, ptr @mvebu_a3700_utmi_phy_ops }, [24 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_host_phy_caps = internal constant { %struct.mvebu_a3700_utmi_caps, [24 x i8] } { %struct.mvebu_a3700_utmi_caps { i32 0, ptr @mvebu_a3700_utmi_phy_ops }, [24 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @mvebu_a3700_utmi_phy_power_on, ptr @mvebu_a3700_utmi_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to end USB2 PLL calibration\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mvebu_a3700_utmi_phy_power_on\00", [34 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_power_on._entry_ptr = internal global ptr @mvebu_a3700_utmi_phy_power_on._entry, section ".printk_index", align 4
@mvebu_a3700_utmi_phy_power_on._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to end USB2 impedance calibration\0A\00", [54 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_power_on._entry_ptr.14 = internal global ptr @mvebu_a3700_utmi_phy_power_on._entry.12, section ".printk_index", align 4
@mvebu_a3700_utmi_phy_power_on._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to end USB2 unknown calibration\0A\00", [56 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_power_on._entry_ptr.17 = internal global ptr @mvebu_a3700_utmi_phy_power_on._entry.15, section ".printk_index", align 4
@mvebu_a3700_utmi_phy_power_on._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to lock USB2 PLL\0A\00", [39 x i8] zeroinitializer }, align 32
@mvebu_a3700_utmi_phy_power_on._entry_ptr.20 = internal global ptr @mvebu_a3700_utmi_phy_power_on._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"mvebu_a3700_utmi_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 258, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 261, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"mvebu_a3700_utmi_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 201, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 231, i32 9 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 233, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 244, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [30 x i8] c"mvebu_a3700_utmi_otg_phy_caps\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 191, i32 43 }
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"mvebu_a3700_utmi_host_phy_caps\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 196, i32 43 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"mvebu_a3700_utmi_phy_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 185, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 132, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 141, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 150, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [46 x i8] c"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 159, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mvebu_a3700_utmi_driver_exit, ptr @__initcall__kmod_phy_mvebu_a3700_utmi__289_265_mvebu_a3700_utmi_driver_init6, ptr @mvebu_a3700_utmi_driver_exit, ptr @mvebu_a3700_utmi_phy_power_on._entry, ptr @mvebu_a3700_utmi_phy_power_on._entry.12, ptr @mvebu_a3700_utmi_phy_power_on._entry.15, ptr @mvebu_a3700_utmi_phy_power_on._entry.18, ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr, ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr.14, ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr.17, ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr.20, ptr @mvebu_a3700_utmi_phy_probe._entry, ptr @mvebu_a3700_utmi_phy_probe._entry.7, ptr @mvebu_a3700_utmi_phy_probe._entry_ptr, ptr @mvebu_a3700_utmi_phy_probe._entry_ptr.9, ptr @mvebu_a3700_utmi_driver, ptr @.str, ptr @mvebu_a3700_utmi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mvebu_a3700_utmi_otg_phy_caps, ptr @mvebu_a3700_utmi_host_phy_caps, ptr @mvebu_a3700_utmi_phy_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_otg_phy_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_host_phy_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_phy_power_on._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_phy_power_on._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_a3700_utmi_phy_power_on._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_a3700_utmi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_a3700_utmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_a3700_utmi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %usb_misc = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %usb_misc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %usb_misc, align 4
  %cmp.i59 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %5 = ptrtoint ptr %usb_misc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_misc, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %caps = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %caps, align 4
  %ops = getelementptr inbounds %struct.mvebu_a3700_utmi_caps, ptr %call16, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %call18 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef %10) #5
  %phy = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %phy, align 4
  %cmp.i60 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call18, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps, align 4
  %ops30 = getelementptr inbounds %struct.mvebu_a3700_utmi_caps, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops30, align 4
  %power_off = getelementptr inbounds %struct.phy_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power_off, align 4
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %call32 = tail call i32 %21(ptr noundef %23) #5
  %call33 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %call33 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %24, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end24, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %7, %do.end ], [ %14, %do.end24 ], [ %spec.select.i, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_phy_power_on(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %9 = and i32 %8, -2130771762
  %10 = or i32 %9, 83910656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !67
  %usb_misc = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %usb_misc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_misc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 4, i32 32
  %or9 = select i1 %tobool.not, i32 129, i32 16385
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %cond, i32 noundef %or9, i32 noundef %or9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 52
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %18 = or i32 %17, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %18) #5, !srcloc !67
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr31 = getelementptr i8, ptr %22, i32 56
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %24 = and i32 %23, 1137704959
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr40 = getelementptr i8, ptr %26, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %24) #5, !srcloc !67
  %27 = ptrtoint ptr %usb_misc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_misc, align 4
  %call.i337 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 32, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call45 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call45, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 130) #5
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr61366 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61366) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %.mask367 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask367)
  %tobool66.not368 = icmp eq i32 %.mask367, 0
  br i1 %tobool66.not368, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end94_crit_edge

if.end.if.end94_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then83.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call70 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call70, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call70, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then83

if.then83:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #5
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr61 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %.mask = and i32 %34, 128
  %tobool66.not = icmp eq i32 %.mask, 0
  br i1 %tobool66.not, label %if.then83.land.lhs.true_crit_edge, label %if.then83.if.end94_crit_edge

if.then83.if.end94_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then83.land.lhs.true_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr77 = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %.mask364 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask364)
  %tobool87.not.inv.not = icmp eq i32 %.mask364, 0
  br i1 %tobool87.not.inv.not, label %for.end.cleanup.sink.split_crit_edge, label %for.end.if.end94_crit_edge

for.end.if.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end94:                                         ; preds = %for.end.if.end94_crit_edge, %if.then83.if.end94_crit_edge, %if.end.if.end94_crit_edge
  %call98 = tail call i64 @ktime_get() #5
  %add.i338 = add i64 %call98, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 139) #5
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add.ptr116369 = getelementptr i8, ptr %39, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116369) #5, !srcloc !64
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %and120370 = and i32 %41, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120370)
  %tobool121.not371 = icmp eq i32 %and120370, 0
  br i1 %tobool121.not371, label %if.end94.land.lhs.true125_crit_edge, label %if.end94.for.end143_crit_edge

if.end94.for.end143_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end143

if.end94.land.lhs.true125_crit_edge:              ; preds = %if.end94
  br label %land.lhs.true125

land.lhs.true125:                                 ; preds = %if.then139.land.lhs.true125_crit_edge, %if.end94.land.lhs.true125_crit_edge
  %call126 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call126, i64 %add.i338)
  %cmp3.i340 = icmp sgt i64 %call126, %add.i338
  br i1 %cmp3.i340, label %if.then129, label %if.then139

if.then129:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr133 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #5, !srcloc !64
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  br label %for.end143

if.then139:                                       ; preds = %land.lhs.true125
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #5
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %add.ptr116 = getelementptr i8, ptr %47, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #5, !srcloc !64
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %and120 = and i32 %49, 8388608
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then139.land.lhs.true125_crit_edge, label %if.then139.for.end143_crit_edge

if.then139.for.end143_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end143

if.then139.land.lhs.true125_crit_edge:            ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true125

for.end143:                                       ; preds = %if.then139.for.end143_crit_edge, %if.then129, %if.end94.for.end143_crit_edge
  %reg.1 = phi i32 [ %45, %if.then129 ], [ %41, %if.end94.for.end143_crit_edge ], [ %49, %if.then139.for.end143_crit_edge ]
  %and145 = and i32 %reg.1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %for.end143.cleanup.sink.split_crit_edge, label %if.end153

for.end143.cleanup.sink.split_crit_edge:          ; preds = %for.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end153:                                        ; preds = %for.end143
  %call157 = tail call i64 @ktime_get() #5
  %add.i343 = add i64 %call157, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 148) #5
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr175372 = getelementptr i8, ptr %51, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175372) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %.mask360373 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask360373)
  %tobool180.not374 = icmp eq i32 %.mask360373, 0
  br i1 %tobool180.not374, label %if.end153.land.lhs.true184_crit_edge, label %if.end153.if.end212_crit_edge

if.end153.if.end212_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end212

if.end153.land.lhs.true184_crit_edge:             ; preds = %if.end153
  br label %land.lhs.true184

land.lhs.true184:                                 ; preds = %if.then198.land.lhs.true184_crit_edge, %if.end153.land.lhs.true184_crit_edge
  %call185 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call185, i64 %add.i343)
  %cmp3.i345 = icmp sgt i64 %call185, %add.i343
  br i1 %cmp3.i345, label %for.end202, label %if.then198

if.then198:                                       ; preds = %land.lhs.true184
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #5
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %add.ptr175 = getelementptr i8, ptr %54, i32 24
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %.mask360 = and i32 %55, 128
  %tobool180.not = icmp eq i32 %.mask360, 0
  br i1 %tobool180.not, label %if.then198.land.lhs.true184_crit_edge, label %if.then198.if.end212_crit_edge

if.then198.if.end212_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end212

if.then198.land.lhs.true184_crit_edge:            ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true184

for.end202:                                       ; preds = %land.lhs.true184
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %add.ptr192 = getelementptr i8, ptr %57, i32 24
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %.mask363 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask363)
  %tobool205.not.inv.not = icmp eq i32 %.mask363, 0
  br i1 %tobool205.not.inv.not, label %for.end202.cleanup.sink.split_crit_edge, label %for.end202.if.end212_crit_edge

for.end202.if.end212_crit_edge:                   ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end212

for.end202.cleanup.sink.split_crit_edge:          ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end212:                                        ; preds = %for.end202.if.end212_crit_edge, %if.then198.if.end212_crit_edge, %if.end153.if.end212_crit_edge
  %call216 = tail call i64 @ktime_get() #5
  %add.i348 = add i64 %call216, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 157) #5
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %.mask361375 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask361375)
  %tobool239.not376 = icmp eq i32 %.mask361375, 0
  br i1 %tobool239.not376, label %if.end212.land.lhs.true243_crit_edge, label %if.end212.cleanup_crit_edge

if.end212.cleanup_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end212.land.lhs.true243_crit_edge:             ; preds = %if.end212
  br label %land.lhs.true243

land.lhs.true243:                                 ; preds = %if.then257.land.lhs.true243_crit_edge, %if.end212.land.lhs.true243_crit_edge
  %call244 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call244, i64 %add.i348)
  %cmp3.i350 = icmp sgt i64 %call244, %add.i348
  br i1 %cmp3.i350, label %for.end261, label %if.then257

if.then257:                                       ; preds = %land.lhs.true243
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #5
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %.mask361 = and i32 %64, 128
  %tobool239.not = icmp eq i32 %.mask361, 0
  br i1 %tobool239.not, label %if.then257.land.lhs.true243_crit_edge, label %if.then257.cleanup_crit_edge

if.then257.cleanup_crit_edge:                     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then257.land.lhs.true243_crit_edge:            ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true243

for.end261:                                       ; preds = %land.lhs.true243
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %.mask362 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask362)
  %tobool264.not.inv.not = icmp eq i32 %.mask362, 0
  br i1 %tobool264.not.inv.not, label %for.end261.cleanup.sink.split_crit_edge, label %for.end261.cleanup_crit_edge

for.end261.cleanup_crit_edge:                     ; preds = %for.end261
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end261.cleanup.sink.split_crit_edge:          ; preds = %for.end261
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end261.cleanup.sink.split_crit_edge, %for.end202.cleanup.sink.split_crit_edge, %for.end143.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.10, %for.end.cleanup.sink.split_crit_edge ], [ @.str.13, %for.end143.cleanup.sink.split_crit_edge ], [ @.str.16, %for.end202.cleanup.sink.split_crit_edge ], [ @.str.19, %for.end261.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull %.str.19.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end261.cleanup_crit_edge, %if.then257.cleanup_crit_edge, %if.end212.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end261.cleanup_crit_edge ], [ 0, %if.end212.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.then257.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_utmi_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.mvebu_a3700_utmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 4, i32 32
  %add.ptr = getelementptr i8, ptr %7, i32 %cond
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %neg = select i1 %tobool.not, i32 -130, i32 -16386
  %and = and i32 %9, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #5, !srcloc !67
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 52
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %16 = and i32 %15, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr23 = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %16) #5, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_phy_mvebu_a3700_utmi__289_265_mvebu_a3700_utmi_driver_init6, !1, !"__initcall__kmod_phy_mvebu_a3700_utmi__289_265_mvebu_a3700_utmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_mvebu_a3700_utmi_driver_exit, !1, !"__exitcall_mvebu_a3700_utmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 267, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 268, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 269, i32 1}
!9 = !{ptr @__UNIQUE_ID_file293, !10, !"__UNIQUE_ID_file293", i1 false, i1 false}
!10 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 270, i32 1}
!11 = !{ptr @__UNIQUE_ID_license294, !10, !"__UNIQUE_ID_license294", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 261, i32 12}
!14 = !{ptr @mvebu_a3700_utmi_driver, !15, !"mvebu_a3700_utmi_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 258, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 231, i32 9}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 233, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mvebu_a3700_utmi_phy_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mvebu_a3700_utmi_phy_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 244, i32 3}
!28 = !{ptr @mvebu_a3700_utmi_phy_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mvebu_a3700_utmi_phy_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mvebu_a3700_utmi_of_match, !31, !"mvebu_a3700_utmi_of_match", i1 false, i1 false}
!31 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 201, i32 34}
!32 = !{ptr @mvebu_a3700_utmi_otg_phy_caps, !33, !"mvebu_a3700_utmi_otg_phy_caps", i1 false, i1 false}
!33 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 191, i32 43}
!34 = !{ptr @mvebu_a3700_utmi_phy_ops, !35, !"mvebu_a3700_utmi_phy_ops", i1 false, i1 false}
!35 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 185, i32 29}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 132, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 141, i32 3}
!43 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 150, i32 3}
!47 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 159, i32 3}
!51 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mvebu_a3700_utmi_phy_power_on._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mvebu_a3700_utmi_host_phy_caps, !54, !"mvebu_a3700_utmi_host_phy_caps", i1 false, i1 false}
!54 = !{!"../drivers/phy/marvell/phy-mvebu-a3700-utmi.c", i32 196, i32 43}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 691365}
!65 = !{i64 2155139143}
!66 = !{i64 2155141428}
!67 = !{i64 690947}
!68 = !{i64 2155142652}
!69 = !{i64 2155142953}
!70 = !{i64 2155143619}
!71 = !{i64 2155144416}
!72 = !{i64 2155146554}
!73 = !{i64 2155147036}
!74 = !{i64 2155150516}
!75 = !{i64 2155150998}
!76 = !{i64 2155158602}
!77 = !{i64 2155159088}
!78 = !{i64 2155162604}
!79 = !{i64 2155163086}
!80 = !{i64 2155165276}
!81 = !{i64 2155165800}
!82 = !{i64 2155166483}
!83 = !{i64 2155166784}
