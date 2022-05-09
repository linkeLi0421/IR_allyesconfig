; ModuleID = '/llk/IR_all_yes/drivers/net/phy/nxp-tja11xx.c_pt.bc'
source_filename = "../drivers/net/phy/nxp-tja11xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.tja11xx_phy_stats = type { ptr, i8, i8, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tja11xx_priv = type { ptr, ptr, ptr, %struct.work_struct }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_nxp_tja11xx__352_823_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@tja11xx_driver = internal global { [4 x %struct.phy_driver], [240 x i8] } { [4 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 25222208, ptr @.str, i32 -16, ptr @phy_basic_t1_features, i32 0, ptr null, ptr @tja11xx_soft_reset, ptr @tja11xx_config_init, ptr @tja11xx_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @tja11xx_config_aneg, ptr null, ptr @tja11xx_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tja11xx_get_sset_count, ptr @tja11xx_get_strings, ptr @tja11xx_get_stats, ptr null, ptr null, ptr @genphy_loopback, ptr @tja11xx_get_sqi, ptr @tja11xx_get_sqi_max }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 25222400, ptr @.str.1, i32 -16, ptr @phy_basic_t1_features, i32 0, ptr null, ptr @tja11xx_soft_reset, ptr @tja11xx_config_init, ptr @tja11xx_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @tja11xx_config_aneg, ptr null, ptr @tja11xx_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tja11xx_get_sset_count, ptr @tja11xx_get_strings, ptr @tja11xx_get_stats, ptr null, ptr null, ptr @genphy_loopback, ptr @tja11xx_get_sqi, ptr @tja11xx_get_sqi_max }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.2, i32 0, ptr @phy_basic_t1_features, i32 4, ptr null, ptr @tja11xx_soft_reset, ptr @tja11xx_config_init, ptr @tja1102_p0_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @tja11xx_config_aneg, ptr null, ptr @tja11xx_read_status, ptr @tja11xx_config_intr, ptr @tja11xx_handle_interrupt, ptr null, ptr @tja1102_p0_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tja11xx_cable_test_start, ptr null, ptr @tja11xx_cable_test_get_status, ptr @tja11xx_get_sset_count, ptr @tja11xx_get_strings, ptr @tja11xx_get_stats, ptr null, ptr null, ptr @genphy_loopback, ptr @tja11xx_get_sqi, ptr @tja11xx_get_sqi_max }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.3, i32 0, ptr @phy_basic_t1_features, i32 4, ptr null, ptr @tja11xx_soft_reset, ptr @tja11xx_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @tja11xx_config_aneg, ptr null, ptr @tja11xx_read_status, ptr @tja11xx_config_intr, ptr @tja11xx_handle_interrupt, ptr null, ptr @tja1102_p1_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tja11xx_cable_test_start, ptr null, ptr @tja11xx_cable_test_get_status, ptr @tja11xx_get_sset_count, ptr @tja11xx_get_strings, ptr @tja11xx_get_stats, ptr null, ptr null, ptr @genphy_loopback, ptr @tja11xx_get_sqi, ptr @tja11xx_get_sqi_max }], [240 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author353 = internal constant [47 x i8] c"nxp_tja11xx.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [60 x i8] c"nxp_tja11xx.description=NXP TJA11xx BoardR-Reach PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [45 x i8] c"nxp_tja11xx.file=drivers/net/phy/nxp-tja11xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [24 x i8] c"nxp_tja11xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NXP TJA1100\00", [20 x i8] zeroinitializer }, align 32
@phy_basic_t1_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NXP TJA1101\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NXP TJA1102 Port 0\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NXP TJA1102 Port 1\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/phy/nxp-tja11xx.c\00", [34 x i8] zeroinitializer }, align 32
@tja11xx_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 103, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tja11xx_check\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tja11xx_check._entry_ptr = internal global ptr @tja11xx_check._entry, section ".printk_index", align 4
@tja11xx_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @tja11xx_hwmon_hwmon_ops, ptr @tja11xx_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@tja11xx_hwmon_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @tja11xx_hwmon_is_visible, ptr @tja11xx_hwmon_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@tja11xx_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.9, ptr @.compoundliteral.11, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16384, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 131072, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.10 }, [24 x i8] zeroinitializer }, align 32
@tja11xx_config_aneg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 238, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported Master/Slave mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tja11xx_config_aneg\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tja11xx_config_aneg._entry_ptr = internal global ptr @tja11xx_config_aneg._entry, section ".printk_index", align 4
@tja11xx_hw_stats = internal constant { [6 x %struct.tja11xx_phy_stats], [48 x i8] } { [6 x %struct.tja11xx_phy_stats] [%struct.tja11xx_phy_stats { ptr @.str.15, i8 20, i8 0, i16 -1 }, %struct.tja11xx_phy_stats { ptr @.str.16, i8 25, i8 6, i16 64 }, %struct.tja11xx_phy_stats { ptr @.str.17, i8 25, i8 7, i16 128 }, %struct.tja11xx_phy_stats { ptr @.str.18, i8 25, i8 8, i16 256 }, %struct.tja11xx_phy_stats { ptr @.str.19, i8 26, i8 0, i16 255 }, %struct.tja11xx_phy_stats { ptr @.str.20, i8 26, i8 8, i16 -256 }], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_symbol_error_count\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy_polarity_detect\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy_open_detect\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_short_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_rem_rcvr_count\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_loc_rcvr_count\00", [45 x i8] zeroinitializer }, align 32
@tja1102_p0_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&priv->phy_register_work)\00", [52 x i8] zeroinitializer }, align 32
@tja1102_p1_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 497, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Can't parse addr\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tja1102_p1_register\00", [44 x i8] zeroinitializer }, align 32
@tja1102_p1_register._entry_ptr = internal global ptr @tja1102_p1_register._entry, section ".printk_index", align 4
@tja1102_p1_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 505, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected address. Should be: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@tja1102_p1_register._entry_ptr.26 = internal global ptr @tja1102_p1_register._entry.24, section ".printk_index", align 4
@tja1102_p1_register._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 510, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device is already registered\0A\00", [34 x i8] zeroinitializer }, align 32
@tja1102_p1_register._entry_ptr.29 = internal global ptr @tja1102_p1_register._entry.27, section ".printk_index", align 4
@tja1102_p1_register._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.4, i32 518, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't create PHY device for Port 1: %i\0A\00", [56 x i8] zeroinitializer }, align 32
@tja1102_p1_register._entry_ptr.32 = internal global ptr @tja1102_p1_register._entry.30, section ".printk_index", align 4
@tja1102_p1_register._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.4, i32 535, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't register Port 1. Unexpected error: %i\0A\00", [51 x i8] zeroinitializer }, align 32
@tja1102_p1_register._entry_ptr.35 = internal global ptr @tja1102_p1_register._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 45, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s has invalid PHY address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_mdio_parse_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/of_mdio.h\00", [40 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr = internal global ptr @of_mdio_parse_addr._entry, section ".printk_index", align 4
@of_mdio_parse_addr._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.39, i32 52, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s PHY address %i is too large\0A\00", [32 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr.42 = internal global ptr @of_mdio_parse_addr._entry.40, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tja11xx_handle_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 638, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Overtemperature error detected (temp > 155C\C2\B0).\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tja11xx_handle_interrupt\00", [39 x i8] zeroinitializer }, align 32
@tja11xx_handle_interrupt._entry_ptr = internal global ptr @tja11xx_handle_interrupt._entry, section ".printk_index", align 4
@tja11xx_handle_interrupt._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 640, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Undervoltage error detected.\0A\00", [34 x i8] zeroinitializer }, align 32
@tja11xx_handle_interrupt._entry_ptr.47 = internal global ptr @tja11xx_handle_interrupt._entry.45, section ".printk_index", align 4
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_symbol_error_count\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_polarity_detect\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_open_detect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_short_detect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_rem_rcvr_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy_loc_rcvr_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 25222208, i64 25222272, i64 25222400]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 384]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 6144, i64 24576]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 9, i64 10, i64 32, i64 42, i64 45]
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"tja11xx_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 737, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 740, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 758, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 775, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 798, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 102, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"tja11xx_hwmon_chip_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 438, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"tja11xx_hwmon_hwmon_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 433, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"tja11xx_hwmon_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 427, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 238, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"tja11xx_hw_stats\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 89, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 90, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 91, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 92, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 93, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 94, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 95, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 552, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 497, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 504, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 510, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 517, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 534, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 43, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 45, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"../include/linux/of_mdio.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 51, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 638, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [33 x i8] c"../drivers/net/phy/nxp-tja11xx.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 640, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"str.48\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"str.49\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"str.50\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"str.51\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"str.52\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_nxp_tja11xx__352_823_phy_module_init6, ptr @of_mdio_parse_addr._entry, ptr @of_mdio_parse_addr._entry.40, ptr @of_mdio_parse_addr._entry_ptr, ptr @of_mdio_parse_addr._entry_ptr.42, ptr @phy_module_exit, ptr @tja1102_p1_register._entry, ptr @tja1102_p1_register._entry.24, ptr @tja1102_p1_register._entry.27, ptr @tja1102_p1_register._entry.30, ptr @tja1102_p1_register._entry.33, ptr @tja1102_p1_register._entry_ptr, ptr @tja1102_p1_register._entry_ptr.26, ptr @tja1102_p1_register._entry_ptr.29, ptr @tja1102_p1_register._entry_ptr.32, ptr @tja1102_p1_register._entry_ptr.35, ptr @tja11xx_check._entry, ptr @tja11xx_check._entry_ptr, ptr @tja11xx_config_aneg._entry, ptr @tja11xx_config_aneg._entry_ptr, ptr @tja11xx_handle_interrupt._entry, ptr @tja11xx_handle_interrupt._entry.45, ptr @tja11xx_handle_interrupt._entry_ptr, ptr @tja11xx_handle_interrupt._entry_ptr.47, ptr @tja11xx_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tja11xx_hwmon_chip_info, ptr @tja11xx_hwmon_hwmon_ops, ptr @tja11xx_hwmon_info, ptr @.compoundliteral, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @tja11xx_hw_stats, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tja1102_p0_probe.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @str, ptr @str.48, ptr @str.49, ptr @str.50, ptr @str.51, ptr @str.52], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_driver to i32), i32 944, i32 1184, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_hwmon_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_config_aneg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_hw_stats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja1102_p0_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja1102_p1_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja1102_p1_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja1102_p1_register._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja1102_p1_register._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja1102_p1_register._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_handle_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tja11xx_handle_interrupt._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @tja11xx_driver, i32 noundef 4, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_drivers_unregister(ptr noundef nonnull @tja11xx_driver, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_soft_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %autoneg, align 8
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %duplex, align 4
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %3 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_id, align 4
  %and = and i32 %4, -16
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 25222208, label %sw.bb
    i32 25222400, label %if.end.sw.bb5_crit_edge
    i32 25222272, label %if.end.sw.bb5_crit_edge50
  ]

if.end.sw.bb5_crit_edge50:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 16440, i16 noundef zeroext 16392) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge50
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext 0, i16 noundef zeroext -32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %sw.bb5.sw.epilog_crit_edge, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call.i48 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 64, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool11.not = icmp eq i32 %call.i48, 0
  br i1 %tobool11.not, label %if.end13, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  %call14 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 19, i16 noundef zeroext 3, i16 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @tja11xx_wakeup(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i49 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 21) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i49, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call.i, %sw.bb5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i48, %sw.epilog.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %10, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 56, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phydev2 = getelementptr inbounds %struct.tja11xx_priv, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %phydev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %phydev, ptr %phydev2, align 4
  %call3 = tail call fastcc i32 @tja11xx_hwmon_register(ptr noundef %phydev, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  %finished.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_slave_set = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 14
  %0 = ptrtoint ptr %master_slave_set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %master_slave_set, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %1, label %do.end [
    i8 4, label %sw.bb
    i8 5, label %entry.sw.epilog_crit_edge
    i8 1, label %entry.do_test_crit_edge
    i8 0, label %entry.do_test_crit_edge22
  ]

entry.do_test_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_test

entry.do_test_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_test

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.12) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ctl.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ -32768, %sw.bb ]
  %call = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext %ctl.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do_test_crit_edge

sw.epilog.do_test_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_test

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do_test:                                          ; preds = %sw.epilog.do_test_crit_edge, %entry.do_test_crit_edge, %entry.do_test_crit_edge22
  %changed.0 = phi i32 [ 0, %entry.do_test_crit_edge ], [ 0, %entry.do_test_crit_edge22 ], [ %call, %sw.epilog.do_test_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %finished.i) #8
  %3 = ptrtoint ptr %finished.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %finished.i, align 1
  %link.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %link.i, align 8
  %5 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %do_test.if.end7_crit_edge

do_test.if.end7_crit_edge:                        ; preds = %do_test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i:                                         ; preds = %do_test
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv.i, align 8
  %cable_test_start.i = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %cable_test_start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cable_test_start.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.if.end7_crit_edge, label %lor.lhs.false.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

lor.lhs.false.i:                                  ; preds = %if.end.i
  %cable_test_get_status.i = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 31
  %10 = ptrtoint ptr %cable_test_get_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cable_test_get_status.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end7_crit_edge, label %if.end5.i

lor.lhs.false.i.if.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %call.i = tail call i32 @ethnl_cable_test_alloc(ptr noundef %phydev, i8 noundef zeroext 27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end5.i.tja11xx_config_aneg_cable_test.exit_crit_edge

if.end5.i.tja11xx_config_aneg_cable_test.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja11xx_config_aneg_cable_test.exit

if.end8.i:                                        ; preds = %if.end5.i
  %12 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv.i, align 8
  %cable_test_start10.i = getelementptr inbounds %struct.phy_driver, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %cable_test_start10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cable_test_start10.i, align 4
  %call11.i = tail call i32 %15(ptr noundef %phydev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end8.i.tja11xx_config_aneg_cable_test.exit_crit_edge

if.end8.i.tja11xx_config_aneg_cable_test.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja11xx_config_aneg_cable_test.exit

if.end14.i:                                       ; preds = %if.end8.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %16 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv.i, align 8
  %cable_test_get_status16.i = getelementptr inbounds %struct.phy_driver, ptr %17, i32 0, i32 31
  %18 = ptrtoint ptr %cable_test_get_status16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cable_test_get_status16.i, align 4
  %call17.i = call i32 %19(ptr noundef %phydev, ptr noundef nonnull %finished.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.tja11xx_config_aneg_cable_test.exit_crit_edge

if.end14.i.tja11xx_config_aneg_cable_test.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja11xx_config_aneg_cable_test.exit

if.end20.i:                                       ; preds = %if.end14.i
  %20 = ptrtoint ptr %finished.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %finished.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not.i = icmp eq i8 %21, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end7_crit_edge, label %if.then22.i

if.end20.i.if.end7_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ethnl_cable_test_finished(ptr noundef %phydev) #8
  br label %if.end7

tja11xx_config_aneg_cable_test.exit:              ; preds = %if.end14.i.tja11xx_config_aneg_cable_test.exit_crit_edge, %if.end8.i.tja11xx_config_aneg_cable_test.exit_crit_edge, %if.end5.i.tja11xx_config_aneg_cable_test.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end5.i.tja11xx_config_aneg_cable_test.exit_crit_edge ], [ %call11.i, %if.end8.i.tja11xx_config_aneg_cable_test.exit_crit_edge ], [ %call17.i, %if.end14.i.tja11xx_config_aneg_cable_test.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %finished.i) #8
  br label %cleanup

if.end7:                                          ; preds = %if.then22.i, %if.end20.i.if.end7_crit_edge, %lor.lhs.false.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %do_test.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %finished.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.0)
  %tobool8 = icmp ne i32 %changed.0, 0
  %call9 = call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext %tobool8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %tja11xx_config_aneg_cable_test.exit, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %call9, %if.end7 ], [ %call, %sw.epilog.cleanup_crit_edge ], [ %retval.0.i, %tja11xx_config_aneg_cable_test.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_slave_get = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 13
  %0 = ptrtoint ptr %master_slave_get to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %master_slave_get, align 4
  %master_slave_state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 15
  %1 = ptrtoint ptr %master_slave_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %master_slave_state, align 2
  %call = tail call i32 @genphy_update_link(ptr noundef %phydev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %. = select i1 %tobool4.not, i8 5, i8 4
  %6 = ptrtoint ptr %master_slave_get to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %master_slave_get, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %link, align 8
  %8 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool9.not = icmp eq i16 %8, 0
  br i1 %tobool9.not, label %if.end3.cleanup_crit_edge, label %if.then10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end3
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 8
  %call.i40 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp12 = icmp slt i32 %call.i40, 0
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  %and15 = and i32 %call.i40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load19 = load i16, ptr %link, align 8
  %bf.clear20 = and i16 %bf.load19, -5
  store i16 %bf.clear20, ptr %link, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i40, %if.then10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tja11xx_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tja11xx_get_strings(ptr nocapture noundef readnone %phydev, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %data, ptr @str, i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr.1, ptr @str.48, i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.2, ptr @str.49, i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.3, ptr @str.50, i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.4, ptr @str.51, i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.5, ptr @str.52, i32 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tja11xx_get_stats(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %reg = getelementptr [6 x %struct.tja11xx_phy_stats], ptr @tja11xx_hw_stats, i32 0, i32 %i.021, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3 = getelementptr i64, ptr %data, i32 %i.021
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %arrayidx3, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mask = getelementptr [6 x %struct.tja11xx_phy_stats], ptr @tja11xx_hw_stats, i32 0, i32 %i.021, i32 3
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mask, align 2
  %conv5 = zext i16 %8 to i32
  %and = and i32 %call.i, %conv5
  %9 = zext i32 %and to i64
  %arrayidx7 = getelementptr i64, ptr %data, i32 %i.021
  %off = getelementptr [6 x %struct.tja11xx_phy_stats], ptr @tja11xx_hw_stats, i32 0, i32 %i.021, i32 2
  %10 = ptrtoint ptr %off to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %off, align 1
  %sh_prom = zext i8 %11 to i64
  %shr = lshr i64 %9, %sh_prom
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shr, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_loopback(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_get_sqi(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %and = lshr i32 %call.i, 5
  %shr = and i32 %and, 7
  %retval.0 = select i1 %cmp, i32 %call.i, i32 %shr
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tja11xx_get_sqi_max(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja1102_p0_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 56, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev2 = getelementptr inbounds %struct.tja11xx_priv, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %phydev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %phydev, ptr %phydev2, align 4
  %phy_register_work = getelementptr inbounds %struct.tja11xx_priv, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %phy_register_work, i32 noundef 0) #8
  %1 = ptrtoint ptr %phy_register_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %phy_register_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tja11xx_priv, ptr %call.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @tja1102_p0_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry6 = getelementptr inbounds %struct.tja11xx_priv, ptr %call.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.tja11xx_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tja11xx_priv, ptr %call.i, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tja1102_p1_register, ptr %func, align 4
  %call8 = tail call fastcc i32 @tja11xx_hwmon_register(ptr noundef %phydev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %phy_register_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i20 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i20 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i20, align 8
  %addr.i21 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i21, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 21) #8
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %bus.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i20, align 8
  %8 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i21, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 22, i16 noundef zeroext 1546) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i22 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 22, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool5.not = icmp eq i32 %call.i22, 0
  br i1 %tobool5.not, label %if.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %bus.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i20, align 8
  %12 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i21, align 8
  %call.i.i25 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 21) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i25, i32 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i22, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_error(ptr noundef %phydev) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.43) #11
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %and4 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end10_crit_edge, label %do.end9

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.46) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.end3.if.end10_crit_edge
  %and11 = and i32 %call.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_trigger_machine(ptr noundef %phydev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end14 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja1102_p0_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id.i, align 4
  %and.i = and i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25222272, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 25222272
  br i1 %cmp.not.i, label %if.end.i, label %entry.tja1102_match_phy_device.exit_crit_edge

entry.tja1102_match_phy_device.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja1102_match_phy_device.exit

if.end.i:                                         ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %if.end.i.tja1102_match_phy_device.exit_crit_edge, label %if.end3.i

if.end.i.tja1102_match_phy_device.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja1102_match_phy_device.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp ne i32 %call.i.i, 0
  %cond.i = zext i1 %tobool5.not.i to i32
  br label %tja1102_match_phy_device.exit

tja1102_match_phy_device.exit:                    ; preds = %if.end3.i, %if.end.i.tja1102_match_phy_device.exit_crit_edge, %entry.tja1102_match_phy_device.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end3.i ], [ 0, %entry.tja1102_match_phy_device.exit_crit_edge ], [ %call.i.i, %if.end.i.tja1102_match_phy_device.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_cable_test_start(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext -32768, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @tja11xx_wakeup(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext -32768, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5 = icmp slt i32 %call.i.i, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i17 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i17, %if.end7 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %finished, align 1
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %5 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %finished, align 1
  %call.i15 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext 0, i16 noundef zeroext -32768) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool3.not = icmp eq i32 %call.i15, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %if.end.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %and.i.i = and i32 %call.i.i, 384
  %10 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and.i.i, label %if.else4.i.i [
    i32 384, label %if.end.i.tja11xx_cable_test_report_trans.exit.i_crit_edge
    i32 0, label %if.then3.i.i
  ]

if.end.i.tja11xx_cable_test_report_trans.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja11xx_cable_test_report_trans.exit.i

if.then3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja11xx_cable_test_report_trans.exit.i

if.else4.i.i:                                     ; preds = %if.end.i
  %and5.i.i = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i, label %if.else7.i.i, label %if.else4.i.i.tja11xx_cable_test_report_trans.exit.i_crit_edge

if.else4.i.i.tja11xx_cable_test_report_trans.exit.i_crit_edge: ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja11xx_cable_test_report_trans.exit.i

if.else7.i.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = trunc i32 %call.i.i to i8
  %12 = lshr i8 %11, 6
  %phi.cast.i = and i8 %12, 2
  br label %tja11xx_cable_test_report_trans.exit.i

tja11xx_cable_test_report_trans.exit.i:           ; preds = %if.else7.i.i, %if.else4.i.i.tja11xx_cable_test_report_trans.exit.i_crit_edge, %if.then3.i.i, %if.end.i.tja11xx_cable_test_report_trans.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 1, %if.then3.i.i ], [ 0, %if.end.i.tja11xx_cable_test_report_trans.exit.i_crit_edge ], [ 3, %if.else4.i.i.tja11xx_cable_test_report_trans.exit.i_crit_edge ], [ %phi.cast.i, %if.else7.i.i ]
  %call2.i = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %tja11xx_cable_test_report_trans.exit.i, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i15, %if.then1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %tja11xx_cable_test_report_trans.exit.i ], [ %call.i.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja1102_p1_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id.i, align 4
  %and.i = and i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25222272, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 25222272
  br i1 %cmp.not.i, label %if.end.i, label %entry.tja1102_match_phy_device.exit_crit_edge

entry.tja1102_match_phy_device.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja1102_match_phy_device.exit

if.end.i:                                         ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %if.end.i.tja1102_match_phy_device.exit_crit_edge, label %if.end3.i

if.end.i.tja1102_match_phy_device.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tja1102_match_phy_device.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  %lnot.ext.i = zext i1 %tobool7.not.i to i32
  br label %tja1102_match_phy_device.exit

tja1102_match_phy_device.exit:                    ; preds = %if.end3.i, %if.end.i.tja1102_match_phy_device.exit_crit_edge, %entry.tja1102_match_phy_device.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end3.i ], [ 0, %entry.tja1102_match_phy_device.exit_crit_edge ], [ %call.i.i, %if.end.i.tja1102_match_phy_device.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tja11xx_wakeup(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 30720
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and, label %if.end.sw.epilog_crit_edge [
    i32 24576, label %sw.bb8
    i32 6144, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %call.i40 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not = icmp eq i32 %call.i40, 0
  br i1 %tobool.not, label %if.end3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %call.i41 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool5.not = icmp eq i32 %call.i41, 0
  br i1 %tobool5.not, label %if.end3.sw.epilog_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %call9 = tail call fastcc i32 @phy_modify_check(ptr noundef %phydev, i8 noundef zeroext 17, i16 noundef zeroext 30720, i16 noundef zeroext 24576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  %call13 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 30720, i16 noundef zeroext 6144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @phy_modify_check(ptr noundef %phydev, i8 noundef zeroext 24, i16 noundef zeroext 16384, i16 noundef zeroext 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext -32768) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end3.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end20, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call.i.i, %if.end20 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i40, %sw.bb.cleanup_crit_edge ], [ %call.i41, %if.end3.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_modify_check(ptr noundef %phydev, i8 noundef zeroext %reg, i16 noundef zeroext %mask, i16 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %reg to i32
  %call = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef %conv, i16 noundef zeroext %mask, i16 noundef zeroext %set) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 30000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 103) #8
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i73.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef %conv) #8
  %conv9.i = zext i16 %mask to i32
  %and74.i = and i32 %call.i73.i, %conv9.i
  %conv10.i = zext i16 %set to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and74.i, i32 %conv10.i)
  %cmp1175.i = icmp eq i32 %and74.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp1376.i = icmp slt i32 %call.i73.i, 0
  %or.cond77.i = or i1 %cmp1376.i, %cmp1175.i
  br i1 %or.cond77.i, label %if.end.for.end.i_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call17.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then21.i, label %if.then26.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i64.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef %conv) #8
  %.pre.i = and i32 %call.i64.i, %conv9.i
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 38, i32 noundef 150, i32 noundef 2) #8
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef %conv) #8
  %and.i = and i32 %call.i.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %and.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp slt i32 %call.i.i, 0
  %or.cond.i = or i1 %cmp13.i, %cmp11.i
  br i1 %or.cond.i, label %if.then26.i.for.end.i_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then21.i, %if.end.for.end.i_crit_edge
  %and29.pre-phi.i = phi i32 [ %and74.i, %if.end.for.end.i_crit_edge ], [ %.pre.i, %if.then21.i ], [ %and.i, %if.then26.i.for.end.i_crit_edge ]
  %val.0.i = phi i32 [ %call.i73.i, %if.end.for.end.i_crit_edge ], [ %call.i64.i, %if.then21.i ], [ %call.i.i, %if.then26.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and29.pre-phi.i, i32 %conv10.i)
  %cmp31.i = icmp eq i32 %and29.pre-phi.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %cmp33.i = icmp slt i32 %val.0.i, 0
  %12 = or i1 %cmp31.i, %cmp33.i
  %13 = select i1 %12, i32 0, i32 -110
  %__ret.0.i = select i1 %cmp33.i, i32 %val.0.i, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i)
  %tobool39.not.i = icmp eq i32 %__ret.0.i, 0
  br i1 %tobool39.not.i, label %for.end.i.cleanup_crit_edge, label %do.end43.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end43.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %__ret.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end43.i, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ %__ret.0.i, %do.end43.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tja11xx_hwmon_register(ptr noundef %phydev, ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call noalias ptr @devm_kstrdup(ptr noundef %phydev, ptr noundef %retval.0.i, i32 noundef 3264) #8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %priv, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %dev_name.exit.for.cond_crit_edge

dev_name.exit.for.cond_crit_edge:                 ; preds = %dev_name.exit
  br label %for.cond

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.inc, %dev_name.exit.for.cond_crit_edge
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %dev_name.exit.for.cond_crit_edge ]
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 %i.0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %8, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 45, label %for.cond.if.then9_crit_edge
    i8 42, label %for.cond.if.then9_crit_edge33
    i8 32, label %for.cond.if.then9_crit_edge34
    i8 9, label %for.cond.if.then9_crit_edge35
    i8 10, label %for.cond.if.then9_crit_edge36
  ]

for.cond.if.then9_crit_edge36:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.cond.if.then9_crit_edge35:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.cond.if.then9_crit_edge34:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.cond.if.then9_crit_edge33:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.cond.if.then9_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %for.cond.if.then9_crit_edge, %for.cond.if.then9_crit_edge33, %for.cond.if.then9_crit_edge34, %for.cond.if.then9_crit_edge35, %for.cond.if.then9_crit_edge36
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 95, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.cond.for.inc_crit_edge
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %phydev, ptr noundef %6, ptr noundef %phydev, ptr noundef nonnull @tja11xx_hwmon_chip_info, ptr noundef null) #8
  %hwmon_dev = getelementptr inbounds %struct.tja11xx_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %hwmon_dev, align 4
  %cmp.i.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call14 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %for.end ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tja11xx_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 14
  %or.cond = and i1 %cmp, %cmp1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2 = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %attr)
  %cmp4 = icmp eq i32 %attr, 17
  %or.cond9 = and i1 %cmp2, %cmp4
  %0 = or i1 %or.cond, %or.cond9
  %retval.0 = select i1 %0, i16 292, i16 0
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tja11xx_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 14
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and = lshr i32 %call.i, 1
  br label %cleanup.sink.split

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp7 = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %attr)
  %cmp9 = icmp eq i32 %attr, 17
  %or.cond32 = and i1 %cmp7, %cmp9
  br i1 %or.cond32, label %if.then10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  %bus.i33 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i33, align 8
  %addr.i34 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i34, align 8
  %call.i35 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp12 = icmp slt i32 %call.i35, 0
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.end14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %and15 = lshr i32 %call.i35, 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14, %if.end
  %and15.sink = phi i32 [ %and15, %if.end14 ], [ %and, %if.end ]
  %and15.lobit = and i32 %and15.sink, 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and15.lobit, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i35, %if.then10.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_alloc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_cable_test_finished(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tja1102_p1_register(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 4
  %bus1 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef null) #8
  %cmp.not68 = icmp eq ptr %call, null
  br i1 %cmp.not68, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addr7 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %child.069 = phi ptr [ %call, %for.body.lr.ph ], [ %call39, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %addr.i, align 4, !annotation !109
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.069, ptr noundef nonnull @.str.36, ptr noundef nonnull %addr.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %child.069, i32 0, i32 2
  %7 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %full_name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %8) #11
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp1.i = icmp ugt i32 %10, 31
  br i1 %cmp1.i, label %do.end5.i, label %if.else

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_name6.i = getelementptr inbounds %struct.device_node, ptr %child.069, i32 0, i32 2
  %11 = ptrtoint ptr %full_name6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %full_name6.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %12, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %do.end5.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.else:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #8
  %13 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr7, align 8
  %add = add i32 %14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add)
  %cmp8.not = icmp eq i32 %10, %add
  br i1 %cmp8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %add) #11
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %call17 = call zeroext i1 @mdiobus_is_registered_device(ptr noundef %3, i32 noundef %10) #8
  br i1 %call17, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = call ptr @phy_device_create(ptr noundef %3, i32 noundef %10, i32 noundef 25222272, i1 noundef zeroext false, ptr noundef null) #8
  %cmp.i65 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %10) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %parent = getelementptr inbounds %struct.device, ptr %call23, i32 0, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %parent, align 8
  %call32 = call i32 @of_mdiobus_phy_device_register(ptr noundef %3, ptr noundef %call23, ptr noundef nonnull %child.069, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %if.end29.cleanup_crit_edge, label %do.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %call32) #11
  call void @phy_device_free(ptr noundef %call23) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end29.cleanup_crit_edge, %do.end28, %do.end21, %do.end12, %do.end
  %call39 = call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef nonnull %child.069) #8
  %cmp.not = icmp eq ptr %call39, null
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mdiobus_is_registered_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_device_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_phy_device_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_nxp_tja11xx__352_823_phy_module_init6, !1, !"__initcall__kmod_nxp_tja11xx__352_823_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 823, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author353, !4, !"__UNIQUE_ID_author353", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 834, i32 1}
!5 = !{ptr @__UNIQUE_ID_description354, !6, !"__UNIQUE_ID_description354", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 835, i32 1}
!7 = !{ptr @__UNIQUE_ID_file355, !8, !"__UNIQUE_ID_file355", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 836, i32 1}
!9 = !{ptr @__UNIQUE_ID_license356, !8, !"__UNIQUE_ID_license356", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 740, i32 12}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 758, i32 12}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 775, i32 12}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 798, i32 12}
!18 = !{ptr @tja11xx_driver, !19, !"tja11xx_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 737, i32 26}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 102, i32 9}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tja11xx_check._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tja11xx_check._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tja11xx_hwmon_chip_info, !29, !"tja11xx_hwmon_chip_info", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 438, i32 37}
!30 = !{ptr @tja11xx_hwmon_hwmon_ops, !31, !"tja11xx_hwmon_hwmon_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 433, i32 31}
!32 = !{ptr @tja11xx_hwmon_info, !33, !"tja11xx_hwmon_info", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 427, i32 41}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 238, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tja11xx_config_aneg._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @tja11xx_config_aneg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 90, i32 4}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 91, i32 4}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 92, i32 4}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 93, i32 4}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 94, i32 4}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 95, i32 4}
!52 = !{ptr @tja11xx_hw_stats, !53, !"tja11xx_hw_stats", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 89, i32 33}
!54 = !{ptr @tja1102_p0_probe.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 552, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 497, i32 4}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @tja1102_p1_register._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @tja1102_p1_register._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 504, i32 4}
!64 = !{ptr @tja1102_p1_register._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tja1102_p1_register._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 510, i32 4}
!68 = !{ptr @tja1102_p1_register._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tja1102_p1_register._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 517, i32 4}
!72 = !{ptr @tja1102_p1_register._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tja1102_p1_register._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 534, i32 4}
!76 = !{ptr @tja1102_p1_register._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tja1102_p1_register._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/of_mdio.h", i32 43, i32 33}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/of_mdio.h", i32 45, i32 3}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @of_mdio_parse_addr._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @of_mdio_parse_addr._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/of_mdio.h", i32 51, i32 3}
!88 = !{ptr @of_mdio_parse_addr._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @of_mdio_parse_addr._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 638, i32 3}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tja11xx_handle_interrupt._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @tja11xx_handle_interrupt._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/phy/nxp-tja11xx.c", i32 640, i32 3}
!97 = !{ptr @tja11xx_handle_interrupt._entry.45, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @tja11xx_handle_interrupt._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i8 0, i8 2}
!109 = !{!"auto-init"}
