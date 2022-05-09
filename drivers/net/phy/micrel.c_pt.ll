; ModuleID = '/llk/IR_all_yes/drivers/net/phy/micrel.c_pt.bc'
source_filename = "../drivers/net/phy/micrel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kszphy_type = type { i32, i16, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kszphy_priv = type { ptr, i32, i8, i8, [2 x i64] }

@__initcall__kmod_micrel__427_1973_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@ksphy_driver = internal global { [18 x %struct.phy_driver], [1064 x i8] } { [18 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2234144, ptr @.str, i32 16777200, ptr null, i32 0, ptr @ks8737_type, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233685, ptr @.str.1, i32 16777215, ptr null, i32 0, ptr @ksz8021_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233686, ptr @.str.2, i32 16777215, ptr null, i32 0, ptr @ksz8021_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233616, ptr @.str.3, i32 16777200, ptr null, i32 0, ptr @ksz8041_type, ptr null, ptr @ksz8041_config_init, ptr @kszphy_probe, ptr null, ptr null, ptr null, ptr @ksz8041_config_aneg, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233655, ptr @.str.4, i32 16777200, ptr null, i32 0, ptr @ksz8041_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.5, i32 0, ptr null, i32 0, ptr @ksz8051_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr @ksz8051_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233882, ptr @.str.6, i32 16777212, ptr null, i32 0, ptr @ksz8041_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233696, ptr @.str.7, i32 16777200, ptr null, i32 4, ptr @ksz8081_type, ptr @genphy_soft_reset, ptr @ksz8081_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr @ksz8081_config_aneg, ptr null, ptr @ksz8081_read_status, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz886x_cable_test_start, ptr null, ptr @ksz886x_cable_test_get_status, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233712, ptr @.str.8, i32 16777200, ptr null, i32 0, ptr null, ptr null, ptr @ksz8061_config_init, ptr null, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233872, ptr @.str.9, i32 1048574, ptr null, i32 0, ptr @ksz9021_type, ptr null, ptr @ksz9021_config_init, ptr @kszphy_probe, ptr @ksz9031_get_features, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233888, ptr @.str.10, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr @genphy_soft_reset, ptr @ksz9031_config_init, ptr @kszphy_probe, ptr @ksz9031_get_features, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr @ksz9031_read_status, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233952, ptr @.str.11, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr @genphy_soft_reset, ptr @lan8814_config_init, ptr @kszphy_probe, ptr null, ptr @genphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr @ksz9031_read_status, ptr @lan8814_config_intr, ptr @lan8814_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233968, ptr @.str.12, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr @genphy_soft_reset, ptr @lan8804_config_init, ptr @kszphy_probe, ptr null, ptr @genphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr @ksz9031_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233920, ptr @.str.13, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr null, ptr @ksz9131_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 946743, ptr @.str.14, i32 16777200, ptr null, i32 0, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ksz8873mll_config_aneg, ptr null, ptr @ksz8873mll_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233392, ptr @.str.15, i32 16777200, ptr null, i32 4, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ksz886x_config_aneg, ptr null, ptr @ksz886x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz886x_cable_test_start, ptr null, ptr @ksz886x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.16, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz8795_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233905, ptr @.str.17, i32 16777200, ptr null, i32 0, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [1064 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description428 = internal constant [37 x i8] c"micrel.description=Micrel PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author429 = internal constant [28 x i8] c"micrel.author=David J. Choi\00", section ".modinfo", align 1
@__UNIQUE_ID_file430 = internal constant [35 x i8] c"micrel.file=drivers/net/phy/micrel\00", section ".modinfo", align 1
@__UNIQUE_ID_license431 = internal constant [19 x i8] c"micrel.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Micrel KS8737\00", [18 x i8] zeroinitializer }, align 32
@ks8737_type = internal constant { %struct.kszphy_type, [20 x i8] } { %struct.kszphy_type { i32 0, i16 16384, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Micrel KSZ8021 or KSZ8031\00", [38 x i8] zeroinitializer }, align 32
@ksz8021_type = internal constant { %struct.kszphy_type, [20 x i8] } { %struct.kszphy_type { i32 31, i16 0, i8 1, i8 1, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Micrel KSZ8031\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Micrel KSZ8041\00", [17 x i8] zeroinitializer }, align 32
@ksz8041_type = internal constant { %struct.kszphy_type, [20 x i8] } { %struct.kszphy_type { i32 30, i16 0, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Micrel KSZ8041RNLI\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Micrel KSZ8051\00", [17 x i8] zeroinitializer }, align 32
@ksz8051_type = internal constant { %struct.kszphy_type, [20 x i8] } { %struct.kszphy_type { i32 31, i16 0, i8 0, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Micrel KSZ8001 or KS8721\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Micrel KSZ8081 or KSZ8091\00", [38 x i8] zeroinitializer }, align 32
@ksz8081_type = internal constant { %struct.kszphy_type, [20 x i8] } { %struct.kszphy_type { i32 31, i16 0, i8 1, i8 1, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Micrel KSZ8061\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Micrel KSZ9021 Gigabit PHY\00", [37 x i8] zeroinitializer }, align 32
@ksz9021_type = internal constant { %struct.kszphy_type, [20 x i8] } { %struct.kszphy_type { i32 0, i16 16384, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Micrel KSZ9031 Gigabit PHY\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Microchip INDY Gigabit Quad PHY\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Microchip LAN966X Gigabit PHY\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Microchip KSZ9131 Gigabit PHY\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Micrel KSZ8873MLL Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Micrel KSZ8851 Ethernet MAC or KSZ886X Switch\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Micrel KSZ87XX Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Microchip KSZ9477\00", [46 x i8] zeroinitializer }, align 32
@kszphy_broadcast_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 311, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to disable broadcast address\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kszphy_broadcast_disable\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/phy/micrel.c\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kszphy_broadcast_disable._entry_ptr = internal global ptr @kszphy_broadcast_disable._entry, section ".printk_index", align 4
@kszphy_nand_tree_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.20, i32 331, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to disable NAND tree mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kszphy_nand_tree_disable\00", [39 x i8] zeroinitializer }, align 32
@kszphy_nand_tree_disable._entry_ptr = internal global ptr @kszphy_nand_tree_disable._entry, section ".printk_index", align 4
@kszphy_config_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.20, i32 346, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set rmii reference clock\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kszphy_config_reset\00", [44 x i8] zeroinitializer }, align 32
@kszphy_config_reset._entry_ptr = internal global ptr @kszphy_config_reset._entry, section ".printk_index", align 4
@kszphy_setup_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.20, i32 292, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set led mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kszphy_setup_led\00", [47 x i8] zeroinitializer }, align 32
@kszphy_setup_led._entry_ptr = internal global ptr @kszphy_setup_led._entry, section ".printk_index", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"micrel,led-mode\00", [16 x i8] zeroinitializer }, align 32
@kszphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.20, i32 1376, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid led mode: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kszphy_probe\00", [19 x i8] zeroinitializer }, align 32
@kszphy_probe._entry_ptr = internal global ptr @kszphy_probe._entry, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmii-ref\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"micrel,rmii-reference-clock-select-25-mhz\00", [54 x i8] zeroinitializer }, align 32
@kszphy_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.20, i32 1399, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Clock rate out of range: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@kszphy_probe._entry_ptr.36 = internal global ptr @kszphy_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"micrel,fiber-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_receive_errors\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy_idle_errors\00", [16 x i8] zeroinitializer }, align 32
@ksz886x_cable_test_one_pair.ethtool_pair = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@ksz886x_cable_test_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.20, i32 1480, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ksz886x_cable_test_wait_for_completion\00", [57 x i8] zeroinitializer }, align 32
@ksz886x_cable_test_wait_for_completion._entry_ptr = internal global ptr @ksz886x_cable_test_wait_for_completion._entry, section ".printk_index", align 4
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txen-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txc-skew-ps\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxdv-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxc-skew-ps\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxd0-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxd1-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxd2-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxd3-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txd0-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txd1-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txd2-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txd3-skew-ps\00", [19 x i8] zeroinitializer }, align 32
@ksz9031_config_init.clk_skews = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.45, ptr @.str.43], [24 x i8] zeroinitializer }, align 32
@ksz9031_config_init.rx_data_skews = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@ksz9031_config_init.tx_data_skews = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [16 x i8] zeroinitializer }, align 32
@ksz9031_config_init.control_skews = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@ksz9031_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.20, i32 881, ptr @.str.56, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"*-skew-ps values should be used only with RGMII PHY modes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ksz9031_config_init\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ksz9031_config_init._entry_ptr = internal global ptr @ksz9031_config_init._entry, section ".printk_index", align 4
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"micrel,force-master\00", [44 x i8] zeroinitializer }, align 32
@ksz9031_config_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.20, i32 914, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to force the phy to master mode\0A\00", [56 x i8] zeroinitializer }, align 32
@ksz9031_config_init._entry_ptr.60 = internal global ptr @ksz9031_config_init._entry.58, section ".printk_index", align 4
@__const.ksz9031_of_load_skew_values.val = private unnamed_addr constant [4 x i32] [i32 -1, i32 -2, i32 -3, i32 -4], align 4
@lanphy_write_page_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.20, i32 1619, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: phy_write has returned error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lanphy_write_page_reg\00", [42 x i8] zeroinitializer }, align 32
@lanphy_write_page_reg._entry_ptr = internal global ptr @lanphy_write_page_reg._entry, section ".printk_index", align 4
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxc-skew-psec\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txc-skew-psec\00", [18 x i8] zeroinitializer }, align 32
@__const.ksz9131_config_init.clk_skews = private unnamed_addr constant [2 x ptr] [ptr @.str.63, ptr @.str.64], align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxd0-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxd1-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxd2-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxd3-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@__const.ksz9131_config_init.rx_data_skews = private unnamed_addr constant [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], align 4
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txd0-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txd1-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txd2-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txd3-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@__const.ksz9131_config_init.tx_data_skews = private unnamed_addr constant [4 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], align 4
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txen-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxdv-skew-psec\00", [17 x i8] zeroinitializer }, align 32
@__const.ksz9131_config_init.control_skews = private unnamed_addr constant [2 x ptr] [ptr @.str.73, ptr @.str.74], align 8
@__const.ksz9131_of_load_skew_values.val = private unnamed_addr constant [4 x i32] [i32 -701, i32 -702, i32 -703, i32 -704], align 4
@switch.table.ksz8081_config_aneg = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 -24576, i16 -8192, i16 -32768], [26 x i8] zeroinitializer }, align 32
@switch.table.ksz9031_config_init = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 480, i16 992, i16 480, i16 992], [24 x i8] zeroinitializer }, align 32
@switch.table.ksz9031_config_init.75 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 25, i16 25, i16 0], [24 x i8] zeroinitializer }, align 32
@switch.table.ksz9031_config_init.76 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 7, i16 0, i16 7, i16 0], [24 x i8] zeroinitializer }, align 32
@switch.table.ksz9031_config_init.77 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 12, i16 7, i16 7, i16 12], [24 x i8] zeroinitializer }, align 32
@switch.table.ksz9131_config_init = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 4096, i16 0, i16 0, i16 4096], [24 x i8] zeroinitializer }, align 32
@switch.table.ksz9131_config_init.78 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 4096, i16 0, i16 4096, i16 0], [24 x i8] zeroinitializer }, align 32
@switch.table.ksz886x_config_aneg = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 40, i16 56, i16 32], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2233392, i64 2233696]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 31]
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"ksphy_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1719, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1723, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"ks8737_type\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 162, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1734, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"ksz8021_type\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 139, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1749, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1764, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"ksz8041_type\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 146, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1781, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1794, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"ksz8051_type\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 150, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1809, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1824, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"ksz8081_type\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 155, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1845, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1856, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"ksz9021_type\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 166, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1874, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1891, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1907, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1921, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1936, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1946, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1957, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1966, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 311, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 331, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 345, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 292, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1369, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1375, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1383, i32 40 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1391, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1398, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 380, i32 40 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 119, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 120, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [13 x i8] c"ethtool_pair\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1487, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1478, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 621, i32 9 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 621, i32 25 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 622, i32 9 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 622, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 625, i32 9 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 625, i32 25 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 626, i32 9 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 626, i32 25 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 629, i32 9 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 629, i32 25 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 630, i32 9 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 630, i32 25 }
@___asan_gen_.281 = private unnamed_addr constant [10 x i8] c"clk_skews\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 827, i32 21 }
@___asan_gen_.284 = private unnamed_addr constant [14 x i8] c"rx_data_skews\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 828, i32 21 }
@___asan_gen_.287 = private unnamed_addr constant [14 x i8] c"tx_data_skews\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 832, i32 21 }
@___asan_gen_.290 = private unnamed_addr constant [14 x i8] c"control_skews\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 836, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 880, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 898, i32 38 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 914, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1618, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1042, i32 24 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1042, i32 41 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1044, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1044, i32 21 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1045, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1045, i32 21 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1048, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1048, i32 21 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1049, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1049, i32 21 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1051, i32 28 }
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.357 = private constant [28 x i8] c"../drivers/net/phy/micrel.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1051, i32 46 }
@___asan_gen_.359 = private unnamed_addr constant [33 x i8] c"switch.table.ksz8081_config_aneg\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [33 x i8] c"switch.table.ksz9031_config_init\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [36 x i8] c"switch.table.ksz9031_config_init.75\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [36 x i8] c"switch.table.ksz9031_config_init.76\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [36 x i8] c"switch.table.ksz9031_config_init.77\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [33 x i8] c"switch.table.ksz9131_config_init\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [36 x i8] c"switch.table.ksz9131_config_init.78\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [33 x i8] c"switch.table.ksz886x_config_aneg\00", align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author429, ptr @__UNIQUE_ID_description428, ptr @__UNIQUE_ID_file430, ptr @__UNIQUE_ID_license431, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_micrel__427_1973_phy_module_init6, ptr @ksz886x_cable_test_wait_for_completion._entry, ptr @ksz886x_cable_test_wait_for_completion._entry_ptr, ptr @ksz9031_config_init._entry, ptr @ksz9031_config_init._entry.58, ptr @ksz9031_config_init._entry_ptr, ptr @ksz9031_config_init._entry_ptr.60, ptr @kszphy_broadcast_disable._entry, ptr @kszphy_broadcast_disable._entry_ptr, ptr @kszphy_config_reset._entry, ptr @kszphy_config_reset._entry_ptr, ptr @kszphy_nand_tree_disable._entry, ptr @kszphy_nand_tree_disable._entry_ptr, ptr @kszphy_probe._entry, ptr @kszphy_probe._entry.34, ptr @kszphy_probe._entry_ptr, ptr @kszphy_probe._entry_ptr.36, ptr @kszphy_setup_led._entry, ptr @kszphy_setup_led._entry_ptr, ptr @lanphy_write_page_reg._entry, ptr @lanphy_write_page_reg._entry_ptr, ptr @phy_module_exit, ptr @ksphy_driver, ptr @.str, ptr @ks8737_type, ptr @.str.1, ptr @ksz8021_type, ptr @.str.2, ptr @.str.3, ptr @ksz8041_type, ptr @.str.4, ptr @.str.5, ptr @ksz8051_type, ptr @.str.6, ptr @.str.7, ptr @ksz8081_type, ptr @.str.8, ptr @.str.9, ptr @ksz9021_type, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ksz886x_cable_test_one_pair.ethtool_pair, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @ksz9031_config_init.clk_skews, ptr @ksz9031_config_init.rx_data_skews, ptr @ksz9031_config_init.tx_data_skews, ptr @ksz9031_config_init.control_skews, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @switch.table.ksz8081_config_aneg, ptr @switch.table.ksz9031_config_init, ptr @switch.table.ksz9031_config_init.75, ptr @switch.table.ksz9031_config_init.76, ptr @switch.table.ksz9031_config_init.77, ptr @switch.table.ksz9131_config_init, ptr @switch.table.ksz9131_config_init.78, ptr @switch.table.ksz886x_config_aneg], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksphy_driver to i32), i32 4248, i32 5312, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8737_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8021_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8041_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8051_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8081_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9021_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kszphy_broadcast_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kszphy_nand_tree_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kszphy_config_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kszphy_setup_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kszphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kszphy_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz886x_cable_test_one_pair.ethtool_pair to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz886x_cable_test_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9031_config_init.clk_skews to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9031_config_init.rx_data_skews to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9031_config_init.tx_data_skews to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9031_config_init.control_skews to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9031_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9031_config_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanphy_write_page_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz8081_config_aneg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9031_config_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9031_config_init.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9031_config_init.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9031_config_init.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9131_config_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz9131_config_init.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksz886x_config_aneg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @ksphy_driver, i32 noundef 18, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_drivers_unregister(ptr noundef nonnull @ksphy_driver, i32 noundef 18) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kszphy_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %has_broadcast_disable = getelementptr inbounds %struct.kszphy_type, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %has_broadcast_disable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_broadcast_disable, align 2, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then4.do.end.i_crit_edge, label %out.i

if.then4.do.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

out.i:                                            ; preds = %if.then4
  %10 = trunc i32 %call.i.i to i16
  %conv.i = or i16 %10, 512
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i, align 8
  %call.i3.i = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 22, i16 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i, label %out.i.if.end5_crit_edge, label %out.i.do.end.i_crit_edge

out.i.do.end.i_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

out.i.if.end5_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end.i:                                         ; preds = %out.i.do.end.i_crit_edge, %if.then4.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.18) #12
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %out.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %has_nand_tree_disable = getelementptr inbounds %struct.kszphy_type, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %has_nand_tree_disable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_nand_tree_disable, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  %bus.i.i17 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %17 = ptrtoint ptr %bus.i.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i17, align 8
  %addr.i.i18 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %19 = ptrtoint ptr %addr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i18, align 8
  %call.i.i19 = tail call i32 @mdiobus_read(ptr noundef %18, i32 noundef %20, i32 noundef 22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.i20 = icmp slt i32 %call.i.i19, 0
  br i1 %cmp.i20, label %if.then7.do.end.i25_crit_edge, label %if.end.i

if.then7.do.end.i25_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i25

if.end.i:                                         ; preds = %if.then7
  %and.i = and i32 %call.i.i19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i21 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i21, label %if.end.i.if.end9_crit_edge, label %out.i24

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

out.i24:                                          ; preds = %if.end.i
  %21 = trunc i32 %call.i.i19 to i16
  %conv.i22 = and i16 %21, -33
  %22 = ptrtoint ptr %bus.i.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i17, align 8
  %24 = ptrtoint ptr %addr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i18, align 8
  %call.i3.i23 = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 22, i16 noundef zeroext %conv.i22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i23)
  %tobool5.not.i = icmp eq i32 %call.i3.i23, 0
  br i1 %tobool5.not.i, label %out.i24.if.end9_crit_edge, label %out.i24.do.end.i25_crit_edge

out.i24.do.end.i25_crit_edge:                     ; preds = %out.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i25

out.i24.if.end9_crit_edge:                        ; preds = %out.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end.i25:                                       ; preds = %out.i24.do.end.i25_crit_edge, %if.then7.do.end.i25_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.23) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end.i25, %out.i24.if.end9_crit_edge, %if.end.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %call10 = tail call fastcc i32 @kszphy_config_reset(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kszphy_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %3 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %interrupts, align 8
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 8
  %config_intr = getelementptr inbounds %struct.phy_driver, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %config_intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_intr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then1

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 %7(ptr noundef %phydev) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @genphy_suspend(ptr noundef %phydev) #9
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kszphy_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_resume(ptr noundef %phydev) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %call1 = tail call fastcc i32 @kszphy_config_reset(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %3 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.set = or i16 %bf.load, 1
  store i16 %bf.set, ptr %interrupts, align 8
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 8
  %config_intr = getelementptr inbounds %struct.phy_driver, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %config_intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_intr, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 %7(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kszphy_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %driver_data = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %interrupt_level_mask = getelementptr inbounds %struct.kszphy_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %interrupt_level_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %interrupt_level_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = zext i16 %5 to i32
  %phi.bo = xor i32 %phi.cast, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mask.0 = phi i32 [ %phi.bo, %if.then ], [ -513, %land.lhs.true.if.end_crit_edge ], [ -513, %entry.if.end_crit_edge ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and = and i32 %call.i, %mask.0
  %conv7 = trunc i32 %and to i16
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i49 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 31, i16 noundef zeroext %conv7) #9
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %14 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp9.not = icmp eq i16 %bf.clear, 0
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 8
  br i1 %cmp9.not, label %if.else18, label %if.then11

if.then11:                                        ; preds = %if.end5
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 27) #9
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i52 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 27, i16 noundef zeroext 1280) #9
  br label %cleanup

if.else18:                                        ; preds = %if.end5
  %call.i55 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 27, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool21.not = icmp eq i32 %call.i55, 0
  br i1 %tobool21.not, label %if.end23, label %if.else18.cleanup_crit_edge

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 8
  %call.i.i58 = tail call i32 @mdiobus_read(ptr noundef %25, i32 noundef %27, i32 noundef 27) #9
  %28 = tail call i32 @llvm.smin.i32(i32 %call.i.i58, i32 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.else18.cleanup_crit_edge, %if.end15, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ %19, %if.then11.cleanup_crit_edge ], [ %call.i55, %if.else18.cleanup_crit_edge ], [ %call.i52, %if.end15 ], [ %28, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kszphy_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_error(ptr noundef %phydev) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_trigger_machine(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kszphy_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %driver_data = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 32, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup62_crit_edge, label %if.end

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end:                                           ; preds = %entry
  %priv3 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %priv3, align 8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %call.i, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  %led_mode19 = getelementptr inbounds %struct.kszphy_priv, ptr %call.i, i32 0, i32 1
  br i1 %tobool5.not, label %if.end.if.end20.sink.split_crit_edge, label %if.then6

if.end.if.end20.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.sink.split

if.then6:                                         ; preds = %if.end
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef %led_mode19, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool8.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool8.not, label %if.end11, label %if.then6.if.end20.sink.split_crit_edge

if.then6.if.end20.sink.split_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.sink.split

if.end11:                                         ; preds = %if.then6
  %10 = ptrtoint ptr %led_mode19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %led_mode19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp = icmp sgt i32 %.pr, 3
  br i1 %cmp, label %do.end, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.30, i32 noundef %.pr) #12
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %do.end, %if.then6.if.end20.sink.split_crit_edge, %if.end.if.end20.sink.split_crit_edge
  %11 = ptrtoint ptr %led_mode19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %led_mode19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end11.if.end20_crit_edge
  %call23 = tail call ptr @devm_clk_get(ptr noundef %phydev, ptr noundef nonnull @.str.32) #9
  %tobool.not.i = icmp eq ptr %call23, null
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end20.if.end52_crit_edge, label %if.then25

if.end20.if.end52_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then25:                                        ; preds = %if.end20
  %call26 = tail call i32 @clk_get_rate(ptr noundef nonnull %call23) #9
  %has_rmii_ref_clk_sel = getelementptr inbounds %struct.kszphy_type, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %has_rmii_ref_clk_sel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_rmii_ref_clk_sel, align 4, !range !195
  %rmii_ref_clk_sel = getelementptr inbounds %struct.kszphy_priv, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %rmii_ref_clk_sel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %rmii_ref_clk_sel, align 8
  %call.i99 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i99, null
  %15 = add i32 %call26, -24500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %15)
  %16 = icmp ult i32 %15, 999999
  br i1 %16, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %frombool29 = zext i1 %tobool.i to i8
  %rmii_ref_clk_sel_val = getelementptr inbounds %struct.kszphy_priv, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %rmii_ref_clk_sel_val to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool29, ptr %rmii_ref_clk_sel_val, align 1
  br label %if.end52

if.else35:                                        ; preds = %if.then25
  %18 = add i32 %call26, -49500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %18)
  %19 = icmp ult i32 %18, 999999
  br i1 %19, label %if.then39, label %do.end46

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  %lnot = xor i1 %tobool.i, true
  %rmii_ref_clk_sel_val41 = getelementptr inbounds %struct.kszphy_priv, ptr %call.i, i32 0, i32 3
  %frombool42 = zext i1 %lnot to i8
  %20 = ptrtoint ptr %rmii_ref_clk_sel_val41 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool42, ptr %rmii_ref_clk_sel_val41, align 1
  br label %if.end52

do.end46:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.35, i32 noundef %call26) #12
  br label %cleanup62

if.end52:                                         ; preds = %if.then39, %if.then32, %if.end20.if.end52_crit_edge
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i.i100 = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.37, ptr noundef null) #9
  %tobool.i.i.not = icmp eq ptr %call.i.i100, null
  br i1 %tobool.i.i.not, label %if.end52.if.end56_crit_edge, label %if.then55

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %port = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %23 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %port, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52.if.end56_crit_edge
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %24 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_flags, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end56.cleanup62_crit_edge, label %if.then58

if.end56.cleanup62_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %rmii_ref_clk_sel59 = getelementptr inbounds %struct.kszphy_priv, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %rmii_ref_clk_sel59 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %rmii_ref_clk_sel59, align 8
  %rmii_ref_clk_sel_val60 = getelementptr inbounds %struct.kszphy_priv, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %rmii_ref_clk_sel_val60 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %rmii_ref_clk_sel_val60, align 1
  br label %cleanup62

cleanup62:                                        ; preds = %if.then58, %if.end56.cleanup62_crit_edge, %do.end46, %entry.cleanup62_crit_edge
  %retval.1 = phi i32 [ -12, %entry.cleanup62_crit_edge ], [ -22, %do.end46 ], [ 0, %if.then58 ], [ 0, %if.end56.cleanup62_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kszphy_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kszphy_get_strings(ptr nocapture noundef readnone %phydev, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlcpy(ptr noundef %data, ptr noundef nonnull @.str.38, i32 noundef 32) #9
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call.1 = tail call i32 @strlcpy(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.39, i32 noundef 32) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kszphy_get_stats(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.kszphy_get_stat.exit_crit_edge, label %if.else.i

entry.kszphy_get_stat.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kszphy_get_stat.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %call.i.i, 65535
  %6 = zext i32 %and.i to i64
  %arrayidx5.i = getelementptr %struct.kszphy_priv, ptr %1, i32 0, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx5.i, align 8
  %add.i = add i64 %8, %6
  store i64 %add.i, ptr %arrayidx5.i, align 8
  br label %kszphy_get_stat.exit

kszphy_get_stat.exit:                             ; preds = %if.else.i, %entry.kszphy_get_stat.exit_crit_edge
  %ret.0.i = phi i64 [ %add.i, %if.else.i ], [ -1, %entry.kszphy_get_stat.exit_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %ret.0.i, ptr %data, align 8
  %10 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1.i, align 8
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i.i.1 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.1, label %kszphy_get_stat.exit.kszphy_get_stat.exit.1_crit_edge, label %if.else.i.1

kszphy_get_stat.exit.kszphy_get_stat.exit.1_crit_edge: ; preds = %kszphy_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kszphy_get_stat.exit.1

if.else.i.1:                                      ; preds = %kszphy_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.1 = and i32 %call.i.i.1, 255
  %16 = zext i32 %and.i.1 to i64
  %arrayidx5.i.1 = getelementptr %struct.kszphy_priv, ptr %11, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx5.i.1, align 8
  %add.i.1 = add i64 %18, %16
  store i64 %add.i.1, ptr %arrayidx5.i.1, align 8
  br label %kszphy_get_stat.exit.1

kszphy_get_stat.exit.1:                           ; preds = %if.else.i.1, %kszphy_get_stat.exit.kszphy_get_stat.exit.1_crit_edge
  %ret.0.i.1 = phi i64 [ %add.i.1, %if.else.i.1 ], [ -1, %kszphy_get_stat.exit.kszphy_get_stat.exit.1_crit_edge ]
  %arrayidx.1 = getelementptr i64, ptr %data, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %ret.0.i.1, ptr %arrayidx.1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8041_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #9
  %0 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %of_node1.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node1.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.37, ptr noundef null) #9
  %tobool.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_flags, align 8
  %or = or i32 %4, 2
  store i32 %or, ptr %dev_flags, align 8
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %or.i.i24 = or i32 %6, 12
  store i32 %or.i.i24, ptr %mask, align 4
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %call.i.i25 = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #9
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported, align 4
  %or.i.i26 = or i32 %8, 1024
  store i32 %or.i.i26, ptr %supported, align 4
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %call.i.i27 = call i32 @__bitmap_and(ptr noundef %advertising, ptr noundef %advertising, ptr noundef nonnull %mask, i32 noundef 92) #9
  %9 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %advertising, align 4
  %or.i.i28 = or i32 %10, 1024
  store i32 %or.i.i28, ptr %advertising, align 4
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %autoneg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call14 = call i32 @kszphy_config_init(ptr noundef %phydev)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #9
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8041_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %speed, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8051_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id.i, align 4
  %and.i = and i32 %1, 16777200
  call void @__sanitizer_cov_trace_const_cmp4(i32 2233680, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 2233680
  br i1 %cmp.not.i, label %if.end.i, label %entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge

entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz8051_ksz8795_match_phy_device.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  %and4.i = and i32 %call.i.i, 1
  %spec.select = select i1 %cmp1.i, i32 %call.i.i, i32 %and4.i
  br label %ksz8051_ksz8795_match_phy_device.exit

ksz8051_ksz8795_match_phy_device.exit:            ; preds = %if.end.i, %entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge ], [ %spec.select, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8081_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext -32768, i16 noundef zeroext 0) #9
  %call1 = tail call i32 @kszphy_config_init(ptr noundef %phydev)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8081_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ksz8081_config_aneg, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i5 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext -8192, i16 noundef zeroext %switch.load) #9
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i5, %switch.lookup ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8081_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %and2.i = and i32 %call.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %mdix_ctrl5.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %mdix_ctrl5.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %mdix_ctrl5.i, align 1
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mdix_ctrl5.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mdix_ctrl5.i, align 1
  br label %if.end9.i

if.else7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mdix_ctrl8.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %6 = ptrtoint ptr %mdix_ctrl8.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %mdix_ctrl8.i, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else7.i, %if.else.i, %if.then4.i
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i34.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %cmp11.i = icmp slt i32 %call.i34.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup_crit_edge, label %if.end

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %and14.i = and i32 %call.i34.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %mdix18.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %..i = select i1 %tobool15.not.i, i8 2, i8 1
  %11 = ptrtoint ptr %mdix18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %..i, ptr %mdix18.i, align 8
  %call1 = tail call i32 @genphy_read_status(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i34.i, %if.end9.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz886x_cable_test_start(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_flags, align 8
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 12288, i16 noundef zeroext 0) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz886x_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  %pair_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pair_mask) #9
  %0 = ptrtoint ptr %pair_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %pair_mask, align 4
  %1 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %finished, align 1
  %phy_id.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %land.rhs

land.rhs:                                         ; preds = %if.end10.land.rhs_crit_edge, %entry
  %ret.042 = phi i32 [ -1, %entry ], [ %ret.1.lcssa, %if.end10.land.rhs_crit_edge ]
  %retries.041 = phi i32 [ 20, %entry ], [ %dec, %if.end10.land.rhs_crit_edge ]
  %dec = add nsw i32 %retries.041, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.041)
  %tobool1.not = icmp eq i32 %retries.041, 0
  br i1 %tobool1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %pair_mask, i32 noundef 4, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp36 = icmp slt i32 %call, 4
  br i1 %cmp36, label %while.body.for.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %pair.037 = phi i32 [ %call7, %for.inc.for.body_crit_edge ], [ %call, %while.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pair.037)
  %cmp.i = icmp eq i32 %pair.037, 0
  %2 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_id.i, align 4
  %and.i = and i32 %3, 16777200
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %for.body.cleanup_crit_edge [
    i32 2233696, label %sw.bb.i
    i32 2233392, label %sw.bb1.i
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select.i = select i1 %cmp.i, i16 -24576, i16 -8192
  %call.i.i = call i32 @phy_modify(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext -8192, i16 noundef zeroext %spec.select.i) #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select83.i = select i1 %cmp.i, i16 40, i16 56
  %call.i67.i = call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 56, i16 noundef zeroext %spec.select83.i) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call.i.i, %sw.bb.i ], [ %call.i67.i, %sw.bb1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %sw.epilog.i.ksz886x_cable_test_one_pair.exit_crit_edge

sw.epilog.i.ksz886x_cable_test_one_pair.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz886x_cable_test_one_pair.exit

if.end5.i:                                        ; preds = %sw.epilog.i
  %5 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i, align 8
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i.i, align 8
  %call.i70.i = call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 29, i16 noundef zeroext -32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool7.not.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.ksz886x_cable_test_one_pair.exit_crit_edge

if.end5.i.ksz886x_cable_test_one_pair.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz886x_cable_test_one_pair.exit

if.end9.i:                                        ; preds = %if.end5.i
  %call.i71.i = call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i71.i, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 1480) #9
  call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #9
  %9 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i, align 8
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i, align 8
  %call.i66.i.i = call i32 @mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 29) #9
  %13 = and i32 %call.i66.i.i, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %13)
  %.not67.i.i = icmp eq i32 %13, 32768
  br i1 %.not67.i.i, label %if.end9.i.land.lhs.true.i.i_crit_edge, label %if.end9.i.for.end.i.i_crit_edge

if.end9.i.for.end.i.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end9.i.land.lhs.true.i.i_crit_edge:            ; preds = %if.end9.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then23.i.i.land.lhs.true.i.i_crit_edge, %if.end9.i.land.lhs.true.i.i_crit_edge
  %call16.i.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call16.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then19.i.i, label %if.then23.i.i

if.then19.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i61.i.i = call i32 @mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 29) #9
  %.pre.i.i = and i32 %call.i61.i.i, -2147450880
  br label %for.end.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #9
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i.i = call i32 @mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 29) #9
  %22 = and i32 %call.i.i.i, -2147450880
  %.not.i.i = icmp eq i32 %22, 32768
  br i1 %.not.i.i, label %if.then23.i.i.land.lhs.true.i.i_crit_edge, label %if.then23.i.i.for.end.i.i_crit_edge

if.then23.i.i.for.end.i.i_crit_edge:              ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.then23.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %if.then23.i.i.for.end.i.i_crit_edge, %if.then19.i.i, %if.end9.i.for.end.i.i_crit_edge
  %.pre-phi.i.i = phi i32 [ %13, %if.end9.i.for.end.i.i_crit_edge ], [ %.pre.i.i, %if.then19.i.i ], [ %22, %if.then23.i.i.for.end.i.i_crit_edge ]
  %val.0.i72.i = phi i32 [ %call.i66.i.i, %if.end9.i.for.end.i.i_crit_edge ], [ %call.i61.i.i, %if.then19.i.i ], [ %call.i.i.i, %if.then23.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i72.i)
  %cmp29.i.i = icmp slt i32 %val.0.i72.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %.pre-phi.i.i)
  %.not62.i.i = icmp eq i32 %.pre-phi.i.i, 32768
  %23 = select i1 %.not62.i.i, i32 -110, i32 0
  %__ret.0.i.i = select i1 %cmp29.i.i, i32 %val.0.i72.i, i32 %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i.i)
  %tobool33.not.i.i = icmp eq i32 %__ret.0.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end13.i, label %ksz886x_cable_test_wait_for_completion.exit.i

ksz886x_cable_test_wait_for_completion.exit.i:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %__ret.0.i.i) #12
  br label %ksz886x_cable_test_one_pair.exit

if.end13.i:                                       ; preds = %for.end.i.i
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i75.i = call i32 @mdiobus_read(ptr noundef %25, i32 noundef %27, i32 noundef 29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp15.i = icmp slt i32 %call.i75.i, 0
  br i1 %cmp15.i, label %if.end13.i.ksz886x_cable_test_one_pair.exit_crit_edge, label %if.end18.i

if.end13.i.ksz886x_cable_test_one_pair.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz886x_cable_test_one_pair.exit

if.end18.i:                                       ; preds = %if.end13.i
  %28 = and i32 %call.i75.i, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 24576
  br i1 %cmp.i.i, label %if.end18.i.for.inc_crit_edge, label %if.end22.i

if.end18.i.for.inc_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end22.i:                                       ; preds = %if.end18.i
  %arrayidx.i = getelementptr [2 x i32], ptr @ksz886x_cable_test_one_pair.ethtool_pair, i32 0, i32 %pair.037
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %conv23.i = trunc i32 %30 to i8
  %31 = lshr i32 %call.i75.i, 13
  %32 = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %.not = icmp eq i32 %32, 3
  %switch.idx.cast = trunc i32 %32 to i8
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 1
  %retval.0.i76.i = select i1 %.not, i8 0, i8 %switch.offset
  %call27.i = call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext %conv23.i, i8 noundef zeroext %retval.0.i76.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end22.i.ksz886x_cable_test_one_pair.exit_crit_edge

if.end22.i.ksz886x_cable_test_one_pair.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz886x_cable_test_one_pair.exit

if.end30.i:                                       ; preds = %if.end22.i
  %shr.off.i.i = add nsw i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off.i.i)
  %switch.i.i = icmp ult i32 %shr.off.i.i, 2
  br i1 %switch.i.i, label %if.end34.i, label %if.end30.i.if.end6_crit_edge

if.end30.i.if.end6_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end34.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = and i32 %call.i75.i, 511
  %narrow.i.i = mul nuw nsw i32 %33, 40
  %call39.i = call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext %conv23.i, i32 noundef %narrow.i.i) #9
  br label %ksz886x_cable_test_one_pair.exit

ksz886x_cable_test_one_pair.exit:                 ; preds = %if.end34.i, %if.end22.i.ksz886x_cable_test_one_pair.exit_crit_edge, %if.end13.i.ksz886x_cable_test_one_pair.exit_crit_edge, %ksz886x_cable_test_wait_for_completion.exit.i, %if.end5.i.ksz886x_cable_test_one_pair.exit_crit_edge, %sw.epilog.i.ksz886x_cable_test_one_pair.exit_crit_edge
  %retval.0.i = phi i32 [ %call39.i, %if.end34.i ], [ %ret.0.i, %sw.epilog.i.ksz886x_cable_test_one_pair.exit_crit_edge ], [ %call.i70.i, %if.end5.i.ksz886x_cable_test_one_pair.exit_crit_edge ], [ %__ret.0.i.i, %ksz886x_cable_test_wait_for_completion.exit.i ], [ %call.i75.i, %if.end13.i.ksz886x_cable_test_one_pair.exit_crit_edge ], [ %call27.i, %if.end22.i.ksz886x_cable_test_one_pair.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %retval.0.i)
  %cmp3 = icmp eq i32 %retval.0.i, -11
  br i1 %cmp3, label %ksz886x_cable_test_one_pair.exit.for.inc_crit_edge, label %if.end

ksz886x_cable_test_one_pair.exit.for.inc_crit_edge: ; preds = %ksz886x_cable_test_one_pair.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %ksz886x_cable_test_one_pair.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp4 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end30.i.if.end6_crit_edge
  %retval.0.i2333 = phi i32 [ %retval.0.i, %if.end.if.end6_crit_edge ], [ 0, %if.end30.i.if.end6_crit_edge ]
  call void @_clear_bit(i32 noundef %pair.037, ptr noundef nonnull %pair_mask) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %ksz886x_cable_test_one_pair.exit.for.inc_crit_edge, %if.end18.i.for.inc_crit_edge
  %retval.0.i24 = phi i32 [ -11, %ksz886x_cable_test_one_pair.exit.for.inc_crit_edge ], [ %retval.0.i2333, %if.end6 ], [ -11, %if.end18.i.for.inc_crit_edge ]
  %add = add i32 %pair.037, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %pair_mask, i32 noundef 4, i32 noundef %add) #9
  %cmp = icmp slt i32 %call7, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.042, %while.body.for.end_crit_edge ], [ %retval.0.i24, %for.inc.for.end_crit_edge ]
  %34 = ptrtoint ptr %pair_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pair_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool8.not = icmp eq i32 %35, 0
  br i1 %tobool8.not, label %for.end.while.end_crit_edge, label %if.end10

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end10:                                         ; preds = %for.end
  call void @msleep(i32 noundef 2) #9
  %36 = ptrtoint ptr %pair_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.pr = load i32, ptr %pair_mask, align 4
  %tobool.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool.not, label %if.end10.while.end_crit_edge, label %if.end10.land.rhs_crit_edge

if.end10.land.rhs_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %for.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ %ret.1.lcssa, %if.end10.while.end_crit_edge ], [ %ret.042, %land.rhs.while.end_crit_edge ], [ %ret.1.lcssa, %for.end.while.end_crit_edge ]
  %37 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %finished, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %while.end ], [ -19, %for.body.cleanup_crit_edge ], [ %retval.0.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pair_mask) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8061_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 2, i16 noundef zeroext -18918) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @kszphy_config_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9021_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %dev_walker.0 = phi ptr [ %phydev, %entry ], [ %3, %land.rhs.do.body_crit_edge ]
  %of_node1 = getelementptr inbounds %struct.device, ptr %dev_walker.0, i32 0, i32 27
  %0 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.then.critedge

land.rhs:                                         ; preds = %do.body
  %parent = getelementptr inbounds %struct.device, ptr %dev_walker.0, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.rhs.if.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.critedge:                                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ksz9021_load_values_from_of(ptr noundef %phydev, ptr noundef nonnull %1, i16 noundef zeroext 260, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45)
  tail call fastcc void @ksz9021_load_values_from_of(ptr noundef %phydev, ptr noundef nonnull %1, i16 noundef zeroext 261, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49)
  tail call fastcc void @ksz9021_load_values_from_of(ptr noundef %phydev, ptr noundef nonnull %1, i16 noundef zeroext 262, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53)
  br label %if.end

if.end:                                           ; preds = %if.then.critedge, %land.rhs.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9031_get_features(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_read_abilities(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supported, align 4
  %and.i.i = and i32 %1, -24577
  %or.i.i = or i32 %and.i.i, 8192
  store i32 %or.i.i, ptr %supported, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_write_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9031_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  %update = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 28, i32 noundef 35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup44_crit_edge, label %ksz9031_enable_edpd.exit

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

ksz9031_enable_edpd.exit:                         ; preds = %entry
  %0 = trunc i32 %call.i to i16
  %conv.i = or i16 %0, 1
  %call1.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 28, i32 noundef 35, i16 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %ksz9031_enable_edpd.exit.cleanup44_crit_edge, label %ksz9031_enable_edpd.exit.do.body_crit_edge

ksz9031_enable_edpd.exit.do.body_crit_edge:       ; preds = %ksz9031_enable_edpd.exit
  br label %do.body

ksz9031_enable_edpd.exit.cleanup44_crit_edge:     ; preds = %ksz9031_enable_edpd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %ksz9031_enable_edpd.exit.do.body_crit_edge
  %dev_walker.0 = phi ptr [ %4, %land.rhs.do.body_crit_edge ], [ %phydev, %ksz9031_enable_edpd.exit.do.body_crit_edge ]
  %of_node1 = getelementptr inbounds %struct.device, ptr %dev_walker.0, i32 0, i32 27
  %1 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node1, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.rhs, label %if.then4.critedge

land.rhs:                                         ; preds = %do.body
  %parent = getelementptr inbounds %struct.device, ptr %dev_walker.0, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.rhs.if.end37_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then4.critedge:                                ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %update) #9
  %5 = ptrtoint ptr %update to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %update, align 1
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %6 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface.i, align 4
  %8 = add i32 %7, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %if.then6, label %if.then4.critedge.if.end11_crit_edge

if.then4.critedge.if.end11_crit_edge:             ; preds = %if.then4.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.then4.critedge
  %switch.tableidx = add i32 %7, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

switch.lookup:                                    ; preds = %if.then6
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %11)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep111 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init.75, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep111 to i32
  call void @__asan_load2_noabort(i32 %12)
  %switch.load112 = load i16, ptr %switch.gep111, align 2
  %switch.gep113 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init.76, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep113 to i32
  call void @__asan_load2_noabort(i32 %13)
  %switch.load114 = load i16, ptr %switch.gep113, align 2
  %switch.gep115 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init.77, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep115 to i32
  call void @__asan_load2_noabort(i32 %14)
  %switch.load116 = load i16, ptr %switch.gep115, align 2
  %15 = shl nuw nsw i16 %switch.load116, 4
  %conv44.i = or i16 %15, %switch.load114
  %call.i78 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef 4, i16 noundef zeroext %conv44.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  br i1 %cmp.i79, label %switch.lookup.cleanup.thread_crit_edge, label %if.end47.i

switch.lookup.cleanup.thread_crit_edge:           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end47.i:                                       ; preds = %switch.lookup
  %conv155.i = mul nuw i16 %switch.load116, 4369
  %call156.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef 5, i16 noundef zeroext %conv155.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %cmp157.i = icmp slt i32 %call156.i, 0
  br i1 %cmp157.i, label %if.end47.i.cleanup.thread_crit_edge, label %if.end160.i

if.end47.i.cleanup.thread_crit_edge:              ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end160.i:                                      ; preds = %if.end47.i
  %or267.i = mul nuw nsw i16 %switch.load114, 4369
  %call269.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef 6, i16 noundef zeroext %or267.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269.i)
  %cmp270.i = icmp slt i32 %call269.i, 0
  br i1 %cmp270.i, label %if.end160.i.cleanup.thread_crit_edge, label %ksz9031_config_rgmii_delay.exit

if.end160.i.cleanup.thread_crit_edge:             ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

ksz9031_config_rgmii_delay.exit:                  ; preds = %if.end160.i
  %or326374.i = or i16 %switch.load112, %switch.load
  %call328.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef 8, i16 noundef zeroext %or326374.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328.i)
  %cmp8 = icmp slt i32 %call328.i, 0
  br i1 %cmp8, label %ksz9031_config_rgmii_delay.exit.cleanup.thread_crit_edge, label %ksz9031_config_rgmii_delay.exit.if.end11_crit_edge

ksz9031_config_rgmii_delay.exit.if.end11_crit_edge: ; preds = %ksz9031_config_rgmii_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

ksz9031_config_rgmii_delay.exit.cleanup.thread_crit_edge: ; preds = %ksz9031_config_rgmii_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end11:                                         ; preds = %ksz9031_config_rgmii_delay.exit.if.end11_crit_edge, %if.then6.if.end11_crit_edge, %if.then4.critedge.if.end11_crit_edge
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %2, i16 noundef zeroext 8, i32 noundef 5, ptr noundef nonnull @ksz9031_config_init.clk_skews, i8 noundef zeroext 2, ptr noundef nonnull %update)
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %2, i16 noundef zeroext 4, i32 noundef 4, ptr noundef nonnull @ksz9031_config_init.control_skews, i8 noundef zeroext 2, ptr noundef nonnull %update)
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %2, i16 noundef zeroext 5, i32 noundef 4, ptr noundef nonnull @ksz9031_config_init.rx_data_skews, i8 noundef zeroext 4, ptr noundef nonnull %update)
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %2, i16 noundef zeroext 6, i32 noundef 4, ptr noundef nonnull @ksz9031_config_init.tx_data_skews, i8 noundef zeroext 4, ptr noundef nonnull %update)
  %16 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %update, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not = icmp eq i8 %17, 0
  br i1 %tobool16.not, label %if.end11.if.end24_crit_edge, label %land.lhs.true

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end11
  %18 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interface.i, align 4
  %20 = add i32 %19, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %land.lhs.true.if.end24_crit_edge, label %do.end21

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end21:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.54) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %land.lhs.true.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  %call.i82 = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i82, null
  br i1 %tobool.i.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 8
  %call.i83 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp28 = icmp slt i32 %call.i83, 0
  br i1 %cmp28, label %if.then26.do.end41_crit_edge, label %if.end30

if.then26.do.end41_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

if.end30:                                         ; preds = %if.then26
  %26 = trunc i32 %call.i83 to i16
  %conv = or i16 %26, 6144
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 8
  %call.i86 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 9, i16 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp32 = icmp slt i32 %call.i86, 0
  br i1 %cmp32, label %if.end30.do.end41_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30.do.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

cleanup.thread:                                   ; preds = %ksz9031_config_rgmii_delay.exit.cleanup.thread_crit_edge, %if.end160.i.cleanup.thread_crit_edge, %if.end47.i.cleanup.thread_crit_edge, %switch.lookup.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call328.i, %ksz9031_config_rgmii_delay.exit.cleanup.thread_crit_edge ], [ %call269.i, %if.end160.i.cleanup.thread_crit_edge ], [ %call156.i, %if.end47.i.cleanup.thread_crit_edge ], [ %call.i78, %switch.lookup.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %update) #9
  br label %cleanup44

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %update) #9
  br label %if.end37

if.end37:                                         ; preds = %cleanup, %land.rhs.if.end37_crit_edge
  %call.i87 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 0, i32 noundef 4, i16 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i, label %if.end.i89, label %if.end37.cleanup44_crit_edge

if.end37.cleanup44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end.i89:                                       ; preds = %if.end37
  %call1.i88 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 0, i32 noundef 3, i16 noundef zeroext 6784) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool2.not.i = icmp eq i32 %call1.i88, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i89.cleanup44_crit_edge

if.end.i89.cleanup44_crit_edge:                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end4.i:                                        ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 @genphy_restart_aneg(ptr noundef %phydev) #9
  br label %cleanup44

do.end41:                                         ; preds = %if.end30.do.end41_crit_edge, %if.then26.do.end41_crit_edge
  %result.2.ph = phi i32 [ %call.i86, %if.end30.do.end41_crit_edge ], [ %call.i83, %if.then26.do.end41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %update) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.59) #12
  br label %cleanup44

cleanup44:                                        ; preds = %do.end41, %if.end4.i, %if.end.i89.cleanup44_crit_edge, %if.end37.cleanup44_crit_edge, %cleanup.thread, %ksz9031_enable_edpd.exit.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ %result.2.ph, %do.end41 ], [ %call1.i, %ksz9031_enable_edpd.exit.cleanup44_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %call5.i, %if.end4.i ], [ %call.i87, %if.end37.cleanup44_crit_edge ], [ %call1.i88, %if.end.i89.cleanup44_crit_edge ], [ %call.i, %entry.cleanup44_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9031_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_read_status(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 10) #9
  %and = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp = icmp eq i32 %and, 255
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @phy_init_hw(ptr noundef %phydev) #9
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %bf.clear = and i16 %bf.load, -5
  store i16 %bf.clear, ptr %link, align 8
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv, align 8
  %config_intr = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %config_intr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config_intr, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then2.if.end10_crit_edge, label %land.lhs.true

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then2
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %11 = icmp ult i32 %10, -2
  br i1 %11, label %if.then6, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 %8(ptr noundef %phydev) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true.if.end10_crit_edge, %if.then2.if.end10_crit_edge
  %call.i23 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i23, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan8814_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 22, i16 noundef zeroext 4) #9
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i12.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 23, i16 noundef zeroext 67) #9
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i15.i = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 22, i16 noundef zeroext 16388) #9
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i18.i = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 23) #9
  %16 = trunc i32 %call.i18.i to i16
  %conv = or i16 %16, 1
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %phydev, i32 noundef 4, i16 noundef zeroext 67, i16 noundef zeroext %conv)
  %17 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i, align 8
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i, align 8
  %call.i.i23 = tail call i32 @mdiobus_write(ptr noundef %18, i32 noundef %20, i32 noundef 22, i16 noundef zeroext 5) #9
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 8
  %23 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i, align 8
  %call.i12.i24 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 23, i16 noundef zeroext 19) #9
  %25 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i.i, align 8
  %27 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i.i, align 8
  %call.i15.i25 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef 22, i16 noundef zeroext 16389) #9
  %29 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i.i, align 8
  %31 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i.i, align 8
  %call.i18.i26 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %32, i32 noundef 23) #9
  %33 = trunc i32 %call.i18.i26 to i16
  %conv3 = and i16 %33, -9
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %phydev, i32 noundef 5, i16 noundef zeroext 19, i16 noundef zeroext %conv3)
  %34 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i, align 8
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i.i, align 8
  %call.i.i29 = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 22, i16 noundef zeroext 2) #9
  %38 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i.i, align 8
  %40 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i.i, align 8
  %call.i12.i30 = tail call i32 @mdiobus_write(ptr noundef %39, i32 noundef %41, i32 noundef 23, i16 noundef zeroext 74) #9
  %42 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i.i, align 8
  %44 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i.i, align 8
  %call.i15.i31 = tail call i32 @mdiobus_write(ptr noundef %43, i32 noundef %45, i32 noundef 22, i16 noundef zeroext 16386) #9
  %46 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i.i, align 8
  %48 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i.i, align 8
  %call.i18.i32 = tail call i32 @mdiobus_read(ptr noundef %47, i32 noundef %49, i32 noundef 23) #9
  %50 = trunc i32 %call.i18.i32 to i16
  %51 = and i16 %50, -8
  %conv8 = or i16 %51, 1
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 74, i16 noundef zeroext %conv8)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan8814_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %phydev, i32 noundef 4, i16 noundef zeroext 52, i16 noundef zeroext 3)
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
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 27) #9
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %bus.i19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i19, align 8
  %8 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i20, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 24, i16 noundef zeroext 5) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i21 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 24, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool5.not = icmp eq i32 %call.i21, 0
  br i1 %tobool5.not, label %if.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %bus.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i19, align 8
  %12 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i20, align 8
  %call.i.i24 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 27) #9
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i24, i32 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i21, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan8814_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %and = and i32 %call.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_trigger_machine(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan8804_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 22, i16 noundef zeroext 2) #9
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i12.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 23, i16 noundef zeroext 74) #9
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i15.i = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 22, i16 noundef zeroext 16386) #9
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i18.i = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 23) #9
  %16 = trunc i32 %call.i18.i to i16
  %17 = and i16 %16, -8
  %conv = or i16 %17, 1
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 74, i16 noundef zeroext %conv)
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext 13, i16 noundef zeroext 638)
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i11 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 22, i16 noundef zeroext 1) #9
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i12.i12 = tail call i32 @mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 23, i16 noundef zeroext 142) #9
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i.i, align 8
  %call.i15.i13 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 22, i16 noundef zeroext 16385) #9
  %30 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i18.i14 = tail call i32 @mdiobus_read(ptr noundef %31, i32 noundef %33, i32 noundef 23) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9131_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  %clk_skews = alloca [2 x ptr], align 8
  %rx_data_skews = alloca [4 x ptr], align 4
  %tx_data_skews = alloca [4 x ptr], align 4
  %control_skews = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_skews) #9
  %0 = load i64, ptr @__const.ksz9131_config_init.clk_skews, align 8
  %1 = ptrtoint ptr %clk_skews to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %clk_skews, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rx_data_skews) #9
  %2 = call ptr @memcpy(ptr %rx_data_skews, ptr @__const.ksz9131_config_init.rx_data_skews, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tx_data_skews) #9
  %3 = call ptr @memcpy(ptr %tx_data_skews, ptr @__const.ksz9131_config_init.tx_data_skews, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %control_skews) #9
  %4 = load i64, ptr @__const.ksz9131_config_init.control_skews, align 8
  %5 = ptrtoint ptr %control_skews to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %control_skews, align 8
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %dev_walker.0 = phi ptr [ %phydev, %entry ], [ %9, %land.rhs.do.body_crit_edge ]
  %of_node1 = getelementptr inbounds %struct.device, ptr %dev_walker.0, i32 0, i32 27
  %6 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node1, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %do.body
  %parent = getelementptr inbounds %struct.device, ptr %dev_walker.0, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %do.body
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %10 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface.i, align 4
  %12 = add i32 %11, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %switch.tableidx = add i32 %11, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 4
  br i1 %14, label %switch.lookup, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

switch.lookup:                                    ; preds = %if.then4
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9131_config_init, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %15)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep84 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9131_config_init.78, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep84 to i32
  call void @__asan_load2_noabort(i32 %16)
  %switch.load85 = load i16, ptr %switch.gep84, align 2
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef 76, i16 noundef zeroext 4096, i16 noundef zeroext %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %switch.lookup.cleanup_crit_edge, label %ksz9131_config_rgmii_delay.exit

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ksz9131_config_rgmii_delay.exit:                  ; preds = %switch.lookup
  %call4.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef 77, i16 noundef zeroext 4096, i16 noundef zeroext %switch.load85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %ksz9131_config_rgmii_delay.exit.cleanup_crit_edge, label %ksz9131_config_rgmii_delay.exit.if.end8_crit_edge

ksz9131_config_rgmii_delay.exit.if.end8_crit_edge: ; preds = %ksz9131_config_rgmii_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

ksz9131_config_rgmii_delay.exit.cleanup_crit_edge: ; preds = %ksz9131_config_rgmii_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %ksz9131_config_rgmii_delay.exit.if.end8_crit_edge, %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %7, i16 noundef zeroext 8, i32 noundef 5, ptr noundef nonnull %clk_skews, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call14 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %7, i16 noundef zeroext 4, i32 noundef 4, ptr noundef nonnull %control_skews, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call19 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %7, i16 noundef zeroext 5, i32 noundef 4, ptr noundef nonnull %rx_data_skews, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call24 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %phydev, ptr noundef nonnull %7, i16 noundef zeroext 6, i32 noundef 4, ptr noundef nonnull %tx_data_skews, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call.i65 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i66 = icmp slt i32 %call.i65, 0
  br i1 %cmp.i66, label %if.end27.ksz9131_led_errata.exit.thread_crit_edge, label %if.end.i67

if.end27.ksz9131_led_errata.exit.thread_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz9131_led_errata.exit.thread

if.end.i67:                                       ; preds = %if.end27
  %and.i = and i32 %call.i65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i67.cleanup_crit_edge, label %ksz9131_led_errata.exit

if.end.i67.cleanup_crit_edge:                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ksz9131_led_errata.exit:                          ; preds = %if.end.i67
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 30, i16 noundef zeroext 0, i16 noundef zeroext 512) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp29 = icmp slt i32 %call.i.i, 0
  br i1 %cmp29, label %ksz9131_led_errata.exit.ksz9131_led_errata.exit.thread_crit_edge, label %ksz9131_led_errata.exit.cleanup_crit_edge

ksz9131_led_errata.exit.cleanup_crit_edge:        ; preds = %ksz9131_led_errata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ksz9131_led_errata.exit.ksz9131_led_errata.exit.thread_crit_edge: ; preds = %ksz9131_led_errata.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz9131_led_errata.exit.thread

ksz9131_led_errata.exit.thread:                   ; preds = %ksz9131_led_errata.exit.ksz9131_led_errata.exit.thread_crit_edge, %if.end27.ksz9131_led_errata.exit.thread_crit_edge
  %retval.0.i6876 = phi i32 [ %call.i.i, %ksz9131_led_errata.exit.ksz9131_led_errata.exit.thread_crit_edge ], [ %call.i65, %if.end27.ksz9131_led_errata.exit.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %ksz9131_led_errata.exit.thread, %ksz9131_led_errata.exit.cleanup_crit_edge, %if.end.i67.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %ksz9131_config_rgmii_delay.exit.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %ksz9131_config_rgmii_delay.exit.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %retval.0.i6876, %ksz9131_led_errata.exit.thread ], [ 0, %ksz9131_led_errata.exit.cleanup_crit_edge ], [ %call.i, %switch.lookup.cleanup_crit_edge ], [ 0, %if.end.i67.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %control_skews) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tx_data_skews) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rx_data_skews) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_skews) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ksz8873mll_config_aneg(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8873mll_read_status(ptr nocapture noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 6) #9
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i20 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 6) #9
  %and = lshr i32 %call.i20, 6
  %and.lobit = and i32 %and, 1
  %8 = xor i32 %and.lobit, 1
  %9 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  %and3 = and i32 %call.i20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %.sink21 = select i1 %tobool4.not, i32 100, i32 10
  %11 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink21, ptr %11, align 8
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %13 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %link, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %link, align 8
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %14 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %asym_pause, align 8
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %15 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pause, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz886x_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ksz886x_config_aneg, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i5 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 56, i16 noundef zeroext %switch.load) #9
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i5, %switch.lookup ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz886x_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %call.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %and2.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %mdix_ctrl5.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %mdix_ctrl5.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %mdix_ctrl5.i, align 1
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mdix_ctrl5.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mdix_ctrl5.i, align 1
  br label %if.end9.i

if.else7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mdix_ctrl8.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %6 = ptrtoint ptr %mdix_ctrl8.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %mdix_ctrl8.i, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else7.i, %if.else.i, %if.then4.i
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i34.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %cmp11.i = icmp slt i32 %call.i34.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup_crit_edge, label %if.end

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %and14.i = and i32 %call.i34.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %mdix18.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %..i = select i1 %tobool15.not.i, i8 1, i8 2
  %11 = ptrtoint ptr %mdix18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %..i, ptr %mdix18.i, align 8
  %call1 = tail call i32 @genphy_read_status(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i34.i, %if.end9.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8795_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id.i, align 4
  %and.i = and i32 %1, 16777200
  call void @__sanitizer_cov_trace_const_cmp4(i32 2233680, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 2233680
  br i1 %cmp.not.i, label %if.end.i, label %entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge

entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz8051_ksz8795_match_phy_device.exit

if.end.i:                                         ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %if.end.i.ksz8051_ksz8795_match_phy_device.exit_crit_edge, label %if.end3.i

if.end.i.ksz8051_ksz8795_match_phy_device.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ksz8051_ksz8795_match_phy_device.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and4.i = and i32 %call.i.i, 1
  %spec.select.i = xor i32 %and4.i, 1
  br label %ksz8051_ksz8795_match_phy_device.exit

ksz8051_ksz8795_match_phy_device.exit:            ; preds = %if.end3.i, %if.end.i.ksz8051_ksz8795_match_phy_device.exit_crit_edge, %entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ksz8051_ksz8795_match_phy_device.exit_crit_edge ], [ %call.i.i, %if.end.i.ksz8051_ksz8795_match_phy_device.exit_crit_edge ], [ %spec.select.i, %if.end3.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kszphy_config_reset(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rmii_ref_clk_sel = getelementptr inbounds %struct.kszphy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rmii_ref_clk_sel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rmii_ref_clk_sel, align 8, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %rmii_ref_clk_sel_val = getelementptr inbounds %struct.kszphy_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rmii_ref_clk_sel_val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rmii_ref_clk_sel_val, align 1, !range !195
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.cleanup.sink.split_crit_edge, label %kszphy_rmii_clk_sel.exit

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

kszphy_rmii_clk_sel.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %and.i = and i32 %call.i.i, 65407
  %masksel.i = select i1 %tobool2.not, i32 0, i32 128
  %ctrl.0.i = or i32 %and.i, %masksel.i
  %conv.i = trunc i32 %ctrl.0.i to i16
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i11.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 31, i16 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool3.not = icmp eq i32 %call.i11.i, 0
  br i1 %tobool3.not, label %kszphy_rmii_clk_sel.exit.if.end5_crit_edge, label %kszphy_rmii_clk_sel.exit.cleanup.sink.split_crit_edge

kszphy_rmii_clk_sel.exit.cleanup.sink.split_crit_edge: ; preds = %kszphy_rmii_clk_sel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

kszphy_rmii_clk_sel.exit.if.end5_crit_edge:       ; preds = %kszphy_rmii_clk_sel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %kszphy_rmii_clk_sel.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %led_mode = getelementptr inbounds %struct.kszphy_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %led_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %led_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %if.then6, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %19, label %if.then6.cleanup_crit_edge [
    i32 30, label %if.then6.sw.epilog.i_crit_edge
    i32 31, label %sw.bb1.i
  ]

if.then6.sw.epilog.i_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.then6.sw.epilog.i_crit_edge
  %shift.0.i = phi i32 [ 4, %sw.bb1.i ], [ 14, %if.then6.sw.epilog.i_crit_edge ]
  %bus.i.i19 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %21 = ptrtoint ptr %bus.i.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i19, align 8
  %addr.i.i20 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %23 = ptrtoint ptr %addr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i20, align 8
  %call.i.i21 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %24, i32 noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i22 = icmp slt i32 %call.i.i21, 0
  br i1 %cmp.i22, label %sw.epilog.i.cleanup.sink.split_crit_edge, label %out.i

sw.epilog.i.cleanup.sink.split_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

out.i:                                            ; preds = %sw.epilog.i
  %shl.i = shl nuw nsw i32 3, %shift.0.i
  %neg.i = xor i32 %shl.i, -1
  %and.i23 = and i32 %call.i.i21, %neg.i
  %shl2.i = shl i32 %15, %shift.0.i
  %or.i = or i32 %and.i23, %shl2.i
  %conv.i24 = trunc i32 %or.i to i16
  %25 = ptrtoint ptr %bus.i.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i.i19, align 8
  %27 = ptrtoint ptr %addr.i.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i.i20, align 8
  %call.i3.i = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef %19, i16 noundef zeroext %conv.i24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %cmp4.i = icmp slt i32 %call.i3.i, 0
  br i1 %cmp4.i, label %out.i.cleanup.sink.split_crit_edge, label %out.i.cleanup_crit_edge

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out.i.cleanup.sink.split_crit_edge:               ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out.i.cleanup.sink.split_crit_edge, %sw.epilog.i.cleanup.sink.split_crit_edge, %kszphy_rmii_clk_sel.exit.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.25, %if.then.cleanup.sink.split_crit_edge ], [ @.str.25, %kszphy_rmii_clk_sel.exit.cleanup.sink.split_crit_edge ], [ @.str.27, %out.i.cleanup.sink.split_crit_edge ], [ @.str.27, %sw.epilog.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i, %if.then.cleanup.sink.split_crit_edge ], [ %call.i11.i, %kszphy_rmii_clk_sel.exit.cleanup.sink.split_crit_edge ], [ 0, %out.i.cleanup.sink.split_crit_edge ], [ 0, %sw.epilog.i.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull %.str.27.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %out.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_fault_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksz9021_load_values_from_of(ptr nocapture noundef readonly %phydev, ptr noundef %of_node, i16 noundef zeroext %reg, ptr noundef %field1, ptr noundef %field2, ptr noundef %field3, ptr noundef %field4) unnamed_addr #2 align 64 {
entry:
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %val3 = alloca i32, align 4
  %val4 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1) #9
  %0 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #9
  %1 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val3) #9
  %2 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -3, ptr %val3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val4) #9
  %3 = ptrtoint ptr %val4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -4, ptr %val4, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %of_node, ptr noundef %field1, ptr noundef nonnull %val1, i32 noundef 1, i32 noundef 0) #9
  %4 = xor i32 %call.i.i, -1
  %call.i.i.lobit.not = lshr i32 %4, 31
  %call.i.i1 = call i32 @of_property_read_variable_u32_array(ptr noundef %of_node, ptr noundef %field2, ptr noundef nonnull %val2, i32 noundef 1, i32 noundef 0) #9
  %5 = xor i32 %call.i.i1, -1
  %call.i.i1.lobit.not = lshr i32 %5, 31
  %matches.1 = add nuw nsw i32 %call.i.i1.lobit.not, %call.i.i.lobit.not
  %call.i.i2 = call i32 @of_property_read_variable_u32_array(ptr noundef %of_node, ptr noundef %field3, ptr noundef nonnull %val3, i32 noundef 1, i32 noundef 0) #9
  %6 = xor i32 %call.i.i2, -1
  %call.i.i2.lobit.not = lshr i32 %6, 31
  %matches.2 = add nuw nsw i32 %matches.1, %call.i.i2.lobit.not
  %call.i.i3 = call i32 @of_property_read_variable_u32_array(ptr noundef %of_node, ptr noundef %field4, ptr noundef nonnull %val4, i32 noundef 1, i32 noundef 0) #9
  %7 = xor i32 %call.i.i3, -1
  %call.i.i3.lobit.not = lshr i32 %7, 31
  %matches.3 = add nuw nsw i32 %matches.2, %call.i.i3.lobit.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matches.3)
  %tobool16.not = icmp eq i32 %matches.3, 0
  br i1 %tobool16.not, label %entry.cleanup_crit_edge, label %if.end18

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %matches.3)
  %cmp = icmp ult i32 %matches.3, 4
  br i1 %cmp, label %if.then19, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i4 = call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 11, i16 noundef zeroext %reg) #9
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i5.i = call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 13) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18.if.end21_crit_edge
  %newval.0 = phi i32 [ %call.i5.i, %if.then19 ], [ 0, %if.end18.if.end21_crit_edge ]
  %16 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp22.not = icmp eq i32 %17, -1
  %and = and i32 %newval.0, 65520
  %div = sdiv i32 %17, 200
  %and25 = and i32 %div, 15
  %or = or i32 %and25, %and
  %newval.1 = select i1 %cmp22.not, i32 %newval.0, i32 %or
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %19)
  %cmp27.not = icmp eq i32 %19, -2
  %and30 = and i32 %newval.1, 65295
  %div31 = sdiv i32 %19, 200
  %and32 = shl nsw i32 %div31, 4
  %shl33 = and i32 %and32, 240
  %or34 = or i32 %and30, %shl33
  %newval.2 = select i1 %cmp27.not, i32 %newval.1, i32 %or34
  %20 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %21)
  %cmp36.not = icmp eq i32 %21, -3
  %and39 = and i32 %newval.2, 61695
  %div40 = sdiv i32 %21, 200
  %and41 = shl i32 %div40, 8
  %shl42 = and i32 %and41, 3840
  %or43 = or i32 %and39, %shl42
  %newval.3 = select i1 %cmp36.not, i32 %newval.2, i32 %or43
  %22 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %23)
  %cmp45.not = icmp eq i32 %23, -4
  %and48 = and i32 %newval.3, 4095
  %div49 = sdiv i32 %23, 200
  %and50 = shl i32 %div49, 12
  %or52 = or i32 %and48, %and50
  %newval.4 = select i1 %cmp45.not, i32 %newval.3, i32 %or52
  %conv55 = trunc i32 %newval.4 to i16
  %conv.i = or i16 %reg, -32768
  %bus.i.i5 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %24 = ptrtoint ptr %bus.i.i5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i5, align 8
  %addr.i.i6 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %26 = ptrtoint ptr %addr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i6, align 8
  %call.i.i7 = call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 11, i16 noundef zeroext %conv.i) #9
  %28 = ptrtoint ptr %bus.i.i5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i5, align 8
  %30 = ptrtoint ptr %addr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i6, align 8
  %call.i5.i8 = call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 12, i16 noundef zeroext %conv55) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksz9031_of_load_skew_values(ptr noundef %phydev, ptr noundef %of_node, i16 noundef zeroext %reg, i32 noundef %field_sz, ptr nocapture noundef readonly %field, i8 noundef zeroext %numfields, ptr nocapture noundef writeonly %update) unnamed_addr #2 align 64 {
entry:
  %val = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %val) #9
  %0 = call ptr @memcpy(ptr %val, ptr @__const.ksz9031_of_load_skew_values.val, i32 16)
  %conv = zext i8 %numfields to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %numfields)
  %cmp2.not = icmp eq i8 %numfields, 0
  br i1 %cmp2.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %matches.03 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %field, i32 %i.04
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %val, i32 %i.04
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %of_node, ptr noundef %2, ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0) #9
  %3 = xor i32 %call.i.i, -1
  %call.i.i.lobit.not = lshr i32 %3, 31
  %spec.select = add i32 %call.i.i.lobit.not, %matches.03
  %inc2 = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc2, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool3.not = icmp eq i32 %spec.select, 0
  br i1 %tobool3.not, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %4 = ptrtoint ptr %update to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %update, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv)
  %cmp10 = icmp slt i32 %spec.select, %conv
  br i1 %cmp10, label %if.then12, label %if.end5.if.end16_crit_edge

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %reg to i32
  %call14 = call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef %conv13) #9
  %conv15 = trunc i32 %call14 to i16
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end5.if.end16_crit_edge
  %newval.0 = phi i16 [ %conv15, %if.then12 ], [ 0, %if.end5.if.end16_crit_edge ]
  br i1 %cmp2.not, label %if.end16.for.end44_crit_edge, label %for.body24.lr.ph

if.end16.for.end44_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.body24.lr.ph:                                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %field_sz)
  %cmp17 = icmp eq i32 %field_sz, 4
  %conv29 = select i1 %cmp17, i32 15, i32 31
  br label %for.body24

for.body24:                                       ; preds = %for.inc42.for.body24_crit_edge, %for.body24.lr.ph
  %i.18 = phi i32 [ 0, %for.body24.lr.ph ], [ %add, %for.inc42.for.body24_crit_edge ]
  %newval.17 = phi i16 [ %newval.0, %for.body24.lr.ph ], [ %newval.2, %for.inc42.for.body24_crit_edge ]
  %arrayidx25 = getelementptr [4 x i32], ptr %val, i32 0, i32 %i.18
  %5 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx25, align 4
  %add = add nuw nsw i32 %i.18, 1
  %sub = xor i32 %i.18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp26.not = icmp eq i32 %6, %sub
  br i1 %cmp26.not, label %for.body24.for.inc42_crit_edge, label %if.then28

for.body24.for.inc42_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42

if.then28:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %i.18, %field_sz
  %shl = shl i32 %conv29, %mul
  %conv32 = zext i16 %newval.17 to i32
  %conv33 = xor i32 %shl, -1
  %and = and i32 %conv33, %conv32
  %div = sdiv i32 %6, 60
  %and36 = and i32 %div, %conv29
  %shl38 = shl i32 %and36, %mul
  %or39 = or i32 %shl38, %and
  %conv40 = trunc i32 %or39 to i16
  br label %for.inc42

for.inc42:                                        ; preds = %if.then28, %for.body24.for.inc42_crit_edge
  %newval.2 = phi i16 [ %conv40, %if.then28 ], [ %newval.17, %for.body24.for.inc42_crit_edge ]
  %exitcond10.not = icmp eq i32 %add, %conv
  br i1 %exitcond10.not, label %for.inc42.for.end44_crit_edge, label %for.inc42.for.body24_crit_edge

for.inc42.for.body24_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %if.end16.for.end44_crit_edge
  %newval.1.lcssa = phi i16 [ %newval.0, %if.end16.for.end44_crit_edge ], [ %newval.2, %for.inc42.for.end44_crit_edge ]
  %conv45 = zext i16 %reg to i32
  %call46 = call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef %conv45, i16 noundef zeroext %newval.1.lcssa) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %val) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lanphy_write_page_reg(ptr noundef %phydev, i32 noundef %page, i16 noundef zeroext %addr, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %page to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 22, i16 noundef zeroext %conv) #9
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i3 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 23, i16 noundef zeroext %addr) #9
  %conv2 = or i16 %conv, 16384
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i6 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 22, i16 noundef zeroext %conv2) #9
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i9 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 23, i16 noundef zeroext %val) #9
  %conv5 = trunc i32 %call.i9 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5)
  %tobool.not = icmp eq i16 %conv5, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = and i32 %call.i9, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.61, i32 noundef %conv6) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %phydev, ptr noundef %of_node, i16 noundef zeroext %reg, i32 noundef %field_sz, ptr nocapture noundef readonly %field, i8 noundef zeroext %numfields) unnamed_addr #2 align 64 {
entry:
  %val = alloca [4 x i32], align 4
  %skewval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %val) #9
  %0 = call ptr @memcpy(ptr %val, ptr @__const.ksz9131_of_load_skew_values.val, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skewval) #9
  %1 = ptrtoint ptr %skewval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %skewval, align 4, !annotation !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %field_sz)
  %cmp = icmp eq i32 %field_sz, 5
  %. = select i1 %cmp, i32 2400, i32 800
  %conv = zext i8 %numfields to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %numfields)
  %cmp190.not = icmp eq i8 %numfields, 0
  br i1 %cmp190.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.092 = phi i32 [ %inc15, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %matches.091 = phi i32 [ %matches.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %field, i32 %i.092
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %of_node, ptr noundef %3, ptr noundef nonnull %skewval, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %4 = ptrtoint ptr %skewval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skewval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -700, i32 %5)
  %cmp4 = icmp slt i32 %5, -700
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %skewval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -700, ptr %skewval, align 4
  br label %if.end12

if.else7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %.)
  %cmp8 = icmp sgt i32 %5, %.
  br i1 %cmp8, label %if.then10, label %if.else7.if.end12_crit_edge

if.else7.if.end12_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %skewval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %skewval, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else7.if.end12_crit_edge, %if.then6
  %8 = ptrtoint ptr %skewval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skewval, align 4
  %add = add i32 %9, 700
  %arrayidx13 = getelementptr [4 x i32], ptr %val, i32 0, i32 %i.092
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %arrayidx13, align 4
  %inc = add i32 %matches.091, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %matches.1 = phi i32 [ %matches.091, %for.body.for.inc_crit_edge ], [ %inc, %if.end12 ]
  %inc15 = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc15, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %matches.1)
  %tobool16.not = icmp eq i32 %matches.1, 0
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.end18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %matches.1, i32 %conv)
  %cmp20 = icmp slt i32 %matches.1, %conv
  br i1 %cmp20, label %if.then22, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %conv23 = zext i16 %reg to i32
  %call24 = call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef %conv23) #9
  %conv25 = trunc i32 %call24 to i16
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end18.if.end27_crit_edge
  %newval.0 = phi i16 [ %conv25, %if.then22 ], [ 0, %if.end18.if.end27_crit_edge ]
  br i1 %cmp190.not, label %if.end27.for.end56_crit_edge, label %for.body35.lr.ph

if.end27.for.end56_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56

for.body35.lr.ph:                                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %field_sz)
  %cmp28 = icmp eq i32 %field_sz, 4
  %conv42 = select i1 %cmp28, i32 15, i32 31
  br label %for.body35

for.body35:                                       ; preds = %for.inc54.for.body35_crit_edge, %for.body35.lr.ph
  %i.196 = phi i32 [ 0, %for.body35.lr.ph ], [ %add37, %for.inc54.for.body35_crit_edge ]
  %newval.195 = phi i16 [ %newval.0, %for.body35.lr.ph ], [ %newval.2, %for.inc54.for.body35_crit_edge ]
  %arrayidx36 = getelementptr [4 x i32], ptr %val, i32 0, i32 %i.196
  %11 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx36, align 4
  %add37 = add nuw nsw i32 %i.196, 1
  %sub = sub nuw nsw i32 -701, %i.196
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub)
  %cmp39.not = icmp eq i32 %12, %sub
  br i1 %cmp39.not, label %for.body35.for.inc54_crit_edge, label %if.then41

for.body35.for.inc54_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc54

if.then41:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %i.196, %field_sz
  %shl = shl i32 %conv42, %mul
  %conv45 = zext i16 %newval.195 to i32
  %conv46 = xor i32 %shl, -1
  %and = and i32 %conv46, %conv45
  %div = sdiv i32 %12, 100
  %and49 = and i32 %div, %conv42
  %shl51 = shl i32 %and49, %mul
  %or = or i32 %shl51, %and
  %conv52 = trunc i32 %or to i16
  br label %for.inc54

for.inc54:                                        ; preds = %if.then41, %for.body35.for.inc54_crit_edge
  %newval.2 = phi i16 [ %conv52, %if.then41 ], [ %newval.195, %for.body35.for.inc54_crit_edge ]
  %exitcond98.not = icmp eq i32 %add37, %conv
  br i1 %exitcond98.not, label %for.inc54.for.end56_crit_edge, label %for.inc54.for.body35_crit_edge

for.inc54.for.body35_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.inc54.for.end56_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end56

for.end56:                                        ; preds = %for.inc54.for.end56_crit_edge, %if.end27.for.end56_crit_edge
  %newval.1.lcssa = phi i16 [ %newval.0, %if.end27.for.end56_crit_edge ], [ %newval.2, %for.inc54.for.end56_crit_edge ]
  %conv57 = zext i16 %reg to i32
  %call58 = call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 2, i32 noundef %conv57, i16 noundef zeroext %newval.1.lcssa) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end56, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %for.end56 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skewval) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !151, !153, !155, !156, !157, !159, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__initcall__kmod_micrel__427_1973_phy_module_init6, !1, !"__initcall__kmod_micrel__427_1973_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/micrel.c", i32 1973, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description428, !4, !"__UNIQUE_ID_description428", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/micrel.c", i32 1975, i32 1}
!5 = !{ptr @__UNIQUE_ID_author429, !6, !"__UNIQUE_ID_author429", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/micrel.c", i32 1976, i32 1}
!7 = !{ptr @__UNIQUE_ID_file430, !8, !"__UNIQUE_ID_file430", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/micrel.c", i32 1977, i32 1}
!9 = !{ptr @__UNIQUE_ID_license431, !8, !"__UNIQUE_ID_license431", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/micrel.c", i32 1723, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/micrel.c", i32 1734, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/micrel.c", i32 1749, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/micrel.c", i32 1764, i32 11}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/micrel.c", i32 1781, i32 11}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/micrel.c", i32 1794, i32 11}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/micrel.c", i32 1809, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/micrel.c", i32 1824, i32 11}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/micrel.c", i32 1845, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/micrel.c", i32 1856, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/micrel.c", i32 1874, i32 11}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/micrel.c", i32 1891, i32 11}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/micrel.c", i32 1907, i32 11}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/micrel.c", i32 1921, i32 11}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/micrel.c", i32 1936, i32 11}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/micrel.c", i32 1946, i32 11}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/micrel.c", i32 1957, i32 11}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/micrel.c", i32 1966, i32 11}
!46 = !{ptr @ksphy_driver, !47, !"ksphy_driver", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/micrel.c", i32 1719, i32 26}
!48 = !{ptr @ks8737_type, !49, !"ks8737_type", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/micrel.c", i32 162, i32 33}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/micrel.c", i32 311, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @kszphy_broadcast_disable._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @kszphy_broadcast_disable._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/micrel.c", i32 331, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @kszphy_nand_tree_disable._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @kszphy_nand_tree_disable._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/phy/micrel.c", i32 345, i32 4}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @kszphy_config_reset._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @kszphy_config_reset._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/phy/micrel.c", i32 292, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @kszphy_setup_led._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @kszphy_setup_led._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ksz8021_type, !74, !"ksz8021_type", i1 false, i1 false}
!74 = !{!"../drivers/net/phy/micrel.c", i32 139, i32 33}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/phy/micrel.c", i32 1369, i32 34}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/phy/micrel.c", i32 1375, i32 4}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @kszphy_probe._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @kszphy_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/phy/micrel.c", i32 1383, i32 40}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/phy/micrel.c", i32 1391, i32 5}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/phy/micrel.c", i32 1398, i32 4}
!88 = !{ptr @kszphy_probe._entry.34, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @kszphy_probe._entry_ptr.36, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/phy/micrel.c", i32 380, i32 40}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/phy/micrel.c", i32 119, i32 4}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/phy/micrel.c", i32 120, i32 4}
!96 = distinct !{null, !97, !"kszphy_hw_stats", i1 false, i1 false}
!97 = !{!"../drivers/net/phy/micrel.c", i32 118, i32 30}
!98 = !{ptr @ksz8041_type, !99, !"ksz8041_type", i1 false, i1 false}
!99 = !{!"../drivers/net/phy/micrel.c", i32 146, i32 33}
!100 = !{ptr @ksz8051_type, !101, !"ksz8051_type", i1 false, i1 false}
!101 = !{!"../drivers/net/phy/micrel.c", i32 150, i32 33}
!102 = !{ptr @ksz8081_type, !103, !"ksz8081_type", i1 false, i1 false}
!103 = !{!"../drivers/net/phy/micrel.c", i32 155, i32 33}
!104 = !{ptr @ksz886x_cable_test_one_pair.ethtool_pair, !105, !"ethtool_pair", i1 false, i1 false}
!105 = !{!"../drivers/net/phy/micrel.c", i32 1487, i32 19}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/phy/micrel.c", i32 1478, i32 8}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ksz886x_cable_test_wait_for_completion._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ksz886x_cable_test_wait_for_completion._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @ksz9021_type, !112, !"ksz9021_type", i1 false, i1 false}
!112 = !{!"../drivers/net/phy/micrel.c", i32 166, i32 33}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/phy/micrel.c", i32 621, i32 9}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/phy/micrel.c", i32 621, i32 25}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/phy/micrel.c", i32 622, i32 9}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/phy/micrel.c", i32 622, i32 25}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/phy/micrel.c", i32 625, i32 9}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/phy/micrel.c", i32 625, i32 25}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/phy/micrel.c", i32 626, i32 9}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/phy/micrel.c", i32 626, i32 25}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/phy/micrel.c", i32 629, i32 9}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/phy/micrel.c", i32 629, i32 25}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/phy/micrel.c", i32 630, i32 9}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/phy/micrel.c", i32 630, i32 25}
!137 = !{ptr @ksz9031_config_init.clk_skews, !138, !"clk_skews", i1 false, i1 false}
!138 = !{!"../drivers/net/phy/micrel.c", i32 827, i32 21}
!139 = !{ptr @ksz9031_config_init.rx_data_skews, !140, !"rx_data_skews", i1 false, i1 false}
!140 = !{!"../drivers/net/phy/micrel.c", i32 828, i32 21}
!141 = !{ptr @ksz9031_config_init.tx_data_skews, !142, !"tx_data_skews", i1 false, i1 false}
!142 = !{!"../drivers/net/phy/micrel.c", i32 832, i32 21}
!143 = !{ptr @ksz9031_config_init.control_skews, !144, !"control_skews", i1 false, i1 false}
!144 = !{!"../drivers/net/phy/micrel.c", i32 836, i32 21}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/phy/micrel.c", i32 880, i32 4}
!147 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ksz9031_config_init._entry, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @ksz9031_config_init._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/phy/micrel.c", i32 898, i32 38}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/phy/micrel.c", i32 914, i32 2}
!155 = !{ptr @ksz9031_config_init._entry.58, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ksz9031_config_init._entry_ptr.60, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/phy/micrel.c", i32 1618, i32 3}
!159 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @lanphy_write_page_reg._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @lanphy_write_page_reg._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/phy/micrel.c", i32 1042, i32 24}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/phy/micrel.c", i32 1042, i32 41}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/phy/micrel.c", i32 1044, i32 3}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/phy/micrel.c", i32 1044, i32 21}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/phy/micrel.c", i32 1045, i32 3}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/phy/micrel.c", i32 1045, i32 21}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/phy/micrel.c", i32 1048, i32 3}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/phy/micrel.c", i32 1048, i32 21}
!178 = !{ptr @.str.71, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/phy/micrel.c", i32 1049, i32 3}
!180 = !{ptr @.str.72, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/phy/micrel.c", i32 1049, i32 21}
!182 = !{ptr @.str.73, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/phy/micrel.c", i32 1051, i32 28}
!184 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/phy/micrel.c", i32 1051, i32 46}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i8 0, i8 2}
!196 = !{!"auto-init"}
