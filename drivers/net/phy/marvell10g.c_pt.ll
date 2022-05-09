; ModuleID = '/llk/IR_all_yes/drivers/net/phy/marvell10g.c_pt.bc'
source_filename = "../drivers/net/phy/marvell10g.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv3310_chip = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sfp_upstream_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mv3310_priv = type { [1 x i32], i32, i8, i8, i32, ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__initcall__kmod_marvell10g__377_1302_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@mv3310_drivers = internal global { [4 x %struct.phy_driver], [240 x i8] } { [4 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2820512, ptr @.str, i32 -16, ptr null, i32 0, ptr @mv3310_type, ptr null, ptr @mv3310_config_init, ptr @mv3310_probe, ptr @mv3310_get_features, ptr @mv3310_suspend, ptr @mv3310_resume, ptr @mv3310_config_aneg, ptr @mv3310_aneg_done, ptr @mv3310_read_status, ptr null, ptr null, ptr @mv3310_remove, ptr @mv3310_match_phy_device, ptr @mv3110_set_wol, ptr @mv3110_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv3310_get_tunable, ptr @mv3310_set_tunable, ptr @genphy_c45_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2820512, ptr @.str.1, i32 -16, ptr null, i32 0, ptr @mv3340_type, ptr null, ptr @mv3310_config_init, ptr @mv3310_probe, ptr @mv3310_get_features, ptr @mv3310_suspend, ptr @mv3310_resume, ptr @mv3310_config_aneg, ptr @mv3310_aneg_done, ptr @mv3310_read_status, ptr null, ptr null, ptr @mv3310_remove, ptr @mv3340_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv3310_get_tunable, ptr @mv3310_set_tunable, ptr @genphy_c45_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2820528, ptr @.str.2, i32 -16, ptr null, i32 0, ptr @mv2110_type, ptr null, ptr @mv3310_config_init, ptr @mv3310_probe, ptr null, ptr @mv3310_suspend, ptr @mv3310_resume, ptr @mv3310_config_aneg, ptr @mv3310_aneg_done, ptr @mv3310_read_status, ptr null, ptr null, ptr @mv3310_remove, ptr @mv2110_match_phy_device, ptr @mv3110_set_wol, ptr @mv3110_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv3310_get_tunable, ptr @mv3310_set_tunable, ptr @genphy_c45_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2820528, ptr @.str.3, i32 -16, ptr null, i32 0, ptr @mv2111_type, ptr null, ptr @mv3310_config_init, ptr @mv3310_probe, ptr null, ptr @mv3310_suspend, ptr @mv3310_resume, ptr @mv3310_config_aneg, ptr @mv3310_aneg_done, ptr @mv3310_read_status, ptr null, ptr null, ptr @mv3310_remove, ptr @mv2111_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv3310_get_tunable, ptr @mv3310_set_tunable, ptr @genphy_c45_loopback, ptr null, ptr null }], [240 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description378 = internal constant [76 x i8] c"marvell10g.description=Marvell Alaska X/M multi-gigabit Ethernet PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file379 = internal constant [43 x i8] c"marvell10g.file=drivers/net/phy/marvell10g\00", section ".modinfo", align 1
@__UNIQUE_ID_license380 = internal constant [23 x i8] c"marvell10g.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88x3310\00", [22 x i8] zeroinitializer }, align 32
@mv3310_type = internal constant { %struct.mv3310_chip, [44 x i8] } { %struct.mv3310_chip { ptr @mv3310_has_downshift, ptr @mv3310_init_supported_interfaces, ptr @mv3310_get_mactype, ptr @mv3310_init_interface, ptr @mv3310_hwmon_read_temp_reg }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88x3340\00", [22 x i8] zeroinitializer }, align 32
@mv3340_type = internal constant { %struct.mv3310_chip, [44 x i8] } { %struct.mv3310_chip { ptr @mv3310_has_downshift, ptr @mv3340_init_supported_interfaces, ptr @mv3310_get_mactype, ptr @mv3340_init_interface, ptr @mv3310_hwmon_read_temp_reg }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e2110\00", [22 x i8] zeroinitializer }, align 32
@mv2110_type = internal constant { %struct.mv3310_chip, [44 x i8] } { %struct.mv3310_chip { ptr null, ptr @mv2110_init_supported_interfaces, ptr @mv2110_get_mactype, ptr @mv2110_init_interface, ptr @mv2110_hwmon_read_temp_reg }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e2111\00", [22 x i8] zeroinitializer }, align 32
@mv2111_type = internal constant { %struct.mv3310_chip, [44 x i8] } { %struct.mv3310_chip { ptr null, ptr @mv2111_init_supported_interfaces, ptr @mv2110_get_mactype, ptr @mv2110_init_interface, ptr @mv2110_hwmon_read_temp_reg }, [44 x i8] zeroinitializer }, align 32
@mv3310_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 696, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MACTYPE configuration invalid\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mv3310_config_init\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/phy/marvell10g.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv3310_config_init._entry_ptr = internal global ptr @mv3310_config_init._entry, section ".printk_index", align 4
@mv3310_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 344, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv3310_reset\00", [19 x i8] zeroinitializer }, align 32
@mv3310_reset._entry_ptr = internal global ptr @mv3310_reset._entry, section ".printk_index", align 4
@mv3310_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 504, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PHY failed to boot firmware, status=%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv3310_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mv3310_probe._entry_ptr = internal global ptr @mv3310_probe._entry, section ".printk_index", align 4
@mv3310_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.6, i32 528, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware version %u.%u.%u.%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv3310_probe._entry_ptr.17 = internal global ptr @mv3310_probe._entry.14, section ".printk_index", align 4
@mv3310_sfp_ops = internal constant { %struct.sfp_upstream_ops, [56 x i8] } { %struct.sfp_upstream_ops { ptr @phy_sfp_attach, ptr @phy_sfp_detach, ptr @mv3310_sfp_insert, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@mv3310_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @mv3310_hwmon_ops, ptr @mv3310_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@mv3310_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @mv3310_hwmon_is_visible, ptr @mv3310_hwmon_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mv3310_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mv3310_hwmon_chip, ptr @mv3310_hwmon_temp, ptr null], [20 x i8] zeroinitializer }, align 32
@mv3310_hwmon_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @mv3310_hwmon_chip_config }, [24 x i8] zeroinitializer }, align 32
@mv3310_hwmon_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @mv3310_hwmon_temp_config }, [24 x i8] zeroinitializer }, align 32
@mv3310_hwmon_chip_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 48, i32 0], [24 x i8] zeroinitializer }, align 32
@mv3310_hwmon_temp_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@mv3310_sfp_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 475, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"incompatible SFP module inserted\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv3310_sfp_insert\00", [46 x i8] zeroinitializer }, align 32
@mv3310_sfp_insert._entry_ptr = internal global ptr @mv3310_sfp_insert._entry, section ".printk_index", align 4
@switch.table.mv3310_config_aneg = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 32, i16 96], [26 x i8] zeroinitializer }, align 32
@switch.table.mv3310_init_interface = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25, i32 24, i32 25, i32 26, i32 26, i32 26], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 16384, i64 32768, i64 49152, i64 49156, i64 49160]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 100, i64 1000, i64 2500, i64 5000, i64 10000]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1000, i64 65534, i64 65535]
@__sancov_gen_cov_switch_values.25 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.27 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"mv3310_drivers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1221, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1226, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"mv3310_type\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1048, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1247, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"mv3340_type\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1059, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1266, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"mv2110_type\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1070, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1286, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"mv2111_type\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1080, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 696, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 341, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 503, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 526, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"mv3310_sfp_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 481, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"mv3310_hwmon_chip_info\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 245, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"mv3310_hwmon_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 214, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"mv3310_hwmon_info\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 239, i32 41 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"mv3310_hwmon_chip\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 224, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"mv3310_hwmon_temp\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 234, i32 40 }
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"mv3310_hwmon_chip_config\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 219, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"mv3310_hwmon_temp_config\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 229, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [32 x i8] c"../drivers/net/phy/marvell10g.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 475, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [32 x i8] c"switch.table.mv3310_config_aneg\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [35 x i8] c"switch.table.mv3310_init_interface\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_description378, ptr @__UNIQUE_ID_file379, ptr @__UNIQUE_ID_license380, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_marvell10g__377_1302_phy_module_init6, ptr @mv3310_config_init._entry, ptr @mv3310_config_init._entry_ptr, ptr @mv3310_probe._entry, ptr @mv3310_probe._entry.14, ptr @mv3310_probe._entry_ptr, ptr @mv3310_probe._entry_ptr.17, ptr @mv3310_reset._entry, ptr @mv3310_reset._entry_ptr, ptr @mv3310_sfp_insert._entry, ptr @mv3310_sfp_insert._entry_ptr, ptr @phy_module_exit, ptr @mv3310_drivers, ptr @.str, ptr @mv3310_type, ptr @.str.1, ptr @mv3340_type, ptr @.str.2, ptr @mv2110_type, ptr @.str.3, ptr @mv2111_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @mv3310_sfp_ops, ptr @mv3310_hwmon_chip_info, ptr @mv3310_hwmon_ops, ptr @mv3310_hwmon_info, ptr @mv3310_hwmon_chip, ptr @mv3310_hwmon_temp, ptr @mv3310_hwmon_chip_config, ptr @mv3310_hwmon_temp_config, ptr @.str.18, ptr @.str.19, ptr @switch.table.mv3310_config_aneg, ptr @switch.table.mv3310_init_interface], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_drivers to i32), i32 944, i32 1184, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3340_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2110_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2111_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_sfp_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_hwmon_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_hwmon_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_hwmon_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_hwmon_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv3310_sfp_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv3310_config_aneg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv3310_init_interface to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @mv3310_drivers, i32 noundef 4, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_drivers_unregister(ptr noundef nonnull @mv3310_drivers, i32 noundef 4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv.i, align 8
  %driver_data.i48 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data.i48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i48, align 4
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface, align 4
  %div3.i = lshr i32 %7, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %7, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %10, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %12 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %mdix_ctrl, align 1
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61441, i16 noundef zeroext 2048, i16 noundef zeroext 0) #9
  %13 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv.i, align 8
  %phy_id.i = getelementptr inbounds %struct.phy_driver, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820512, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 2820512
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.mv3310_power_up.exit_crit_edge

if.end.mv3310_power_up.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_power_up.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %firmware_ver.i = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %firmware_ver.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %firmware_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %18)
  %cmp2.i = icmp ult i32 %18, 196608
  br i1 %cmp2.i, label %lor.lhs.false.i.mv3310_power_up.exit_crit_edge, label %if.end.i

lor.lhs.false.i.mv3310_power_up.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_power_up.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i8.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61441, i16 noundef zeroext 0, i16 noundef zeroext -32768) #9
  br label %mv3310_power_up.exit

mv3310_power_up.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.mv3310_power_up.exit_crit_edge, %if.end.mv3310_power_up.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i8.i, %if.end.i ], [ %call.i.i, %lor.lhs.false.i.mv3310_power_up.exit_crit_edge ], [ %call.i.i, %if.end.mv3310_power_up.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %if.end6, label %mv3310_power_up.exit.cleanup_crit_edge

mv3310_power_up.exit.cleanup_crit_edge:           ; preds = %mv3310_power_up.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %mv3310_power_up.exit
  %get_mactype = getelementptr inbounds %struct.mv3310_chip, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %get_mactype to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_mactype, align 4
  %call7 = tail call i32 %20(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %init_interface = getelementptr inbounds %struct.mv3310_chip, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %init_interface to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_interface, align 4
  %call10 = tail call i32 %22(ptr noundef %phydev, i32 noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call.i = tail call i32 @phy_modify_mmd_changed(ptr noundef %phydev, i32 noundef 3, i32 noundef 32768, i16 noundef zeroext 768, i16 noundef zeroext 768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end15.mv3310_set_edpd.exit_crit_edge

if.end15.mv3310_set_edpd.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_set_edpd.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call fastcc i32 @mv3310_reset(ptr noundef %phydev) #9
  br label %mv3310_set_edpd.exit

mv3310_set_edpd.exit:                             ; preds = %if.then.i, %if.end15.mv3310_set_edpd.exit_crit_edge
  %retval.0.i50 = phi i32 [ %call4.i, %if.then.i ], [ %call.i, %if.end15.mv3310_set_edpd.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i50)
  %tobool17.not = icmp eq i32 %retval.0.i50, 0
  br i1 %tobool17.not, label %if.end19, label %mv3310_set_edpd.exit.cleanup_crit_edge

mv3310_set_edpd.exit.cleanup_crit_edge:           ; preds = %mv3310_set_edpd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %mv3310_set_edpd.exit
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i, align 4
  %has_downshift.i = getelementptr inbounds %struct.mv3310_priv, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %has_downshift.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_downshift.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end19.if.end24_crit_edge, label %if.end.i52

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.i52:                                       ; preds = %if.end19
  %call64.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32772, i16 noundef zeroext -256, i16 noundef zeroext 4352) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %if.end.i52.mv3310_set_downshift.exit_crit_edge, label %if.end68.i

if.end.i52.mv3310_set_downshift.exit_crit_edge:   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_set_downshift.exit

if.end68.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  %call156.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32771, i16 noundef zeroext 1023, i16 noundef zeroext 585) #9
  br label %mv3310_set_downshift.exit

mv3310_set_downshift.exit:                        ; preds = %if.end68.i, %if.end.i52.mv3310_set_downshift.exit_crit_edge
  %retval.0.i53 = phi i32 [ %call156.i, %if.end68.i ], [ %call64.i, %if.end.i52.mv3310_set_downshift.exit_crit_edge ]
  %27 = zext i32 %retval.0.i53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i53, label %mv3310_set_downshift.exit.cleanup_crit_edge [
    i32 0, label %mv3310_set_downshift.exit.if.end24_crit_edge
    i32 -95, label %mv3310_set_downshift.exit.if.end24_crit_edge55
  ]

mv3310_set_downshift.exit.if.end24_crit_edge55:   ; preds = %mv3310_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

mv3310_set_downshift.exit.if.end24_crit_edge:     ; preds = %mv3310_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

mv3310_set_downshift.exit.cleanup_crit_edge:      ; preds = %mv3310_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %mv3310_set_downshift.exit.if.end24_crit_edge, %mv3310_set_downshift.exit.if.end24_crit_edge55, %if.end19.if.end24_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %mv3310_set_downshift.exit.cleanup_crit_edge, %mv3310_set_edpd.exit.cleanup_crit_edge, %do.end, %if.end6.cleanup_crit_edge, %mv3310_power_up.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ 0, %if.end24 ], [ -19, %entry.cleanup_crit_edge ], [ %retval.0.i, %mv3310_power_up.exit.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %retval.0.i50, %mv3310_set_edpd.exit.cleanup_crit_edge ], [ %retval.0.i53, %mv3310_set_downshift.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %is_c45 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %is_c45 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %is_c45, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %c45_ids = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 3
  %5 = ptrtoint ptr %c45_ids to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c45_ids, align 8
  %and = and i32 %6, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %and)
  %cmp.not = icmp eq i32 %and, 130
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 49232) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.11, i32 noundef %call1) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 24, i32 noundef 3520) #9
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %driver_data.i96 = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i96 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i96, align 4
  %call17 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 49169) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %shl = shl i32 %call17, 16
  %firmware_ver = getelementptr inbounds %struct.mv3310_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %firmware_ver to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %firmware_ver, align 4
  %call21 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 49170) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %9 = ptrtoint ptr %firmware_ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %firmware_ver, align 4
  %or = or i32 %10, %call21
  store i32 %or, ptr %firmware_ver, align 4
  %shr = lshr i32 %or, 24
  %shr33 = lshr i32 %or, 16
  %and34 = and i32 %shr33, 255
  %shr36 = lshr i32 %or, 8
  %and37 = and i32 %shr36, 255
  %and39 = and i32 %or, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %phydev, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %and34, i32 noundef %and37, i32 noundef %and39) #12
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %tobool40.not = icmp eq ptr %12, null
  br i1 %tobool40.not, label %if.end24.if.end45_crit_edge, label %if.then41

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then41:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call zeroext i1 %12(ptr noundef %phydev) #9
  %has_downshift44 = getelementptr inbounds %struct.mv3310_priv, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %call43 to i8
  %13 = ptrtoint ptr %has_downshift44 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %has_downshift44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end24.if.end45_crit_edge
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61441, i16 noundef zeroext 0, i16 noundef zeroext 2048) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool47.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %call50 = tail call fastcc i32 @mv3310_hwmon_probe(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %init_supported_interfaces = getelementptr inbounds %struct.mv3310_chip, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %init_supported_interfaces to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_supported_interfaces, align 4
  tail call void %15(ptr noundef nonnull %call.i) #9
  %call54 = tail call i32 @phy_sfp_probe(ptr noundef %phydev, ptr noundef nonnull @mv3310_sfp_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call54, %if.end53 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call.i.i, %if.end45.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_get_features(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_c45_pma_read_abilities(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %c45_ids.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 3
  %0 = ptrtoint ptr %c45_ids.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c45_ids.i, align 8
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %mv3310_has_pma_ngbaset_quirk.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mv3310_has_pma_ngbaset_quirk.exit:                ; preds = %if.end
  %arrayidx.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %and2.i = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820522, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 2820522
  br i1 %cmp.i, label %if.then2, label %mv3310_has_pma_ngbaset_quirk.exit.cleanup_crit_edge

mv3310_has_pma_ngbaset_quirk.exit.cleanup_crit_edge: ; preds = %mv3310_has_pma_ngbaset_quirk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %mv3310_has_pma_ngbaset_quirk.exit
  %call3 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then2.cleanup_crit_edge, label %if.end5

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i6.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %add.ptr.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i6.i, align 4
  %and.i.i.i = and i32 %5, -98305
  %and = shl i32 %call3, 15
  %6 = and i32 %and, 32768
  %and.i.i.sink.i = or i32 %and.i.i.i, %6
  %and8 = shl i32 %call3, 15
  %7 = and i32 %and8, 65536
  %and.i.i.sink.i27 = or i32 %and.i.i.sink.i, %7
  store i32 %and.i.i.sink.i27, ptr %add.ptr.i.i6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2.cleanup_crit_edge, %mv3310_has_pma_ngbaset_quirk.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ 0, %if.end5 ], [ 0, %mv3310_has_pma_ngbaset_quirk.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61441, i16 noundef zeroext 0, i16 noundef zeroext 2048) #9
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61441, i16 noundef zeroext 2048, i16 noundef zeroext 0) #9
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv.i, align 8
  %phy_id.i = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820512, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 2820512
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.mv3310_power_up.exit_crit_edge

entry.mv3310_power_up.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_power_up.exit

lor.lhs.false.i:                                  ; preds = %entry
  %firmware_ver.i = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %firmware_ver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %firmware_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %7)
  %cmp2.i = icmp ult i32 %7, 196608
  br i1 %cmp2.i, label %lor.lhs.false.i.mv3310_power_up.exit_crit_edge, label %if.end.i

lor.lhs.false.i.mv3310_power_up.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_power_up.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i8.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61441, i16 noundef zeroext 0, i16 noundef zeroext -32768) #9
  br label %mv3310_power_up.exit

mv3310_power_up.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.mv3310_power_up.exit_crit_edge, %entry.mv3310_power_up.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i8.i, %if.end.i ], [ %call.i.i, %lor.lhs.false.i.mv3310_power_up.exit_crit_edge ], [ %call.i.i, %entry.mv3310_power_up.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %mv3310_power_up.exit.cleanup_crit_edge

mv3310_power_up.exit.cleanup_crit_edge:           ; preds = %mv3310_power_up.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mv3310_power_up.exit
  %8 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv.i, align 8
  %phy_id.i5 = getelementptr inbounds %struct.phy_driver, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %phy_id.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_id.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820512, i32 %11)
  %cmp.not.i6 = icmp eq i32 %11, 2820512
  br i1 %cmp.not.i6, label %if.end.i7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i7:                                        ; preds = %if.end
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61580, i16 noundef zeroext -27136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i7.cleanup_crit_edge, label %if.end3.i

if.end.i7.cleanup_crit_edge:                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61578, i16 noundef zeroext -16384, i16 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.i7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mv3310_power_up.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mv3310_power_up.exit.cleanup_crit_edge ], [ %call4.i, %if.end3.i ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl.i, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.mv3310_config_aneg, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i = tail call i32 @phy_modify_mmd_changed(ptr noundef %phydev, i32 noundef 3, i32 noundef 32768, i16 noundef zeroext 96, i16 noundef zeroext %switch.load) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %switch.lookup.mv3310_config_mdix.exit_crit_edge

switch.lookup.mv3310_config_mdix.exit_crit_edge:  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_config_mdix.exit

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call fastcc i32 @mv3310_reset(ptr noundef %phydev) #9
  br label %mv3310_config_mdix.exit

mv3310_config_mdix.exit:                          ; preds = %if.then.i, %switch.lookup.mv3310_config_mdix.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then.i ], [ %call.i, %switch.lookup.mv3310_config_mdix.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %mv3310_config_mdix.exit.cleanup_crit_edge, label %if.end

mv3310_config_mdix.exit.cleanup_crit_edge:        ; preds = %mv3310_config_mdix.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mv3310_config_mdix.exit
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %autoneg, align 8
  %6 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp1 = icmp eq i16 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @genphy_c45_pma_setup_forced(ptr noundef %phydev) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @genphy_c45_an_config_aneg(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %7 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %advertising, align 4
  %9 = shl i32 %8, 4
  %10 = and i32 %9, 256
  %11 = load volatile i32, ptr %advertising, align 4
  %12 = shl i32 %11, 4
  %13 = and i32 %12, 512
  %14 = or i32 %13, %10
  %conv = trunc i32 %14 to i16
  %call13 = tail call i32 @phy_modify_mmd_changed(ptr noundef %phydev, i32 noundef 7, i32 noundef 32768, i16 noundef zeroext 768, i16 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end8.cleanup_crit_edge, label %if.end17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp9.not = icmp ne i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp18.not = icmp ne i32 %call13, 0
  %spec.select = select i1 %cmp18.not, i1 true, i1 %cmp9.not
  %call22 = tail call i32 @genphy_c45_check_and_restart_aneg(ptr noundef %phydev, i1 noundef zeroext %spec.select) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2, %mv3310_config_mdix.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %call22, %if.end17 ], [ %retval.0.i, %mv3310_config_mdix.exit.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call13, %if.end8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_aneg_done(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 4097) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @genphy_c45_aneg_done(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 255, ptr %duplex, align 4
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %2 = call ptr @memset(ptr %lp_advertising, i32 0, i32 12)
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %link, align 8
  %bf.clear = and i16 %bf.load, -5
  store i16 %bf.clear, ptr %link, align 8
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %4 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pause, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %5 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %asym_pause, align 8
  %mdix = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %6 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mdix, align 8
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 4097) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %link, align 8
  %bf.set.i = or i16 %bf.load.i, 4
  store i16 %bf.set.i, ptr %link, align 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10000, ptr %speed, align 8
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %duplex, align 4
  %port.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %port.i, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @genphy_c45_read_link(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32776) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.if.end7_crit_edge, label %if.end8.i

if.end4.i.if.end7_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end8.i:                                        ; preds = %if.end4.i
  %and.i = and i32 %call5.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i30 = load i16, ptr %link, align 8
  %bf.clear.i = and i16 %bf.load.i30, -5
  store i16 %bf.clear.i, ptr %link, align 8
  br label %if.end7

if.end10.i:                                       ; preds = %if.end8.i
  %and11.i = and i32 %call5.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and11.i)
  %cmp12.i = icmp eq i32 %and11.i, 49152
  %and14.i = and i32 %call5.i, 12
  %or.i = or i32 %and14.i, 49152
  %speed.0.i = select i1 %cmp12.i, i32 %or.i, i32 %and11.i
  %trunc.i = trunc i32 %speed.0.i to i16
  %12 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %trunc.i, label %if.end10.i.sw.epilog.i_crit_edge [
    i16 -16384, label %if.end10.i.sw.epilog.sink.split.i_crit_edge
    i16 -16376, label %sw.bb17.i
    i16 -16380, label %sw.bb19.i
    i16 -32768, label %sw.bb21.i
    i16 16384, label %sw.bb23.i
    i16 0, label %sw.bb25.i
  ]

if.end10.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end10.i.sw.epilog.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb19.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb21.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb23.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.bb25.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb25.i, %sw.bb23.i, %sw.bb21.i, %sw.bb19.i, %sw.bb17.i, %if.end10.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 10, %sw.bb25.i ], [ 100, %sw.bb23.i ], [ 1000, %sw.bb21.i ], [ 2500, %sw.bb19.i ], [ 5000, %sw.bb17.i ], [ 10000, %if.end10.i.sw.epilog.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %speed, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end10.i.sw.epilog.i_crit_edge
  %and27.i = lshr i32 %call5.i, 13
  %and27.lobit.i = and i32 %and27.i, 1
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and27.lobit.i, ptr %duplex, align 4
  %port.i32 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %15 = ptrtoint ptr %port.i32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %port.i32, align 8
  %and29.i = and i32 %call5.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %conv.i = select i1 %tobool30.not.i, i8 1, i8 2
  %16 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %mdix, align 8
  %and32.i = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %sw.epilog.i.if.end7_crit_edge, label %if.then34.i

sw.epilog.i.if.end7_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then34.i:                                      ; preds = %sw.epilog.i
  %call35.i = tail call i32 @genphy_c45_read_lpa(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.then34.i.cleanup_crit_edge, label %if.end39.i

if.then34.i.cleanup_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.i:                                       ; preds = %if.then34.i
  %call40.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 32769) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.end39.i.cleanup_crit_edge, label %if.end44.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lp_advertising, align 4
  %and.i.i.i.i.i = and i32 %18, -49
  %and.i.i = lshr i32 %call40.i, 6
  %and.i.i.sink.i.i.i = and i32 %and.i.i, 48
  %and.i.i.sink.i9.i.i = or i32 %and.i.i.i.i.i, %and.i.i.sink.i.i.i
  store i32 %and.i.i.sink.i9.i.i, ptr %lp_advertising, align 4
  tail call void @phy_resolve_aneg_pause(ptr noundef %phydev) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end44.i, %sw.epilog.i.if.end7_crit_edge, %if.then9.i, %if.end4.i.if.end7_crit_edge, %if.then1
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load9 = load i16, ptr %link, align 8
  %20 = and i16 %bf.load9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool11.not = icmp eq i16 %20, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end.i36

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i36:                                       ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %rate_match.i = getelementptr inbounds %struct.mv3310_priv, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %rate_match.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rate_match.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i = icmp eq i8 %24, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i36.if.then2.i_crit_edge

if.end.i36.if.then2.i_crit_edge:                  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

lor.lhs.false.i:                                  ; preds = %if.end.i36
  %const_interface.i = getelementptr inbounds %struct.mv3310_priv, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %const_interface.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %const_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %26)
  %cmp.i37 = icmp eq i32 %26, 28
  br i1 %cmp.i37, label %lor.lhs.false.i.if.then2.i_crit_edge, label %if.end4.i39

lor.lhs.false.i.if.then2.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.then2.i:                                       ; preds = %lor.lhs.false.i.if.then2.i_crit_edge, %if.end.i36.if.then2.i_crit_edge
  %const_interface3.i = getelementptr inbounds %struct.mv3310_priv, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %const_interface3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %const_interface3.i, align 4
  br label %cleanup.sink.split.i

if.end4.i39:                                      ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %30, label %if.end4.i39.cleanup_crit_edge [
    i32 10000, label %if.end4.i39.cleanup.sink.split.i_crit_edge
    i32 5000, label %sw.bb7.i
    i32 2500, label %sw.bb9.i
    i32 1000, label %if.end4.i39.sw.bb11.i_crit_edge
    i32 100, label %if.end4.i39.sw.bb11.i_crit_edge43
    i32 10, label %if.end4.i39.sw.bb11.i_crit_edge44
  ]

if.end4.i39.sw.bb11.i_crit_edge44:                ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.end4.i39.sw.bb11.i_crit_edge43:                ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.end4.i39.sw.bb11.i_crit_edge:                  ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.end4.i39.cleanup.sink.split.i_crit_edge:       ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end4.i39.cleanup_crit_edge:                    ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

sw.bb9.i:                                         ; preds = %if.end4.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

sw.bb11.i:                                        ; preds = %if.end4.i39.sw.bb11.i_crit_edge, %if.end4.i39.sw.bb11.i_crit_edge43, %if.end4.i39.sw.bb11.i_crit_edge44
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %if.end4.i39.cleanup.sink.split.i_crit_edge, %if.then2.i
  %.sink.i40 = phi i32 [ 23, %sw.bb7.i ], [ 22, %sw.bb9.i ], [ 4, %sw.bb11.i ], [ %28, %if.then2.i ], [ %26, %if.end4.i39.cleanup.sink.split.i_crit_edge ]
  %interface6.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %32 = ptrtoint ptr %interface6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink.i40, ptr %interface6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end4.i39.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.then34.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call.i, %if.else.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call35.i, %if.then34.i.cleanup_crit_edge ], [ %call40.i, %if.end39.i.cleanup_crit_edge ], [ 0, %if.end4.i39.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv3310_remove(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 8
  %phy_id.i = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820512, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 2820512
  br i1 %cmp.not.i, label %if.end.i, label %entry.mv3310_hwmon_config.exit_crit_edge

entry.mv3310_hwmon_config.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_hwmon_config.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61580, i16 noundef zeroext -27136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.mv3310_hwmon_config.exit_crit_edge, label %if.end3.i

if.end.i.mv3310_hwmon_config.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv3310_hwmon_config.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61578, i16 noundef zeroext -16384, i16 noundef zeroext -16384) #9
  br label %mv3310_hwmon_config.exit

mv3310_hwmon_config.exit:                         ; preds = %if.end3.i, %if.end.i.mv3310_hwmon_config.exit_crit_edge, %entry.mv3310_hwmon_config.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_match_phy_device(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 3, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820512, i32 %and)
  %cmp.not = icmp eq i32 %and, 2820512
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 53261) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %and.i = lshr i32 %call.i, 7
  %2 = and i32 %and.i, 7
  %add.i = add nuw nsw i32 %2, 1
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp1 = icmp eq i32 %retval.0.i, 1
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3110_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61507, i16 noundef zeroext 0, i16 noundef zeroext 256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %2 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attached_dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx4 = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i16
  %or = or i16 %shl, %conv5
  %call7 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61549, i16 noundef zeroext %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attached_dev, align 8
  %dev_addr13 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr13, align 64
  %arrayidx14 = getelementptr i8, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %15 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %arrayidx19 = getelementptr i8, ptr %13, i32 2
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i16
  %or21 = or i16 %shl16, %conv20
  %call23 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61548, i16 noundef zeroext %or21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end11.cleanup_crit_edge, label %if.end27

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attached_dev, align 8
  %dev_addr29 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr29, align 64
  %arrayidx30 = getelementptr i8, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %23 to i16
  %shl32 = shl nuw i16 %conv31, 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 1
  %conv36 = zext i8 %25 to i16
  %or37 = or i16 %shl32, %conv36
  %call39 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61547, i16 noundef zeroext %or37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end27.cleanup_crit_edge, label %if.end43

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.end27
  %call.i79 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61550, i16 noundef zeroext 0, i16 noundef zeroext -32767) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp45 = icmp slt i32 %call.i79, 0
  br i1 %cmp45, label %if.end43.cleanup_crit_edge, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %call49 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61550, i16 noundef zeroext 1, i16 noundef zeroext -32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.else.cleanup_crit_edge, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %call.i80 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61550, i16 noundef zeroext -32768, i16 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.else.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i80, %if.end54 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call23, %if.end11.cleanup_crit_edge ], [ %call39, %if.end27.cleanup_crit_edge ], [ %call.i79, %if.end43.cleanup_crit_edge ], [ %call49, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv3110_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61550) #9
  %2 = and i32 %call, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %if.then1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %or = or i32 %4, 32
  store i32 %or, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_get_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %has_downshift.i = getelementptr inbounds %struct.mv3310_priv, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %has_downshift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_downshift.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32771) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %if.end3.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %call1.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %and19.i = lshr i32 %call1.i, 6
  %7 = trunc i32 %and19.i to i8
  %8 = and i8 %7, 7
  %conv20.i = add nuw nsw i8 %8, 1
  %storemerge.i = select i1 %tobool4.not.i, i8 0, i8 %conv20.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge.i, ptr %data, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i5 = icmp slt i32 %call.i, 0
  br i1 %cmp.i5, label %sw.bb1.return_crit_edge, label %if.end.i7

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i7:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %and.i6 = and i32 %call.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i6)
  %switch.selectcmp.i = icmp eq i32 %and.i6, 512
  %switch.select.i = select i1 %switch.selectcmp.i, i16 -2, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and.i6)
  %switch.selectcmp6.i = icmp eq i32 %and.i6, 768
  %switch.select7.i = select i1 %switch.selectcmp6.i, i16 1000, i16 %switch.select.i
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %switch.select7.i, ptr %data, align 2
  br label %return

return:                                           ; preds = %if.end.i7, %sw.bb1.return_crit_edge, %if.end3.i, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end3.i ], [ -95, %sw.bb.return_crit_edge ], [ %call1.i, %if.end.i.return_crit_edge ], [ %call.i, %sw.bb1.return_crit_edge ], [ 0, %if.end.i7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %call = tail call fastcc i32 @mv3310_set_downshift(ptr noundef %phydev, i8 noundef zeroext %4)
  br label %return

sw.bb1:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %6, label %sw.bb1.return_crit_edge [
    i16 1000, label %sw.bb1.sw.epilog.i_crit_edge
    i16 -1, label %sw.bb1.sw.epilog.i_crit_edge5
    i16 -2, label %sw.bb1.i
    i16 0, label %sw.bb2.i
  ]

sw.bb1.sw.epilog.i_crit_edge5:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.sw.epilog.i_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb1.sw.epilog.i_crit_edge, %sw.bb1.sw.epilog.i_crit_edge5
  %val.0.i = phi i16 [ 0, %sw.bb2.i ], [ 512, %sw.bb1.i ], [ 768, %sw.bb1.sw.epilog.i_crit_edge ], [ 768, %sw.bb1.sw.epilog.i_crit_edge5 ]
  %call.i = tail call i32 @phy_modify_mmd_changed(ptr noundef %phydev, i32 noundef 3, i32 noundef 32768, i16 noundef zeroext 768, i16 noundef zeroext %val.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.i.return_crit_edge

sw.epilog.i.return_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call fastcc i32 @mv3310_reset(ptr noundef %phydev) #9
  br label %return

return:                                           ; preds = %if.then.i, %sw.epilog.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.return_crit_edge ], [ -22, %sw.bb1.return_crit_edge ], [ %call4.i, %if.then.i ], [ %call.i, %sw.epilog.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_loopback(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3340_match_phy_device(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 3, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820512, i32 %and)
  %cmp.not = icmp eq i32 %and, 2820512
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 53261) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %and.i = lshr i32 %call.i, 7
  %2 = and i32 %and.i, 7
  %add.i = add nuw nsw i32 %2, 1
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp1 = icmp eq i32 %retval.0.i, 4
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2110_match_phy_device(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 3, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820528, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 2820528
  br i1 %cmp.not.i, label %if.end.i, label %entry.mv211x_match_phy_device.exit_crit_edge

entry.mv211x_match_phy_device.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv211x_match_phy_device.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.mv211x_match_phy_device.exit_crit_edge, label %if.end3.i

if.end.i.mv211x_match_phy_device.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv211x_match_phy_device.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = lshr i32 %call.i, 7
  %.lobit = and i32 %2, 1
  br label %mv211x_match_phy_device.exit

mv211x_match_phy_device.exit:                     ; preds = %if.end3.i, %if.end.i.mv211x_match_phy_device.exit_crit_edge, %entry.mv211x_match_phy_device.exit_crit_edge
  %retval.0.i = phi i32 [ %.lobit, %if.end3.i ], [ 0, %entry.mv211x_match_phy_device.exit_crit_edge ], [ %call.i, %if.end.i.mv211x_match_phy_device.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2111_match_phy_device(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 3, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820528, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 2820528
  br i1 %cmp.not.i, label %if.end.i, label %entry.mv211x_match_phy_device.exit_crit_edge

entry.mv211x_match_phy_device.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv211x_match_phy_device.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.mv211x_match_phy_device.exit_crit_edge, label %if.end3.i

if.end.i.mv211x_match_phy_device.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv211x_match_phy_device.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = lshr i32 %call.i, 7
  %.lobit = and i32 %2, 1
  %3 = xor i32 %.lobit, 1
  br label %mv211x_match_phy_device.exit

mv211x_match_phy_device.exit:                     ; preds = %if.end3.i, %if.end.i.mv211x_match_phy_device.exit_crit_edge, %entry.mv211x_match_phy_device.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.end3.i ], [ 0, %entry.mv211x_match_phy_device.exit_crit_edge ], [ %call.i, %if.end.i.mv211x_match_phy_device.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mv3310_has_downshift(ptr nocapture noundef readonly %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %firmware_ver = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %firmware_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %firmware_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 197887, i32 %3)
  %cmp = icmp ugt i32 %3, 197887
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv3310_init_supported_interfaces(ptr nocapture noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %or.i12 = or i32 %1, 398458896
  store i32 %or.i12, ptr %mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_get_mactype(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61441) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %and = and i32 %call, 7
  %retval.0 = select i1 %cmp, i32 %call, i32 %and
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv3310_init_interface(ptr nocapture noundef readonly %phydev, i32 noundef %mactype) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rate_match = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rate_match to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rate_match, align 1
  %3 = zext i32 %mactype to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %mactype, label %entry.cleanup_crit_edge [
    i32 6, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge49
    i32 1, label %entry.if.then_crit_edge50
    i32 7, label %entry.cleanup.sink.split_crit_edge
    i32 5, label %entry.if.then12_crit_edge
    i32 4, label %entry.if.then12_crit_edge51
    i32 0, label %if.then18
    i32 3, label %if.then24
  ]

entry.if.then12_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge49, %entry.if.then_crit_edge50
  %4 = ptrtoint ptr %rate_match to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %rate_match, align 1
  %switch.tableidx = add i32 %mactype, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 6
  br i1 %5, label %switch.lookup, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %entry.if.then12_crit_edge, %entry.if.then12_crit_edge51
  br label %cleanup.sink.split

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mv3310_init_interface, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.then24, %if.then18, %if.then12, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 24, %if.then18 ], [ 25, %if.then24 ], [ 26, %if.then12 ], [ 28, %entry.cleanup.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %const_interface = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %const_interface to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %const_interface, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_hwmon_read_temp_reg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61580) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv3310_set_downshift(ptr noundef %phydev, i8 noundef zeroext %ds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %has_downshift = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %has_downshift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_downshift, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %ds to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %ds, label %if.end9 [
    i8 0, label %if.then2
    i8 -1, label %if.end.if.end14_crit_edge
  ]

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32771, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %ds)
  %cmp11 = icmp ugt i8 %ds, 8
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %ds.addr.0197 = phi i8 [ %ds, %if.end9.if.end14_crit_edge ], [ 2, %if.end.if.end14_crit_edge ]
  %sub = add nsw i8 %ds.addr.0197, -1
  %conv33 = zext i8 %sub to i32
  %conv35 = shl nuw nsw i32 %conv33, 12
  %shl60 = shl nuw nsw i32 %conv33, 8
  %and61 = and i32 %shl60, 3840
  %or = or i32 %and61, %conv35
  %conv63 = trunc i32 %or to i16
  %call64 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32772, i16 noundef zeroext -256, i16 noundef zeroext %conv63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end14.cleanup_crit_edge, label %do.end148

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end148:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %5 = shl nuw nsw i32 %conv33, 6
  %6 = and i32 %5, 448
  %shl122 = shl nuw nsw i32 %conv33, 3
  %and123 = and i32 %shl122, 56
  %conv97 = or i32 %and123, %conv33
  %conv126 = or i32 %conv97, %6
  %7 = trunc i32 %conv126 to i16
  %conv155 = or i16 %7, 512
  %call156 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32771, i16 noundef zeroext 1023, i16 noundef zeroext %conv155) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end148, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ %call156, %do.end148 ], [ -95, %entry.cleanup_crit_edge ], [ -7, %if.end9.cleanup_crit_edge ], [ %call64, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv3310_reset(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 0, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call1, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 344) #9
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #9
  %call163 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 0) #9
  %0 = and i32 %call163, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %0)
  %.not4 = icmp eq i32 %0, 32768
  br i1 %.not4, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then30.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call22 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then25, label %if.then30

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 0) #9
  %.pre = and i32 %call27, -2147450880
  br label %for.end

if.then30:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #9
  %call16 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 0) #9
  %1 = and i32 %call16, -2147450880
  %.not = icmp eq i32 %1, 32768
  br i1 %.not, label %if.then30.land.lhs.true_crit_edge, label %if.then30.for.end_crit_edge

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then30.land.lhs.true_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then30.for.end_crit_edge, %if.then25, %if.end.for.end_crit_edge
  %.pre-phi = phi i32 [ %0, %if.end.for.end_crit_edge ], [ %.pre, %if.then25 ], [ %1, %if.then30.for.end_crit_edge ]
  %val.0 = phi i32 [ %call163, %if.end.for.end_crit_edge ], [ %call27, %if.then25 ], [ %call16, %if.then30.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp36 = icmp slt i32 %val.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %.pre-phi)
  %.not1 = icmp eq i32 %.pre-phi, 32768
  %2 = select i1 %.not1, i32 -110, i32 0
  %__ret.0 = select i1 %cmp36, i32 %val.0, i32 %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool40.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %do.end44

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %__ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %__ret.0, %do.end44 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv3310_hwmon_probe(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call5 = tail call noalias ptr @devm_kstrdup(ptr noundef %phydev, ptr noundef %retval.0.i, i32 noundef 3264) #9
  %hwmon_name = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %hwmon_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %hwmon_name, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %for.cond.preheader

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %dev_name.exit
  %7 = ptrtoint ptr %hwmon_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmon_name, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not68 = icmp eq i8 %10, 0
  br i1 %tobool8.not68, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi i8 [ %20, %for.inc.for.body_crit_edge ], [ %10, %for.cond.preheader.for.body_crit_edge ]
  %12 = phi ptr [ %18, %for.inc.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %j.070 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.069 = phi i32 [ %inc24, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = zext i8 %11 to i32
  %arrayidx11 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  %15 = and i8 %14, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not = icmp eq i8 %15, 0
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.069, i32 %j.070)
  %cmp15.not = icmp eq i32 %i.069, %j.070
  br i1 %cmp15.not, label %if.then14.if.end22_crit_edge, label %if.then17

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr i8, ptr %12, i32 %j.070
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then14.if.end22_crit_edge
  %inc = add i32 %j.070, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end22 ], [ %j.070, %for.body.for.inc_crit_edge ]
  %inc24 = add i32 %i.069, 1
  %17 = ptrtoint ptr %hwmon_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwmon_name, align 4
  %arrayidx = getelementptr i8, ptr %18, i32 %inc24
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  %.lcssa = phi ptr [ %8, %for.cond.preheader.for.end_crit_edge ], [ %18, %for.inc.for.end_crit_edge ]
  %arrayidx26 = getelementptr i8, ptr %.lcssa, i32 %j.0.lcssa
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx26, align 1
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %22 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv.i, align 8
  %phy_id.i = getelementptr inbounds %struct.phy_driver, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phy_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2820512, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 2820512
  br i1 %cmp.not.i, label %if.end.i61, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end.i61:                                       ; preds = %for.end
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61580, i16 noundef zeroext -27136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i61.cleanup_crit_edge, label %mv3310_hwmon_config.exit

if.end.i61.cleanup_crit_edge:                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mv3310_hwmon_config.exit:                         ; preds = %if.end.i61
  %call4.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61578, i16 noundef zeroext -16384, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool28.not = icmp eq i32 %call4.i, 0
  br i1 %tobool28.not, label %mv3310_hwmon_config.exit.if.end30_crit_edge, label %mv3310_hwmon_config.exit.cleanup_crit_edge

mv3310_hwmon_config.exit.cleanup_crit_edge:       ; preds = %mv3310_hwmon_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mv3310_hwmon_config.exit.if.end30_crit_edge:      ; preds = %mv3310_hwmon_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %mv3310_hwmon_config.exit.if.end30_crit_edge, %for.end.if.end30_crit_edge
  %26 = ptrtoint ptr %hwmon_name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwmon_name, align 4
  %call32 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %phydev, ptr noundef %27, ptr noundef %phydev, ptr noundef nonnull @mv3310_hwmon_chip_info, ptr noundef null) #9
  %hwmon_dev = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call32, ptr %hwmon_dev, align 4
  %cmp.i.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  %29 = ptrtoint ptr %call32 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %29, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %mv3310_hwmon_config.exit.cleanup_crit_edge, %if.end.i61.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end30 ], [ -19, %dev_name.exit.cleanup_crit_edge ], [ %call4.i, %mv3310_hwmon_config.exit.cleanup_crit_edge ], [ %call.i, %if.end.i61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_sfp_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mv3310_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 5
  %or.cond = and i1 %cmp, %cmp1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2 = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp4 = icmp eq i32 %attr, 1
  %or.cond9 = and i1 %cmp2, %cmp4
  %0 = or i1 %or.cond, %or.cond9
  %retval.0 = select i1 %0, i16 292, i16 0
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv.i, align 8
  %driver_data.i21 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data.i21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp2 = icmp eq i32 %attr, 5
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp3 = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp5 = icmp eq i32 %attr, 1
  %or.cond20 = and i1 %cmp3, %cmp5
  br i1 %or.cond20, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %hwmon_read_temp_reg = getelementptr inbounds %struct.mv3310_chip, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hwmon_read_temp_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmon_read_temp_reg, align 4
  %call7 = tail call i32 %7(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call7, 255
  %8 = mul nuw nsw i32 %and, 1000
  %mul = add nsw i32 %8, -75000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10, %entry.cleanup.sink.split_crit_edge
  %mul.sink = phi i32 [ %mul, %if.end10 ], [ 1000, %entry.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.sink, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_attach(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_detach(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv3310_sfp_insert(ptr noundef %upstream, ptr noundef %id) #2 align 64 {
entry:
  %support = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %support) #9
  %0 = call ptr @memset(ptr %support, i32 0, i32 12)
  %sfp_bus = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 34
  %1 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sfp_bus, align 8
  call void @sfp_parse_support(ptr noundef %2, ptr noundef %id, ptr noundef nonnull %support) #9
  %3 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sfp_bus, align 8
  %call = call i32 @sfp_select_interface(ptr noundef %4, ptr noundef nonnull %support) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %call)
  %cmp.not = icmp eq i32 %call, 26
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %upstream, ptr noundef nonnull @.str.18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %support) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_parse_support(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sfp_select_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_an_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_check_and_restart_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_aneg_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_read_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv3340_init_supported_interfaces(ptr nocapture noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %or.i10 = or i32 %1, 364904464
  store i32 %or.i10, ptr %mask, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv3340_init_interface(ptr nocapture noundef readonly %phydev, i32 noundef %mactype) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rate_match = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rate_match to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rate_match, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mactype)
  %cmp = icmp eq i32 %mactype, 1
  br i1 %cmp, label %entry.if.end.sink.split_crit_edge, label %if.else

entry.if.end.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %rate_match.i = getelementptr inbounds %struct.mv3310_priv, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %rate_match.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rate_match.i, align 1
  %6 = zext i32 %mactype to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %mactype, label %if.else.if.end_crit_edge [
    i32 6, label %if.else.if.then.i_crit_edge
    i32 2, label %if.else.if.then.i_crit_edge5
    i32 3, label %if.else.if.then24.i_crit_edge
    i32 7, label %if.else.if.end.sink.split_crit_edge
    i32 5, label %if.else.if.then12.i_crit_edge
    i32 4, label %if.else.if.then12.i_crit_edge6
    i32 0, label %if.else.if.then18.i_crit_edge
  ]

if.else.if.then18.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

if.else.if.then12.i_crit_edge6:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.else.if.then12.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split

if.else.if.then24.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

if.else.if.then.i_crit_edge5:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.else.if.then.i_crit_edge, %if.else.if.then.i_crit_edge5
  %7 = ptrtoint ptr %rate_match.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %rate_match.i, align 1
  %8 = zext i32 %mactype to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mactype, label %if.then.i.if.end_crit_edge [
    i32 3, label %if.then.i.if.then24.i_crit_edge
    i32 6, label %if.then.i.if.then12.i_crit_edge
    i32 5, label %if.then.i.if.then12.i_crit_edge7
    i32 4, label %if.then.i.if.then12.i_crit_edge8
    i32 2, label %if.then.i.if.then18.i_crit_edge
  ]

if.then.i.if.then18.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

if.then.i.if.then12.i_crit_edge8:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.then.i.if.then12.i_crit_edge7:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.then.i.if.then12.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.i

if.then.i.if.then24.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then12.i:                                      ; preds = %if.then.i.if.then12.i_crit_edge, %if.then.i.if.then12.i_crit_edge7, %if.then.i.if.then12.i_crit_edge8, %if.else.if.then12.i_crit_edge, %if.else.if.then12.i_crit_edge6
  br label %if.end.sink.split

if.then18.i:                                      ; preds = %if.then.i.if.then18.i_crit_edge, %if.else.if.then18.i_crit_edge
  br label %if.end.sink.split

if.then24.i:                                      ; preds = %if.then.i.if.then24.i_crit_edge, %if.else.if.then24.i_crit_edge
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then24.i, %if.then18.i, %if.then12.i, %if.else.if.end.sink.split_crit_edge, %entry.if.end.sink.split_crit_edge
  %.sink = phi ptr [ %1, %entry.if.end.sink.split_crit_edge ], [ %4, %if.then24.i ], [ %4, %if.then18.i ], [ %4, %if.then12.i ], [ %4, %if.else.if.end.sink.split_crit_edge ]
  %.sink.i.sink = phi i32 [ 24, %entry.if.end.sink.split_crit_edge ], [ 25, %if.then24.i ], [ 24, %if.then18.i ], [ 26, %if.then12.i ], [ 28, %if.else.if.end.sink.split_crit_edge ]
  %const_interface.i = getelementptr inbounds %struct.mv3310_priv, ptr %.sink, i32 0, i32 4
  %9 = ptrtoint ptr %const_interface.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.i.sink, ptr %const_interface.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.i.if.end_crit_edge, %if.else.if.end_crit_edge
  %err.0 = phi i32 [ -22, %if.then.i.if.end_crit_edge ], [ -22, %if.else.if.end_crit_edge ], [ 0, %if.end.sink.split ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv2110_init_supported_interfaces(ptr nocapture noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %or.i8 = or i32 %1, 348127248
  store i32 %or.i8, ptr %mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2110_get_mactype(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 49226) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %and = and i32 %call, 7
  %retval.0 = select i1 %cmp, i32 %call, i32 %and
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv2110_init_interface(ptr nocapture noundef readonly %phydev, i32 noundef %mactype) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rate_match = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mactype)
  %cmp = icmp eq i32 %mactype, 6
  %spec.select = zext i1 %cmp to i8
  %2 = ptrtoint ptr %rate_match to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %spec.select, ptr %rate_match, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mactype)
  %cmp2 = icmp eq i32 %mactype, 0
  %.mux = select i1 %cmp2, i32 28, i32 26
  %3 = zext i32 %mactype to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %mactype, label %if.else7 [
    i32 6, label %entry.cleanup.sink.split_crit_edge
    i32 0, label %entry.cleanup.sink.split_crit_edge24
  ]

entry.cleanup.sink.split_crit_edge24:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else7:                                         ; preds = %entry
  %4 = and i32 %mactype, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch = icmp eq i32 %4, 4
  br i1 %switch, label %if.else7.cleanup.sink.split_crit_edge, label %if.else7.cleanup_crit_edge

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else7.cleanup.sink.split_crit_edge:            ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else7.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge24
  %.sink = phi i32 [ %.mux, %entry.cleanup.sink.split_crit_edge ], [ 0, %if.else7.cleanup.sink.split_crit_edge ], [ %.mux, %entry.cleanup.sink.split_crit_edge24 ]
  %const_interface = getelementptr inbounds %struct.mv3310_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %const_interface to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %const_interface, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else7.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2110_hwmon_read_temp_reg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32834) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv2111_init_supported_interfaces(ptr nocapture noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %or.i6 = or i32 %1, 339738640
  store i32 %or.i6, ptr %mask, align 4
  ret void
}

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_marvell10g__377_1302_phy_module_init6, !1, !"__initcall__kmod_marvell10g__377_1302_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/marvell10g.c", i32 1302, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description378, !4, !"__UNIQUE_ID_description378", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/marvell10g.c", i32 1310, i32 1}
!5 = !{ptr @__UNIQUE_ID_file379, !6, !"__UNIQUE_ID_file379", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/marvell10g.c", i32 1311, i32 1}
!7 = !{ptr @__UNIQUE_ID_license380, !6, !"__UNIQUE_ID_license380", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/marvell10g.c", i32 1226, i32 12}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/marvell10g.c", i32 1247, i32 12}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/marvell10g.c", i32 1266, i32 12}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/marvell10g.c", i32 1286, i32 12}
!16 = !{ptr @mv3310_drivers, !17, !"mv3310_drivers", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/marvell10g.c", i32 1221, i32 26}
!18 = !{ptr @mv3310_type, !19, !"mv3310_type", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/marvell10g.c", i32 1048, i32 33}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/marvell10g.c", i32 696, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mv3310_config_init._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mv3310_config_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/marvell10g.c", i32 341, i32 9}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mv3310_reset._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mv3310_reset._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/phy/marvell10g.c", i32 503, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mv3310_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @mv3310_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/phy/marvell10g.c", i32 526, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mv3310_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mv3310_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mv3310_hwmon_chip_info, !45, !"mv3310_hwmon_chip_info", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/marvell10g.c", i32 245, i32 37}
!46 = !{ptr @mv3310_hwmon_ops, !47, !"mv3310_hwmon_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/marvell10g.c", i32 214, i32 31}
!48 = !{ptr @mv3310_hwmon_info, !49, !"mv3310_hwmon_info", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/marvell10g.c", i32 239, i32 41}
!50 = !{ptr @mv3310_hwmon_chip, !51, !"mv3310_hwmon_chip", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/marvell10g.c", i32 224, i32 40}
!52 = !{ptr @mv3310_hwmon_chip_config, !53, !"mv3310_hwmon_chip_config", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/marvell10g.c", i32 219, i32 12}
!54 = !{ptr @mv3310_hwmon_temp, !55, !"mv3310_hwmon_temp", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/marvell10g.c", i32 234, i32 40}
!56 = !{ptr @mv3310_hwmon_temp_config, !57, !"mv3310_hwmon_temp_config", i1 false, i1 false}
!57 = !{!"../drivers/net/phy/marvell10g.c", i32 229, i32 12}
!58 = !{ptr @mv3310_sfp_ops, !59, !"mv3310_sfp_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/marvell10g.c", i32 481, i32 38}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/phy/marvell10g.c", i32 475, i32 3}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mv3310_sfp_insert._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mv3310_sfp_insert._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mv3340_type, !66, !"mv3340_type", i1 false, i1 false}
!66 = !{!"../drivers/net/phy/marvell10g.c", i32 1059, i32 33}
!67 = !{ptr @mv2110_type, !68, !"mv2110_type", i1 false, i1 false}
!68 = !{!"../drivers/net/phy/marvell10g.c", i32 1070, i32 33}
!69 = !{ptr @mv2111_type, !70, !"mv2111_type", i1 false, i1 false}
!70 = !{!"../drivers/net/phy/marvell10g.c", i32 1080, i32 33}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
