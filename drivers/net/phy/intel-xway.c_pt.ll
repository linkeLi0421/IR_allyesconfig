; ModuleID = '/llk/IR_all_yes/drivers/net/phy/intel-xway.c_pt.bc'
source_filename = "../drivers/net/phy/intel-xway.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__initcall__kmod_intel_xway__301_457_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@xway_gphy = internal global { [10 x %struct.phy_driver], [584 x i8] } { [10 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 50487505, ptr @.str, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @xway_gphy14_config_aneg, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 50487521, ptr @.str.1, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @xway_gphy14_config_aneg, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759168, ptr @.str.2, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @xway_gphy14_config_aneg, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759152, ptr @.str.3, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @xway_gphy14_config_aneg, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759167, ptr @.str.4, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759151, ptr @.str.5, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759160, ptr @.str.6, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759144, ptr @.str.7, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759159, ptr @.str.8, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -714759143, ptr @.str.9, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @xway_gphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @xway_gphy_config_intr, ptr @xway_gphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [584 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [45 x i8] c"intel_xway.description=Intel XWAY PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [43 x i8] c"intel_xway.file=drivers/net/phy/intel-xway\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [23 x i8] c"intel_xway.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.3\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Intel XWAY PHY22F (PEF 7061) v1.3\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.4\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Intel XWAY PHY22F (PEF 7061) v1.4\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Intel XWAY PHY11G (PEF 7071/PEF 7072) v1.5 / v1.6\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Intel XWAY PHY22F (PEF 7061) v1.5 / v1.6\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel XWAY PHY11G (xRX v1.1 integrated)\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel XWAY PHY22F (xRX v1.1 integrated)\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel XWAY PHY11G (xRX v1.2 integrated)\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Intel XWAY PHY22F (xRX v1.2 integrated)\00", [56 x i8] zeroinitializer }, align 32
@xway_gphy_rgmii_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 197, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"PHY has delays (e.g. via pin strapping), but phy-mode = 'rgmii'\0AShould be 'rgmii-id' to use internal delays txskew:%d ps rxskew:%d ps\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xway_gphy_rgmii_init\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/phy/intel-xway.c\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xway_gphy_rgmii_init._entry_ptr = internal global ptr @xway_gphy_rgmii_init._entry, section ".printk_index", align 4
@xway_internal_delay = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 500, i32 1000, i32 1500, i32 2000, i32 2500, i32 3000, i32 3500], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"xway_gphy\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 350, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 354, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 365, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 376, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 387, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 398, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 408, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 418, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 428, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 438, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 448, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 193, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"xway_internal_delay\00", align 1
@___asan_gen_.68 = private constant [32 x i8] c"../drivers/net/phy/intel-xway.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 165, i32 18 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_intel_xway__301_457_phy_module_init6, ptr @phy_module_exit, ptr @xway_gphy_rgmii_init._entry, ptr @xway_gphy_rgmii_init._entry_ptr, ptr @xway_gphy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @xway_internal_delay], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_gphy to i32), i32 2360, i32 2944, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_gphy_rgmii_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_internal_delay to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @xway_gphy, i32 noundef 10, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_drivers_unregister(ptr noundef nonnull @xway_gphy, i32 noundef 10) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_gphy_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 25, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i47 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 26) #5
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i50 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 27, i16 noundef zeroext 3840) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool3.not = icmp eq i32 %call.i50, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 480, i16 noundef zeroext 192) #5
  %call7 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 481, i16 noundef zeroext 0) #5
  %call8 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 482, i16 noundef zeroext 112) #5
  %call10 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 483, i16 noundef zeroext 3) #5
  %call12 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 484, i16 noundef zeroext 112) #5
  %call14 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 485, i16 noundef zeroext 3) #5
  %call16 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 486, i16 noundef zeroext 112) #5
  %call18 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 487, i16 noundef zeroext 3) #5
  %interface.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %12 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interface.i.i, align 4
  %14 = add i32 %13, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %if.end.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %16 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end.i.if.then96.i_crit_edge [
    i32 9, label %if.then2.i
    i32 10, label %if.end.i.if.then62.i_crit_edge
    i32 11, label %if.end.i.if.then62.i_crit_edge51
  ]

if.end.i.if.then62.i_crit_edge51:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then62.i

if.end.i.if.then62.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then62.i

if.end.i.if.then96.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96.i

if.then2.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i, align 8
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %18, i32 noundef %20, i32 noundef 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.then2.i.cleanup_crit_edge, label %do.end18.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18.i:                                       ; preds = %if.then2.i
  %21 = lshr i32 %call.i.i, 8
  %conv.i = and i32 %21, 7
  %22 = trunc i32 %call.i.i to i16
  %23 = lshr i16 %22, 12
  %conv37.i = and i16 %23, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp39.not.i = icmp eq i32 %conv.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv37.i)
  %cmp42.not.i = icmp eq i16 %conv37.i, 0
  %or.cond.i = select i1 %cmp39.not.i, i1 %cmp42.not.i, i1 false
  br i1 %or.cond.i, label %do.end18.i.cleanup_crit_edge, label %do.end47.i

do.end18.i.cleanup_crit_edge:                     ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end47.i:                                       ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [8 x i32], ptr @xway_internal_delay, i32 0, i32 %conv.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %idxprom50.i = zext i16 %conv37.i to i32
  %arrayidx51.i = getelementptr [8 x i32], ptr @xway_internal_delay, i32 0, i32 %idxprom50.i
  %26 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx51.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.10, i32 noundef %25, i32 noundef %27) #8
  br label %cleanup

if.then62.i:                                      ; preds = %if.end.i.if.then62.i_crit_edge, %if.end.i.if.then62.i_crit_edge51
  %call63.i = tail call i32 @phy_get_internal_delay(ptr noundef %phydev, ptr noundef %phydev, ptr noundef nonnull @xway_internal_delay, i32 noundef 8, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  %call63.i.op = shl i32 %call63.i, 12
  %call63.i.op.op = and i32 %call63.i.op, 28672
  %and87.i = select i1 %cmp64.i, i32 16384, i32 %call63.i.op.op
  %28 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load i32, ptr %interface.i.i, align 4
  %29 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %.pr.i, label %if.then62.i.if.end127.i_crit_edge [
    i32 10, label %if.then62.i.if.then96.i_crit_edge
    i32 12, label %if.then62.i.if.then96.i_crit_edge52
  ]

if.then62.i.if.then96.i_crit_edge52:              ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96.i

if.then62.i.if.then96.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96.i

if.then62.i.if.end127.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127.i

if.then96.i:                                      ; preds = %if.then62.i.if.then96.i_crit_edge, %if.then62.i.if.then96.i_crit_edge52, %if.end.i.if.then96.i_crit_edge
  %val.0168.i = phi i32 [ %and87.i, %if.then62.i.if.then96.i_crit_edge ], [ %and87.i, %if.then62.i.if.then96.i_crit_edge52 ], [ 0, %if.end.i.if.then96.i_crit_edge ]
  %call97.i = tail call i32 @phy_get_internal_delay(ptr noundef %phydev, ptr noundef %phydev, ptr noundef nonnull @xway_internal_delay, i32 noundef 8, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %cmp98.i = icmp slt i32 %call97.i, 0
  %call97.i.op = shl i32 %call97.i, 8
  %call97.i.op.op = and i32 %call97.i.op, 1792
  %and125.i = select i1 %cmp98.i, i32 1024, i32 %call97.i.op.op
  %or126.i = or i32 %and125.i, %val.0168.i
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then96.i, %if.then62.i.if.end127.i_crit_edge
  %val.1.i = phi i32 [ %or126.i, %if.then96.i ], [ %and87.i, %if.then62.i.if.end127.i_crit_edge ]
  %conv128.i = trunc i32 %val.1.i to i16
  %call129.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 30464, i16 noundef zeroext %conv128.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end127.i, %do.end47.i, %do.end18.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i50, %if.end.cleanup_crit_edge ], [ %call129.i, %if.end127.i ], [ 0, %if.end5.cleanup_crit_edge ], [ %call.i.i, %if.then2.i.cleanup_crit_edge ], [ 0, %do.end18.i.cleanup_crit_edge ], [ 0, %do.end47.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_gphy14_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 9) #5
  %4 = trunc i32 %call.i to i16
  %conv = or i16 %4, 1024
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i10 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 9, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not = icmp eq i32 %call.i10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i11 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i11, %if.end ], [ %call.i10, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_gphy_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i19 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i19 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i19, align 8
  %addr.i20 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i20, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 26) #5
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %bus.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i19, align 8
  %8 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i20, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 25, i16 noundef zeroext 33) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i21 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 25, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool4.not = icmp eq i32 %call.i21, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %bus.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i19, align 8
  %12 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i20, align 8
  %call.i.i24 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 26) #5
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i24, i32 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i21, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_gphy_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_error(ptr noundef %phydev) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_trigger_machine(ptr noundef %phydev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_get_internal_delay(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_intel_xway__301_457_phy_module_init6, !1, !"__initcall__kmod_intel_xway__301_457_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/intel-xway.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/intel-xway.c", i32 474, i32 1}
!5 = !{ptr @__UNIQUE_ID_file303, !6, !"__UNIQUE_ID_file303", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/intel-xway.c", i32 475, i32 1}
!7 = !{ptr @__UNIQUE_ID_license304, !6, !"__UNIQUE_ID_license304", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/intel-xway.c", i32 354, i32 12}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/intel-xway.c", i32 365, i32 12}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/intel-xway.c", i32 376, i32 12}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/intel-xway.c", i32 387, i32 12}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/intel-xway.c", i32 398, i32 12}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/intel-xway.c", i32 408, i32 12}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/intel-xway.c", i32 418, i32 12}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/intel-xway.c", i32 428, i32 12}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/intel-xway.c", i32 438, i32 12}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/intel-xway.c", i32 448, i32 12}
!28 = !{ptr @xway_gphy, !29, !"xway_gphy", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/intel-xway.c", i32 350, i32 26}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/intel-xway.c", i32 193, i32 4}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @xway_gphy_rgmii_init._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @xway_gphy_rgmii_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @xway_internal_delay, !39, !"xway_internal_delay", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/intel-xway.c", i32 165, i32 18}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
