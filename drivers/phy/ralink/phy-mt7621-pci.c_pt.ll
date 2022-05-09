; ModuleID = '/llk/IR_all_yes/drivers/phy/ralink/phy-mt7621-pci.c_pt.bc'
source_filename = "../drivers/phy/ralink/phy-mt7621-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mt7621_pci_phy = type { ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_mt7621_pci__373_355_mt7621_pci_phy_driver_init6 = internal global ptr @mt7621_pci_phy_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author374 = internal constant [72 x i8] c"phy_mt7621_pci.author=Sergio Paracuellos <sergio.paracuellos@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description375 = internal constant [59 x i8] c"phy_mt7621_pci.description=MediaTek MT7621 PCIe PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file376 = internal constant [54 x i8] c"phy_mt7621_pci.file=drivers/phy/ralink/phy-mt7621-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [30 x i8] c"phy_mt7621_pci.license=GPL v2\00", section ".modinfo", align 1
@mt7621_pci_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt7621_pci_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt7621_pci_phy_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt7621-pci-phy\00", [17 x i8] zeroinitializer }, align 32
@mt7621_pci_phy_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621-pci-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt7621_pci_quirks_match = internal constant { [1 x %struct.soc_device_attribute], [36 x i8] } { [1 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.13, ptr null, ptr @.str.14, ptr null, ptr null }], [36 x i8] zeroinitializer }, align 32
@mt7621_pci_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to remap phy regs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7621_pci_phy_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/phy/ralink/phy-mt7621-pci.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7621_pci_phy_probe._entry_ptr = internal global ptr @mt7621_pci_phy_probe._entry, section ".printk_index", align 4
@mt7621_pci_phy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt7621_pci_phy_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1792, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"phy_mt7621_pci:318:(&mt7621_pci_phy_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@mt7621_pci_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @mt7621_pci_phy_init, ptr @mt7621_pci_phy_exit, ptr @mt7621_pci_phy_power_on, ptr @mt7621_pci_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mt7621_pci_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@mt7621_pci_phy_probe._entry_ptr.9 = internal global ptr @mt7621_pci_phy_probe._entry.7, section ".printk_index", align 4
@mt7621_pci_phy_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get phy clock\0A\00", [39 x i8] zeroinitializer }, align 32
@mt7621_pci_phy_probe._entry_ptr.12 = internal global ptr @mt7621_pci_phy_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"E2\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt7621\00", [25 x i8] zeroinitializer }, align 32
@mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_mt7621_pci\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7621_set_phy_for_ssc\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Xtal is 40MHz\0A\00", [17 x i8] zeroinitializer }, align 32
@mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Xtal is 25MHz\0A\00", [17 x i8] zeroinitializer }, align 32
@mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.19, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Xtal is 20MHz\0A\00", [17 x i8] zeroinitializer }, align 32
@mt7621_pcie_phy_of_xlate.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt7621_pcie_phy_of_xlate\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY for 0x%px (dual port = %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 25000000, i64 40000000]
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"mt7621_pci_phy_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 347, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 350, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"mt7621_pci_phy_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 341, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"mt7621_pci_quirks_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 282, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 313, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [29 x i8] c"mt7621_pci_phy_regmap_config\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 286, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 317, i32 16 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"mt7621_pci_phy_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 258, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 324, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 330, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 283, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 283, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 148, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 175, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 180, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [39 x i8] c"../drivers/phy/ralink/phy-mt7621-pci.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 276, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_description375, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__initcall__kmod_phy_mt7621_pci__373_355_mt7621_pci_phy_driver_init6, ptr @mt7621_pci_phy_probe._entry, ptr @mt7621_pci_phy_probe._entry.10, ptr @mt7621_pci_phy_probe._entry.7, ptr @mt7621_pci_phy_probe._entry_ptr, ptr @mt7621_pci_phy_probe._entry_ptr.12, ptr @mt7621_pci_phy_probe._entry_ptr.9, ptr @mt7621_pci_phy_driver, ptr @.str, ptr @mt7621_pci_phy_ids, ptr @mt7621_pci_quirks_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt7621_pci_phy_probe._key, ptr @mt7621_pci_phy_regmap_config, ptr @.str.6, ptr @mt7621_pci_phy_ops, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_quirks_match to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pci_phy_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pci_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt7621_pci_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pci_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @soc_device_match(ptr noundef nonnull @mt7621_pci_quirks_match) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bypass_pipe_rst = getelementptr inbounds %struct.mt7621_pci_phy, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %bypass_pipe_rst to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bypass_pipe_rst, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %port_base = getelementptr inbounds %struct.mt7621_pci_phy, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %port_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %port_base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %4 = ptrtoint ptr %port_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_base, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call16 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %8, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @mt7621_pci_phy_regmap_config, ptr noundef nonnull @mt7621_pci_phy_probe._key, ptr noundef nonnull @.str.6) #6
  %regmap = getelementptr inbounds %struct.mt7621_pci_phy, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %regmap, align 4
  %cmp.i79 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call23 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %12, ptr noundef nonnull @mt7621_pci_phy_ops) #6
  %phy24 = getelementptr inbounds %struct.mt7621_pci_phy, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %phy24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %phy24, align 4
  %cmp.i80 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %14 = ptrtoint ptr %phy24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy24, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %sys_clk = getelementptr inbounds %struct.mt7621_pci_phy, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call34, ptr %sys_clk, align 4
  %cmp.i81 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %18 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sys_clk, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %phy24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy24, align 4
  %driver_data.i.i82 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i82 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i82, align 4
  %call45 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @mt7621_pcie_phy_of_xlate) #6
  %cmp.i.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %call45 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %24, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end40, %do.end30, %if.then19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %10, %if.then19 ], [ %16, %do.end30 ], [ %20, %do.end40 ], [ %spec.select.i, %if.end43 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mt7621_pcie_phy_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.end, label %if.end23, !prof !68

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool26 = icmp ne i32 %3, 0
  %has_dual_port = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 5
  %frombool = zext i1 %tobool26 to i8
  %4 = ptrtoint ptr %has_dual_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %has_dual_port, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7621_pcie_phy_of_xlate.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7621_pcie_phy_of_xlate, %if.then38)) #6
          to label %do.end43 [label %if.then38], !srcloc !69

if.then38:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %port_base = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %port_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_base, align 4
  %7 = ptrtoint ptr %has_dual_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_dual_port, align 4, !range !70
  %9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7621_pcie_phy_of_xlate.__UNIQUE_ID_ddebug372, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %6, i32 noundef %9) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %if.end23
  %phy = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %11, %do.end43 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pci_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val.i15.i = alloca i32, align 4
  %val.i10.i = alloca i32, align 4
  %val.i5.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bypass_pipe_rst = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bypass_pipe_rst to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bypass_pipe_rst, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !71
  %regmap.i.i = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 44, ptr noundef nonnull %val.i.i) #6
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  %or.i.i = or i32 %8, 4096
  store i32 %or.i.i, ptr %val.i.i, align 4
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call2.i.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 44, i32 noundef %or.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i5.i) #6
  %11 = ptrtoint ptr %val.i5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i5.i, align 4, !annotation !71
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call.i7.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 44, ptr noundef nonnull %val.i5.i) #6
  %14 = ptrtoint ptr %val.i5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i5.i, align 4
  %or.i8.i = or i32 %15, 16
  store i32 %or.i8.i, ptr %val.i5.i, align 4
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %call2.i9.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 44, i32 noundef %or.i8.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i5.i) #6
  %has_dual_port.i = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %has_dual_port.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_dual_port.i, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i10.i) #6
  %20 = ptrtoint ptr %val.i10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i10.i, align 4, !annotation !71
  %21 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i, align 4
  %call.i12.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 300, ptr noundef nonnull %val.i10.i) #6
  %23 = ptrtoint ptr %val.i10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i10.i, align 4
  %or.i13.i = or i32 %24, 4096
  store i32 %or.i13.i, ptr %val.i10.i, align 4
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %call2.i14.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 300, i32 noundef %or.i13.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i10.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i15.i) #6
  %27 = ptrtoint ptr %val.i15.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i15.i, align 4, !annotation !71
  %28 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i, align 4
  %call.i17.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 300, ptr noundef nonnull %val.i15.i) #6
  %30 = ptrtoint ptr %val.i15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i15.i, align 4
  %or.i18.i = or i32 %31, 16
  store i32 %or.i18.i, ptr %val.i15.i, align 4
  %32 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i, align 4
  %call2.i19.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 300, i32 noundef %or.i18.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i15.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = call fastcc i32 @mt7621_set_phy_for_ssc(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7621_pci_phy_exit(ptr nocapture noundef readnone %phy) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pci_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val.i3 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %regmap.i = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, -49
  %or.i = or i32 %and.i, 32
  store i32 %or.i, ptr %val.i, align 4
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef %or.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %has_dual_port = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %has_dual_port to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_dual_port, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3) #6
  %11 = ptrtoint ptr %val.i3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i3, align 4, !annotation !71
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i5 = call i32 @regmap_read(ptr noundef %13, i32 noundef 256, ptr noundef nonnull %val.i3) #6
  %14 = ptrtoint ptr %val.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i3, align 4
  %and.i6 = and i32 %15, -49
  %or.i7 = or i32 %and.i6, 32
  store i32 %or.i7, ptr %val.i3, align 4
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call2.i8 = call i32 @regmap_write(ptr noundef %17, i32 noundef 256, i32 noundef %or.i7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pci_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val.i3 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %regmap.i = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, -49
  %or.i = or i32 %and.i, 16
  store i32 %or.i, ptr %val.i, align 4
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef %or.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %has_dual_port = getelementptr inbounds %struct.mt7621_pci_phy, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %has_dual_port to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_dual_port, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3) #6
  %11 = ptrtoint ptr %val.i3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i3, align 4, !annotation !71
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i5 = call i32 @regmap_read(ptr noundef %13, i32 noundef 256, ptr noundef nonnull %val.i3) #6
  %14 = ptrtoint ptr %val.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i3, align 4
  %and.i6 = and i32 %15, -49
  %or.i7 = or i32 %and.i6, 16
  store i32 %or.i7, ptr %val.i3, align 4
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call2.i8 = call i32 @regmap_write(ptr noundef %17, i32 noundef 256, i32 noundef %or.i7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7621_set_phy_for_ssc(ptr noundef readonly %phy) unnamed_addr #2 align 64 {
entry:
  %val.i500 = alloca i32, align 4
  %val.i494 = alloca i32, align 4
  %val.i488 = alloca i32, align 4
  %val.i483 = alloca i32, align 4
  %val.i477 = alloca i32, align 4
  %val.i471 = alloca i32, align 4
  %val.i465 = alloca i32, align 4
  %val.i460 = alloca i32, align 4
  %val.i454 = alloca i32, align 4
  %val.i448 = alloca i32, align 4
  %val.i443 = alloca i32, align 4
  %val.i437 = alloca i32, align 4
  %val.i431 = alloca i32, align 4
  %val.i426 = alloca i32, align 4
  %val.i421 = alloca i32, align 4
  %val.i415 = alloca i32, align 4
  %val.i409 = alloca i32, align 4
  %val.i403 = alloca i32, align 4
  %val.i397 = alloca i32, align 4
  %val.i392 = alloca i32, align 4
  %val.i386 = alloca i32, align 4
  %val.i381 = alloca i32, align 4
  %val.i376 = alloca i32, align 4
  %val.i370 = alloca i32, align 4
  %val.i364 = alloca i32, align 4
  %val.i358 = alloca i32, align 4
  %val.i352 = alloca i32, align 4
  %val.i346 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %sys_clk = getelementptr inbounds %struct.mt7621_pci_phy, ptr %phy, i32 0, i32 3
  %2 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sys_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %regmap.i = getelementptr inbounds %struct.mt7621_pci_phy, ptr %phy, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 1024, ptr noundef nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, -1793
  %or.i = or i32 %and.i, 256
  store i32 %or.i, ptr %val.i, align 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 1024, i32 noundef %or.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i346) #6
  %11 = ptrtoint ptr %val.i346 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i346, align 4, !annotation !71
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i348 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %val.i346) #6
  %14 = ptrtoint ptr %val.i346 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i346, align 4
  %and.i349 = and i32 %15, -49
  %or.i350 = or i32 %and.i349, 16
  store i32 %or.i350, ptr %val.i346, align 4
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call2.i351 = call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef %or.i350) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i346) #6
  %has_dual_port = getelementptr inbounds %struct.mt7621_pci_phy, ptr %phy, i32 0, i32 5
  %18 = ptrtoint ptr %has_dual_port to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_dual_port, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not = icmp eq i8 %19, 0
  br i1 %tobool14.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i352) #6
  %20 = ptrtoint ptr %val.i352 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i352, align 4, !annotation !71
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i354 = call i32 @regmap_read(ptr noundef %22, i32 noundef 256, ptr noundef nonnull %val.i352) #6
  %23 = ptrtoint ptr %val.i352 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i352, align 4
  %and.i355 = and i32 %24, -49
  %or.i356 = or i32 %and.i355, 16
  store i32 %or.i356, ptr %val.i352, align 4
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call2.i357 = call i32 @regmap_write(ptr noundef %26, i32 noundef 256, i32 noundef %or.i356) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i352) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %27 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.else159 [
    i32 40000000, label %if.then17
    i32 25000000, label %if.then45
  ]

if.then17:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i358) #6
  %28 = ptrtoint ptr %val.i358 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i358, align 4, !annotation !71
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i360 = call i32 @regmap_read(ptr noundef %30, i32 noundef 1168, ptr noundef nonnull %val.i358) #6
  %31 = ptrtoint ptr %val.i358 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i358, align 4
  %and.i361 = and i32 %32, -193
  %or.i362 = or i32 %and.i361, 64
  store i32 %or.i362, ptr %val.i358, align 4
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call2.i363 = call i32 @regmap_write(ptr noundef %34, i32 noundef 1168, i32 noundef %or.i362) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i358) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7621_set_phy_for_ssc, %if.then40)) #6
          to label %if.then295.critedge [label %if.then40], !srcloc !69

if.then40:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug299, ptr noundef %1, ptr noundef nonnull @.str.17) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i364) #6
  %35 = ptrtoint ptr %val.i364 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i364, align 4, !annotation !71
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call.i366 = call i32 @regmap_read(ptr noundef %37, i32 noundef 1184, ptr noundef nonnull %val.i364) #6
  %38 = ptrtoint ptr %val.i364 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i364, align 4
  %or.i368 = or i32 %39, 32
  store i32 %or.i368, ptr %val.i364, align 4
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call2.i369 = call i32 @regmap_write(ptr noundef %41, i32 noundef 1184, i32 noundef %or.i368) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i364) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i370) #6
  %42 = ptrtoint ptr %val.i370 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val.i370, align 4, !annotation !71
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call.i372 = call i32 @regmap_read(ptr noundef %44, i32 noundef 1168, ptr noundef nonnull %val.i370) #6
  %45 = ptrtoint ptr %val.i370 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i370, align 4
  %and.i373 = and i32 %46, -16580367
  %or.i374 = or i32 %and.i373, 9969924
  store i32 %or.i374, ptr %val.i370, align 4
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call2.i375 = call i32 @regmap_write(ptr noundef %48, i32 noundef 1168, i32 noundef %or.i374) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i370) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i376) #6
  %49 = ptrtoint ptr %val.i376 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %val.i376, align 4, !annotation !71
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %call.i378 = call i32 @regmap_read(ptr noundef %51, i32 noundef 1196, ptr noundef nonnull %val.i376) #6
  %52 = ptrtoint ptr %val.i376 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i376, align 4
  %and.i379 = and i32 %53, -458753
  store i32 %and.i379, ptr %val.i376, align 4
  %54 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i, align 4
  %call2.i380 = call i32 @regmap_write(ptr noundef %55, i32 noundef 1196, i32 noundef %and.i379) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i376) #6
  br label %if.then295

if.then45:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i381) #6
  %56 = ptrtoint ptr %val.i381 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i381, align 4, !annotation !71
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %call.i383 = call i32 @regmap_read(ptr noundef %58, i32 noundef 1168, ptr noundef nonnull %val.i381) #6
  %59 = ptrtoint ptr %val.i381 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i381, align 4
  %and.i384 = and i32 %60, -193
  store i32 %and.i384, ptr %val.i381, align 4
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %call2.i385 = call i32 @regmap_write(ptr noundef %62, i32 noundef 1168, i32 noundef %and.i384) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i381) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i386) #6
  %63 = ptrtoint ptr %val.i386 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %val.i386, align 4, !annotation !71
  %64 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i, align 4
  %call.i388 = call i32 @regmap_read(ptr noundef %65, i32 noundef 1212, ptr noundef nonnull %val.i386) #6
  %66 = ptrtoint ptr %val.i386 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i386, align 4
  %and.i389 = and i32 %67, -49
  %or.i390 = or i32 %and.i389, 16
  store i32 %or.i390, ptr %val.i386, align 4
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %call2.i391 = call i32 @regmap_write(ptr noundef %69, i32 noundef 1212, i32 noundef %or.i390) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i386) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i392) #6
  %70 = ptrtoint ptr %val.i392 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %val.i392, align 4, !annotation !71
  %71 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i, align 4
  %call.i394 = call i32 @regmap_read(ptr noundef %72, i32 noundef 1188, ptr noundef nonnull %val.i392) #6
  %73 = ptrtoint ptr %val.i392 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val.i392, align 4
  %and.i395 = and i32 %74, -65536
  store i32 %and.i395, ptr %val.i392, align 4
  %75 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i, align 4
  %call2.i396 = call i32 @regmap_write(ptr noundef %76, i32 noundef 1188, i32 noundef %and.i395) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i392) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i397) #6
  %77 = ptrtoint ptr %val.i397 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %val.i397, align 4, !annotation !71
  %78 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i, align 4
  %call.i399 = call i32 @regmap_read(ptr noundef %79, i32 noundef 1188, ptr noundef nonnull %val.i397) #6
  %80 = ptrtoint ptr %val.i397 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val.i397, align 4
  %and.i400 = and i32 %81, -65536
  %or.i401 = or i32 %and.i400, 397
  store i32 %or.i401, ptr %val.i397, align 4
  %82 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i, align 4
  %call2.i402 = call i32 @regmap_write(ptr noundef %83, i32 noundef 1188, i32 noundef %or.i401) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i397) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i403) #6
  %84 = ptrtoint ptr %val.i403 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %val.i403, align 4, !annotation !71
  %85 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i, align 4
  %call.i405 = call i32 @regmap_read(ptr noundef %86, i32 noundef 1192, ptr noundef nonnull %val.i403) #6
  %87 = ptrtoint ptr %val.i403 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i403, align 4
  %and.i406 = and i32 %88, -268374016
  %or.i407 = or i32 %and.i406, 4849738
  store i32 %or.i407, ptr %val.i403, align 4
  %89 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap.i, align 4
  %call2.i408 = call i32 @regmap_write(ptr noundef %90, i32 noundef 1192, i32 noundef %or.i407) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i403) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7621_set_phy_for_ssc, %if.then155)) #6
          to label %if.end313.critedge336 [label %if.then155], !srcloc !69

if.then155:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug330, ptr noundef %1, ptr noundef nonnull @.str.18) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i409) #6
  %91 = ptrtoint ptr %val.i409 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %val.i409, align 4, !annotation !71
  %92 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap.i, align 4
  %call.i411 = call i32 @regmap_read(ptr noundef %93, i32 noundef 1184, ptr noundef nonnull %val.i409) #6
  %94 = ptrtoint ptr %val.i409 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i409, align 4
  %or.i413 = or i32 %95, 32
  store i32 %or.i413, ptr %val.i409, align 4
  %96 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i, align 4
  %call2.i414 = call i32 @regmap_write(ptr noundef %97, i32 noundef 1184, i32 noundef %or.i413) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i409) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i415) #6
  %98 = ptrtoint ptr %val.i415 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %val.i415, align 4, !annotation !71
  %99 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i, align 4
  %call.i417 = call i32 @regmap_read(ptr noundef %100, i32 noundef 1168, ptr noundef nonnull %val.i415) #6
  %101 = ptrtoint ptr %val.i415 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val.i415, align 4
  %and.i418 = and i32 %102, -16580367
  %or.i419 = or i32 %and.i418, 9969924
  store i32 %or.i419, ptr %val.i415, align 4
  %103 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i, align 4
  %call2.i420 = call i32 @regmap_write(ptr noundef %104, i32 noundef 1168, i32 noundef %or.i419) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i415) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i421) #6
  %105 = ptrtoint ptr %val.i421 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %val.i421, align 4, !annotation !71
  %106 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap.i, align 4
  %call.i423 = call i32 @regmap_read(ptr noundef %107, i32 noundef 1196, ptr noundef nonnull %val.i421) #6
  %108 = ptrtoint ptr %val.i421 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i421, align 4
  %and.i424 = and i32 %109, -458753
  store i32 %and.i424, ptr %val.i421, align 4
  %110 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap.i, align 4
  %call2.i425 = call i32 @regmap_write(ptr noundef %111, i32 noundef 1196, i32 noundef %and.i424) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i421) #6
  br label %cleanup

if.else159:                                       ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i426) #6
  %112 = ptrtoint ptr %val.i426 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %val.i426, align 4, !annotation !71
  %113 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap.i, align 4
  %call.i428 = call i32 @regmap_read(ptr noundef %114, i32 noundef 1168, ptr noundef nonnull %val.i426) #6
  %115 = ptrtoint ptr %val.i426 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val.i426, align 4
  %and.i429 = and i32 %116, -193
  store i32 %and.i429, ptr %val.i426, align 4
  %117 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap.i, align 4
  %call2.i430 = call i32 @regmap_write(ptr noundef %118, i32 noundef 1168, i32 noundef %and.i429) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i426) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7621_set_phy_for_ssc, %if.then188)) #6
          to label %if.end313.critedge338 [label %if.then188], !srcloc !69

if.then188:                                       ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug336, ptr noundef %1, ptr noundef nonnull @.str.19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i431) #6
  %119 = ptrtoint ptr %val.i431 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %val.i431, align 4, !annotation !71
  %120 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap.i, align 4
  %call.i433 = call i32 @regmap_read(ptr noundef %121, i32 noundef 1184, ptr noundef nonnull %val.i431) #6
  %122 = ptrtoint ptr %val.i431 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %val.i431, align 4
  %or.i435 = or i32 %123, 32
  store i32 %or.i435, ptr %val.i431, align 4
  %124 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap.i, align 4
  %call2.i436 = call i32 @regmap_write(ptr noundef %125, i32 noundef 1184, i32 noundef %or.i435) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i431) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i437) #6
  %126 = ptrtoint ptr %val.i437 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %val.i437, align 4, !annotation !71
  %127 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap.i, align 4
  %call.i439 = call i32 @regmap_read(ptr noundef %128, i32 noundef 1168, ptr noundef nonnull %val.i437) #6
  %129 = ptrtoint ptr %val.i437 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val.i437, align 4
  %and.i440 = and i32 %130, -16580367
  %or.i441 = or i32 %and.i440, 9969924
  store i32 %or.i441, ptr %val.i437, align 4
  %131 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap.i, align 4
  %call2.i442 = call i32 @regmap_write(ptr noundef %132, i32 noundef 1168, i32 noundef %or.i441) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i437) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i443) #6
  %133 = ptrtoint ptr %val.i443 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %val.i443, align 4, !annotation !71
  %134 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap.i, align 4
  %call.i445 = call i32 @regmap_read(ptr noundef %135, i32 noundef 1196, ptr noundef nonnull %val.i443) #6
  %136 = ptrtoint ptr %val.i443 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val.i443, align 4
  %and.i446 = and i32 %137, -458753
  store i32 %and.i446, ptr %val.i443, align 4
  %138 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap.i, align 4
  %call2.i447 = call i32 @regmap_write(ptr noundef %139, i32 noundef 1196, i32 noundef %and.i446) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i443) #6
  br label %cleanup

if.then295.critedge:                              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i448) #6
  %140 = ptrtoint ptr %val.i448 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %val.i448, align 4, !annotation !71
  %141 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap.i, align 4
  %call.i450 = call i32 @regmap_read(ptr noundef %142, i32 noundef 1184, ptr noundef nonnull %val.i448) #6
  %143 = ptrtoint ptr %val.i448 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %val.i448, align 4
  %or.i452 = or i32 %144, 32
  store i32 %or.i452, ptr %val.i448, align 4
  %145 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap.i, align 4
  %call2.i453 = call i32 @regmap_write(ptr noundef %146, i32 noundef 1184, i32 noundef %or.i452) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i448) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i454) #6
  %147 = ptrtoint ptr %val.i454 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -1, ptr %val.i454, align 4, !annotation !71
  %148 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap.i, align 4
  %call.i456 = call i32 @regmap_read(ptr noundef %149, i32 noundef 1168, ptr noundef nonnull %val.i454) #6
  %150 = ptrtoint ptr %val.i454 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %val.i454, align 4
  %and.i457 = and i32 %151, -16580367
  %or.i458 = or i32 %and.i457, 9969924
  store i32 %or.i458, ptr %val.i454, align 4
  %152 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap.i, align 4
  %call2.i459 = call i32 @regmap_write(ptr noundef %153, i32 noundef 1168, i32 noundef %or.i458) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i454) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i460) #6
  %154 = ptrtoint ptr %val.i460 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %val.i460, align 4, !annotation !71
  %155 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regmap.i, align 4
  %call.i462 = call i32 @regmap_read(ptr noundef %156, i32 noundef 1196, ptr noundef nonnull %val.i460) #6
  %157 = ptrtoint ptr %val.i460 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %val.i460, align 4
  %and.i463 = and i32 %158, -458753
  store i32 %and.i463, ptr %val.i460, align 4
  %159 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regmap.i, align 4
  %call2.i464 = call i32 @regmap_write(ptr noundef %160, i32 noundef 1196, i32 noundef %and.i463) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i460) #6
  br label %if.then295

if.then295:                                       ; preds = %if.then295.critedge, %if.then40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i465) #6
  %161 = ptrtoint ptr %val.i465 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %val.i465, align 4, !annotation !71
  %162 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap.i, align 4
  %call.i467 = call i32 @regmap_read(ptr noundef %163, i32 noundef 1044, ptr noundef nonnull %val.i465) #6
  %164 = ptrtoint ptr %val.i465 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %val.i465, align 4
  %and.i468 = and i32 %165, -225
  %or.i469 = or i32 %and.i468, 96
  store i32 %or.i469, ptr %val.i465, align 4
  %166 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap.i, align 4
  %call2.i470 = call i32 @regmap_write(ptr noundef %167, i32 noundef 1044, i32 noundef %or.i469) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i465) #6
  br label %cleanup

if.end313.critedge336:                            ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i471) #6
  %168 = ptrtoint ptr %val.i471 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %val.i471, align 4, !annotation !71
  %169 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regmap.i, align 4
  %call.i473 = call i32 @regmap_read(ptr noundef %170, i32 noundef 1184, ptr noundef nonnull %val.i471) #6
  %171 = ptrtoint ptr %val.i471 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %val.i471, align 4
  %or.i475 = or i32 %172, 32
  store i32 %or.i475, ptr %val.i471, align 4
  %173 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap.i, align 4
  %call2.i476 = call i32 @regmap_write(ptr noundef %174, i32 noundef 1184, i32 noundef %or.i475) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i471) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i477) #6
  %175 = ptrtoint ptr %val.i477 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1, ptr %val.i477, align 4, !annotation !71
  %176 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regmap.i, align 4
  %call.i479 = call i32 @regmap_read(ptr noundef %177, i32 noundef 1168, ptr noundef nonnull %val.i477) #6
  %178 = ptrtoint ptr %val.i477 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %val.i477, align 4
  %and.i480 = and i32 %179, -16580367
  %or.i481 = or i32 %and.i480, 9969924
  store i32 %or.i481, ptr %val.i477, align 4
  %180 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regmap.i, align 4
  %call2.i482 = call i32 @regmap_write(ptr noundef %181, i32 noundef 1168, i32 noundef %or.i481) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i477) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i483) #6
  %182 = ptrtoint ptr %val.i483 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -1, ptr %val.i483, align 4, !annotation !71
  %183 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regmap.i, align 4
  %call.i485 = call i32 @regmap_read(ptr noundef %184, i32 noundef 1196, ptr noundef nonnull %val.i483) #6
  %185 = ptrtoint ptr %val.i483 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %val.i483, align 4
  %and.i486 = and i32 %186, -458753
  store i32 %and.i486, ptr %val.i483, align 4
  %187 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regmap.i, align 4
  %call2.i487 = call i32 @regmap_write(ptr noundef %188, i32 noundef 1196, i32 noundef %and.i486) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i483) #6
  br label %cleanup

if.end313.critedge338:                            ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i488) #6
  %189 = ptrtoint ptr %val.i488 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %val.i488, align 4, !annotation !71
  %190 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regmap.i, align 4
  %call.i490 = call i32 @regmap_read(ptr noundef %191, i32 noundef 1184, ptr noundef nonnull %val.i488) #6
  %192 = ptrtoint ptr %val.i488 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %val.i488, align 4
  %or.i492 = or i32 %193, 32
  store i32 %or.i492, ptr %val.i488, align 4
  %194 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regmap.i, align 4
  %call2.i493 = call i32 @regmap_write(ptr noundef %195, i32 noundef 1184, i32 noundef %or.i492) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i488) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i494) #6
  %196 = ptrtoint ptr %val.i494 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %val.i494, align 4, !annotation !71
  %197 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regmap.i, align 4
  %call.i496 = call i32 @regmap_read(ptr noundef %198, i32 noundef 1168, ptr noundef nonnull %val.i494) #6
  %199 = ptrtoint ptr %val.i494 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %val.i494, align 4
  %and.i497 = and i32 %200, -16580367
  %or.i498 = or i32 %and.i497, 9969924
  store i32 %or.i498, ptr %val.i494, align 4
  %201 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regmap.i, align 4
  %call2.i499 = call i32 @regmap_write(ptr noundef %202, i32 noundef 1168, i32 noundef %or.i498) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i494) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i500) #6
  %203 = ptrtoint ptr %val.i500 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -1, ptr %val.i500, align 4, !annotation !71
  %204 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regmap.i, align 4
  %call.i502 = call i32 @regmap_read(ptr noundef %205, i32 noundef 1196, ptr noundef nonnull %val.i500) #6
  %206 = ptrtoint ptr %val.i500 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %val.i500, align 4
  %and.i503 = and i32 %207, -458753
  store i32 %and.i503, ptr %val.i500, align 4
  %208 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regmap.i, align 4
  %call2.i504 = call i32 @regmap_write(ptr noundef %209, i32 noundef 1196, i32 noundef %and.i503) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i500) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end313.critedge338, %if.end313.critedge336, %if.then295, %if.then188, %if.then155, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end313.critedge338 ], [ 0, %if.then188 ], [ 0, %if.end313.critedge336 ], [ 0, %if.then155 ], [ 0, %if.then295 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_phy_mt7621_pci__373_355_mt7621_pci_phy_driver_init6, !1, !"__initcall__kmod_phy_mt7621_pci__373_355_mt7621_pci_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 355, i32 1}
!2 = !{ptr @__UNIQUE_ID_author374, !3, !"__UNIQUE_ID_author374", i1 false, i1 false}
!3 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 357, i32 1}
!4 = !{ptr @__UNIQUE_ID_description375, !5, !"__UNIQUE_ID_description375", i1 false, i1 false}
!5 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 358, i32 1}
!6 = !{ptr @__UNIQUE_ID_file376, !7, !"__UNIQUE_ID_file376", i1 false, i1 false}
!7 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 359, i32 1}
!8 = !{ptr @__UNIQUE_ID_license377, !7, !"__UNIQUE_ID_license377", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 350, i32 11}
!11 = !{ptr @mt7621_pci_phy_driver, !12, !"mt7621_pci_phy_driver", i1 false, i1 false}
!12 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 347, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 313, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mt7621_pci_phy_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @mt7621_pci_phy_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @mt7621_pci_phy_probe._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 317, i32 16}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 324, i32 3}
!26 = !{ptr @mt7621_pci_phy_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt7621_pci_phy_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 330, i32 3}
!30 = !{ptr @mt7621_pci_phy_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt7621_pci_phy_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 283, i32 36}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 283, i32 14}
!36 = !{ptr @mt7621_pci_quirks_match, !37, !"mt7621_pci_quirks_match", i1 false, i1 false}
!37 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 282, i32 42}
!38 = !{ptr @mt7621_pci_phy_regmap_config, !39, !"mt7621_pci_phy_regmap_config", i1 false, i1 false}
!39 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 286, i32 35}
!40 = !{ptr @mt7621_pci_phy_ops, !41, !"mt7621_pci_phy_ops", i1 false, i1 false}
!41 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 258, i32 29}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 148, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug299, !43, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 175, i32 3}
!49 = !{ptr @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug330, !48, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 180, i32 3}
!52 = !{ptr @mt7621_set_phy_for_ssc.__UNIQUE_ID_ddebug336, !51, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 276, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mt7621_pcie_phy_of_xlate.__UNIQUE_ID_ddebug372, !54, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!57 = !{ptr @mt7621_pci_phy_ids, !58, !"mt7621_pci_phy_ids", i1 false, i1 false}
!58 = !{!"../drivers/phy/ralink/phy-mt7621-pci.c", i32 341, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2148730490, i64 2148730495, i64 2148730508, i64 2148730552, i64 2148730586, i64 2148730607}
!70 = !{i8 0, i8 2}
!71 = !{!"auto-init"}
