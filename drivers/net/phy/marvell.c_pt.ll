; ModuleID = '/llk/IR_all_yes/drivers/net/phy/marvell.c_pt.bc'
source_filename = "../drivers/net/phy/marvell.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.marvell_hwmon_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.marvell_hw_stat = type { ptr, i8, i8, i8 }
%struct.sfp_upstream_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.marvell_priv = type { [3 x i64], ptr, ptr, i8, i32, i32, i32, i8 }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
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
%struct.phy_tdr_config = type { i32, i32, i32, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@__UNIQUE_ID_description349 = internal constant [39 x i8] c"marvell.description=Marvell PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [28 x i8] c"marvell.author=Andy Fleming\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [37 x i8] c"marvell.file=drivers/net/phy/marvell\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [20 x i8] c"marvell.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_marvell__397_3338_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@marvell_drivers = internal global { [20 x %struct.phy_driver], [1168 x i8] } { [20 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040224, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @marvell_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1101_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040272, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1112_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @marvell_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040320, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1111gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1111_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1111_get_tunable, ptr @m88e1111_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 33492160, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1111gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1111_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1111_get_tunable, ptr @m88e1111_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040656, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1118_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1118_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040304, ptr @.str.5, i32 -16, ptr null, i32 0, ptr @m88e1121_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1121_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040784, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1318_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1318_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr @m88e1318_set_wol, ptr @m88e1318_get_wol, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040336, ptr @.str.7, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1145_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1101_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1111_get_tunable, ptr @m88e1111_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040720, ptr @.str.8, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1149_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1118_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040688, ptr @.str.9, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1112_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @marvell_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040704, ptr @.str.10, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1116r_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040592, ptr @.str.11, i32 -16, ptr @phy_gbit_fibre_features, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @m88e1510_config_init, ptr @m88e1510_probe, ptr null, ptr @marvell_suspend, ptr @marvell_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr @m88e1318_set_wol, ptr @m88e1318_get_wol, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr @m88e1510_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040816, ptr @.str.12, i32 -16, ptr null, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040800, ptr @.str.13, i32 -16, ptr null, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040736, ptr @.str.14, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e3016_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr @marvell_aneg_done, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040961, ptr @.str.15, i32 -16, ptr null, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e6390_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21041040, ptr @.str.16, i32 -16, ptr null, i32 4, ptr @m88e6390_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e6390_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2821019, ptr @.str.17, i32 -16, ptr null, i32 4, ptr @m88e6393_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040576, ptr @.str.18, i32 -16, ptr null, i32 0, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040832, ptr @.str.19, i32 -16, ptr @phy_gbit_fibre_features, i32 0, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }], [1168 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1101\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1112\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1111\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Marvell 88E1111 (Finisar)\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1118\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Marvell 88E1121R\00", [47 x i8] zeroinitializer }, align 32
@m88e1121_hwmon_ops = internal constant { %struct.marvell_hwmon_ops, [44 x i8] } { %struct.marvell_hwmon_ops { ptr null, ptr @m88e1121_get_temp, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Marvell 88E1318S\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1145\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Marvell 88E1149R\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1240\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Marvell 88E1116R\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1510\00", [16 x i8] zeroinitializer }, align 32
@phy_gbit_fibre_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@m88e1510_hwmon_ops = internal constant { %struct.marvell_hwmon_ops, [44 x i8] } { %struct.marvell_hwmon_ops { ptr null, ptr @m88e1510_get_temp, ptr @m88e1510_get_temp_critical, ptr @m88e1510_set_temp_critical, ptr @m88e1510_get_temp_alarm }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1540\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E1545\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88E3016\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Marvell 88E6341 Family\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Marvell 88E6390 Family\00", [41 x i8] zeroinitializer }, align 32
@m88e6390_hwmon_ops = internal constant { %struct.marvell_hwmon_ops, [44 x i8] } { %struct.marvell_hwmon_ops { ptr null, ptr @m88e6390_get_temp, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Marvell 88E6393 Family\00", [41 x i8] zeroinitializer }, align 32
@m88e6393_hwmon_ops = internal constant { %struct.marvell_hwmon_ops, [44 x i8] } { %struct.marvell_hwmon_ops { ptr @m88e6393_hwmon_config, ptr @m88e6393_get_temp, ptr @m88e6393_get_temp_critical, ptr @m88e6393_set_temp_critical, ptr @m88e1510_get_temp_alarm }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Marvell 88E1340S\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Marvell 88E1548P\00", [47 x i8] zeroinitializer }, align 32
@marvell_config_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 782, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fail to config marvell phy LED.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"marvell_config_led\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/phy/marvell.c\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@marvell_config_led._entry_ptr = internal global ptr @marvell_config_led._entry, section ".printk_index", align 4
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,reg-init\00", [47 x i8] zeroinitializer }, align 32
@marvell_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @marvell_hwmon_hwmon_ops, ptr @marvell_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@marvell_hwmon_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @marvell_hwmon_is_visible, ptr @marvell_hwmon_read, ptr null, ptr @marvell_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@marvell_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @marvell_hwmon_chip, ptr @marvell_hwmon_temp, ptr null], [20 x i8] zeroinitializer }, align 32
@marvell_hwmon_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @marvell_hwmon_chip_config }, [24 x i8] zeroinitializer }, align 32
@marvell_hwmon_temp = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @marvell_hwmon_temp_config }, [24 x i8] zeroinitializer }, align 32
@marvell_hwmon_chip_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@marvell_hwmon_temp_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 66050, i32 0], [24 x i8] zeroinitializer }, align 32
@marvell_hw_stats = internal constant { [3 x %struct.marvell_hw_stat], [40 x i8] } { [3 x %struct.marvell_hw_stat] [%struct.marvell_hw_stat { ptr @.str.26, i8 0, i8 21, i8 16 }, %struct.marvell_hw_stat { ptr @.str.27, i8 0, i8 10, i8 8 }, %struct.marvell_hw_stat { ptr @.str.28, i8 1, i8 21, i8 16 }], [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"phy_receive_errors_copper\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy_idle_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy_receive_errors_fiber\00", [39 x i8] zeroinitializer }, align 32
@m88e1510_sfp_ops = internal constant { %struct.sfp_upstream_ops, [56 x i8] } { %struct.sfp_upstream_ops { ptr @phy_sfp_attach, ptr @phy_sfp_detach, ptr @m88e1510_sfp_insert, ptr @m88e1510_sfp_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@m88e1510_sfp_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.22, i32 2817, ptr @.str.31, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s SFP module inserted\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"m88e1510_sfp_insert\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@m88e1510_sfp_insert._entry_ptr = internal global ptr @m88e1510_sfp_insert._entry, section ".printk_index", align 4
@m88e1510_sfp_insert._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.22, i32 2833, ptr @.str.34, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Incompatible SFP module inserted\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@m88e1510_sfp_insert._entry_ptr.35 = internal global ptr @m88e1510_sfp_insert._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@marvell_vct5_wait_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.22, i32 2004, ptr @.str.34, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout while waiting for cable test to finish\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"marvell_vct5_wait_complete\00", [37 x i8] zeroinitializer }, align 32
@marvell_vct5_wait_complete._entry_ptr = internal global ptr @marvell_vct5_wait_complete._entry, section ".printk_index", align 4
@m88e1540_set_fld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.22, i32 1421, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Fast Link Down detection requires EEE to be disabled!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88e1540_set_fld\00", [47 x i8] zeroinitializer }, align 32
@m88e1540_set_fld._entry_ptr = internal global ptr @m88e1540_set_fld._entry, section ".printk_index", align 4
@switch.table.m88e1111_config_init = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 130, i16 128, i16 2], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1315019, i64 1315037, i64 1315049]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 1315019, i64 1315037, i64 1315049]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 1315019, i64 1315037, i64 1315049]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1315019, i64 1315037, i64 1315049]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4294967295]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 1315019, i64 1315037, i64 1315049]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 9, i64 16]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 9, i64 16]
@__sancov_gen_cov_switch_values.80 = internal global [32 x i64] [i64 30, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29]
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"marvell_drivers\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2895, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2899, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2917, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2937, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2958, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2979, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2997, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"m88e1121_hwmon_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2753, i32 39 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3019, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3040, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3060, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3078, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3098, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3117, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"m88e1510_hwmon_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2757, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3146, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3172, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3198, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3217, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3243, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"m88e6390_hwmon_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2764, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3269, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"m88e6393_hwmon_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2768, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3295, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 3317, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 782, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 493, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant [24 x i8] c"marvell_hwmon_chip_info\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2703, i32 37 }
@___asan_gen_.180 = private unnamed_addr constant [24 x i8] c"marvell_hwmon_hwmon_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2697, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"marvell_hwmon_info\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2691, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"marvell_hwmon_chip\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2672, i32 40 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"marvell_hwmon_temp\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2686, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"marvell_hwmon_chip_config\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2667, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"marvell_hwmon_temp_config\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2681, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"marvell_hw_stats\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 294, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 295, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 296, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 297, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"m88e1510_sfp_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2877, i32 38 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2817, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2833, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 211, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 213, i32 10 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 215, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 217, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 219, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 221, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 223, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 225, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 227, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 229, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 231, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 233, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 235, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 237, i32 10 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 239, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 241, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 243, i32 10 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 245, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 247, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 249, i32 10 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 251, i32 10 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 253, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 255, i32 10 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 257, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 259, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 261, i32 10 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 263, i32 10 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 265, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 267, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 269, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 271, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 2004, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [29 x i8] c"../drivers/net/phy/marvell.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1421, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [34 x i8] c"switch.table.m88e1111_config_init\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_marvell__397_3338_phy_module_init6, ptr @m88e1510_sfp_insert._entry, ptr @m88e1510_sfp_insert._entry.32, ptr @m88e1510_sfp_insert._entry_ptr, ptr @m88e1510_sfp_insert._entry_ptr.35, ptr @m88e1540_set_fld._entry, ptr @m88e1540_set_fld._entry_ptr, ptr @marvell_config_led._entry, ptr @marvell_config_led._entry_ptr, ptr @marvell_vct5_wait_complete._entry, ptr @marvell_vct5_wait_complete._entry_ptr, ptr @phy_module_exit, ptr @marvell_drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @m88e1121_hwmon_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @m88e1510_hwmon_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @m88e6390_hwmon_ops, ptr @.str.17, ptr @m88e6393_hwmon_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @marvell_hwmon_chip_info, ptr @marvell_hwmon_hwmon_ops, ptr @marvell_hwmon_info, ptr @marvell_hwmon_chip, ptr @marvell_hwmon_temp, ptr @marvell_hwmon_chip_config, ptr @marvell_hwmon_temp_config, ptr @marvell_hw_stats, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @m88e1510_sfp_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @switch.table.m88e1111_config_init], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_drivers to i32), i32 4720, i32 5888, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e1121_hwmon_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e1510_hwmon_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e6390_hwmon_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e6393_hwmon_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_config_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hwmon_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hwmon_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hwmon_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hwmon_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hwmon_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_hw_stats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e1510_sfp_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e1510_sfp_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e1510_sfp_insert._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_vct5_wait_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88e1540_set_fld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.m88e1111_config_init to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @marvell_drivers, i32 noundef 20, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_drivers_unregister(ptr noundef nonnull @marvell_drivers, i32 noundef 20) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id.i, align 4
  %shr.i = lshr i32 %1, 4
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %entry.marvell_config_led.exit_crit_edge [
    i32 1315019, label %entry.sw.epilog.i_crit_edge
    i32 1315049, label %entry.sw.epilog.i_crit_edge2
    i32 1315037, label %sw.bb1.i
  ]

entry.sw.epilog.i_crit_edge2:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

entry.marvell_config_led.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_led.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev_flags.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i16 4471, i16 4160
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge2
  %def_config.0.i = phi i16 [ 48, %entry.sw.epilog.i_crit_edge ], [ 48, %entry.sw.epilog.i_crit_edge2 ], [ %..i, %sw.bb1.i ]
  %call.i = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %def_config.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %sw.epilog.i.marvell_config_led.exit_crit_edge

sw.epilog.i.marvell_config_led.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_led.exit

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.20) #14
  br label %marvell_config_led.exit

marvell_config_led.exit:                          ; preds = %do.end.i, %sw.epilog.i.marvell_config_led.exit_crit_edge, %entry.marvell_config_led.exit_crit_edge
  %call = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 56, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv1, align 8
  %drv.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.phy_driver, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.dev_name.exit.i.i_crit_edge

if.end.i.dev_name.exit.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %8, %if.end.i.i.i ], [ %6, %if.end.i.dev_name.exit.i.i_crit_edge ]
  %call3.i.i = tail call i32 @strlen(ptr noundef %retval.0.i.i.i) #15
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef %call3.i.i, i32 noundef 3520) #11
  %hwmon_name.i.i = getelementptr inbounds %struct.marvell_priv, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %hwmon_name.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i, ptr %hwmon_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i.i.cleanup_crit_edge, label %for.cond.preheader.i.i

dev_name.exit.i.i.cleanup_crit_edge:              ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp36.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp36.not.i.i, label %for.cond.preheader.i.i.if.end6.i_crit_edge, label %for.cond.preheader.i.i.land.rhs.i.i_crit_edge

for.cond.preheader.i.i.land.rhs.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %land.rhs.i.i

for.cond.preheader.i.i.if.end6.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %for.cond.preheader.i.i.land.rhs.i.i_crit_edge
  %j.038.i.i = phi i32 [ %j.1.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.land.rhs.i.i_crit_edge ]
  %i.037.i.i = phi i32 [ %inc18.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %i.037.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i.i, label %land.rhs.i.i.if.end6.i_crit_edge, label %for.body.i.i

land.rhs.i.i.if.end6.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %conv.i.i = zext i8 %11 to i32
  %arrayidx9.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %12 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9.i.i, align 1
  %14 = and i8 %13, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp11.not.i.i = icmp eq i8 %14, 0
  br i1 %cmp11.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then13.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %hwmon_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwmon_name.i.i, align 8
  %inc.i.i = add i32 %j.038.i.i, 1
  %arrayidx16.i.i = getelementptr i8, ptr %16, i32 %j.038.i.i
  %17 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %11, ptr %arrayidx16.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then13.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %j.1.i.i = phi i32 [ %inc.i.i, %if.then13.i.i ], [ %j.038.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc18.i.i = add nuw i32 %i.037.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc18.i.i, %call3.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end6.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

for.inc.i.i.if.end6.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %for.inc.i.i.if.end6.i_crit_edge, %land.rhs.i.i.if.end6.i_crit_edge, %for.cond.preheader.i.i.if.end6.i_crit_edge
  %18 = ptrtoint ptr %hwmon_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwmon_name.i.i, align 8
  %call7.i = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %phydev, ptr noundef %19, ptr noundef %phydev, ptr noundef nonnull @marvell_hwmon_chip_info, ptr noundef null) #11
  %hwmon_dev.i = getelementptr inbounds %struct.marvell_priv, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %hwmon_dev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %hwmon_dev.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %call7.i to i32
  br label %cleanup

if.end13.i:                                       ; preds = %if.end6.i
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %tobool14.not.i = icmp eq ptr %23, null
  br i1 %tobool14.not.i, label %if.end13.i.cleanup_crit_edge, label %if.then15.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = tail call i32 %23(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15.i, %if.end13.i.cleanup_crit_edge, %if.then10.i, %dev_name.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %21, %if.then10.i ], [ 0, %if.end.cleanup_crit_edge ], [ %call17.i, %if.then15.i ], [ 0, %if.end13.i.cleanup_crit_edge ], [ -12, %dev_name.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1101_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i41 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 30, i16 noundef zeroext 8204) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp6 = icmp slt i32 %call.i41, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i44 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 29, i16 noundef zeroext 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp10 = icmp slt i32 %call.i44, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i47 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 30, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp14 = icmp slt i32 %call.i47, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i50 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 30, i16 noundef zeroext 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp18 = icmp slt i32 %call.i50, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @marvell_config_aneg(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i41, %if.end4.cleanup_crit_edge ], [ %call.i44, %if.end8.cleanup_crit_edge ], [ %call.i47, %if.end12.cleanup_crit_edge ], [ %call.i50, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i17 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i17, align 8
  %addr.i18 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i18, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 19) #11
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i17, align 8
  %8 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i18, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 18, i16 noundef zeroext 25600) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 18, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool4.not = icmp eq i32 %call.i19, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i17, align 8
  %12 = ptrtoint ptr %addr.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i18, align 8
  %call.i.i22 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 19) #11
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i22, i32 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i19, %if.else.cleanup_crit_edge ], [ %call.i, %if.end ], [ %14, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_error(ptr noundef %phydev) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 25600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_trigger_machine(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_read_page(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 22) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_write_page(ptr nocapture noundef readonly %phydev, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 22, i16 noundef zeroext %conv) #11
  ret i32 %call.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @marvell_get_sset_count(ptr noundef %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  ret i32 %.
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @marvell_get_strings(ptr noundef %phydev, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported.i, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %call1 = tail call i32 @strlcpy(ptr noundef %data, ptr noundef nonnull @.str.26, i32 noundef 32) #11
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call1.1 = tail call i32 @strlcpy(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.27, i32 noundef 32) #11
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %for.body.2

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %call1.2 = tail call i32 @strlcpy(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.28, i32 noundef 32) #11
  br label %for.end

for.end:                                          ; preds = %for.body.2, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @marvell_get_stats(ptr noundef %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported.i, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %3 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1.i, align 8
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 0, i32 noundef 21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.marvell_get_stat.exit_crit_edge, label %if.else.i

entry.marvell_get_stat.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_get_stat.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %call.i, 65535
  %5 = zext i32 %and.i to i64
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %4, align 8
  %add.i = add i64 %7, %5
  store i64 %add.i, ptr %4, align 8
  br label %marvell_get_stat.exit

marvell_get_stat.exit:                            ; preds = %if.else.i, %entry.marvell_get_stat.exit_crit_edge
  %ret.0.i = phi i64 [ %add.i, %if.else.i ], [ -1, %entry.marvell_get_stat.exit_crit_edge ]
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %ret.0.i, ptr %data, align 8
  %9 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1.i, align 8
  %call.i.1 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 0, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %marvell_get_stat.exit.marvell_get_stat.exit.1_crit_edge, label %if.else.i.1

marvell_get_stat.exit.marvell_get_stat.exit.1_crit_edge: ; preds = %marvell_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_get_stat.exit.1

if.else.i.1:                                      ; preds = %marvell_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.1 = and i32 %call.i.1, 255
  %11 = zext i32 %and.i.1 to i64
  %arrayidx6.i.1 = getelementptr [3 x i64], ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx6.i.1, align 8
  %add.i.1 = add i64 %13, %11
  store i64 %add.i.1, ptr %arrayidx6.i.1, align 8
  br label %marvell_get_stat.exit.1

marvell_get_stat.exit.1:                          ; preds = %if.else.i.1, %marvell_get_stat.exit.marvell_get_stat.exit.1_crit_edge
  %ret.0.i.1 = phi i64 [ %add.i.1, %if.else.i.1 ], [ -1, %marvell_get_stat.exit.marvell_get_stat.exit.1_crit_edge ]
  %arrayidx.1 = getelementptr i64, ptr %data, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %ret.0.i.1, ptr %arrayidx.1, align 8
  br i1 %tobool.not.i, label %marvell_get_stat.exit.1.for.end_crit_edge, label %for.body.2

marvell_get_stat.exit.1.for.end_crit_edge:        ; preds = %marvell_get_stat.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.2:                                       ; preds = %marvell_get_stat.exit.1
  %15 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv1.i, align 8
  %call.i.2 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp.i.2, label %for.body.2.marvell_get_stat.exit.2_crit_edge, label %if.else.i.2

for.body.2.marvell_get_stat.exit.2_crit_edge:     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_get_stat.exit.2

if.else.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.2 = and i32 %call.i.2, 65535
  %17 = zext i32 %and.i.2 to i64
  %arrayidx6.i.2 = getelementptr [3 x i64], ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx6.i.2, align 8
  %add.i.2 = add i64 %19, %17
  store i64 %add.i.2, ptr %arrayidx6.i.2, align 8
  br label %marvell_get_stat.exit.2

marvell_get_stat.exit.2:                          ; preds = %if.else.i.2, %for.body.2.marvell_get_stat.exit.2_crit_edge
  %ret.0.i.2 = phi i64 [ %add.i.2, %if.else.i.2 ], [ -1, %for.body.2.marvell_get_stat.exit.2_crit_edge ]
  %arrayidx.2 = getelementptr i64, ptr %data, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %ret.0.i.2, ptr %arrayidx.2, align 8
  br label %for.end

for.end:                                          ; preds = %marvell_get_stat.exit.2, %marvell_get_stat.exit.1.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1112_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 10240) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %entry.cleanup_crit_edge, label %m88e1011_set_downshift.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1011_set_downshift.exit:                      ; preds = %entry
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp = icmp slt i32 %call31.i, 0
  br i1 %cmp, label %m88e1011_set_downshift.exit.cleanup_crit_edge, label %if.end

m88e1011_set_downshift.exit.cleanup_crit_edge:    ; preds = %m88e1011_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %m88e1011_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @m88e1111_config_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %m88e1011_set_downshift.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call31.i, %m88e1011_set_downshift.exit.cleanup_crit_edge ], [ %call25.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch.selectcmp.i = icmp eq i8 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i16 32, i16 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %switch.selectcmp3.i = icmp eq i8 %1, 1
  %switch.select4.i = select i1 %switch.selectcmp3.i, i16 0, i16 %switch.select.i
  %call.i = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %switch.select4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i35 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 24, i16 noundef zeroext 16640) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp3 = icmp slt i32 %call.i35, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i36 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp8 = icmp slt i32 %call.i36, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %autoneg, align 8
  %7 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp12.not.not = icmp ne i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %cmp12.not.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end11.if.end20_crit_edge, label %if.then14

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then14.cleanup_crit_edge, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i35, %if.end.cleanup_crit_edge ], [ %call.i36, %if.end6.cleanup_crit_edge ], [ %call15, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1011_get_tunable(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %do.end12.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end12.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i32 %call.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %and29.i = lshr i32 %call.i.i, 12
  %7 = trunc i32 %and29.i to i8
  %8 = and i8 %7, 7
  %phi.cast.i = add nuw nsw i8 %8, 1
  %cond.i = select i1 %tobool.not.i, i8 0, i8 %phi.cast.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond.i, ptr %data, align 1
  br label %return

return:                                           ; preds = %do.end12.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %do.end12.i ], [ %call.i.i, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1011_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv.i = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp ugt i8 %3, 8
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then2.i, label %do.end20.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 2048, i16 noundef zeroext 0) #11
  br label %if.end26.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = shl i16 %conv.i, 12
  %4 = add i16 %sub.i, 28672
  %5 = and i16 %4, 28672
  %conv24.i = or i16 %5, 2048
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext %conv24.i) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %if.then2.i
  %err.0.i = phi i32 [ %call25.i, %do.end20.i ], [ %call.i.i, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp27.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp27.i, label %if.end26.i.return_crit_edge, label %if.end30.i

if.end26.i.return_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end30.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  br label %return

return:                                           ; preds = %if.end30.i, %if.end26.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call31.i, %if.end30.i ], [ -7, %sw.bb.return_crit_edge ], [ %err.0.i, %if.end26.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1111gbe_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext 1280) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %entry.cleanup_crit_edge, label %m88e1111_set_downshift.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1111_set_downshift.exit:                      ; preds = %entry
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp = icmp slt i32 %call31.i, 0
  br i1 %cmp, label %m88e1111_set_downshift.exit.cleanup_crit_edge, label %if.end

m88e1111_set_downshift.exit.cleanup_crit_edge:    ; preds = %m88e1111_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %m88e1111_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @m88e1111_config_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %m88e1111_set_downshift.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call31.i, %m88e1111_set_downshift.exit.cleanup_crit_edge ], [ %call25.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1111_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.not = icmp eq i32 %5, 4
  %and = and i32 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp2.not = icmp eq i32 %and, 8
  %or.cond = select i1 %cmp1.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @marvell_config_aneg(ptr noundef %phydev)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7 = icmp slt i32 %call.i.i, 0
  br i1 %cmp7, label %if.end5.error_crit_edge, label %if.end9

if.end5.error_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @marvell_config_aneg(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.error_crit_edge, label %if.end13

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i.i48 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 22, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %cmp15 = icmp slt i32 %call.i.i48, 0
  br i1 %cmp15, label %if.end13.error_crit_edge, label %if.end17

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end17:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp19 = icmp eq i32 %15, 4
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @genphy_check_and_restart_aneg(ptr noundef %phydev, i1 noundef zeroext false) #11
  br label %if.end23

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call fastcc i32 @marvell_config_aneg_fiber(ptr noundef %phydev)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %err.0 = phi i32 [ %call21, %if.then20 ], [ %call22, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp24 = icmp slt i32 %err.0, 0
  br i1 %cmp24, label %if.end23.error_crit_edge, label %if.end26

if.end23.error_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i.i51 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 22, i16 noundef zeroext 0) #11
  br label %cleanup

error:                                            ; preds = %if.end23.error_crit_edge, %if.end13.error_crit_edge, %if.end9.error_crit_edge, %if.end5.error_crit_edge
  %err.1 = phi i32 [ %call.i.i, %if.end5.error_crit_edge ], [ %call10, %if.end9.error_crit_edge ], [ %call.i.i48, %if.end13.error_crit_edge ], [ %err.0, %if.end23.error_crit_edge ]
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i.i54 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 22, i16 noundef zeroext 0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end26, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %err.1, %error ], [ %call.i.i51, %if.end26 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not = icmp eq i32 %4, 4
  br i1 %cmp.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 22, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2 = icmp slt i32 %call.i.i, 0
  br i1 %cmp2, label %if.then.error_crit_edge, label %if.end

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %if.then
  %call4 = tail call fastcc i32 @marvell_read_status_page(ptr noundef %phydev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.error_crit_edge, label %if.end7

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end7:                                          ; preds = %if.end
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %link, align 8
  %10 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool8.not = icmp eq i16 %10, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i, align 8
  %call.i.i30 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp12 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp12, label %if.end10.error_crit_edge, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %call16 = tail call fastcc i32 @marvell_read_status_page(ptr noundef %phydev, i32 noundef 0)
  br label %cleanup

error:                                            ; preds = %if.end10.error_crit_edge, %if.end.error_crit_edge, %if.then.error_crit_edge
  %err.0 = phi i32 [ %call.i.i, %if.then.error_crit_edge ], [ %call4, %if.end.error_crit_edge ], [ %call.i.i30, %if.end10.error_crit_edge ]
  %15 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i, align 8
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i, align 8
  %call.i.i33 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 22, i16 noundef zeroext 0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end15, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ %call16, %if.end15 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1111_get_tunable(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %do.end12.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end12.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %and29.i = lshr i32 %call.i.i, 9
  %7 = trunc i32 %and29.i to i8
  %8 = and i8 %7, 7
  %phi.cast.i = add nuw nsw i8 %8, 1
  %cond.i = select i1 %tobool.not.i, i8 0, i8 %phi.cast.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond.i, ptr %data, align 1
  br label %return

return:                                           ; preds = %do.end12.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %do.end12.i ], [ %call.i.i, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1111_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv.i = zext i8 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp ugt i8 %3, 8
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then2.i, label %do.end20.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #11
  br label %if.end26.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = shl i16 %conv.i, 9
  %4 = add i16 %sub.i, 3584
  %5 = and i16 %4, 3584
  %conv24.i = or i16 %5, 256
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext %conv24.i) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %if.then2.i
  %err.0.i = phi i32 [ %call25.i, %do.end20.i ], [ %call.i.i, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp27.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp27.i, label %if.end26.i.return_crit_edge, label %if.end30.i

if.end26.i.return_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end30.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  br label %return

return:                                           ; preds = %if.end30.i, %if.end26.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call31.i, %if.end30.i ], [ -7, %sw.bb.return_crit_edge ], [ %err.0.i, %if.end26.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1118_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 4208) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface.i, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %switch.tableidx = add i32 %1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.idx.mult = mul i16 %switch.idx.cast, -16
  %switch.offset = add i16 %switch.idx.mult, 48
  %mscr.0.i = select i1 %4, i16 %switch.offset, i16 0
  %call.i = tail call i32 @phy_modify_paged_changed(ptr noundef %phydev, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 48, i16 noundef zeroext %mscr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_flags, align 8
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i16 542, i16 4352
  %call10 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %.) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19 = icmp slt i32 %call.i.i, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end21 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call.i.i, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1118_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch.selectcmp.i = icmp eq i8 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i16 32, i16 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %switch.selectcmp3.i = icmp eq i8 %1, 1
  %switch.select4.i = select i1 %switch.selectcmp3.i, i16 0, i16 %switch.select.i
  %call.i = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %switch.select4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i14 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp3 = icmp slt i32 %call.i14, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_1011gbe_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 10240) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %entry.cleanup_crit_edge, label %m88e1011_set_downshift.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1011_set_downshift.exit:                      ; preds = %entry
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp = icmp slt i32 %call31.i, 0
  br i1 %cmp, label %m88e1011_set_downshift.exit.cleanup_crit_edge, label %if.end

m88e1011_set_downshift.exit.cleanup_crit_edge:    ; preds = %m88e1011_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %m88e1011_set_downshift.exit
  %phy_id.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id.i.i, align 4
  %shr.i.i = lshr i32 %1, 4
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %shr.i.i, label %if.end.marvell_config_init.exit_crit_edge [
    i32 1315019, label %if.end.sw.epilog.i.i_crit_edge
    i32 1315049, label %if.end.sw.epilog.i.i_crit_edge6
    i32 1315037, label %sw.bb1.i.i
  ]

if.end.sw.epilog.i.i_crit_edge6:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end.sw.epilog.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end.marvell_config_init.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev_flags.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_flags.i.i, align 8
  %and.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i16 4471, i16 4160
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.end.sw.epilog.i.i_crit_edge, %if.end.sw.epilog.i.i_crit_edge6
  %def_config.0.i.i = phi i16 [ 48, %if.end.sw.epilog.i.i_crit_edge ], [ 48, %if.end.sw.epilog.i.i_crit_edge6 ], [ %..i.i, %sw.bb1.i.i ]
  %call.i.i = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %def_config.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.epilog.i.i.marvell_config_init.exit_crit_edge

sw.epilog.i.i.marvell_config_init.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.20) #14
  br label %marvell_config_init.exit

marvell_config_init.exit:                         ; preds = %do.end.i.i, %sw.epilog.i.i.marvell_config_init.exit_crit_edge, %if.end.marvell_config_init.exit_crit_edge
  %call.i = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %marvell_config_init.exit, %m88e1011_set_downshift.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %marvell_config_init.exit ], [ %call31.i, %m88e1011_set_downshift.exit.cleanup_crit_edge ], [ %call25.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1121_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface.i, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %switch.tableidx = add i32 %1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.idx.mult = mul i16 %switch.idx.cast, -16
  %switch.offset = add i16 %switch.idx.mult, 48
  %mscr.0.i = select i1 %4, i16 %switch.offset, i16 0
  %call.i = tail call i32 @phy_modify_paged_changed(ptr noundef %phydev, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 48, i16 noundef zeroext %mscr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %5 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mdix_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.selectcmp.i = icmp eq i8 %6, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i16 32, i16 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %switch.selectcmp3.i = icmp eq i8 %6, 1
  %switch.select4.i = select i1 %switch.selectcmp3.i, i16 0, i16 %switch.select.i
  %call.i41 = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %switch.select4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp5 = icmp slt i32 %call.i41, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call.i42 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp10 = icmp slt i32 %call.i42, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %or = or i32 %call.i41, %err.0
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %autoneg, align 8
  %8 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp14.not.not = icmp ne i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  %or.cond = select i1 %cmp14.not.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end13.if.end22_crit_edge, label %if.then16

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then16.cleanup_crit_edge, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then16.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i41, %if.end3.cleanup_crit_edge ], [ %call.i42, %if.end8.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1318_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 2176) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %phy_id.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %3 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_id.i.i, align 4
  %shr.i.i = lshr i32 %4, 4
  %5 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %shr.i.i, label %if.end3.marvell_config_init.exit_crit_edge [
    i32 1315019, label %if.end3.sw.epilog.i.i_crit_edge
    i32 1315049, label %if.end3.sw.epilog.i.i_crit_edge8
    i32 1315037, label %sw.bb1.i.i
  ]

if.end3.sw.epilog.i.i_crit_edge8:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end3.sw.epilog.i.i_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end3.marvell_config_init.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

sw.bb1.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %dev_flags.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_flags.i.i, align 8
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i16 4471, i16 4160
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.end3.sw.epilog.i.i_crit_edge, %if.end3.sw.epilog.i.i_crit_edge8
  %def_config.0.i.i = phi i16 [ 48, %if.end3.sw.epilog.i.i_crit_edge ], [ 48, %if.end3.sw.epilog.i.i_crit_edge8 ], [ %..i.i, %sw.bb1.i.i ]
  %call.i.i = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %def_config.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.epilog.i.i.marvell_config_init.exit_crit_edge

sw.epilog.i.i.marvell_config_init.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.20) #14
  br label %marvell_config_init.exit

marvell_config_init.exit:                         ; preds = %do.end.i.i, %sw.epilog.i.i.marvell_config_init.exit_crit_edge, %if.end3.marvell_config_init.exit_crit_edge
  %call.i = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev) #11
  br label %return

return:                                           ; preds = %marvell_config_init.exit, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call1, %if.then.return_crit_edge ], [ %call.i, %marvell_config_init.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1318_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @m88e1121_config_aneg(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1318_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_save_page(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.then1

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then1:                                         ; preds = %if.end
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %if.then1.error_crit_edge, label %if.end5

if.then1.error_crit_edge:                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end5:                                          ; preds = %if.then1
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i, align 8
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 19) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %call.i156 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp11 = icmp slt i32 %call.i156, 0
  br i1 %cmp11, label %if.end9.error_crit_edge, label %if.end13

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end13:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i, align 8
  %15 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i.i, align 8
  %call.i.i159 = tail call i32 @__mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 22, i16 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159)
  %cmp15 = icmp slt i32 %call.i.i159, 0
  br i1 %cmp15, label %if.end13.error_crit_edge, label %if.end17

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 2176) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.error_crit_edge, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end22:                                         ; preds = %if.end17.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %and24 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %bus.i.i173 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %19 = ptrtoint ptr %bus.i.i173 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i.i173, align 8
  %addr.i.i174 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %21 = ptrtoint ptr %addr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i.i174, align 8
  %call.i.i175 = tail call i32 @__mdiobus_write(ptr noundef %20, i32 noundef %22, i32 noundef 22, i16 noundef zeroext 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175)
  %cmp79 = icmp slt i32 %call.i.i175, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end22
  br i1 %cmp79, label %if.then26.error_crit_edge, label %if.end30

if.then26.error_crit_edge:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end30:                                         ; preds = %if.then26
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %23 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %attached_dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %26, i32 5
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %28 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx33 = getelementptr i8, ptr %26, i32 4
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %30 to i16
  %or = or i16 %shl, %conv34
  %31 = ptrtoint ptr %bus.i.i173 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i.i173, align 8
  %33 = ptrtoint ptr %addr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i174, align 8
  %call.i165 = tail call i32 @__mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 23, i16 noundef zeroext %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp37 = icmp slt i32 %call.i165, 0
  br i1 %cmp37, label %if.end30.error_crit_edge, label %if.end40

if.end30.error_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end40:                                         ; preds = %if.end30
  %35 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %attached_dev, align 8
  %dev_addr42 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr42, align 64
  %arrayidx43 = getelementptr i8, ptr %38, i32 3
  %39 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %40 to i16
  %shl45 = shl nuw i16 %conv44, 8
  %arrayidx48 = getelementptr i8, ptr %38, i32 2
  %41 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %42 to i16
  %or50 = or i16 %shl45, %conv49
  %43 = ptrtoint ptr %bus.i.i173 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i173, align 8
  %45 = ptrtoint ptr %addr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.i174, align 8
  %call.i168 = tail call i32 @__mdiobus_write(ptr noundef %44, i32 noundef %46, i32 noundef 24, i16 noundef zeroext %or50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp53 = icmp slt i32 %call.i168, 0
  br i1 %cmp53, label %if.end40.error_crit_edge, label %if.end56

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end56:                                         ; preds = %if.end40
  %47 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %attached_dev, align 8
  %dev_addr58 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 86
  %49 = ptrtoint ptr %dev_addr58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr58, align 64
  %arrayidx59 = getelementptr i8, ptr %50, i32 1
  %51 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %52 to i16
  %shl61 = shl nuw i16 %conv60, 8
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %50, align 1
  %conv65 = zext i8 %54 to i16
  %or66 = or i16 %shl61, %conv65
  %55 = ptrtoint ptr %bus.i.i173 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i.i173, align 8
  %57 = ptrtoint ptr %addr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i.i174, align 8
  %call.i171 = tail call i32 @__mdiobus_write(ptr noundef %56, i32 noundef %58, i32 noundef 25, i16 noundef zeroext %or66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp69 = icmp slt i32 %call.i171, 0
  br i1 %cmp69, label %if.end56.error_crit_edge, label %if.end72

if.end56.error_crit_edge:                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end72:                                         ; preds = %if.end56
  %call.i172 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 20480) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp74 = icmp slt i32 %call.i172, 0
  br i1 %cmp74, label %if.end72.error_crit_edge, label %if.end72.if.end88_crit_edge

if.end72.if.end88_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.end72.error_crit_edge:                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.else:                                          ; preds = %if.end22
  br i1 %cmp79, label %if.else.error_crit_edge, label %if.end82

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end82:                                         ; preds = %if.else
  %call83 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 16384, i16 noundef zeroext 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end82.error_crit_edge, label %if.end82.if.end88_crit_edge

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.end82.error_crit_edge:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end88:                                         ; preds = %if.end82.if.end88_crit_edge, %if.end72.if.end88_crit_edge
  %59 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wolopts, align 4
  %and90 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %bus.i.i179 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %61 = ptrtoint ptr %bus.i.i179 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i.i179, align 8
  %addr.i.i180 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %63 = ptrtoint ptr %addr.i.i180 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr.i.i180, align 8
  %call.i.i181 = tail call i32 @__mdiobus_write(ptr noundef %62, i32 noundef %64, i32 noundef 22, i16 noundef zeroext 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181)
  %cmp105 = icmp slt i32 %call.i.i181, 0
  br i1 %tobool91.not, label %if.else103, label %if.then92

if.then92:                                        ; preds = %if.end88
  br i1 %cmp105, label %if.then92.error_crit_edge, label %if.end97

if.then92.error_crit_edge:                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end97:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %call98 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 12288) #11
  br label %error

if.else103:                                       ; preds = %if.end88
  br i1 %cmp105, label %if.else103.error_crit_edge, label %if.end108

if.else103.error_crit_edge:                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end108:                                        ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 8192, i16 noundef zeroext 4096) #11
  br label %error

error:                                            ; preds = %if.end108, %if.else103.error_crit_edge, %if.end97, %if.then92.error_crit_edge, %if.end82.error_crit_edge, %if.else.error_crit_edge, %if.end72.error_crit_edge, %if.end56.error_crit_edge, %if.end40.error_crit_edge, %if.end30.error_crit_edge, %if.then26.error_crit_edge, %if.end17.error_crit_edge, %if.end13.error_crit_edge, %if.end9.error_crit_edge, %if.then1.error_crit_edge, %entry.error_crit_edge
  %err.0 = phi i32 [ 0, %entry.error_crit_edge ], [ %call.i.i, %if.then1.error_crit_edge ], [ %call.i156, %if.end9.error_crit_edge ], [ %call.i.i159, %if.end13.error_crit_edge ], [ %call18, %if.end17.error_crit_edge ], [ %call.i.i175, %if.then26.error_crit_edge ], [ %call.i165, %if.end30.error_crit_edge ], [ %call.i168, %if.end40.error_crit_edge ], [ %call.i171, %if.end56.error_crit_edge ], [ %call.i172, %if.end72.error_crit_edge ], [ %call.i.i181, %if.then92.error_crit_edge ], [ %call98, %if.end97 ], [ %call.i.i181, %if.else103.error_crit_edge ], [ %call109, %if.end108 ], [ %call.i.i175, %if.else.error_crit_edge ], [ %call83, %if.end82.error_crit_edge ]
  %call115 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %err.0) #11
  ret i32 %call115
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m88e1318_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 17, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %or = or i32 %3, 32
  store i32 %or, ptr %wolopts, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %and4 = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %or8 = or i32 %5, 1
  store i32 %or8, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1145_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i62 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 30, i16 noundef zeroext 16783) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp2 = icmp slt i32 %call.i62, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i65 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 29, i16 noundef zeroext 22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp6 = icmp slt i32 %call.i65, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i68 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 30, i16 noundef zeroext -23846) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp10 = icmp slt i32 %call.i68, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp13 = icmp eq i32 %17, 10
  br i1 %cmp13, label %m88e1111_config_init_rgmii_delays.exit.i, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

m88e1111_config_init_rgmii_delays.exit.i:         ; preds = %if.end12
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 130, i16 noundef zeroext 130) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge, label %if.end.i

m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge: ; preds = %m88e1111_config_init_rgmii_delays.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %m88e1111_config_init_rgmii_delays.exit.i
  %dev_flags.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %18 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end19thread-pre-split_crit_edge, label %if.then1.i

if.end.i.if.end19thread-pre-split_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19thread-pre-split

if.then1.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i29.i = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 29, i16 noundef zeroext 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %cmp3.i = icmp slt i32 %call.i29.i, 0
  br i1 %cmp3.i, label %if.then1.i.cleanup_crit_edge, label %if.end5.i

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.i:                                        ; preds = %if.then1.i
  %call6.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 30, i16 noundef zeroext 4032, i16 noundef zeroext 1152) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 8
  %call.i32.i = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 29, i16 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp11.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup_crit_edge, label %m88e1145_config_init_rgmii.exit

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1145_config_init_rgmii.exit:                  ; preds = %if.end9.i
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 8
  %call.i35.i = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 30, i16 noundef zeroext -32768) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp16 = icmp slt i32 %call.i35.i, 0
  br i1 %cmp16, label %m88e1145_config_init_rgmii.exit.cleanup_crit_edge, label %m88e1145_config_init_rgmii.exit.if.end19thread-pre-split_crit_edge

m88e1145_config_init_rgmii.exit.if.end19thread-pre-split_crit_edge: ; preds = %m88e1145_config_init_rgmii.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19thread-pre-split

m88e1145_config_init_rgmii.exit.cleanup_crit_edge: ; preds = %m88e1145_config_init_rgmii.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19thread-pre-split:                         ; preds = %m88e1145_config_init_rgmii.exit.if.end19thread-pre-split_crit_edge, %if.end.i.if.end19thread-pre-split_crit_edge
  %32 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %interface, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.end12.if.end19_crit_edge
  %33 = phi i32 [ %.pr, %if.end19thread-pre-split ], [ %17, %if.end12.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp21 = icmp eq i32 %33, 4
  br i1 %cmp21, label %if.then22, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  %call.i.i69 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32764) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69)
  %cmp24 = icmp slt i32 %call.i.i69, 0
  br i1 %cmp24, label %if.then22.cleanup_crit_edge, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext 1280) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %if.end27.cleanup_crit_edge, label %m88e1111_set_downshift.exit

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1111_set_downshift.exit:                      ; preds = %if.end27
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp29 = icmp slt i32 %call31.i, 0
  br i1 %cmp29, label %m88e1111_set_downshift.exit.cleanup_crit_edge, label %if.end31

m88e1111_set_downshift.exit.cleanup_crit_edge:    ; preds = %m88e1111_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %m88e1111_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev)
  %34 = tail call i32 @llvm.smin.i32(i32 %call32, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %m88e1111_set_downshift.exit.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %m88e1145_config_init_rgmii.exit.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i62, %if.end.cleanup_crit_edge ], [ %call.i65, %if.end4.cleanup_crit_edge ], [ %call.i68, %if.end8.cleanup_crit_edge ], [ %call.i35.i, %m88e1145_config_init_rgmii.exit.cleanup_crit_edge ], [ %call.i.i69, %if.then22.cleanup_crit_edge ], [ %call31.i, %m88e1111_set_downshift.exit.cleanup_crit_edge ], [ %34, %if.end31 ], [ %call.i32.i, %if.end9.i.cleanup_crit_edge ], [ %call6.i, %if.end5.i.cleanup_crit_edge ], [ %call.i29.i, %if.then1.i.cleanup_crit_edge ], [ %call.i.i, %m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge ], [ %call25.i, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1149_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 22, i16 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 21, i16 noundef zeroext 4168) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i27 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27)
  %cmp10 = icmp slt i32 %call.i.i27, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call.i.i27, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1116r_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 500) #11
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2 = icmp slt i32 %call.i.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %4 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mdix_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.selectcmp.i = icmp eq i8 %5, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i16 32, i16 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %switch.selectcmp3.i = icmp eq i8 %5, 1
  %switch.select4.i = select i1 %switch.selectcmp3.i, i16 0, i16 %switch.select.i
  %call.i = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %switch.select4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 30720) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %if.end9.cleanup_crit_edge, label %m88e1011_set_downshift.exit

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1011_set_downshift.exit:                      ; preds = %if.end9
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp11 = icmp slt i32 %call31.i, 0
  br i1 %cmp11, label %m88e1011_set_downshift.exit.cleanup_crit_edge, label %if.end14

m88e1011_set_downshift.exit.cleanup_crit_edge:    ; preds = %m88e1011_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %m88e1011_set_downshift.exit
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %6 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface.i, align 4
  %8 = add i32 %7, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %if.then16, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %switch.tableidx = add i32 %7, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.idx.mult = mul i16 %switch.idx.cast, -16
  %switch.offset = add i16 %switch.idx.mult, 48
  %mscr.0.i = select i1 %10, i16 %switch.offset, i16 0
  %call.i49 = tail call i32 @phy_modify_paged_changed(ptr noundef %phydev, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 48, i16 noundef zeroext %mscr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp18 = icmp slt i32 %call.i49, 0
  br i1 %cmp18, label %if.then16.cleanup_crit_edge, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %call23 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %phy_id.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %11 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_id.i.i, align 4
  %shr.i.i = lshr i32 %12, 4
  %13 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %shr.i.i, label %if.end27.marvell_config_init.exit_crit_edge [
    i32 1315019, label %if.end27.sw.epilog.i.i_crit_edge
    i32 1315049, label %if.end27.sw.epilog.i.i_crit_edge54
    i32 1315037, label %sw.bb1.i.i
  ]

if.end27.sw.epilog.i.i_crit_edge54:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end27.sw.epilog.i.i_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end27.marvell_config_init.exit_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

sw.bb1.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %dev_flags.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %14 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_flags.i.i, align 8
  %and.i.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i16 4471, i16 4160
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.end27.sw.epilog.i.i_crit_edge, %if.end27.sw.epilog.i.i_crit_edge54
  %def_config.0.i.i = phi i16 [ 48, %if.end27.sw.epilog.i.i_crit_edge ], [ 48, %if.end27.sw.epilog.i.i_crit_edge54 ], [ %..i.i, %sw.bb1.i.i ]
  %call.i.i50 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %def_config.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i.i = icmp slt i32 %call.i.i50, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.epilog.i.i.marvell_config_init.exit_crit_edge

sw.epilog.i.i.marvell_config_init.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.20) #14
  br label %marvell_config_init.exit

marvell_config_init.exit:                         ; preds = %do.end.i.i, %sw.epilog.i.i.marvell_config_init.exit_crit_edge, %if.end27.marvell_config_init.exit_crit_edge
  %call.i51 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %marvell_config_init.exit, %if.end22.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %m88e1011_set_downshift.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i51, %marvell_config_init.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %call31.i, %m88e1011_set_downshift.exit.cleanup_crit_edge ], [ %call.i49, %if.then16.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call25.i, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 22, i16 noundef zeroext 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1 = icmp slt i32 %call.i.i, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 7, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i38 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp12 = icmp slt i32 %call.i.i38, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %entry.if.end15_crit_edge
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 10240) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp27.i = icmp slt i32 %call25.i, 0
  br i1 %cmp27.i, label %if.end15.cleanup_crit_edge, label %m88e1011_set_downshift.exit

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1011_set_downshift.exit:                      ; preds = %if.end15
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp17 = icmp slt i32 %call31.i, 0
  br i1 %cmp17, label %m88e1011_set_downshift.exit.cleanup_crit_edge, label %if.end19

m88e1011_set_downshift.exit.cleanup_crit_edge:    ; preds = %m88e1011_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %m88e1011_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @m88e1318_config_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %m88e1011_set_downshift.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ %call.i.i, %if.then.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call.i, %if.end6.cleanup_crit_edge ], [ %call.i.i38, %if.end10.cleanup_crit_edge ], [ %call31.i, %m88e1011_set_downshift.exit.cleanup_crit_edge ], [ %call25.i, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @marvell_probe(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @phy_sfp_probe(ptr noundef %phydev, ptr noundef nonnull @m88e1510_sfp_ops) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 22, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then.error_crit_edge, label %if.end

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @genphy_suspend(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i.i24 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp8 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp8, label %if.end6.error_crit_edge, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %entry.if.end11_crit_edge
  %call12 = tail call i32 @genphy_suspend(ptr noundef %phydev) #11
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %if.end.error_crit_edge, %if.then.error_crit_edge
  %err.0 = phi i32 [ %call.i.i, %if.then.error_crit_edge ], [ %call3, %if.end.error_crit_edge ], [ %call.i.i24, %if.end6.error_crit_edge ]
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i, align 8
  %call.i.i27 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 22, i16 noundef zeroext 0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end11
  %retval.0 = phi i32 [ %err.0, %error ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %supported, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 22, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then.error_crit_edge, label %if.end

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @genphy_resume(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i.i24 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp8 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp8, label %if.end6.error_crit_edge, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end11:                                         ; preds = %if.end6.if.end11_crit_edge, %entry.if.end11_crit_edge
  %call12 = tail call i32 @genphy_resume(ptr noundef %phydev) #11
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %if.end.error_crit_edge, %if.then.error_crit_edge
  %err.0 = phi i32 [ %call.i.i, %if.then.error_crit_edge ], [ %call3, %if.end.error_crit_edge ], [ %call.i.i24, %if.end6.error_crit_edge ]
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i, align 8
  %call.i.i27 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 22, i16 noundef zeroext 0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end11
  %retval.0 = phi i32 [ %err.0, %error ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.error_crit_edge, label %m88e1318_config_aneg.exit

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

m88e1318_config_aneg.exit:                        ; preds = %if.end
  %call1.i = tail call i32 @m88e1121_config_aneg(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2 = icmp slt i32 %call1.i, 0
  br i1 %cmp2, label %m88e1318_config_aneg.exit.error_crit_edge, label %if.end4

m88e1318_config_aneg.exit.error_crit_edge:        ; preds = %m88e1318_config_aneg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end4:                                          ; preds = %m88e1318_config_aneg.exit
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp5 = icmp eq i32 %5, 4
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i30 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 22, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp9 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp9, label %if.end7.error_crit_edge, label %if.end11

if.end7.error_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end11:                                         ; preds = %if.end7
  %call12 = tail call fastcc i32 @marvell_config_aneg_fiber(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.error_crit_edge, label %if.end15

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i.i33 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 22, i16 noundef zeroext 0) #11
  br label %cleanup

error:                                            ; preds = %if.end11.error_crit_edge, %if.end7.error_crit_edge, %m88e1318_config_aneg.exit.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %err.0 = phi i32 [ %call.i.i, %entry.error_crit_edge ], [ %call1.i, %m88e1318_config_aneg.exit.error_crit_edge ], [ %call.i.i30, %if.end7.error_crit_edge ], [ %call12, %if.end11.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ]
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i.i36 = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 22, i16 noundef zeroext 0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end15, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ %call.i.i33, %if.end15 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_vct7_cable_test_start(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %call = tail call fastcc i32 @marvell_cable_test_start_common(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cable_test_tdr = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cable_test_tdr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cable_test_tdr, align 8
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 5, i32 noundef 23, i16 noundef zeroext 1539) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 5, i32 noundef 24, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 21, i16 noundef zeroext -32768) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_vct5_cable_test_tdr_start(ptr noundef %phydev, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %cable_test_tdr = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cable_test_tdr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cable_test_tdr, align 8
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg, align 4
  %mul.i = mul i32 %4, 10
  %div.i = sdiv i32 %mul.i, 805
  %first2 = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %first2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.i, ptr %first2, align 4
  %last = getelementptr inbounds %struct.phy_tdr_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last, align 4
  %mul.i53 = mul i32 %7, 10
  %div.i54 = sdiv i32 %mul.i53, 805
  %last4 = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %last4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.i54, ptr %last4, align 8
  %step = getelementptr inbounds %struct.phy_tdr_config, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %step, align 4
  %mul.i55 = mul i32 %10, 10
  %div.i56 = sdiv i32 %mul.i55, 805
  %step6 = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %step6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.i56, ptr %step6, align 4
  %pair = getelementptr inbounds %struct.phy_tdr_config, ptr %cfg, i32 0, i32 3
  %12 = ptrtoint ptr %pair to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pair, align 4
  %pair7 = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %pair7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pair7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div.i)
  %cmp = icmp ugt i32 %div.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div.i54)
  %cmp10 = icmp ugt i32 %div.i54, 511
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 21, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = tail call fastcc i32 @marvell_cable_test_start_common(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @ethnl_cable_test_pulse(ptr noundef %phydev, i16 noundef zeroext 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %first2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %first2, align 4
  %mul.i57 = mul i32 %16, 805
  %div.i58 = sdiv i32 %mul.i57, 10
  %17 = ptrtoint ptr %last4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last4, align 8
  %mul.i59 = mul i32 %18, 805
  %div.i60 = sdiv i32 %mul.i59, 10
  %19 = ptrtoint ptr %step6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %step6, align 4
  %mul.i61 = mul i32 %20, 805
  %div.i62 = sdiv i32 %mul.i61, 10
  %call30 = tail call i32 @ethnl_cable_test_step(ptr noundef %phydev, i32 noundef %div.i58, i32 noundef %div.i60, i32 noundef %div.i62) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_vct7_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %cable_test_tdr = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cable_test_tdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cable_test_tdr, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %first.i = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp.i = icmp ult i32 %5, 12
  %..i = select i1 %cmp.i, i16 3072, i16 0
  %6 = or i16 %..i, 4230
  %call.i = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 5, i32 noundef 28, i16 noundef zeroext %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.marvell_vct5_amplitude_graph.exit_crit_edge

if.then.marvell_vct5_amplitude_graph.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_vct5_amplitude_graph.exit

if.end4.i:                                        ; preds = %if.then
  %call5.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.restore_page.i_crit_edge, label %if.end9.i

if.end4.i.restore_page.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restore_page.i

if.end9.i:                                        ; preds = %if.end4.i
  %7 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %first.i, align 4
  %last.i = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp11.not64.i = icmp ugt i32 %8, %10
  br i1 %cmp11.not64.i, label %if.end9.i.restore_page.i_crit_edge, label %for.body.lr.ph.i

if.end9.i.restore_page.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restore_page.i

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %pair.i = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 7
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %step.i = getelementptr inbounds %struct.marvell_priv, ptr %1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %width.166.i = phi i16 [ %..i, %for.body.lr.ph.i ], [ %width.2.i, %for.inc.i.for.body.i_crit_edge ]
  %distance.065.i = phi i32 [ %8, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %pair.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pair.i, align 8
  %conv13.i = sext i8 %12 to i32
  %conv.i.i = trunc i32 %distance.065.i to i16
  %13 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i.i, align 8
  %15 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 24, i16 noundef zeroext %conv.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.restore_page.i_crit_edge

for.body.i.restore_page.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restore_page.i

if.end.i.i:                                       ; preds = %for.body.i
  %17 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i.i, align 8
  %19 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i.i, align 8
  %call.i39.i.i = tail call i32 @__mdiobus_write(ptr noundef %18, i32 noundef %20, i32 noundef 23, i16 noundef zeroext -31037) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i39.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i.restore_page.i_crit_edge

if.end.i.i.restore_page.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restore_page.i

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %if.end.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %do.end.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i.i, align 8
  %23 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @__mdiobus_read(ptr noundef %22, i32 noundef %24, i32 noundef 23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp1.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.restore_page.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.restore_page.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restore_page.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %and.i.i.i = and i32 %call.i.i.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i.i
  %25 = add nsw i32 %conv13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %if.end15.i.i, label %for.cond.preheader.i.i.for.inc.i.i_crit_edge

for.cond.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

do.end.i.i.i:                                     ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.67) #14
  br label %restore_page.i

if.end15.i.i:                                     ; preds = %for.cond.preheader.i.i
  %27 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i.i, align 8
  %29 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i42.i.i = tail call i32 @__mdiobus_read(ptr noundef %28, i32 noundef %30, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i42.i.i, 0
  br i1 %cmp.i.i.i, label %if.end15.i.i.marvell_vct5_amplitude.exit.i.i_crit_edge, label %if.end.i45.i.i

if.end15.i.i.marvell_vct5_amplitude.exit.i.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_vct5_amplitude.exit.i.i

if.end.i45.i.i:                                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i43.i.i = lshr i32 %call.i.i42.i.i, 8
  %31 = and i32 %and.i43.i.i, 127
  %and1.i.i.i = and i32 %call.i.i42.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i44.i.i = icmp eq i32 %and1.i.i.i, 0
  %sub.i.i.i = sub nsw i32 0, %31
  %spec.select.i.i.i = select i1 %tobool.not.i44.i.i, i32 %sub.i.i.i, i32 %31
  %mul.i.i.i = mul nsw i32 %spec.select.i.i.i, 1000
  %div.i.i.i = sdiv i32 %mul.i.i.i, 128
  %phi.cast59.i.i = trunc i32 %div.i.i.i to i16
  br label %marvell_vct5_amplitude.exit.i.i

marvell_vct5_amplitude.exit.i.i:                  ; preds = %if.end.i45.i.i, %if.end15.i.i.marvell_vct5_amplitude.exit.i.i_crit_edge
  %retval.0.i46.i.i = phi i16 [ %phi.cast59.i.i, %if.end.i45.i.i ], [ 0, %if.end15.i.i.marvell_vct5_amplitude.exit.i.i_crit_edge ]
  %call19.i.i = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %phydev, i8 noundef zeroext 0, i16 noundef signext %retval.0.i46.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %marvell_vct5_amplitude.exit.i.i, %for.cond.preheader.i.i.for.inc.i.i_crit_edge
  %32 = zext i32 %conv13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %conv13.i, label %for.inc.i.i.if.end17.i_crit_edge [
    i32 -1, label %for.inc.i.i.if.end15.1.i.i_crit_edge
    i32 1, label %for.inc.i.i.if.end15.1.i.i_crit_edge53
    i32 2, label %for.inc.i.i.if.end15.2.i.i_crit_edge
    i32 3, label %for.inc.i.i.if.end15.3.i.i_crit_edge
  ]

for.inc.i.i.if.end15.3.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.3.i.i

for.inc.i.i.if.end15.2.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.2.i.i

for.inc.i.i.if.end15.1.i.i_crit_edge53:           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.1.i.i

for.inc.i.i.if.end15.1.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.1.i.i

for.inc.i.i.if.end17.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end15.1.i.i:                                   ; preds = %for.inc.i.i.if.end15.1.i.i_crit_edge, %for.inc.i.i.if.end15.1.i.i_crit_edge53
  %33 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i.i.i, align 8
  %35 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i42.1.i.i = tail call i32 @__mdiobus_read(ptr noundef %34, i32 noundef %36, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.1.i.i)
  %cmp.i.1.i.i = icmp slt i32 %call.i.i42.1.i.i, 0
  br i1 %cmp.i.1.i.i, label %if.end15.1.i.i.marvell_vct5_amplitude.exit.1.i.i_crit_edge, label %if.end.i45.1.i.i

if.end15.1.i.i.marvell_vct5_amplitude.exit.1.i.i_crit_edge: ; preds = %if.end15.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_vct5_amplitude.exit.1.i.i

if.end.i45.1.i.i:                                 ; preds = %if.end15.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i43.1.i.i = lshr i32 %call.i.i42.1.i.i, 8
  %37 = and i32 %and.i43.1.i.i, 127
  %and1.i.1.i.i = and i32 %call.i.i42.1.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.1.i.i)
  %tobool.not.i44.1.i.i = icmp eq i32 %and1.i.1.i.i, 0
  %sub.i.1.i.i = sub nsw i32 0, %37
  %spec.select.i.1.i.i = select i1 %tobool.not.i44.1.i.i, i32 %sub.i.1.i.i, i32 %37
  %mul.i.1.i.i = mul nsw i32 %spec.select.i.1.i.i, 1000
  %div.i.1.i.i = sdiv i32 %mul.i.1.i.i, 128
  %phi.cast58.i.i = trunc i32 %div.i.1.i.i to i16
  br label %marvell_vct5_amplitude.exit.1.i.i

marvell_vct5_amplitude.exit.1.i.i:                ; preds = %if.end.i45.1.i.i, %if.end15.1.i.i.marvell_vct5_amplitude.exit.1.i.i_crit_edge
  %retval.0.i46.1.i.i = phi i16 [ %phi.cast58.i.i, %if.end.i45.1.i.i ], [ 0, %if.end15.1.i.i.marvell_vct5_amplitude.exit.1.i.i_crit_edge ]
  %call19.1.i.i = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %phydev, i8 noundef zeroext 1, i16 noundef signext %retval.0.i46.1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cond.i = icmp eq i8 %12, -1
  br i1 %cond.i, label %marvell_vct5_amplitude.exit.1.i.i.if.end15.2.i.i_crit_edge, label %marvell_vct5_amplitude.exit.1.i.i.if.end17.i_crit_edge

marvell_vct5_amplitude.exit.1.i.i.if.end17.i_crit_edge: ; preds = %marvell_vct5_amplitude.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

marvell_vct5_amplitude.exit.1.i.i.if.end15.2.i.i_crit_edge: ; preds = %marvell_vct5_amplitude.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.2.i.i

if.end15.2.i.i:                                   ; preds = %marvell_vct5_amplitude.exit.1.i.i.if.end15.2.i.i_crit_edge, %for.inc.i.i.if.end15.2.i.i_crit_edge
  %38 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i.i.i, align 8
  %40 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i42.2.i.i = tail call i32 @__mdiobus_read(ptr noundef %39, i32 noundef %41, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.2.i.i)
  %cmp.i.2.i.i = icmp slt i32 %call.i.i42.2.i.i, 0
  br i1 %cmp.i.2.i.i, label %if.end15.2.i.i.marvell_vct5_amplitude.exit.2.i.i_crit_edge, label %if.end.i45.2.i.i

if.end15.2.i.i.marvell_vct5_amplitude.exit.2.i.i_crit_edge: ; preds = %if.end15.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_vct5_amplitude.exit.2.i.i

if.end.i45.2.i.i:                                 ; preds = %if.end15.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i43.2.i.i = lshr i32 %call.i.i42.2.i.i, 8
  %42 = and i32 %and.i43.2.i.i, 127
  %and1.i.2.i.i = and i32 %call.i.i42.2.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.2.i.i)
  %tobool.not.i44.2.i.i = icmp eq i32 %and1.i.2.i.i, 0
  %sub.i.2.i.i = sub nsw i32 0, %42
  %spec.select.i.2.i.i = select i1 %tobool.not.i44.2.i.i, i32 %sub.i.2.i.i, i32 %42
  %mul.i.2.i.i = mul nsw i32 %spec.select.i.2.i.i, 1000
  %div.i.2.i.i = sdiv i32 %mul.i.2.i.i, 128
  %phi.cast57.i.i = trunc i32 %div.i.2.i.i to i16
  br label %marvell_vct5_amplitude.exit.2.i.i

marvell_vct5_amplitude.exit.2.i.i:                ; preds = %if.end.i45.2.i.i, %if.end15.2.i.i.marvell_vct5_amplitude.exit.2.i.i_crit_edge
  %retval.0.i46.2.i.i = phi i16 [ %phi.cast57.i.i, %if.end.i45.2.i.i ], [ 0, %if.end15.2.i.i.marvell_vct5_amplitude.exit.2.i.i_crit_edge ]
  %call19.2.i.i = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %phydev, i8 noundef zeroext 2, i16 noundef signext %retval.0.i46.2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cond60.i = icmp eq i8 %12, -1
  br i1 %cond60.i, label %marvell_vct5_amplitude.exit.2.i.i.if.end15.3.i.i_crit_edge, label %marvell_vct5_amplitude.exit.2.i.i.if.end17.i_crit_edge

marvell_vct5_amplitude.exit.2.i.i.if.end17.i_crit_edge: ; preds = %marvell_vct5_amplitude.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

marvell_vct5_amplitude.exit.2.i.i.if.end15.3.i.i_crit_edge: ; preds = %marvell_vct5_amplitude.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.3.i.i

if.end15.3.i.i:                                   ; preds = %marvell_vct5_amplitude.exit.2.i.i.if.end15.3.i.i_crit_edge, %for.inc.i.i.if.end15.3.i.i_crit_edge
  %43 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i.i, align 8
  %45 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i42.3.i.i = tail call i32 @__mdiobus_read(ptr noundef %44, i32 noundef %46, i32 noundef 19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.3.i.i)
  %cmp.i.3.i.i = icmp slt i32 %call.i.i42.3.i.i, 0
  br i1 %cmp.i.3.i.i, label %if.end15.3.i.i.marvell_vct5_amplitude.exit.3.i.i_crit_edge, label %if.end.i45.3.i.i

if.end15.3.i.i.marvell_vct5_amplitude.exit.3.i.i_crit_edge: ; preds = %if.end15.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_vct5_amplitude.exit.3.i.i

if.end.i45.3.i.i:                                 ; preds = %if.end15.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i43.3.i.i = lshr i32 %call.i.i42.3.i.i, 8
  %47 = and i32 %and.i43.3.i.i, 127
  %and1.i.3.i.i = and i32 %call.i.i42.3.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.3.i.i)
  %tobool.not.i44.3.i.i = icmp eq i32 %and1.i.3.i.i, 0
  %sub.i.3.i.i = sub nsw i32 0, %47
  %spec.select.i.3.i.i = select i1 %tobool.not.i44.3.i.i, i32 %sub.i.3.i.i, i32 %47
  %mul.i.3.i.i = mul nsw i32 %spec.select.i.3.i.i, 1000
  %div.i.3.i.i = sdiv i32 %mul.i.3.i.i, 128
  %phi.cast.i.i = trunc i32 %div.i.3.i.i to i16
  br label %marvell_vct5_amplitude.exit.3.i.i

marvell_vct5_amplitude.exit.3.i.i:                ; preds = %if.end.i45.3.i.i, %if.end15.3.i.i.marvell_vct5_amplitude.exit.3.i.i_crit_edge
  %retval.0.i46.3.i.i = phi i16 [ %phi.cast.i.i, %if.end.i45.3.i.i ], [ 0, %if.end15.3.i.i.marvell_vct5_amplitude.exit.3.i.i_crit_edge ]
  %call19.3.i.i = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %phydev, i8 noundef zeroext 3, i16 noundef signext %retval.0.i46.3.i.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %marvell_vct5_amplitude.exit.3.i.i, %marvell_vct5_amplitude.exit.2.i.i.if.end17.i_crit_edge, %marvell_vct5_amplitude.exit.1.i.i.if.end17.i_crit_edge, %for.inc.i.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %distance.065.i)
  %cmp18.i = icmp sgt i32 %distance.065.i, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %width.166.i)
  %cmp21.i = icmp eq i16 %width.166.i, 3072
  %or.cond.i = select i1 %cmp18.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %if.then23.i, label %if.end17.i.for.inc.i_crit_edge

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.end17.i
  %48 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 28, i16 noundef zeroext 4230) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool28.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool28.not.i, label %if.then23.i.for.inc.i_crit_edge, label %if.then23.i.restore_page.i_crit_edge

if.then23.i.restore_page.i_crit_edge:             ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restore_page.i

if.then23.i.for.inc.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i.for.inc.i_crit_edge, %if.end17.i.for.inc.i_crit_edge
  %width.2.i = phi i16 [ 0, %if.then23.i.for.inc.i_crit_edge ], [ %width.166.i, %if.end17.i.for.inc.i_crit_edge ]
  %52 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %step.i, align 4
  %add.i = add i32 %53, %distance.065.i
  %54 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %last.i, align 8
  %cmp11.not.i = icmp ugt i32 %add.i, %55
  br i1 %cmp11.not.i, label %for.inc.i.restore_page.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.restore_page.i_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %restore_page.i

restore_page.i:                                   ; preds = %for.inc.i.restore_page.i_crit_edge, %if.then23.i.restore_page.i_crit_edge, %do.end.i.i.i, %for.body.i.i.i.restore_page.i_crit_edge, %if.end.i.i.restore_page.i_crit_edge, %for.body.i.restore_page.i_crit_edge, %if.end9.i.restore_page.i_crit_edge, %if.end4.i.restore_page.i_crit_edge
  %err.2.i = phi i32 [ 0, %if.end4.i.restore_page.i_crit_edge ], [ -110, %do.end.i.i.i ], [ 0, %if.end9.i.restore_page.i_crit_edge ], [ %call.i.i.i.i, %for.body.i.i.i.restore_page.i_crit_edge ], [ %call.i39.i.i, %if.end.i.i.restore_page.i_crit_edge ], [ %call.i.i.i, %for.body.i.restore_page.i_crit_edge ], [ 0, %for.inc.i.restore_page.i_crit_edge ], [ %call.i.i, %if.then23.i.restore_page.i_crit_edge ]
  %call32.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call5.i, i32 noundef %err.2.i) #11
  br label %marvell_vct5_amplitude_graph.exit

marvell_vct5_amplitude_graph.exit:                ; preds = %restore_page.i, %if.then.marvell_vct5_amplitude_graph.exit_crit_edge
  %retval.0.i = phi i32 [ %call32.i, %restore_page.i ], [ %call.i, %if.then.marvell_vct5_amplitude_graph.exit_crit_edge ]
  %56 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %finished, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %57 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %finished, align 1
  %call2 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %58 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %finished, align 1
  %call.i18 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp.i19 = icmp slt i32 %call.i18, 0
  br i1 %cmp.i19, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %and.i = lshr i32 %call.i18, 12
  %59 = and i32 %and.i, 15
  %and1.i = lshr i32 %call.i18, 8
  %60 = and i32 %and1.i, 15
  %and3.i = lshr i32 %call.i18, 4
  %61 = and i32 %and3.i, 15
  %and5.i = and i32 %call.i18, 15
  %switch.tableidx = add nsw i32 %and5.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %62 = icmp ult i32 %switch.tableidx, 4
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %retval.0.i.i = select i1 %62, i8 %switch.offset, i8 0
  %call8.i = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i.i) #11
  %switch.tableidx42 = add nsw i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx42)
  %63 = icmp ult i32 %switch.tableidx42, 4
  %switch.idx.cast43 = trunc i32 %switch.tableidx42 to i8
  %switch.offset44 = add i8 %switch.idx.cast43, 1
  %retval.0.i77.i = select i1 %63, i8 %switch.offset44, i8 0
  %call11.i = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 1, i8 noundef zeroext %retval.0.i77.i) #11
  %switch.tableidx39 = add nsw i32 %60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx39)
  %64 = icmp ult i32 %switch.tableidx39, 4
  %switch.idx.cast40 = trunc i32 %switch.tableidx39 to i8
  %switch.offset41 = add i8 %switch.idx.cast40, 1
  %retval.0.i83.i = select i1 %64, i8 %switch.offset41, i8 0
  %call14.i = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 2, i8 noundef zeroext %retval.0.i83.i) #11
  %switch.tableidx45 = add nsw i32 %59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx45)
  %65 = icmp ult i32 %switch.tableidx45, 4
  %switch.idx.cast46 = trunc i32 %switch.tableidx45 to i8
  %switch.offset47 = add i8 %switch.idx.cast46, 1
  %retval.0.i89.i = select i1 %65, i8 %switch.offset47, i8 0
  %call17.i = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 3, i8 noundef zeroext %retval.0.i89.i) #11
  %call18.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end.i.cleanup_crit_edge, label %if.end22.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.i:                                       ; preds = %if.end.i
  %and23.i = and i32 %call18.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool.not.i20 = icmp eq i32 %and23.i, 0
  %result.off.i.i = add nsw i32 %and5.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %result.off.i.i)
  %switch.i.i = icmp ult i32 %result.off.i.i, 3
  br i1 %switch.i.i, label %if.then25.i, label %if.end22.i.if.end28.i_crit_edge

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end22.i
  %call.i.i21 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i.i = icmp slt i32 %call.i.i21, 0
  br i1 %cmp.i.i, label %if.then25.i.if.end28.i_crit_edge, label %if.end.i.i24

if.then25.i.if.end28.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end.i.i24:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i.i22 = mul i32 %call.i.i21, 100
  %spec.select.i.i.i23 = select i1 %tobool.not.i20, i32 %call.i.i21, i32 %mul.i.i.i22
  %call2.i.i = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 0, i32 noundef %spec.select.i.i.i23) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end.i.i24, %if.then25.i.if.end28.i_crit_edge, %if.end22.i.if.end28.i_crit_edge
  %result.off.i91.i = add nsw i32 %61, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %result.off.i91.i)
  %switch.i92.i = icmp ult i32 %result.off.i91.i, 3
  br i1 %switch.i92.i, label %if.then30.i, label %if.end28.i.if.end33.i_crit_edge

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end28.i
  %call.i93.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %cmp.i94.i = icmp slt i32 %call.i93.i, 0
  br i1 %cmp.i94.i, label %if.then30.i.if.end33.i_crit_edge, label %if.end.i98.i

if.then30.i.if.end33.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.end.i98.i:                                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i95.i = mul i32 %call.i93.i, 100
  %spec.select.i.i96.i = select i1 %tobool.not.i20, i32 %call.i93.i, i32 %mul.i.i95.i
  %call2.i97.i = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 1, i32 noundef %spec.select.i.i96.i) #11
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end.i98.i, %if.then30.i.if.end33.i_crit_edge, %if.end28.i.if.end33.i_crit_edge
  %result.off.i100.i = add nsw i32 %60, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %result.off.i100.i)
  %switch.i101.i = icmp ult i32 %result.off.i100.i, 3
  br i1 %switch.i101.i, label %if.then35.i, label %if.end33.i.if.end38.i_crit_edge

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end33.i
  %call.i102.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %cmp.i103.i = icmp slt i32 %call.i102.i, 0
  br i1 %cmp.i103.i, label %if.then35.i.if.end38.i_crit_edge, label %if.end.i107.i

if.then35.i.if.end38.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.end.i107.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i104.i = mul i32 %call.i102.i, 100
  %spec.select.i.i105.i = select i1 %tobool.not.i20, i32 %call.i102.i, i32 %mul.i.i104.i
  %call2.i106.i = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 2, i32 noundef %spec.select.i.i105.i) #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end.i107.i, %if.then35.i.if.end38.i_crit_edge, %if.end33.i.if.end38.i_crit_edge
  %result.off.i109.i = add nsw i32 %59, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %result.off.i109.i)
  %switch.i110.i = icmp ult i32 %result.off.i109.i, 3
  br i1 %switch.i110.i, label %if.then40.i, label %if.end38.i.cleanup_crit_edge

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40.i:                                      ; preds = %if.end38.i
  %call.i111.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 7, i32 noundef 19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %cmp.i112.i = icmp slt i32 %call.i111.i, 0
  br i1 %cmp.i112.i, label %if.then40.i.cleanup_crit_edge, label %if.end.i116.i

if.then40.i.cleanup_crit_edge:                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i116.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i113.i = mul i32 %call.i111.i, 100
  %spec.select.i.i114.i = select i1 %tobool.not.i20, i32 %call.i111.i, i32 %mul.i.i113.i
  %call2.i115.i = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 3, i32 noundef %spec.select.i.i114.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i116.i, %if.then40.i.cleanup_crit_edge, %if.end38.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %marvell_vct5_amplitude_graph.exit
  %retval.0 = phi i32 [ %retval.0.i, %marvell_vct5_amplitude_graph.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call.i18, %if.then6.cleanup_crit_edge ], [ %call18.i, %if.end.i.cleanup_crit_edge ], [ 0, %if.end38.i.cleanup_crit_edge ], [ 0, %if.then40.i.cleanup_crit_edge ], [ 0, %if.end.i116.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_loopback(ptr noundef %phydev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else42

if.then:                                          ; preds = %entry
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 100
  %switch.select = select i1 %switch.selectcmp, i16 8192, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %switch.selectcmp70 = icmp eq i32 %1, 1000
  %switch.select71 = select i1 %switch.selectcmp70, i16 64, i16 %switch.select
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp eq i32 %3, 1
  %4 = or i16 %switch.select71, 256
  %spec.select = select i1 %cmp6, i16 %4, i16 %switch.select71
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 0, i16 noundef zeroext %spec.select) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.then.cleanup49_crit_edge, label %if.end13

if.then.cleanup49_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.end13:                                         ; preds = %if.then
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %10)
  %switch.selectcmp72 = icmp eq i32 %10, 100
  %switch.select73 = select i1 %switch.selectcmp72, i16 8192, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %10)
  %switch.selectcmp74 = icmp eq i32 %10, 1000
  %switch.select75 = select i1 %switch.selectcmp74, i16 64, i16 %switch.select73
  %call25 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 8256, i16 noundef zeroext %switch.select75) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end13.cleanup49_crit_edge, label %if.end29

if.end13.cleanup49_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.end29:                                         ; preds = %if.end13
  %call30 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup49_crit_edge, label %if.end34

if.end29.cleanup49_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.end34:                                         ; preds = %if.end29
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %12)
  %cmp36 = icmp eq i32 %12, 1000
  br i1 %cmp36, label %if.then38, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 1000) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34.if.end39_crit_edge
  %call40 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #11
  br label %cleanup49

if.else42:                                        ; preds = %entry
  %call43 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.else42.cleanup49_crit_edge, label %if.end47

if.else42.cleanup49_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.end47:                                         ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 @phy_config_aneg(ptr noundef %phydev) #11
  br label %cleanup49

cleanup49:                                        ; preds = %if.end47, %if.else42.cleanup49_crit_edge, %if.end39, %if.end29.cleanup49_crit_edge, %if.end13.cleanup49_crit_edge, %if.then.cleanup49_crit_edge
  %retval.1 = phi i32 [ %call48, %if.end47 ], [ %call40, %if.end39 ], [ %call.i, %if.then.cleanup49_crit_edge ], [ %call25, %if.end13.cleanup49_crit_edge ], [ %call30, %if.end29.cleanup49_crit_edge ], [ %call43, %if.else42.cleanup49_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1540_get_tunable(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %4, i32 noundef %6, i32 noundef 26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %and.i = and i32 %call.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.return.sink.split_crit_edge, label %do.end14.i

if.end.i.return.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return.sink.split

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = lshr i32 %call.i.i, 7
  %switch.shiftamt = and i32 %7, 24
  %switch.downshift = lshr i32 672401920, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %bus.i.i5 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i5, align 8
  %addr.i.i6 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i6, align 8
  %call.i.i7 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %cmp.i8 = icmp slt i32 %call.i.i7, 0
  br i1 %cmp.i8, label %sw.bb1.return_crit_edge, label %do.end12.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end12.i:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %12 = and i32 %call.i.i7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i9 = icmp eq i32 %12, 0
  %and29.i = lshr i32 %call.i.i7, 12
  %13 = trunc i32 %and29.i to i8
  %14 = and i8 %13, 7
  %phi.cast.i = add nuw nsw i8 %14, 1
  %cond.i = select i1 %tobool.not.i9, i8 0, i8 %phi.cast.i
  br label %return.sink.split

return.sink.split:                                ; preds = %do.end12.i, %do.end14.i, %if.end.i.return.sink.split_crit_edge
  %cond.i.sink = phi i8 [ %cond.i, %do.end12.i ], [ -1, %if.end.i.return.sink.split_crit_edge ], [ %switch.masked, %do.end14.i ]
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond.i.sink, ptr %data, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call.i.i, %sw.bb.return_crit_edge ], [ %call.i.i7, %sw.bb1.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1540_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %eee.i = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eee.i) #11
  %3 = call ptr @memset(ptr %eee.i, i32 255, i32 40)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 26, i16 noundef zeroext 512, i16 noundef zeroext 0) #11
  br label %m88e1540_set_fld.exit

if.end.i:                                         ; preds = %sw.bb
  %call2.i = call i32 @phy_ethtool_get_eee(ptr noundef %phydev, ptr noundef nonnull %eee.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %eee_enabled.i = getelementptr inbounds %struct.ethtool_eee, ptr %eee.i, i32 0, i32 5
  %6 = ptrtoint ptr %eee_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eee_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.69) #14
  br label %m88e1540_set_fld.exit

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp7.i = icmp ult i8 %9, 6
  br i1 %cmp7.i, label %if.end5.i.do.body29.i_crit_edge, label %if.else.i

if.end5.i.do.body29.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29.i

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp11.i = icmp ult i8 %9, 16
  br i1 %cmp11.i, label %if.else.i.do.body29.i_crit_edge, label %if.else14.i

if.else.i.do.body29.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body29.i

if.else14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %cmp16.i = icmp ult i8 %9, 31
  %phi.cast.i = select i1 %cmp16.i, i16 2048, i16 3072
  br label %do.body29.i

do.body29.i:                                      ; preds = %if.else14.i, %if.else.i.do.body29.i_crit_edge, %if.end5.i.do.body29.i_crit_edge
  %val.0.i = phi i16 [ 0, %if.end5.i.do.body29.i_crit_edge ], [ 1024, %if.else.i.do.body29.i_crit_edge ], [ %phi.cast.i, %if.else14.i ]
  %call43.i = call i32 @phy_modify(ptr noundef %phydev, i32 noundef 26, i16 noundef zeroext 3072, i16 noundef zeroext %val.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %do.body29.i.m88e1540_set_fld.exit_crit_edge

do.body29.i.m88e1540_set_fld.exit_crit_edge:      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %m88e1540_set_fld.exit

if.end46.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i62.i = call i32 @phy_modify(ptr noundef %phydev, i32 noundef 26, i16 noundef zeroext 0, i16 noundef zeroext 512) #11
  br label %m88e1540_set_fld.exit

m88e1540_set_fld.exit:                            ; preds = %if.end46.i, %do.body29.i.m88e1540_set_fld.exit_crit_edge, %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call.i62.i, %if.end46.i ], [ -16, %do.end.i ], [ %call43.i, %do.body29.i.m88e1540_set_fld.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eee.i) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %conv.i = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp.i5 = icmp ugt i8 %11, 8
  br i1 %cmp.i5, label %sw.bb1.return_crit_edge, label %if.end.i7

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i7:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i6 = icmp eq i8 %11, 0
  br i1 %tobool.not.i6, label %if.then2.i, label %do.end20.i

if.then2.i:                                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i8 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 2048, i16 noundef zeroext 0) #11
  br label %if.end26.i

do.end20.i:                                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = shl i16 %conv.i, 12
  %12 = add i16 %sub.i, 28672
  %13 = and i16 %12, 28672
  %conv24.i = or i16 %13, 2048
  %call25.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext %conv24.i) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %if.then2.i
  %err.0.i = phi i32 [ %call25.i, %do.end20.i ], [ %call.i.i8, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp27.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp27.i, label %if.end26.i.return_crit_edge, label %if.end30.i

if.end26.i.return_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end30.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  br label %return

return:                                           ; preds = %if.end30.i, %if.end26.i.return_crit_edge, %sw.bb1.return_crit_edge, %m88e1540_set_fld.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %m88e1540_set_fld.exit ], [ -95, %entry.return_crit_edge ], [ %call31.i, %if.end30.i ], [ -7, %sw.bb1.return_crit_edge ], [ %err.0.i, %if.end26.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e3016_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 512, i16 noundef zeroext 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_id.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id.i.i, align 4
  %shr.i.i = lshr i32 %1, 4
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %shr.i.i, label %if.end.marvell_config_init.exit_crit_edge [
    i32 1315019, label %if.end.sw.epilog.i.i_crit_edge
    i32 1315049, label %if.end.sw.epilog.i.i_crit_edge4
    i32 1315037, label %sw.bb1.i.i
  ]

if.end.sw.epilog.i.i_crit_edge4:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end.sw.epilog.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

if.end.marvell_config_init.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev_flags.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_flags.i.i, align 8
  %and.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i16 4471, i16 4160
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.end.sw.epilog.i.i_crit_edge, %if.end.sw.epilog.i.i_crit_edge4
  %def_config.0.i.i = phi i16 [ 48, %if.end.sw.epilog.i.i_crit_edge ], [ 48, %if.end.sw.epilog.i.i_crit_edge4 ], [ %..i.i, %sw.bb1.i.i ]
  %call.i.i = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %def_config.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.epilog.i.i.marvell_config_init.exit_crit_edge

sw.epilog.i.i.marvell_config_init.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %marvell_config_init.exit

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.20) #14
  br label %marvell_config_init.exit

marvell_config_init.exit:                         ; preds = %do.end.i.i, %sw.epilog.i.i.marvell_config_init.exit_crit_edge, %if.end.marvell_config_init.exit_crit_edge
  %call.i = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %marvell_config_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %marvell_config_init.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_aneg_done(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %and = and i32 %call.i, 2048
  %cond = select i1 %cmp, i32 %call.i, i32 %and
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e6390_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 0, i16 noundef zeroext 4416) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #11
  %call1.i = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 248, i32 noundef 8, i16 noundef zeroext 54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %m88e6390_errata.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e6390_errata.exit:                             ; preds = %if.end.i
  %call5.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.end, label %m88e6390_errata.exit.cleanup_crit_edge

m88e6390_errata.exit.cleanup_crit_edge:           ; preds = %m88e6390_errata.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %m88e6390_errata.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @m88e1510_config_aneg(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %m88e6390_errata.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call5.i, %m88e6390_errata.exit.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_of_reg_init(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !187
  %of_node = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

if.end:                                           ; preds = %entry
  %call = call ptr @of_get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %len) #11
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup60_crit_edge, label %lor.lhs.false

if.end.cleanup60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp = icmp ult i32 %4, 16
  br i1 %cmp, label %lor.lhs.false.cleanup60_crit_edge, label %if.end6

lor.lhs.false.cleanup60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call i32 @phy_save_page(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.err_crit_edge, label %if.end10

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end10:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %div93 = lshr i32 %6, 2
  store i32 %div93, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %6)
  %cmp11103 = icmp ugt i32 %6, 15
  br i1 %cmp11103, label %for.body.lr.ph, label %if.end10.err_crit_edge

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.body.lr.ph:                                   ; preds = %if.end10
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %if.end46
  %add = add i32 %i.0104, 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %sub = add i32 %8, -3
  %cmp11 = icmp slt i32 %add, %sub
  br i1 %cmp11, label %for.cond.for.body_crit_edge, label %for.cond.err_crit_edge

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %current_page.0105 = phi i32 [ %call7, %for.body.lr.ph ], [ %current_page.1, %for.cond.for.body_crit_edge ]
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %call, i32 %i.0104
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %add.ptr14 = getelementptr i32, ptr %add.ptr, i32 1
  %11 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr14, align 4
  %add.ptr18 = getelementptr i32, ptr %add.ptr, i32 2
  %13 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr18, align 4
  %conv20 = trunc i32 %14 to i16
  %add.ptr22 = getelementptr i32, ptr %add.ptr, i32 3
  %15 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr22, align 4
  %conv25 = and i32 %10, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %current_page.0105)
  %cmp26.not = icmp eq i32 %conv25, %current_page.0105
  br i1 %cmp26.not, label %for.body.if.end36_crit_edge, label %if.then28

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then28:                                        ; preds = %for.body
  %conv.i = trunc i32 %10 to i16
  %17 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i, align 8
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i, align 8
  %call.i.i = call i32 @__mdiobus_write(ptr noundef %18, i32 noundef %20, i32 noundef 22, i16 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp32 = icmp slt i32 %call.i.i, 0
  br i1 %cmp32, label %if.then28.err_crit_edge, label %if.then28.if.end36_crit_edge

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then28.err_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %current_page.1 = phi i32 [ %conv25, %if.then28.if.end36_crit_edge ], [ %current_page.0105, %for.body.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv20)
  %tobool37.not = icmp eq i16 %conv20, 0
  %.pre = and i32 %12, 65535
  br i1 %tobool37.not, label %if.end36.if.end46_crit_edge, label %if.then38

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then38:                                        ; preds = %if.end36
  %21 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i, align 8
  %23 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i, align 8
  %call.i = call i32 @__mdiobus_read(ptr noundef %22, i32 noundef %24, i32 noundef %.pre) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp41 = icmp slt i32 %call.i, 0
  br i1 %cmp41, label %if.then38.err_crit_edge, label %if.end44

if.then38.err_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %conv45 = and i32 %14, 65535
  %and = and i32 %conv45, %call.i
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end36.if.end46_crit_edge
  %val.0 = phi i32 [ %and, %if.end44 ], [ 0, %if.end36.if.end46_crit_edge ]
  %or = or i32 %val.0, %16
  %conv49 = trunc i32 %or to i16
  %25 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i.i, align 8
  %27 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i.i, align 8
  %call.i97 = call i32 @__mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef %.pre, i16 noundef zeroext %conv49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp51 = icmp slt i32 %call.i97, 0
  br i1 %cmp51, label %if.end46.err_crit_edge, label %for.cond

if.end46.err_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

err:                                              ; preds = %if.end46.err_crit_edge, %if.then38.err_crit_edge, %if.then28.err_crit_edge, %for.cond.err_crit_edge, %if.end10.err_crit_edge, %if.end6.err_crit_edge
  %ret.2 = phi i32 [ 0, %if.end6.err_crit_edge ], [ 0, %if.end10.err_crit_edge ], [ %call.i97, %for.cond.err_crit_edge ], [ %call.i.i, %if.then28.err_crit_edge ], [ %call.i, %if.then38.err_crit_edge ], [ %call.i97, %if.end46.err_crit_edge ]
  %call59 = call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call7, i32 noundef %ret.2) #11
  br label %cleanup60

cleanup60:                                        ; preds = %err, %lor.lhs.false.cleanup60_crit_edge, %if.end.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ %call59, %err ], [ 0, %entry.cleanup60_crit_edge ], [ 0, %lor.lhs.false.cleanup60_crit_edge ], [ 0, %if.end.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_save_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @marvell_hwmon_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 16, label %sw.bb1
    i32 9, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %get_temp = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %get_temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_temp, align 4
  %tobool.not = icmp eq ptr %6, null
  %conv = select i1 %tobool.not, i16 0, i16 292
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %get_temp_alarm = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %get_temp_alarm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_temp_alarm, align 4
  %tobool2.not = icmp eq ptr %8, null
  %conv4 = select i1 %tobool2.not, i16 0, i16 292
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %get_temp_critical = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %get_temp_critical to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_temp_critical, align 4
  %tobool6.not = icmp eq ptr %10, null
  %cond7 = select i1 %tobool6.not, i16 0, i16 292
  %set_temp_critical = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %set_temp_critical to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_temp_critical, align 4
  %tobool8.not = icmp eq ptr %12, null
  %cond9 = select i1 %tobool8.not, i16 0, i16 128
  %or = or i16 %cond9, %cond7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %or, %sw.bb5 ], [ %conv4, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv.i, align 8
  %driver_data.i28 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data.i28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i28, align 4
  %6 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %attr, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %sw.bb4
    i32 16, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %get_temp = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %get_temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_temp, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %get_temp_critical = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %get_temp_critical to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_temp_critical, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %sw.bb4.sw.epilog_crit_edge, label %sw.bb4.sw.epilog.sink.split_crit_edge

sw.bb4.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %get_temp_alarm = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %get_temp_alarm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_temp_alarm, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %sw.bb10.sw.epilog_crit_edge, label %sw.bb10.sw.epilog.sink.split_crit_edge

sw.bb10.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb10.sw.epilog.sink.split_crit_edge, %sw.bb4.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %8, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %10, %sw.bb4.sw.epilog.sink.split_crit_edge ], [ %12, %sw.bb10.sw.epilog.sink.split_crit_edge ]
  %call14 = tail call i32 %.sink(ptr noundef %1, ptr noundef %temp) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb10.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -95, %sw.bb10.sw.epilog_crit_edge ], [ -95, %sw.bb4.sw.epilog_crit_edge ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ %call14, %sw.epilog.sink.split ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cond = icmp eq i32 %attr, 9
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv.i, align 8
  %driver_data.i6 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i6, align 4
  %set_temp_critical = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %set_temp_critical to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_temp_critical, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 %7(ptr noundef %1, i32 noundef %temp) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call3, %if.then ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88e1111_config_init(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface.i, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %switch.tableidx = add i32 %1, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.then.m88e1111_config_init_rgmii_delays.exit.i_crit_edge

if.then.m88e1111_config_init_rgmii_delays.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %m88e1111_config_init_rgmii_delays.exit.i

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.m88e1111_config_init, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %m88e1111_config_init_rgmii_delays.exit.i

m88e1111_config_init_rgmii_delays.exit.i:         ; preds = %switch.lookup, %if.then.m88e1111_config_init_rgmii_delays.exit.i_crit_edge
  %delay.0.i.i = phi i16 [ %switch.load, %switch.lookup ], [ 0, %if.then.m88e1111_config_init_rgmii_delays.exit.i_crit_edge ]
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 130, i16 noundef zeroext %delay.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge, label %if.end.i

m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge: ; preds = %m88e1111_config_init_rgmii_delays.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %m88e1111_config_init_rgmii_delays.exit.i
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i20.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp2.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %m88e1111_config_init_rgmii.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1111_config_init_rgmii.exit:                  ; preds = %if.end.i
  %and.i = and i32 %call.i20.i, 65520
  %and5.i = and i32 %call.i20.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %temp.0.v.i = select i1 %tobool.not.i, i32 11, i32 3
  %temp.0.i = or i32 %temp.0.v.i, %and.i
  %conv.i = trunc i32 %temp.0.i to i16
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i23.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 27, i16 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp = icmp slt i32 %call.i23.i, 0
  br i1 %cmp, label %m88e1111_config_init_rgmii.exit.cleanup_crit_edge, label %if.end3thread-pre-split

m88e1111_config_init_rgmii.exit.cleanup_crit_edge: ; preds = %m88e1111_config_init_rgmii.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3thread-pre-split:                          ; preds = %m88e1111_config_init_rgmii.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %interface.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3thread-pre-split, %entry.if.end3_crit_edge
  %15 = phi i32 [ %.pr, %if.end3thread-pre-split ], [ %1, %entry.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp4 = icmp eq i32 %15, 4
  br i1 %cmp4, label %if.then5, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %call.i.i50 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32764) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i51 = icmp slt i32 %call.i.i50, 0
  br i1 %cmp.i51, label %if.then5.cleanup_crit_edge, label %m88e1111_config_init_sgmii.exit

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1111_config_init_sgmii.exit:                  ; preds = %if.then5
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %16 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %18 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 22, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp7 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp7, label %m88e1111_config_init_sgmii.exit.cleanup_crit_edge, label %m88e1111_config_init_sgmii.exit.if.end10_crit_edge

m88e1111_config_init_sgmii.exit.if.end10_crit_edge: ; preds = %m88e1111_config_init_sgmii.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

m88e1111_config_init_sgmii.exit.cleanup_crit_edge: ; preds = %m88e1111_config_init_sgmii.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %m88e1111_config_init_sgmii.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %20 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %21)
  %cmp12 = icmp eq i32 %21, 13
  br i1 %cmp12, label %m88e1111_config_init_rgmii_delays.exit.i61, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

m88e1111_config_init_rgmii_delays.exit.i61:       ; preds = %if.end10
  %call.i.i59 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 130, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %cmp.i60 = icmp slt i32 %call.i.i59, 0
  br i1 %cmp.i60, label %m88e1111_config_init_rgmii_delays.exit.i61.cleanup_crit_edge, label %if.end.i63

m88e1111_config_init_rgmii_delays.exit.i61.cleanup_crit_edge: ; preds = %m88e1111_config_init_rgmii_delays.exit.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i63:                                       ; preds = %m88e1111_config_init_rgmii_delays.exit.i61
  %call.i18.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32761) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp2.i62 = icmp slt i32 %call.i18.i, 0
  br i1 %cmp2.i62, label %if.end.i63.cleanup_crit_edge, label %if.end4.i64

if.end.i63.cleanup_crit_edge:                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.i64:                                      ; preds = %if.end.i63
  %call5.i = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i64.cleanup_crit_edge, label %m88e1111_config_init_rtbi.exit

if.end4.i64.cleanup_crit_edge:                    ; preds = %if.end4.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

m88e1111_config_init_rtbi.exit:                   ; preds = %if.end4.i64
  %call.i19.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32761) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp15 = icmp slt i32 %call.i19.i, 0
  br i1 %cmp15, label %m88e1111_config_init_rtbi.exit.cleanup_crit_edge, label %if.end18thread-pre-split

m88e1111_config_init_rtbi.exit.cleanup_crit_edge: ; preds = %m88e1111_config_init_rtbi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18thread-pre-split:                         ; preds = %m88e1111_config_init_rtbi.exit
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr79 = load i32, ptr %interface.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18thread-pre-split, %if.end10.if.end18_crit_edge
  %23 = phi i32 [ %.pr79, %if.end18thread-pre-split ], [ %21, %if.end10.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %23)
  %cmp20 = icmp eq i32 %23, 21
  br i1 %cmp20, label %if.then21, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  %bus.i.i66 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %24 = ptrtoint ptr %bus.i.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i66, align 8
  %addr.i.i67 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %26 = ptrtoint ptr %addr.i.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i67, align 8
  %call.i.i68 = tail call i32 @mdiobus_read(ptr noundef %25, i32 noundef %27, i32 noundef 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.i69 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp.i69, label %if.then21.cleanup_crit_edge, label %if.end.i71

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i71:                                       ; preds = %if.then21
  %and.i70 = and i32 %call.i.i68, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and.i70)
  %cmp1.i = icmp eq i32 %and.i70, 12
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i71.if.end26_crit_edge

if.end.i71.if.end26_crit_edge:                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then2.i:                                       ; preds = %if.end.i71
  %call3.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 27, i16 noundef zeroext 4111, i16 noundef zeroext 4104) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then2.i.cleanup_crit_edge, label %if.then2.i.if.end26_crit_edge

if.then2.i.if.end26_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.then2.i.if.end26_crit_edge, %if.end.i71.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %call27 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %m88e1111_config_init_rtbi.exit.cleanup_crit_edge, %if.end4.i64.cleanup_crit_edge, %if.end.i63.cleanup_crit_edge, %m88e1111_config_init_rgmii_delays.exit.i61.cleanup_crit_edge, %m88e1111_config_init_sgmii.exit.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %m88e1111_config_init_rgmii.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ %call.i23.i, %m88e1111_config_init_rgmii.exit.cleanup_crit_edge ], [ %call.i.i.i, %m88e1111_config_init_sgmii.exit.cleanup_crit_edge ], [ %call.i19.i, %m88e1111_config_init_rtbi.exit.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call.i20.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %m88e1111_config_init_rgmii_delays.exit.i.cleanup_crit_edge ], [ %call.i.i50, %if.then5.cleanup_crit_edge ], [ %call5.i, %if.end4.i64.cleanup_crit_edge ], [ %call.i18.i, %if.end.i63.cleanup_crit_edge ], [ %call.i.i59, %m88e1111_config_init_rgmii_delays.exit.i61.cleanup_crit_edge ], [ %call3.i, %if.then2.i.cleanup_crit_edge ], [ %call.i.i68, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_check_and_restart_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_config_aneg_fiber(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoneg, align 8
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.not = icmp eq i16 %1, 0
  br i1 %cmp.not.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @genphy_setup_forced(ptr noundef %phydev) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %advertising, ptr noundef %advertising, ptr noundef %supported, i32 noundef 92) #11
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %advertising, align 4
  %4 = shl i32 %3, 2
  %5 = and i32 %4, 64
  %6 = load volatile i32, ptr %advertising, align 4
  %7 = and i32 %6, 32
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %advertising, align 4
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i = icmp eq i32 %10, 0
  br i1 %tobool7.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %advertising, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not.i = icmp eq i32 %13, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %or11.i = or i32 %8, 256
  br label %linkmode_adv_to_fiber_adv_t.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %14 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %advertising, align 4
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 128
  %18 = or i32 %17, %8
  br label %linkmode_adv_to_fiber_adv_t.exit

linkmode_adv_to_fiber_adv_t.exit:                 ; preds = %if.else.i, %if.then10.i
  %result.2.i = phi i32 [ %or11.i, %if.then10.i ], [ %18, %if.else.i ]
  %conv = trunc i32 %result.2.i to i16
  %call7 = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 4, i16 noundef zeroext 480, i16 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %linkmode_adv_to_fiber_adv_t.exit.cleanup_crit_edge, label %if.end11

linkmode_adv_to_fiber_adv_t.exit.cleanup_crit_edge: ; preds = %linkmode_adv_to_fiber_adv_t.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %linkmode_adv_to_fiber_adv_t.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp12.not = icmp ne i32 %call7, 0
  %call16 = tail call i32 @genphy_check_and_restart_aneg(ptr noundef %phydev, i1 noundef zeroext %cmp12.not) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %linkmode_adv_to_fiber_adv_t.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call16, %if.end11 ], [ %call7, %linkmode_adv_to_fiber_adv_t.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_read_status_page(ptr noundef %phydev, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page)
  %cmp1 = icmp eq i32 %page, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = trunc i32 %call.i to i16
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %link, align 8
  %6 = lshr i16 %4, 8
  %bf.shl = and i16 %6, 4
  %bf.clear = and i16 %bf.load, -5
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %link, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @genphy_update_link(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then2
  %. = phi i32 [ 0, %if.else.if.end8_crit_edge ], [ 3, %if.then2 ]
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 18
  %7 = call ptr @memset(ptr %lp_advertising, i32 0, i32 12)
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %8 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pause, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %9 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %asym_pause, align 8
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 255, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %port, align 8
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load14 = load i16, ptr %autoneg, align 8
  %14 = and i16 %bf.load14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp16.not = icmp eq i16 %14, 0
  br i1 %cmp16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.end8
  %and.i = and i32 %call.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear.i = and i16 %bf.load14, -5
  %15 = ptrtoint ptr %autoneg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.clear.i, ptr %autoneg, align 8
  br label %cleanup

if.end.i:                                         ; preds = %if.then17
  %and1.i = lshr i32 %call.i, 13
  %and1.lobit.i = and i32 %and1.i, 1
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and1.lobit.i, ptr %duplex, align 4
  %17 = trunc i32 %call.i to i16
  %trunc.i = and i16 %17, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %trunc.i)
  %switch.selectcmp.i = icmp eq i16 %trunc.i, 16384
  %switch.select.i = select i1 %switch.selectcmp.i, i32 100, i32 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %trunc.i)
  %switch.selectcmp62.i = icmp eq i16 %trunc.i, -32768
  %switch.select63.i = select i1 %switch.selectcmp62.i, i32 1000, i32 %switch.select.i
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.select63.i, ptr %speed, align 8
  br i1 %cmp1, label %if.else14.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  %call.i43 = tail call i32 @genphy_read_lpa(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i = icmp slt i32 %call.i43, 0
  br i1 %cmp.i, label %if.then11.i.cleanup_crit_edge, label %if.end13.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_resolve_aneg_pause(ptr noundef %phydev) #11
  br label %cleanup

if.else14.i:                                      ; preds = %if.end.i
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 8
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp16.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp16.i, label %if.else14.i.cleanup_crit_edge, label %if.end18.i

if.else14.i.cleanup_crit_edge:                    ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18.i:                                       ; preds = %if.else14.i
  %23 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lp_advertising, align 4
  %and.i.i.i.i.i = and i32 %24, -49
  %and.i.i = lshr i32 %call.i.i, 2
  %25 = and i32 %and.i.i, 16
  %and1.i.i = and i32 %call.i.i, 32
  %storemerge.i.i.i = or i32 %25, %and1.i.i
  %storemerge.i9.i.i = or i32 %storemerge.i.i.i, %and.i.i.i.i.i
  store i32 %storemerge.i9.i.i, ptr %lp_advertising, align 4
  %26 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp20.i = icmp eq i32 %27, 1
  br i1 %cmp20.i, label %if.then21.i, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.i:                                      ; preds = %if.end18.i
  %and22.i = and i32 %call.i.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else25.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %pause, align 4
  %29 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %asym_pause, align 8
  br label %cleanup

if.else25.i:                                      ; preds = %if.then21.i
  %and26.i = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %30 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %pause, align 4
  br i1 %tobool27.not.i, label %if.else31.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %asym_pause, align 8
  br label %cleanup

if.else31.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %asym_pause, align 8
  br label %cleanup

if.else19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @genphy_read_status_fixed(ptr noundef %phydev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.else31.i, %if.then28.i, %if.then24.i, %if.end18.i.cleanup_crit_edge, %if.else14.i.cleanup_crit_edge, %if.end13.i, %if.then11.i.cleanup_crit_edge, %if.then.i, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call4, %if.else.cleanup_crit_edge ], [ %call20, %if.else19 ], [ 0, %if.then.i ], [ %call.i43, %if.then11.i.cleanup_crit_edge ], [ %call.i.i, %if.else14.i.cleanup_crit_edge ], [ 0, %if.end18.i.cleanup_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.else31.i ], [ 0, %if.then24.i ], [ 0, %if.end13.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1121_get_temp(ptr noundef %phydev, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp, align 4
  %call = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end4:                                          ; preds = %if.end
  %5 = trunc i32 %call.i to i16
  %conv = or i16 %5, 32
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i39 = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 26, i16 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp6 = icmp slt i32 %call.i39, 0
  br i1 %cmp6, label %if.end4.error_crit_edge, label %if.end9

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end9:                                          ; preds = %if.end4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #11
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i42 = tail call i32 @__mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp11 = icmp slt i32 %call.i42, 0
  br i1 %cmp11, label %if.end9.error_crit_edge, label %if.end14

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end14:                                         ; preds = %if.end9
  %14 = trunc i32 %call.i39 to i16
  %conv15 = and i16 %14, -33
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 8
  %call.i45 = tail call i32 @__mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 26, i16 noundef zeroext %conv15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp17 = icmp slt i32 %call.i45, 0
  br i1 %cmp17, label %if.end14.error_crit_edge, label %if.end20

if.end14.error_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %and21 = and i32 %call.i42, 31
  %19 = mul nuw nsw i32 %and21, 5000
  %mul = add nsw i32 %19, -25000
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %temp, align 4
  br label %error

error:                                            ; preds = %if.end20, %if.end14.error_crit_edge, %if.end9.error_crit_edge, %if.end4.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ 0, %entry.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ], [ %call.i39, %if.end4.error_crit_edge ], [ %call.i45, %if.end14.error_crit_edge ], [ %call.i45, %if.end20 ], [ %call.i42, %if.end9.error_crit_edge ]
  %call22 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %ret.0) #11
  ret i32 %call22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_get_temp(ptr noundef %phydev, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp, align 4
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %call, 255
  %1 = mul nuw nsw i32 %and, 1000
  %mul = add nsw i32 %1, -25000
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_get_temp_critical(ptr noundef %phydev, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp, align 4
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %call, 8
  %1 = and i32 %and, 31
  %2 = mul nuw nsw i32 %1, 5000
  %mul1 = add nsw i32 %2, -25000
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul1, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_set_temp_critical(ptr noundef %phydev, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %temp, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %temp)
  %cmp = icmp sgt i32 %temp, 999
  %cond.in.v = select i1 %cmp, i32 2, i32 -2
  %cond.in = add nsw i32 %cond.in.v, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %cond.in)
  %cmp11 = icmp sgt i32 %cond.in, -25
  %cond = sdiv i32 %cond.in, 5
  %0 = tail call i32 @llvm.smin.i32(i32 %cond, i32 26)
  %1 = trunc i32 %0 to i16
  %2 = shl i16 %1, 8
  %.op = add i16 %2, 1280
  %conv24 = select i1 %cmp11, i16 %.op, i16 0
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 26, i16 noundef zeroext 7936, i16 noundef zeroext %conv24) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_get_temp_alarm(ptr noundef %phydev, ptr nocapture noundef writeonly %alarm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %alarm, align 4
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %call, 6
  %and.lobit = and i32 %and, 1
  %1 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and.lobit, ptr %alarm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_sfp_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_attach(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_detach(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e1510_sfp_insert(ptr noundef %upstream, ptr noundef %id) #2 align 64 {
entry:
  %supported = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %supported) #11
  %0 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %sfp_bus = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 34
  %1 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sfp_bus, align 8
  call void @sfp_parse_support(ptr noundef %2, ptr noundef %id, ptr noundef nonnull %supported) #11
  %3 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sfp_bus, align 8
  %call = call i32 @sfp_select_interface(ptr noundef %4, ptr noundef nonnull %supported) #11
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call, label %phy_modes.exit [
    i32 0, label %entry.do.end9_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %entry.sw.epilog_crit_edge
    i32 5, label %sw.bb5.i
    i32 6, label %sw.bb6.i
    i32 7, label %sw.bb7.i
    i32 8, label %sw.bb8.i
    i32 9, label %sw.bb9.i
    i32 10, label %sw.bb10.i
    i32 11, label %sw.bb11.i
    i32 12, label %sw.bb12.i
    i32 13, label %sw.bb13.i
    i32 14, label %sw.bb14.i
    i32 15, label %sw.bb15.i
    i32 16, label %sw.bb16.i
    i32 17, label %sw.bb17.i
    i32 18, label %sw.bb18.i
    i32 19, label %sw.bb19.i
    i32 21, label %phy_modes.exit.thread34
    i32 22, label %sw.bb21.i
    i32 23, label %sw.bb22.i
    i32 24, label %sw.bb23.i
    i32 25, label %sw.bb24.i
    i32 26, label %sw.bb25.i
    i32 27, label %sw.bb26.i
    i32 28, label %sw.bb27.i
    i32 29, label %sw.bb28.i
    i32 20, label %phy_modes.exit.thread36
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb17.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

phy_modes.exit.thread34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb23.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb24.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb25.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb26.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

sw.bb28.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

phy_modes.exit.thread36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

phy_modes.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end9:                                          ; preds = %phy_modes.exit, %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.do.end9_crit_edge
  %.str.66.sink = phi ptr [ @.str.66, %phy_modes.exit ], [ @.str.36, %entry.do.end9_crit_edge ], [ @.str.37, %sw.bb1.i ], [ @.str.38, %sw.bb2.i ], [ @.str.39, %sw.bb3.i ], [ @.str.41, %sw.bb5.i ], [ @.str.42, %sw.bb6.i ], [ @.str.43, %sw.bb7.i ], [ @.str.44, %sw.bb8.i ], [ @.str.45, %sw.bb9.i ], [ @.str.46, %sw.bb10.i ], [ @.str.47, %sw.bb11.i ], [ @.str.48, %sw.bb12.i ], [ @.str.49, %sw.bb13.i ], [ @.str.50, %sw.bb14.i ], [ @.str.51, %sw.bb15.i ], [ @.str.52, %sw.bb16.i ], [ @.str.53, %sw.bb17.i ], [ @.str.54, %sw.bb18.i ], [ @.str.55, %sw.bb19.i ], [ @.str.57, %sw.bb21.i ], [ @.str.58, %sw.bb22.i ], [ @.str.59, %sw.bb23.i ], [ @.str.60, %sw.bb24.i ], [ @.str.61, %sw.bb25.i ], [ @.str.62, %sw.bb26.i ], [ @.str.63, %sw.bb27.i ], [ @.str.64, %sw.bb28.i ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %upstream, ptr noundef nonnull @.str.29, ptr noundef nonnull %.str.66.sink) #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %upstream, ptr noundef nonnull @.str.33) #14
  br label %cleanup

sw.epilog:                                        ; preds = %phy_modes.exit.thread36, %phy_modes.exit.thread34, %entry.sw.epilog_crit_edge
  %.str.56.sink = phi ptr [ @.str.56, %phy_modes.exit.thread34 ], [ @.str.65, %phy_modes.exit.thread36 ], [ @.str.40, %entry.sw.epilog_crit_edge ]
  %mode.0 = phi i16 [ 2, %phy_modes.exit.thread34 ], [ 3, %phy_modes.exit.thread36 ], [ 4, %entry.sw.epilog_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %upstream, ptr noundef nonnull @.str.29, ptr noundef nonnull %.str.56.sink) #14
  %call10 = call i32 @phy_select_page(ptr noundef %upstream, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %sw.epilog.error_crit_edge, label %if.end

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %sw.epilog
  %call11 = call i32 @__phy_modify(ptr noundef %upstream, i32 noundef 20, i16 noundef zeroext 7, i16 noundef zeroext %mode.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.error_crit_edge, label %if.end14

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 @__phy_modify(ptr noundef %upstream, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #11
  br label %error

error:                                            ; preds = %if.end14, %if.end.error_crit_edge, %sw.epilog.error_crit_edge
  %ret.0 = phi i32 [ 0, %sw.epilog.error_crit_edge ], [ %call11, %if.end.error_crit_edge ], [ %call.i, %if.end14 ]
  %call16 = call i32 @phy_restore_page(ptr noundef %upstream, i32 noundef %call10, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %call16, %error ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %supported) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m88e1510_sfp_remove(ptr noundef %upstream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_select_page(ptr noundef %upstream, i32 noundef 18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__phy_modify(ptr noundef %upstream, i32 noundef 20, i16 noundef zeroext 7, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @__phy_modify(ptr noundef %upstream, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #11
  br label %error

error:                                            ; preds = %if.end4, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ 0, %entry.error_crit_edge ], [ %call1, %if.end.error_crit_edge ], [ %call.i, %if.end4 ]
  %call6 = tail call i32 @phy_restore_page(ptr noundef %upstream, i32 noundef %call, i32 noundef %ret.0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_parse_support(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sfp_select_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_cable_test_start_common(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i33 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp2 = icmp slt i32 %call.i33, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.if.end14_crit_edge, label %if.then5

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then5:                                         ; preds = %if.end4
  %call.i34 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 4096, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp7 = icmp slt i32 %call.i34, 0
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %call10 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %and15 = and i32 %call.i33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef 1500) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i33, %if.end.cleanup_crit_edge ], [ %call.i34, %if.then5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_pulse(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_amplitude(ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_fault_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e6390_get_temp(ptr noundef %phydev, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp, align 4
  %call = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end4:                                          ; preds = %if.end
  %5 = trunc i32 %call.i to i16
  %conv = and i16 %5, 16383
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i53 = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 27, i16 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp6 = icmp slt i32 %call.i53, 0
  br i1 %cmp6, label %if.end4.error_crit_edge, label %if.end9

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end9:                                          ; preds = %if.end4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #11
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i56 = tail call i32 @__mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp13 = icmp slt i32 %call.i56, 0
  br i1 %cmp13, label %if.end9.error_crit_edge, label %if.end16

if.end9.error_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i56.1 = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.1)
  %cmp13.1 = icmp slt i32 %call.i56.1, 0
  br i1 %cmp13.1, label %if.end16.error_crit_edge, label %if.end16.1

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.1:                                       ; preds = %if.end16
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 8
  %call.i56.2 = tail call i32 @__mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.2)
  %cmp13.2 = icmp slt i32 %call.i56.2, 0
  br i1 %cmp13.2, label %if.end16.1.error_crit_edge, label %if.end16.2

if.end16.1.error_crit_edge:                       ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.2:                                       ; preds = %if.end16.1
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 8
  %call.i56.3 = tail call i32 @__mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.3)
  %cmp13.3 = icmp slt i32 %call.i56.3, 0
  br i1 %cmp13.3, label %if.end16.2.error_crit_edge, label %if.end16.3

if.end16.2.error_crit_edge:                       ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.3:                                       ; preds = %if.end16.2
  %26 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i, align 8
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i, align 8
  %call.i56.4 = tail call i32 @__mdiobus_read(ptr noundef %27, i32 noundef %29, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.4)
  %cmp13.4 = icmp slt i32 %call.i56.4, 0
  br i1 %cmp13.4, label %if.end16.3.error_crit_edge, label %if.end16.4

if.end16.3.error_crit_edge:                       ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.4:                                       ; preds = %if.end16.3
  %30 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i, align 8
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i, align 8
  %call.i56.5 = tail call i32 @__mdiobus_read(ptr noundef %31, i32 noundef %33, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.5)
  %cmp13.5 = icmp slt i32 %call.i56.5, 0
  br i1 %cmp13.5, label %if.end16.4.error_crit_edge, label %if.end16.5

if.end16.4.error_crit_edge:                       ; preds = %if.end16.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.5:                                       ; preds = %if.end16.4
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i, align 8
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i, align 8
  %call.i56.6 = tail call i32 @__mdiobus_read(ptr noundef %35, i32 noundef %37, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.6)
  %cmp13.6 = icmp slt i32 %call.i56.6, 0
  br i1 %cmp13.6, label %if.end16.5.error_crit_edge, label %if.end16.6

if.end16.5.error_crit_edge:                       ; preds = %if.end16.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.6:                                       ; preds = %if.end16.5
  %38 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i, align 8
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i, align 8
  %call.i56.7 = tail call i32 @__mdiobus_read(ptr noundef %39, i32 noundef %41, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.7)
  %cmp13.7 = icmp slt i32 %call.i56.7, 0
  br i1 %cmp13.7, label %if.end16.6.error_crit_edge, label %if.end16.7

if.end16.6.error_crit_edge:                       ; preds = %if.end16.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.7:                                       ; preds = %if.end16.6
  %42 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i, align 8
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i, align 8
  %call.i56.8 = tail call i32 @__mdiobus_read(ptr noundef %43, i32 noundef %45, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.8)
  %cmp13.8 = icmp slt i32 %call.i56.8, 0
  br i1 %cmp13.8, label %if.end16.7.error_crit_edge, label %if.end16.8

if.end16.7.error_crit_edge:                       ; preds = %if.end16.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.8:                                       ; preds = %if.end16.7
  %46 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i, align 8
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i, align 8
  %call.i56.9 = tail call i32 @__mdiobus_read(ptr noundef %47, i32 noundef %49, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.9)
  %cmp13.9 = icmp slt i32 %call.i56.9, 0
  br i1 %cmp13.9, label %if.end16.8.error_crit_edge, label %if.end16.9

if.end16.8.error_crit_edge:                       ; preds = %if.end16.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16.9:                                       ; preds = %if.end16.8
  %and17.8 = and i32 %call.i56.8, 255
  %and17.7 = and i32 %call.i56.7, 255
  %and17.6 = and i32 %call.i56.6, 255
  %and17.5 = and i32 %call.i56.5, 255
  %and17.4 = and i32 %call.i56.4, 255
  %and17.3 = and i32 %call.i56.3, 255
  %and17.2 = and i32 %call.i56.2, 255
  %and17.1 = and i32 %call.i56.1, 255
  %and17 = and i32 %call.i56, 255
  %add.1 = add nuw nsw i32 %and17.1, %and17
  %add.2 = add nuw nsw i32 %and17.2, %add.1
  %add.3 = add nuw nsw i32 %and17.3, %add.2
  %add.4 = add nuw nsw i32 %and17.4, %add.3
  %add.5 = add nuw nsw i32 %and17.5, %add.4
  %add.6 = add nuw nsw i32 %and17.6, %add.5
  %add.7 = add nuw nsw i32 %and17.7, %add.6
  %add.8 = add nuw nsw i32 %and17.8, %add.7
  %and17.9 = and i32 %call.i56.9, 255
  %add.9 = add nuw nsw i32 %and17.9, %add.8
  %div67.lhs.trunc = trunc i32 %add.9 to i16
  %div6768 = udiv i16 %div67.lhs.trunc, 10
  %div67.zext = zext i16 %div6768 to i32
  %50 = mul nuw nsw i32 %div67.zext, 1000
  %mul = add nsw i32 %50, -75000
  %51 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul, ptr %temp, align 4
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 8
  %call.i59 = tail call i32 @__mdiobus_read(ptr noundef %53, i32 noundef %55, i32 noundef 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp19 = icmp slt i32 %call.i59, 0
  br i1 %cmp19, label %if.end16.9.error_crit_edge, label %if.end22

if.end16.9.error_crit_edge:                       ; preds = %if.end16.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end22:                                         ; preds = %if.end16.9
  call void @__sanitizer_cov_trace_pc() #13
  %56 = trunc i32 %call.i59 to i16
  %conv25 = or i16 %56, -16384
  %57 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i, align 8
  %59 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.i, align 8
  %call.i62 = tail call i32 @__mdiobus_write(ptr noundef %58, i32 noundef %60, i32 noundef 27, i16 noundef zeroext %conv25) #11
  br label %error

error:                                            ; preds = %if.end22, %if.end16.9.error_crit_edge, %if.end16.8.error_crit_edge, %if.end16.7.error_crit_edge, %if.end16.6.error_crit_edge, %if.end16.5.error_crit_edge, %if.end16.4.error_crit_edge, %if.end16.3.error_crit_edge, %if.end16.2.error_crit_edge, %if.end16.1.error_crit_edge, %if.end16.error_crit_edge, %if.end9.error_crit_edge, %if.end4.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ 0, %entry.error_crit_edge ], [ %call.i, %if.end.error_crit_edge ], [ %call.i53, %if.end4.error_crit_edge ], [ %call.i59, %if.end16.9.error_crit_edge ], [ %call.i62, %if.end22 ], [ %call.i56, %if.end9.error_crit_edge ], [ %call.i56.1, %if.end16.error_crit_edge ], [ %call.i56.2, %if.end16.1.error_crit_edge ], [ %call.i56.3, %if.end16.2.error_crit_edge ], [ %call.i56.4, %if.end16.3.error_crit_edge ], [ %call.i56.5, %if.end16.4.error_crit_edge ], [ %call.i56.6, %if.end16.5.error_crit_edge ], [ %call.i56.7, %if.end16.6.error_crit_edge ], [ %call.i56.8, %if.end16.7.error_crit_edge ], [ %call.i56.9, %if.end16.8.error_crit_edge ]
  %call27 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call, i32 noundef %ret.0) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e6393_hwmon_config(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 28, i16 noundef zeroext -256, i16 noundef zeroext -20736) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 27, i16 noundef zeroext -8448, i16 noundef zeroext 17664) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e6393_get_temp(ptr noundef %phydev, ptr nocapture noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp, align 4
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.m88e1510_get_temp.exit_crit_edge, label %if.end.i

entry.m88e1510_get_temp.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %m88e1510_get_temp.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %call.i, 255
  %1 = mul nuw nsw i32 %and.i, 1000
  %mul.i = add nsw i32 %1, -25000
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul.i, ptr %temp, align 4
  br label %m88e1510_get_temp.exit

m88e1510_get_temp.exit:                           ; preds = %if.end.i, %entry.m88e1510_get_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %entry.m88e1510_get_temp.exit_crit_edge ]
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %sub = add i32 %4, -50000
  store i32 %sub, ptr %temp, align 4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e6393_get_temp_critical(ptr noundef %phydev, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp, align 4
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %call, 8
  %1 = and i32 %and, 255
  %2 = mul nuw nsw i32 %1, 1000
  %mul = add nsw i32 %2, -75000
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88e6393_set_temp_critical(ptr noundef %phydev, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %temp, 1000
  %div.tr = trunc i32 %div to i16
  %0 = shl i16 %div.tr, 8
  %conv = add i16 %0, 19200
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 28, i16 noundef zeroext -256, i16 noundef zeroext %conv) #11
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__UNIQUE_ID_description349, !1, !"__UNIQUE_ID_description349", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/marvell.c", i32 283, i32 1}
!2 = !{ptr @__UNIQUE_ID_author350, !3, !"__UNIQUE_ID_author350", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/marvell.c", i32 284, i32 1}
!4 = !{ptr @__UNIQUE_ID_file351, !5, !"__UNIQUE_ID_file351", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/marvell.c", i32 285, i32 1}
!6 = !{ptr @__UNIQUE_ID_license352, !5, !"__UNIQUE_ID_license352", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_marvell__397_3338_phy_module_init6, !8, !"__initcall__kmod_marvell__397_3338_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/marvell.c", i32 3338, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/marvell.c", i32 2899, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/marvell.c", i32 2917, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/marvell.c", i32 2937, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/marvell.c", i32 2958, i32 11}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/marvell.c", i32 2979, i32 11}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/marvell.c", i32 2997, i32 11}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/marvell.c", i32 3019, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/marvell.c", i32 3040, i32 11}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/marvell.c", i32 3060, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/marvell.c", i32 3078, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/marvell.c", i32 3098, i32 11}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/marvell.c", i32 3117, i32 11}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/marvell.c", i32 3146, i32 11}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/marvell.c", i32 3172, i32 11}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/marvell.c", i32 3198, i32 11}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/marvell.c", i32 3217, i32 11}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/marvell.c", i32 3243, i32 11}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/marvell.c", i32 3269, i32 11}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/marvell.c", i32 3295, i32 11}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/marvell.c", i32 3317, i32 11}
!50 = !{ptr @marvell_drivers, !51, !"marvell_drivers", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/marvell.c", i32 2895, i32 26}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/marvell.c", i32 782, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @marvell_config_led._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @marvell_config_led._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/phy/marvell.c", i32 493, i32 5}
!62 = !{ptr @marvell_hwmon_chip_info, !63, !"marvell_hwmon_chip_info", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/marvell.c", i32 2703, i32 37}
!64 = !{ptr @marvell_hwmon_hwmon_ops, !65, !"marvell_hwmon_hwmon_ops", i1 false, i1 false}
!65 = !{!"../drivers/net/phy/marvell.c", i32 2697, i32 31}
!66 = !{ptr @marvell_hwmon_info, !67, !"marvell_hwmon_info", i1 false, i1 false}
!67 = !{!"../drivers/net/phy/marvell.c", i32 2691, i32 41}
!68 = !{ptr @marvell_hwmon_chip, !69, !"marvell_hwmon_chip", i1 false, i1 false}
!69 = !{!"../drivers/net/phy/marvell.c", i32 2672, i32 40}
!70 = !{ptr @marvell_hwmon_chip_config, !71, !"marvell_hwmon_chip_config", i1 false, i1 false}
!71 = !{!"../drivers/net/phy/marvell.c", i32 2667, i32 12}
!72 = !{ptr @marvell_hwmon_temp, !73, !"marvell_hwmon_temp", i1 false, i1 false}
!73 = !{!"../drivers/net/phy/marvell.c", i32 2686, i32 40}
!74 = !{ptr @marvell_hwmon_temp_config, !75, !"marvell_hwmon_temp_config", i1 false, i1 false}
!75 = !{!"../drivers/net/phy/marvell.c", i32 2681, i32 12}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/phy/marvell.c", i32 295, i32 4}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/phy/marvell.c", i32 296, i32 4}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/phy/marvell.c", i32 297, i32 4}
!82 = !{ptr @marvell_hw_stats, !83, !"marvell_hw_stats", i1 false, i1 false}
!83 = !{!"../drivers/net/phy/marvell.c", i32 294, i32 31}
!84 = !{ptr @m88e1121_hwmon_ops, !85, !"m88e1121_hwmon_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/phy/marvell.c", i32 2753, i32 39}
!86 = !{ptr @m88e1510_hwmon_ops, !87, !"m88e1510_hwmon_ops", i1 false, i1 false}
!87 = !{!"../drivers/net/phy/marvell.c", i32 2757, i32 39}
!88 = !{ptr @m88e1510_sfp_ops, !89, !"m88e1510_sfp_ops", i1 false, i1 false}
!89 = !{!"../drivers/net/phy/marvell.c", i32 2877, i32 38}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/phy/marvell.c", i32 2817, i32 2}
!92 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @m88e1510_sfp_insert._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @m88e1510_sfp_insert._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/phy/marvell.c", i32 2833, i32 3}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @m88e1510_sfp_insert._entry.32, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @m88e1510_sfp_insert._entry_ptr.35, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/phy.h", i32 211, i32 10}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/phy.h", i32 213, i32 10}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/phy.h", i32 215, i32 10}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/phy.h", i32 217, i32 10}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/phy.h", i32 219, i32 10}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/phy.h", i32 221, i32 10}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/phy.h", i32 223, i32 10}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/phy.h", i32 225, i32 10}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/phy.h", i32 227, i32 10}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/phy.h", i32 229, i32 10}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/phy.h", i32 231, i32 10}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/phy.h", i32 233, i32 10}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/phy.h", i32 235, i32 10}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/phy.h", i32 237, i32 10}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/phy.h", i32 239, i32 10}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/phy.h", i32 241, i32 10}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/phy.h", i32 243, i32 10}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/phy.h", i32 245, i32 10}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/phy.h", i32 247, i32 10}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/phy.h", i32 249, i32 10}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/phy.h", i32 251, i32 10}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/phy.h", i32 253, i32 10}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/phy.h", i32 255, i32 10}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/phy.h", i32 257, i32 10}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/phy.h", i32 259, i32 10}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/phy.h", i32 261, i32 10}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/phy.h", i32 263, i32 10}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/phy.h", i32 265, i32 10}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/linux/phy.h", i32 267, i32 10}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/phy.h", i32 269, i32 10}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/phy.h", i32 271, i32 10}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/phy/marvell.c", i32 2004, i32 2}
!165 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @marvell_vct5_wait_complete._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @marvell_vct5_wait_complete._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/phy/marvell.c", i32 1421, i32 3}
!170 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @m88e1540_set_fld._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @m88e1540_set_fld._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @m88e6390_hwmon_ops, !174, !"m88e6390_hwmon_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/phy/marvell.c", i32 2764, i32 39}
!175 = !{ptr @m88e6393_hwmon_ops, !176, !"m88e6393_hwmon_ops", i1 false, i1 false}
!176 = !{!"../drivers/net/phy/marvell.c", i32 2768, i32 39}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i8 0, i8 2}
!187 = !{!"auto-init"}
