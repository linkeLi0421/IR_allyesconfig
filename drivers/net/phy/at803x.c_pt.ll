; ModuleID = '/llk/IR_all_yes/drivers/net/phy/at803x.c_pt.bc'
source_filename = "../drivers/net/phy/at803x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.at803x_priv = type { i32, i16, i16, i8, i8, ptr, ptr, ptr, [3 x i64] }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__UNIQUE_ID_description379 = internal constant [66 x i8] c"at803x.description=Qualcomm Atheros AR803x and QCA808X PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author380 = internal constant [28 x i8] c"at803x.author=Matus Ujhelyi\00", section ".modinfo", align 1
@__UNIQUE_ID_file381 = internal constant [35 x i8] c"at803x.file=drivers/net/phy/at803x\00", section ".modinfo", align 1
@__UNIQUE_ID_license382 = internal constant [19 x i8] c"at803x.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_at803x__474_2054_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@at803x_driver = internal global { [10 x %struct.phy_driver], [584 x i8] } { [10 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099634, ptr @.str, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr @at803x_config_init, ptr @at803x_probe, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr @at803x_get_tunable, ptr @at803x_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099638, ptr @.str.1, i32 -17, ptr null, i32 0, ptr null, ptr null, ptr @at803x_config_init, ptr @at803x_probe, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr null, ptr null, ptr null, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr @at803x_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099636, ptr @.str.2, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr @at803x_config_init, ptr @at803x_probe, ptr @at803x_get_features, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr null, ptr null, ptr null, ptr @at803x_read_page, ptr @at803x_write_page, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr @at803x_get_tunable, ptr @at803x_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099555, ptr @.str.3, i32 -1, ptr null, i32 4, ptr null, ptr null, ptr @at803x_config_init, ptr @at803x_probe, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr null, ptr null, ptr null, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr @at803x_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099585, ptr @.str.4, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr null, ptr null, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099586, ptr @.str.5, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr null, ptr null, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099574, ptr @.str.6, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @qca83xx_config_init, ptr @at803x_probe, ptr null, ptr @qca83xx_suspend, ptr @qca83xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca83xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_get_sset_count, ptr @at803x_get_strings, ptr @at803x_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099571, ptr @.str.7, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @qca83xx_config_init, ptr @at803x_probe, ptr null, ptr @qca83xx_suspend, ptr @qca83xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca83xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_get_sset_count, ptr @at803x_get_strings, ptr @at803x_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099572, ptr @.str.8, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @qca83xx_config_init, ptr @at803x_probe, ptr null, ptr @qca83xx_suspend, ptr @qca83xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca83xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_get_sset_count, ptr @at803x_get_strings, ptr @at803x_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099777, ptr @.str.9, i32 -1, ptr null, i32 4, ptr null, ptr @qca808x_soft_reset, ptr @qca808x_config_init, ptr null, ptr @at803x_get_features, ptr @genphy_suspend, ptr @genphy_resume, ptr @at803x_config_aneg, ptr null, ptr @qca808x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr null, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca808x_cable_test_start, ptr null, ptr @qca808x_cable_test_get_status, ptr null, ptr null, ptr null, ptr @at803x_get_tunable, ptr @at803x_set_tunable, ptr null, ptr null, ptr null }], [584 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Qualcomm Atheros AR8035\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Qualcomm Atheros AR8030\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Qualcomm Atheros AR8031/AR8033\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Qualcomm Atheros AR8032\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Qualcomm Atheros AR9331 built-in PHY\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Qualcomm Atheros QCA9561 built-in PHY\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Qualcomm Atheros 8337 internal PHY\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Qualcomm Atheros 8327-A internal PHY\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Qualcomm Atheros 8327-B internal PHY\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Qualcomm QCA8081\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca,disable-smarteee\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qca,smarteee-tw-us-1g\00", [42 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 669, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid qca,smarteee-tw-us-1g\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at803x_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/phy/at803x.c\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry_ptr = internal global ptr @at803x_parse_dt._entry, section ".printk_index", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qca,smarteee-tw-us-100m\00", [40 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.14, i32 677, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid qca,smarteee-tw-us-100m\0A\00", [63 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry_ptr.20 = internal global ptr @at803x_parse_dt._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qca,clk-out-frequency\00", [42 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.14, i32 699, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid qca,clk-out-frequency\0A\00", [33 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry_ptr.24 = internal global ptr @at803x_parse_dt._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca,clk-out-strength\00", [43 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.14, i32 738, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid qca,clk-out-strength\0A\00", [34 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry_ptr.28 = internal global ptr @at803x_parse_dt._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca,keep-pll-enabled\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.14, i32 757, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get VDDIO regulator\0A\00", [33 x i8] zeroinitializer }, align 32
@at803x_parse_dt._entry_ptr.33 = internal global ptr @at803x_parse_dt._entry.31, section ".printk_index", align 4
@vddio_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.39, i8 0, ptr null, ptr null, i32 0, i8 0, i32 2, i32 0, ptr @vddio_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vddio_voltage_table, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@at8031_register_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.14, i32 640, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register VDDIO regulator\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"at8031_register_regulators\00", [37 x i8] zeroinitializer }, align 32
@at8031_register_regulators._entry_ptr = internal global ptr @at8031_register_regulators._entry, section ".printk_index", align 4
@vddh_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.40, ptr null, ptr @.str.41, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @vddh_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 2500000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@at8031_register_regulators._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.14, i32 646, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register VDDH regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@at8031_register_regulators._entry_ptr.38 = internal global ptr @at8031_register_regulators._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vddio-regulator\00", [16 x i8] zeroinitializer }, align 32
@vddio_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @at803x_rgmii_reg_set_voltage_sel, ptr null, ptr @at803x_rgmii_reg_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vddio_voltage_table = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1500000, i32 1800000], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddh\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vddh-regulator\00", [17 x i8] zeroinitializer }, align 32
@vddh_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@at803x_cable_test_one_pair.ethtool_pair = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@at803x_cdt_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.14, i32 1373, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"at803x_cdt_wait_for_completion\00", [33 x i8] zeroinitializer }, align 32
@at803x_cdt_wait_for_completion._entry_ptr = internal global ptr @at803x_cdt_wait_for_completion._entry, section ".printk_index", align 4
@at803x_link_change_notify.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.14, ptr @.str.46, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"at803x\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at803x_link_change_notify\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): phy was reset\0A\00", [43 x i8] zeroinitializer }, align 32
@qca83xx_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.47, ptr @.str.14, i32 1547, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qca83xx_resume\00", [17 x i8] zeroinitializer }, align 32
@qca83xx_resume._entry_ptr = internal global ptr @qca83xx_resume._entry, section ".printk_index", align 4
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy_idle_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_receive_errors\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"eee_wake_errors\00", [16 x i8] zeroinitializer }, align 32
@switch.table.at803x_config_aneg = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 32, i16 96], [26 x i8] zeroinitializer }, align 32
@switch.table.at803x_read_specific_status = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 10, i32 100, i32 1000, i32 10, i32 2500], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 25000000, i64 50000000, i64 62500000, i64 125000000]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 5099634, i64 5099638]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 5099555, i64 5099585, i64 5099586]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 5099555, i64 5099585, i64 5099586]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 255]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"at803x_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1873, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1877, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1899, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1915, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1939, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1957, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1972, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1988, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2004, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2020, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2035, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 664, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 667, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 669, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 675, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 677, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 683, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 699, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 724, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 738, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 747, i32 35 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 755, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 757, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [11 x i8] c"vddio_desc\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 606, i32 36 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 640, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [10 x i8] c"vddh_desc\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 619, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 646, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 608, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c"vddio_regulator_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 595, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"vddio_voltage_table\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 601, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 620, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 621, i32 14 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"vddh_regulator_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 616, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant [13 x i8] c"ethtool_pair\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1380, i32 19 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1371, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1047, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1546, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 275, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 276, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [28 x i8] c"../drivers/net/phy/at803x.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 277, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [32 x i8] c"switch.table.at803x_config_aneg\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [41 x i8] c"switch.table.at803x_read_specific_status\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author380, ptr @__UNIQUE_ID_description379, ptr @__UNIQUE_ID_file381, ptr @__UNIQUE_ID_license382, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_at803x__474_2054_phy_module_init6, ptr @at8031_register_regulators._entry, ptr @at8031_register_regulators._entry.36, ptr @at8031_register_regulators._entry_ptr, ptr @at8031_register_regulators._entry_ptr.38, ptr @at803x_cdt_wait_for_completion._entry, ptr @at803x_cdt_wait_for_completion._entry_ptr, ptr @at803x_parse_dt._entry, ptr @at803x_parse_dt._entry.18, ptr @at803x_parse_dt._entry.22, ptr @at803x_parse_dt._entry.26, ptr @at803x_parse_dt._entry.31, ptr @at803x_parse_dt._entry_ptr, ptr @at803x_parse_dt._entry_ptr.20, ptr @at803x_parse_dt._entry_ptr.24, ptr @at803x_parse_dt._entry_ptr.28, ptr @at803x_parse_dt._entry_ptr.33, ptr @phy_module_exit, ptr @qca83xx_resume._entry, ptr @qca83xx_resume._entry_ptr, ptr @at803x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @vddio_desc, ptr @.str.34, ptr @.str.35, ptr @vddh_desc, ptr @.str.37, ptr @.str.39, ptr @vddio_regulator_ops, ptr @vddio_voltage_table, ptr @.str.40, ptr @.str.41, ptr @vddh_regulator_ops, ptr @at803x_cable_test_one_pair.ethtool_pair, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.at803x_config_aneg, ptr @switch.table.at803x_read_specific_status], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_driver to i32), i32 2360, i32 2944, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_parse_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddio_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at8031_register_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddh_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at8031_register_regulators._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddio_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddio_voltage_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddh_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_cable_test_one_pair.ethtool_pair to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at803x_cdt_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca83xx_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.at803x_config_aneg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.at803x_read_specific_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @at803x_driver, i32 noundef 10, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_drivers_unregister(ptr noundef nonnull @at803x_driver, i32 noundef 10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %switch = icmp eq i32 %2, 10
  %bus.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i.i.i, align 8
  %addr.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i.i, label %if.then.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i:                   ; preds = %if.then
  %7 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i6.i.i.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i6.i.i.i, 0
  br i1 %cmp.i.i, label %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, label %if.end.i.i

at803x_debug_reg_read.exit.i.i.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %at803x_debug_reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = trunc i32 %call.i6.i.i.i to i16
  %conv7.i.i = or i16 %11, -32768
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i.i, label %if.else.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i64

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i64:                 ; preds = %if.else
  %12 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i6.i.i.i62 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i62)
  %cmp.i.i63 = icmp slt i32 %call.i6.i.i.i62, 0
  br i1 %cmp.i.i63, label %at803x_debug_reg_read.exit.i.i64.cleanup_crit_edge, label %if.end.i.i66

at803x_debug_reg_read.exit.i.i64.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i66:                                     ; preds = %at803x_debug_reg_read.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  %16 = trunc i32 %call.i6.i.i.i62 to i16
  %17 = and i16 %16, 32767
  br label %if.end

if.end:                                           ; preds = %if.end.i.i66, %if.end.i.i
  %.sink114 = phi i16 [ %17, %if.end.i.i66 ], [ %conv7.i.i, %if.end.i.i ]
  %18 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i65 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 30, i16 noundef zeroext %.sink114) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i65)
  %cmp4 = icmp slt i32 %call.i.i.i65, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %22 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interface, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.else14 [
    i32 10, label %if.end6.if.then12_crit_edge
    i32 12, label %if.end6.if.then12_crit_edge117
  ]

if.end6.if.then12_crit_edge117:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %if.end6.if.then12_crit_edge, %if.end6.if.then12_crit_edge117
  %bus.i.i.i.i68 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %25 = ptrtoint ptr %bus.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i.i.i.i68, align 8
  %addr.i.i.i.i69 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %27 = ptrtoint ptr %addr.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i.i.i.i69, align 8
  %call.i.i.i.i70 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef 29, i16 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i70)
  %cmp.i.i.i71 = icmp slt i32 %call.i.i.i.i70, 0
  br i1 %cmp.i.i.i71, label %if.then12.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i74

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i74:                 ; preds = %if.then12
  %29 = ptrtoint ptr %bus.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i.i.i.i68, align 8
  %31 = ptrtoint ptr %addr.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i.i.i.i69, align 8
  %call.i6.i.i.i72 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %32, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i72)
  %cmp.i.i73 = icmp slt i32 %call.i6.i.i.i72, 0
  br i1 %cmp.i.i73, label %at803x_debug_reg_read.exit.i.i74.cleanup_crit_edge, label %if.end.i.i77

at803x_debug_reg_read.exit.i.i74.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i77:                                     ; preds = %at803x_debug_reg_read.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  %33 = trunc i32 %call.i6.i.i.i72 to i16
  %conv7.i.i75 = or i16 %33, 256
  br label %if.end16

if.else14:                                        ; preds = %if.end6
  %bus.i.i.i.i79 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %34 = ptrtoint ptr %bus.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i.i.i79, align 8
  %addr.i.i.i.i80 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %36 = ptrtoint ptr %addr.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i.i.i.i80, align 8
  %call.i.i.i.i81 = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 29, i16 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i81)
  %cmp.i.i.i82 = icmp slt i32 %call.i.i.i.i81, 0
  br i1 %cmp.i.i.i82, label %if.else14.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i85

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i85:                 ; preds = %if.else14
  %38 = ptrtoint ptr %bus.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i.i.i.i79, align 8
  %40 = ptrtoint ptr %addr.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i.i.i.i80, align 8
  %call.i6.i.i.i83 = tail call i32 @mdiobus_read(ptr noundef %39, i32 noundef %41, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i83)
  %cmp.i.i84 = icmp slt i32 %call.i6.i.i.i83, 0
  br i1 %cmp.i.i84, label %at803x_debug_reg_read.exit.i.i85.cleanup_crit_edge, label %if.end.i.i87

at803x_debug_reg_read.exit.i.i85.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i87:                                     ; preds = %at803x_debug_reg_read.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  %42 = trunc i32 %call.i6.i.i.i83 to i16
  %43 = and i16 %42, -257
  br label %if.end16

if.end16:                                         ; preds = %if.end.i.i87, %if.end.i.i77
  %bus.i.i.i.i79.sink = phi ptr [ %bus.i.i.i.i79, %if.end.i.i87 ], [ %bus.i.i.i.i68, %if.end.i.i77 ]
  %addr.i.i.i.i80.sink = phi ptr [ %addr.i.i.i.i80, %if.end.i.i87 ], [ %addr.i.i.i.i69, %if.end.i.i77 ]
  %.sink116 = phi i16 [ %43, %if.end.i.i87 ], [ %conv7.i.i75, %if.end.i.i77 ]
  %44 = ptrtoint ptr %bus.i.i.i.i79.sink to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i.i.i79.sink, align 8
  %46 = ptrtoint ptr %addr.i.i.i.i80.sink to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i.i.i80.sink, align 8
  %call.i.i.i86 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 30, i16 noundef zeroext %.sink116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i86)
  %cmp17 = icmp slt i32 %call.i.i.i86, 0
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %48 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv1.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %and.i = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.cleanup.sink.split.i_crit_edge

if.end19.cleanup.sink.split.i_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end19
  %smarteee_lpi_tw_1g.i = getelementptr inbounds %struct.at803x_priv, ptr %49, i32 0, i32 3
  %52 = ptrtoint ptr %smarteee_lpi_tw_1g.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %smarteee_lpi_tw_1g.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool2.not.i = icmp eq i8 %53, 0
  %smarteee_lpi_tw_100m.i = getelementptr inbounds %struct.at803x_priv, ptr %49, i32 0, i32 4
  %54 = ptrtoint ptr %smarteee_lpi_tw_100m.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %smarteee_lpi_tw_100m.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool11.not.i = icmp eq i8 %55, 0
  %tobool22.not.i = select i1 %tobool11.not.i, i1 %tobool2.not.i, i1 false
  br i1 %tobool22.not.i, label %if.end.i.if.end23_crit_edge, label %if.end24.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end24.i:                                       ; preds = %if.end.i
  %mask.0.i = select i1 %tobool2.not.i, i16 0, i16 -256
  %56 = or i16 %mask.0.i, 255
  %mask.1.i = select i1 %tobool11.not.i, i16 %mask.0.i, i16 %56
  %conv6.i = zext i8 %53 to i16
  %shl.i = shl nuw i16 %conv6.i, 8
  %val.0.i = select i1 %tobool2.not.i, i16 0, i16 %shl.i
  %conv17.i = zext i8 %55 to i16
  %val.1.i = or i16 %val.0.i, %conv17.i
  %call25.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32859, i16 noundef zeroext %mask.1.i, i16 noundef zeroext %val.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.cleanup.sink.split.i_crit_edge, label %if.end24.i.at803x_smarteee_config.exit_crit_edge

if.end24.i.at803x_smarteee_config.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_smarteee_config.exit

if.end24.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end24.i.cleanup.sink.split.i_crit_edge, %if.end19.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 0, %if.end19.cleanup.sink.split.i_crit_edge ], [ 256, %if.end24.i.cleanup.sink.split.i_crit_edge ]
  %call29.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32861, i16 noundef zeroext 256, i16 noundef zeroext %.sink.i) #7
  br label %at803x_smarteee_config.exit

at803x_smarteee_config.exit:                      ; preds = %cleanup.sink.split.i, %if.end24.i.at803x_smarteee_config.exit_crit_edge
  %retval.0.i = phi i32 [ %call25.i, %if.end24.i.at803x_smarteee_config.exit_crit_edge ], [ %call29.i, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp21 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp21, label %at803x_smarteee_config.exit.cleanup_crit_edge, label %at803x_smarteee_config.exit.if.end23_crit_edge

at803x_smarteee_config.exit.if.end23_crit_edge:   ; preds = %at803x_smarteee_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

at803x_smarteee_config.exit.cleanup_crit_edge:    ; preds = %at803x_smarteee_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %at803x_smarteee_config.exit.if.end23_crit_edge, %if.end.i.if.end23_crit_edge
  %57 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv1.i, align 8
  %clk_25m_mask.i = getelementptr inbounds %struct.at803x_priv, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %clk_25m_mask.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %clk_25m_mask.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i90 = icmp eq i16 %60, 0
  br i1 %tobool.not.i90, label %if.end23.if.end27_crit_edge, label %at803x_clk_out_config.exit

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

at803x_clk_out_config.exit:                       ; preds = %if.end23
  %clk_25m_reg.i = getelementptr inbounds %struct.at803x_priv, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %clk_25m_reg.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %clk_25m_reg.i, align 4
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 32790, i16 noundef zeroext %60, i16 noundef zeroext %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %at803x_clk_out_config.exit.cleanup_crit_edge, label %at803x_clk_out_config.exit.if.end27_crit_edge

at803x_clk_out_config.exit.if.end27_crit_edge:    ; preds = %at803x_clk_out_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

at803x_clk_out_config.exit.cleanup_crit_edge:     ; preds = %at803x_clk_out_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %at803x_clk_out_config.exit.if.end27_crit_edge, %if.end23.if.end27_crit_edge
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %63 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099636, i32 %66)
  %cmp28 = icmp eq i32 %66, 5099636
  br i1 %cmp28, label %if.then29, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %67 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv1.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %and.i94 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  %bus.i.i.i5.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %71 = ptrtoint ptr %bus.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i.i.i5.i, align 8
  %addr.i.i.i6.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %73 = ptrtoint ptr %addr.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr.i.i.i6.i, align 8
  %call.i.i.i7.i = tail call i32 @mdiobus_write(ptr noundef %72, i32 noundef %74, i32 noundef 29, i16 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i7.i)
  %cmp.i.i8.i = icmp slt i32 %call.i.i.i7.i, 0
  br i1 %tobool.not.i95, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  br i1 %cmp.i.i8.i, label %if.then.i.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i98

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i98:                 ; preds = %if.then.i
  %75 = ptrtoint ptr %bus.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i.i.i5.i, align 8
  %77 = ptrtoint ptr %addr.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr.i.i.i6.i, align 8
  %call.i6.i.i.i96 = tail call i32 @mdiobus_read(ptr noundef %76, i32 noundef %78, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i96)
  %cmp.i.i97 = icmp slt i32 %call.i6.i.i.i96, 0
  br i1 %cmp.i.i97, label %at803x_debug_reg_read.exit.i.i98.cleanup_crit_edge, label %if.end.i.i100

at803x_debug_reg_read.exit.i.i98.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i100:                                    ; preds = %at803x_debug_reg_read.exit.i.i98
  call void @__sanitizer_cov_trace_pc() #9
  %79 = trunc i32 %call.i6.i.i.i96 to i16
  %conv7.i.i99 = or i16 %79, 4
  br label %at8031_pll_config.exit

if.else.i:                                        ; preds = %if.then29
  br i1 %cmp.i.i8.i, label %if.else.i.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i11.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i11.i:                 ; preds = %if.else.i
  %80 = ptrtoint ptr %bus.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i.i.i5.i, align 8
  %82 = ptrtoint ptr %addr.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i.i.i6.i, align 8
  %call.i6.i.i9.i = tail call i32 @mdiobus_read(ptr noundef %81, i32 noundef %83, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i9.i)
  %cmp.i10.i = icmp slt i32 %call.i6.i.i9.i, 0
  br i1 %cmp.i10.i, label %at803x_debug_reg_read.exit.i11.i.cleanup_crit_edge, label %if.end.i13.i

at803x_debug_reg_read.exit.i11.i.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i13.i:                                     ; preds = %at803x_debug_reg_read.exit.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = trunc i32 %call.i6.i.i9.i to i16
  %85 = and i16 %84, -5
  br label %at8031_pll_config.exit

at8031_pll_config.exit:                           ; preds = %if.end.i13.i, %if.end.i.i100
  %.sink17.i = phi i16 [ %85, %if.end.i13.i ], [ %conv7.i.i99, %if.end.i.i100 ]
  %86 = ptrtoint ptr %bus.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i.i.i5.i, align 8
  %88 = ptrtoint ptr %addr.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr.i.i.i6.i, align 8
  %call.i.i12.i = tail call i32 @mdiobus_write(ptr noundef %87, i32 noundef %89, i32 noundef 30, i16 noundef zeroext %.sink17.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12.i)
  %cmp31 = icmp slt i32 %call.i.i12.i, 0
  br i1 %cmp31, label %at8031_pll_config.exit.cleanup_crit_edge, label %at8031_pll_config.exit.if.end34_crit_edge

at8031_pll_config.exit.if.end34_crit_edge:        ; preds = %at8031_pll_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

at8031_pll_config.exit.cleanup_crit_edge:         ; preds = %at8031_pll_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %at8031_pll_config.exit.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %call35 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 4, i16 noundef zeroext 8192, i16 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %at8031_pll_config.exit.cleanup_crit_edge, %at803x_debug_reg_read.exit.i11.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.i98.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %at803x_clk_out_config.exit.cleanup_crit_edge, %at803x_smarteee_config.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.i85.cleanup_crit_edge, %if.else14.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.i74.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.i64.cleanup_crit_edge, %if.else.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ %call.i.i.i65, %if.end.cleanup_crit_edge ], [ %call.i.i.i86, %if.end16.cleanup_crit_edge ], [ %retval.0.i, %at803x_smarteee_config.exit.cleanup_crit_edge ], [ %call.i, %at803x_clk_out_config.exit.cleanup_crit_edge ], [ %call.i.i12.i, %at8031_pll_config.exit.cleanup_crit_edge ], [ %call.i.i.i.i, %if.else.cleanup_crit_edge ], [ %call.i6.i.i.i62, %at803x_debug_reg_read.exit.i.i64.cleanup_crit_edge ], [ %call.i.i.i.i, %if.then.cleanup_crit_edge ], [ %call.i6.i.i.i, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge ], [ %call.i.i.i.i81, %if.else14.cleanup_crit_edge ], [ %call.i6.i.i.i83, %at803x_debug_reg_read.exit.i.i85.cleanup_crit_edge ], [ %call.i.i.i.i70, %if.then12.cleanup_crit_edge ], [ %call.i6.i.i.i72, %at803x_debug_reg_read.exit.i.i74.cleanup_crit_edge ], [ %call.i.i.i7.i, %if.else.i.cleanup_crit_edge ], [ %call.i6.i.i9.i, %at803x_debug_reg_read.exit.i11.i.cleanup_crit_edge ], [ %call.i.i.i7.i, %if.then.i.cleanup_crit_edge ], [ %call.i6.i.i.i96, %at803x_debug_reg_read.exit.i.i98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_probe(ptr noundef %phydev) #2 align 64 {
entry:
  %config.i.i = alloca %struct.regulator_config, align 4
  %freq.i = alloca i32, align 4
  %strength.i = alloca i32, align 4
  %tw.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv2 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv2, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #7
  %3 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %freq.i, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strength.i) #7
  %4 = ptrtoint ptr %strength.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %strength.i, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tw.i) #7
  %5 = ptrtoint ptr %tw.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tw.i, align 4, !annotation !130
  %call.i.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 8
  %or.i = or i32 %7, 2
  store i32 %or.i, ptr %call.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull %tw.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %tw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tw.i, align 4
  %10 = add i32 %9, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %10)
  %11 = icmp ult i32 %10, -255
  br i1 %11, label %if.then3.i.at803x_parse_dt.exit.thread_crit_edge, label %if.end8.i

if.then3.i.at803x_parse_dt.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_parse_dt.exit.thread

if.end8.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = trunc i32 %9 to i8
  %smarteee_lpi_tw_1g.i = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %smarteee_lpi_tw_1g.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %smarteee_lpi_tw_1g.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end8.i, %if.end.i.if.end9.i_crit_edge
  %call.i.i184.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef nonnull %tw.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i184.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i184.i, -1
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end9.i.if.end25.i_crit_edge

if.end9.i.if.end25.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then12.i:                                      ; preds = %if.end9.i
  %13 = ptrtoint ptr %tw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tw.i, align 4
  %15 = add i32 %14, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %15)
  %16 = icmp ult i32 %15, -255
  br i1 %16, label %if.then12.i.at803x_parse_dt.exit.thread_crit_edge, label %if.end23.i

if.then12.i.at803x_parse_dt.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_parse_dt.exit.thread

if.end23.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv24.i = trunc i32 %14 to i8
  %smarteee_lpi_tw_100m.i = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %smarteee_lpi_tw_100m.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv24.i, ptr %smarteee_lpi_tw_100m.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end23.i, %if.end9.i.if.end25.i_crit_edge
  %call.i.i185.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef nonnull %freq.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i185.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i185.i, -1
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end25.i.if.end79.i_crit_edge

if.end25.i.if.end79.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then28.i:                                      ; preds = %if.end25.i
  %18 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %freq.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %19, label %if.then28.i.at803x_parse_dt.exit.thread_crit_edge [
    i32 25000000, label %if.then28.i.do.body43.i_crit_edge
    i32 50000000, label %sw.bb29.i
    i32 62500000, label %sw.bb30.i
    i32 125000000, label %sw.bb31.i
  ]

if.then28.i.do.body43.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43.i

if.then28.i.at803x_parse_dt.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_parse_dt.exit.thread

sw.bb29.i:                                        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43.i

sw.bb30.i:                                        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43.i

sw.bb31.i:                                        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43.i

do.body43.i:                                      ; preds = %sw.bb31.i, %sw.bb30.i, %sw.bb29.i, %if.then28.i.do.body43.i_crit_edge
  %sel.0.i = phi i16 [ 24, %sw.bb31.i ], [ 16, %sw.bb30.i ], [ 8, %sw.bb29.i ], [ 0, %if.then28.i.do.body43.i_crit_edge ]
  %clk_25m_reg.i = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %clk_25m_reg.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %clk_25m_reg.i, align 4
  %conv58.i = or i16 %22, %sel.0.i
  store i16 %conv58.i, ptr %clk_25m_reg.i, align 4
  %clk_25m_mask.i = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %clk_25m_mask.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %clk_25m_mask.i, align 2
  %25 = or i16 %24, 28
  store i16 %25, ptr %clk_25m_mask.i, align 2
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %26 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drv.i, align 8
  %phy_id.i = getelementptr inbounds %struct.phy_driver, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_id.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %29, label %do.body43.i.if.end79.i_crit_edge [
    i32 5099638, label %do.body43.i.if.then69.i_crit_edge
    i32 5099634, label %do.body43.i.if.then69.i_crit_edge55
  ]

do.body43.i.if.then69.i_crit_edge55:              ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69.i

do.body43.i.if.then69.i_crit_edge:                ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69.i

do.body43.i.if.end79.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then69.i:                                      ; preds = %do.body43.i.if.then69.i_crit_edge, %do.body43.i.if.then69.i_crit_edge55
  %31 = and i16 %conv58.i, 24
  %32 = ptrtoint ptr %clk_25m_reg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %clk_25m_reg.i, align 4
  %33 = ptrtoint ptr %clk_25m_mask.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 24, ptr %clk_25m_mask.i, align 2
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then69.i, %do.body43.i.if.end79.i_crit_edge, %if.end25.i.if.end79.i_crit_edge
  %call.i.i186.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef nonnull %strength.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i186.i)
  %tobool81.not.i = icmp sgt i32 %call.i.i186.i, -1
  br i1 %tobool81.not.i, label %if.then82.i, label %if.end79.i.if.end109.i_crit_edge

if.end79.i.if.end109.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then82.i:                                      ; preds = %if.end79.i
  %clk_25m_mask83.i = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %clk_25m_mask83.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %clk_25m_mask83.i, align 2
  %36 = or i16 %35, 384
  store i16 %36, ptr %clk_25m_mask83.i, align 2
  %37 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %strength.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %38, label %if.then82.i.at803x_parse_dt.exit.thread_crit_edge [
    i32 0, label %if.then82.i.if.end109.i_crit_edge
    i32 1, label %if.then82.i.if.end109.sink.split.i_crit_edge
    i32 2, label %sw.bb97.i
  ]

if.then82.i.if.end109.sink.split.i_crit_edge:     ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.sink.split.i

if.then82.i.if.end109.i_crit_edge:                ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then82.i.at803x_parse_dt.exit.thread_crit_edge: ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_parse_dt.exit.thread

sw.bb97.i:                                        ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.sink.split.i

if.end109.sink.split.i:                           ; preds = %sw.bb97.i, %if.then82.i.if.end109.sink.split.i_crit_edge
  %.sink193.i = phi i16 [ 2, %sw.bb97.i ], [ 1, %if.then82.i.if.end109.sink.split.i_crit_edge ]
  %clk_25m_reg98.i = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %clk_25m_reg98.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %clk_25m_reg98.i, align 4
  %42 = or i16 %41, %.sink193.i
  store i16 %42, ptr %clk_25m_reg98.i, align 4
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.end109.sink.split.i, %if.then82.i.if.end109.i_crit_edge, %if.end79.i.if.end109.i_crit_edge
  %drv110.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %43 = ptrtoint ptr %drv110.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %drv110.i, align 8
  %phy_id111.i = getelementptr inbounds %struct.phy_driver, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %phy_id111.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_id111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099636, i32 %46)
  %cmp112.i = icmp eq i32 %46, 5099636
  br i1 %cmp112.i, label %if.then114.i, label %if.end109.i.at803x_parse_dt.exit.thread52_crit_edge

if.end109.i.at803x_parse_dt.exit.thread52_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_parse_dt.exit.thread52

if.then114.i:                                     ; preds = %if.end109.i
  %call.i187.i = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef null) #7
  %tobool.i188.not.i = icmp eq ptr %call.i187.i, null
  br i1 %tobool.i188.not.i, label %if.then114.i.if.end119.i_crit_edge, label %if.then116.i

if.then114.i.if.end119.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i

if.then116.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call.i, align 8
  %or118.i = or i32 %48, 1
  store i32 %or118.i, ptr %call.i, align 8
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then116.i, %if.then114.i.if.end119.i_crit_edge
  %49 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i.i) #7
  %51 = getelementptr inbounds i8, ptr %config.i.i, i32 4
  %52 = call ptr @memset(ptr %51, i32 0, i32 20)
  %53 = ptrtoint ptr %config.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %phydev, ptr %config.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.regulator_config, ptr %config.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %phydev, ptr %driver_data.i.i, align 4
  %call.i189.i = call ptr @devm_regulator_register(ptr noundef %phydev, ptr noundef nonnull @vddio_desc, ptr noundef nonnull %config.i.i) #7
  %vddio_rdev.i.i = getelementptr inbounds %struct.at803x_priv, ptr %50, i32 0, i32 5
  %55 = ptrtoint ptr %vddio_rdev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i189.i, ptr %vddio_rdev.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i189.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end119.i.at8031_register_regulators.exit.i_crit_edge, label %if.end.i.i

if.end119.i.at8031_register_regulators.exit.i_crit_edge: ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at8031_register_regulators.exit.i

if.end.i.i:                                       ; preds = %if.end119.i
  %call10.i.i = call ptr @devm_regulator_register(ptr noundef %phydev, ptr noundef nonnull @vddh_desc, ptr noundef nonnull %config.i.i) #7
  %vddh_rdev.i.i = getelementptr inbounds %struct.at803x_priv, ptr %50, i32 0, i32 6
  %56 = ptrtoint ptr %vddh_rdev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call10.i.i, ptr %vddh_rdev.i.i, align 8
  %cmp.i35.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i.i, label %if.end.i.i.at8031_register_regulators.exit.i_crit_edge, label %at8031_register_regulators.exit.thread.i

if.end.i.i.at8031_register_regulators.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at8031_register_regulators.exit.i

at8031_register_regulators.exit.thread.i:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i.i) #7
  br label %if.end124.i

at8031_register_regulators.exit.i:                ; preds = %if.end.i.i.at8031_register_regulators.exit.i_crit_edge, %if.end119.i.at8031_register_regulators.exit.i_crit_edge
  %.str.34.sink.i = phi ptr [ @.str.34, %if.end119.i.at8031_register_regulators.exit.i_crit_edge ], [ @.str.37, %if.end.i.i.at8031_register_regulators.exit.i_crit_edge ]
  %retval.0.i.in.in.i = phi ptr [ %vddio_rdev.i.i, %if.end119.i.at8031_register_regulators.exit.i_crit_edge ], [ %vddh_rdev.i.i, %if.end.i.i.at8031_register_regulators.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull %.str.34.sink.i) #10
  %57 = ptrtoint ptr %retval.0.i.in.in.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %retval.0.i.in.i = load ptr, ptr %retval.0.i.in.in.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i.i) #7
  %cmp121.i = icmp slt ptr %retval.0.i.in.i, null
  br i1 %cmp121.i, label %at8031_register_regulators.exit.i.at803x_parse_dt.exit_crit_edge, label %at8031_register_regulators.exit.i.if.end124.i_crit_edge

at8031_register_regulators.exit.i.if.end124.i_crit_edge: ; preds = %at8031_register_regulators.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

at8031_register_regulators.exit.i.at803x_parse_dt.exit_crit_edge: ; preds = %at8031_register_regulators.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_parse_dt.exit

if.end124.i:                                      ; preds = %at8031_register_regulators.exit.i.if.end124.i_crit_edge, %at8031_register_regulators.exit.thread.i
  %call127.i = call ptr @devm_regulator_get_optional(ptr noundef %phydev, ptr noundef nonnull @.str.30) #7
  %vddio.i = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %vddio.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call127.i, ptr %vddio.i, align 4
  %cmp.i.i = icmp ugt ptr %call127.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end133.i, label %if.end124.i.at803x_parse_dt.exit.thread52_crit_edge

if.end124.i.at803x_parse_dt.exit.thread52_crit_edge: ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_parse_dt.exit.thread52

do.end133.i:                                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.32) #10
  %59 = ptrtoint ptr %vddio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vddio.i, align 4
  br label %at803x_parse_dt.exit

at803x_parse_dt.exit.thread:                      ; preds = %if.then82.i.at803x_parse_dt.exit.thread_crit_edge, %if.then28.i.at803x_parse_dt.exit.thread_crit_edge, %if.then12.i.at803x_parse_dt.exit.thread_crit_edge, %if.then3.i.at803x_parse_dt.exit.thread_crit_edge
  %.str.27.sink = phi ptr [ @.str.12, %if.then3.i.at803x_parse_dt.exit.thread_crit_edge ], [ @.str.19, %if.then12.i.at803x_parse_dt.exit.thread_crit_edge ], [ @.str.23, %if.then28.i.at803x_parse_dt.exit.thread_crit_edge ], [ @.str.27, %if.then82.i.at803x_parse_dt.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull %.str.27.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tw.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strength.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #7
  br label %cleanup

at803x_parse_dt.exit.thread52:                    ; preds = %if.end124.i.at803x_parse_dt.exit.thread52_crit_edge, %if.end109.i.at803x_parse_dt.exit.thread52_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tw.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strength.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #7
  br label %if.end6

at803x_parse_dt.exit:                             ; preds = %do.end133.i, %at8031_register_regulators.exit.i.at803x_parse_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %60, %do.end133.i ], [ %retval.0.i.in.i, %at8031_register_regulators.exit.i.at803x_parse_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tw.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strength.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #7
  %tobool4.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool4.not, label %at803x_parse_dt.exit.if.end6_crit_edge, label %at803x_parse_dt.exit.cleanup_crit_edge

at803x_parse_dt.exit.cleanup_crit_edge:           ; preds = %at803x_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_parse_dt.exit.if.end6_crit_edge:           ; preds = %at803x_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %at803x_parse_dt.exit.if.end6_crit_edge, %at803x_parse_dt.exit.thread52
  %vddio = getelementptr inbounds %struct.at803x_priv, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %vddio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vddio, align 4
  %tobool7.not = icmp eq ptr %62, null
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %if.then8

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %if.end6
  %call10 = call i32 @regulator_enable(ptr noundef nonnull %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %63 = ptrtoint ptr %drv110.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drv110.i, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099636, i32 %66)
  %cmp14 = icmp eq i32 %66, 5099636
  br i1 %cmp14, label %if.then15, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %67 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %68, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 0) #7
  %call.i46 = call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext 0, i16 noundef zeroext -32768) #7
  %69 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i48 = getelementptr inbounds %struct.mii_bus, ptr %70, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %mdio_lock.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool17.not = icmp eq i32 %call.i46, 0
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %err

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.then15
  %71 = ptrtoint ptr %vddio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vddio, align 4
  %tobool22.not = icmp eq ptr %72, null
  br i1 %tobool22.not, label %err.cleanup_crit_edge, label %if.then23

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 @regulator_disable(ptr noundef nonnull %72) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %err.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %at803x_parse_dt.exit.cleanup_crit_edge, %at803x_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %at803x_parse_dt.exit.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call.i46, %if.then23 ], [ %call.i46, %err.cleanup_crit_edge ], [ -22, %at803x_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 18) #7
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i16 2048, i16 1024
  %call1 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext %.) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 3072, i16 noundef zeroext 0) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

switch.lookup:                                    ; preds = %entry
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.at803x_config_aneg, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  %call.i = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %switch.load) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %switch.lookup.cleanup25_crit_edge, label %if.end

switch.lookup.cleanup25_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp1 = icmp eq i32 %call.i, 1
  br i1 %cmp1, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then2.cleanup25_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2.cleanup25_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099777, i32 %8)
  %cmp8 = icmp eq i32 %8, 5099777
  br i1 %cmp8, label %if.then9, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then9:                                         ; preds = %if.end7
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %autoneg, align 8
  %10 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp10 = icmp eq i16 %10, 0
  br i1 %cmp10, label %if.then11, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @genphy_c45_pma_setup_forced(ptr noundef %phydev) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9.if.end13_crit_edge
  %arrayidx.i.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i, align 4
  %13 = trunc i32 %12 to i16
  %14 = lshr i16 %13, 8
  %15 = and i16 %14, 128
  %call17 = tail call i32 @phy_modify_mmd_changed(ptr noundef %phydev, i32 noundef 7, i32 noundef 32, i16 noundef zeroext 128, i16 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end13.cleanup25_crit_edge, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end13.cleanup25_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup25

if.end22:                                         ; preds = %if.end13.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end13.if.end22_crit_edge ], [ 0, %if.end7.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool23 = icmp ne i32 %ret.0, 0
  %call24 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext %tobool23) #7
  br label %cleanup25

cleanup25:                                        ; preds = %if.end22, %if.end13.cleanup25_crit_edge, %if.then2.cleanup25_crit_edge, %switch.lookup.cleanup25_crit_edge
  %retval.1 = phi i32 [ %call24, %if.end22 ], [ %call17, %if.end13.cleanup25_crit_edge ], [ %call.i, %switch.lookup.cleanup25_crit_edge ], [ %call3, %if.then2.cleanup25_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %link, align 8
  %call = tail call i32 @genphy_update_link(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load1 = load i16, ptr %link, align 8
  %2 = and i16 %bf.load1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.not = icmp eq i16 %2, 0
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool5.not = icmp eq i16 %3, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool5.not
  %4 = and i16 %bf.load1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool12.not = icmp eq i16 %4, 0
  %or.cond55 = select i1 %or.cond, i1 true, i1 %tobool12.not
  br i1 %or.cond55, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %duplex, align 4
  %pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 11
  %7 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pause, align 4
  %asym_pause = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 12
  %8 = ptrtoint ptr %asym_pause to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %asym_pause, align 8
  %call15 = tail call i32 @genphy_read_lpa(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @at803x_read_specific_status(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load24 = load i16, ptr %link, align 8
  %10 = and i16 %bf.load24, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %10)
  %.not = icmp eq i16 %10, 10
  br i1 %.not, label %if.then35, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_resolve_aneg_pause(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 18) #7
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 19) #7
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = trunc i32 %call.i to i16
  %conv = or i16 %10, -5120
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 8
  %call.i31 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 18, i16 noundef zeroext %conv) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i34 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 18, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool9.not = icmp eq i32 %call.i34, 0
  br i1 %tobool9.not, label %if.end11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 8
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 8
  %call.i.i37 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 19) #7
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i37, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then.cleanup_crit_edge ], [ %call.i34, %if.else.cleanup_crit_edge ], [ %call.i31, %if.end ], [ %19, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i16 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp2 = icmp slt i32 %call.i16, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_error(ptr noundef %phydev) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call.i16, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at803x_remove(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %vddio = getelementptr inbounds %struct.at803x_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vddio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vddio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %0 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attached_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.then2
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %for.body.preheader

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %is_valid_ether_addr.exit
  %arrayidx5 = getelementptr i8, ptr %5, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %12 to i16
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %conv8 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv8, 8
  %or = or i16 %shl, %conv
  %call10 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32842, i16 noundef zeroext %or) #7
  %arrayidx5.1 = getelementptr i8, ptr %5, i32 3
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5.1, align 1
  %conv.1 = zext i8 %16 to i16
  %arrayidx7.1 = getelementptr i8, ptr %5, i32 2
  %17 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.1, align 1
  %conv8.1 = zext i8 %18 to i16
  %shl.1 = shl nuw i16 %conv8.1, 8
  %or.1 = or i16 %shl.1, %conv.1
  %call10.1 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32843, i16 noundef zeroext %or.1) #7
  %arrayidx5.2 = getelementptr i8, ptr %5, i32 5
  %19 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5.2, align 1
  %conv.2 = zext i8 %20 to i16
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i, align 1
  %conv8.2 = zext i8 %22 to i16
  %shl.2 = shl nuw i16 %conv8.2, 8
  %or.2 = or i16 %shl.2, %conv.2
  %call10.2 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32844, i16 noundef zeroext %or.2) #7
  %call11 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32786, i16 noundef zeroext 0, i16 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %for.body.preheader
  %call15 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end27_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.else:                                          ; preds = %if.end
  %call19 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32786, i16 noundef zeroext 32, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %call23 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %if.end22.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %24, i32 noundef %26, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %27 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i, align 8
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 8
  %call.i79 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %30, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp34 = icmp slt i32 %call.i79, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %and38 = and i32 %call.i, -2
  %and39 = and i32 %and38, %call.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %land.lhs.true

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end37
  %state.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp.i = icmp eq i32 %32, 6
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.phy_polling_mode.exit_crit_edge

land.lhs.true.phy_polling_mode.exit_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_polling_mode.exit

if.then.i:                                        ; preds = %land.lhs.true
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %33 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drv.i, align 8
  %flags.i = getelementptr inbounds %struct.phy_driver, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.phy_polling_mode.exit_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.phy_polling_mode.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_polling_mode.exit

phy_polling_mode.exit:                            ; preds = %if.then.i.phy_polling_mode.exit_crit_edge, %land.lhs.true.phy_polling_mode.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp3.i = icmp eq i32 %38, -1
  br i1 %cmp3.i, label %phy_polling_mode.exit.cleanup_crit_edge, label %if.then42

phy_polling_mode.exit.cleanup_crit_edge:          ; preds = %phy_polling_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %phy_polling_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_trigger_machine(ptr noundef %phydev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %phy_polling_mode.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call11, %for.body.preheader.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call19, %if.else.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call.i, %if.end27.cleanup_crit_edge ], [ %call.i79, %if.end32.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %phy_polling_mode.exit.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at803x_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32786) #7
  %2 = and i32 %call, -2147483616
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %.not = icmp eq i32 %2, 32
  br i1 %.not, label %if.then1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @at803x_cable_test_start(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 0, i16 noundef zeroext 4096) #7
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i15 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 4, i16 noundef zeroext 1) #7
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %8 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_id, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %9, label %if.then [
    i32 5099585, label %entry.if.end_crit_edge
    i32 5099555, label %entry.if.end_crit_edge19
    i32 5099586, label %entry.if.end_crit_edge20
  ]

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 8
  %call.i18 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 9, i16 noundef zeroext 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge19, %entry.if.end_crit_edge20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  %pair_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pair_mask) #7
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %if.else [
    i32 5099585, label %entry.if.end_crit_edge
    i32 5099555, label %entry.if.end_crit_edge50
    i32 5099586, label %entry.if.end_crit_edge51
  ]

entry.if.end_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge50, %entry.if.end_crit_edge51
  %storemerge = phi i32 [ 15, %if.else ], [ 3, %entry.if.end_crit_edge ], [ 3, %entry.if.end_crit_edge50 ], [ 3, %entry.if.end_crit_edge51 ]
  %3 = ptrtoint ptr %pair_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %pair_mask, align 4
  %4 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %finished, align 1
  %drv.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %land.rhs

land.rhs:                                         ; preds = %if.end18.land.rhs_crit_edge, %if.end
  %retries.047 = phi i32 [ 20, %if.end ], [ %dec, %if.end18.land.rhs_crit_edge ]
  %dec = add nsw i32 %retries.047, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.047)
  %tobool6.not = icmp eq i32 %retries.047, 0
  br i1 %tobool6.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %pair_mask, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp742 = icmp slt i32 %call, 4
  br i1 %cmp742, label %while.body.for.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %pair.043 = phi i32 [ %call15, %for.inc.for.body_crit_edge ], [ %call, %while.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %drv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv.i.i, align 8
  %phy_id.i.i = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099777, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 5099777
  %pair.tr.i.i = trunc i32 %pair.043 to i16
  %9 = shl i16 %pair.tr.i.i, 8
  %10 = and i16 %9, 768
  %conv.i.i = or i16 %10, 1
  %cdt.0.i.i = select i1 %cmp.i.i, i16 -23552, i16 %conv.i.i
  %11 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i.i, align 8
  %13 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 22, i16 noundef zeroext %cdt.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.at803x_cable_test_one_pair.exit_crit_edge

for.body.at803x_cable_test_one_pair.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_cable_test_one_pair.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = call fastcc i32 @at803x_cdt_wait_for_completion(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.at803x_cable_test_one_pair.exit_crit_edge

if.end.i.at803x_cable_test_one_pair.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_cable_test_one_pair.exit

if.end4.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i.i, align 8
  %17 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i = call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end4.i.cleanup_crit_edge, label %if.end7.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  %19 = and i32 %call.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %19)
  %cmp.i40.i = icmp eq i32 %19, 768
  br i1 %cmp.i40.i, label %if.end7.i.for.inc_crit_edge, label %if.end10.i

if.end7.i.for.inc_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10.i:                                       ; preds = %if.end7.i
  %arrayidx.i = getelementptr [4 x i32], ptr @at803x_cable_test_one_pair.ethtool_pair, i32 0, i32 %pair.043
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %conv11.i = trunc i32 %21 to i8
  %22 = lshr i32 %call.i.i, 8
  %23 = and i32 %22, 3
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %23, label %sw.default.i.i [
    i32 0, label %if.end10.i.at803x_cable_test_result_trans.exit.i_crit_edge
    i32 1, label %if.end10.i.if.then18.i_crit_edge
    i32 2, label %sw.bb10.i.i
  ]

if.end10.i.if.then18.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

if.end10.i.at803x_cable_test_result_trans.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_cable_test_result_trans.exit.i

sw.bb10.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

sw.default.i.i:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_cable_test_result_trans.exit.i

at803x_cable_test_result_trans.exit.i:            ; preds = %sw.default.i.i, %if.end10.i.at803x_cable_test_result_trans.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %sw.default.i.i ], [ 1, %if.end10.i.at803x_cable_test_result_trans.exit.i_crit_edge ]
  %call15.i = call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext %conv11.i, i8 noundef zeroext %retval.0.i.i) #7
  br label %if.then13

if.then18.i:                                      ; preds = %sw.bb10.i.i, %if.end10.i.if.then18.i_crit_edge
  %retval.0.i.ph.i = phi i8 [ 2, %sw.bb10.i.i ], [ 3, %if.end10.i.if.then18.i_crit_edge ]
  %call1544.i = call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext %conv11.i, i8 noundef zeroext %retval.0.i.ph.i) #7
  %25 = and i32 %call.i.i, 255
  %mul.i.i = mul nuw nsw i32 %25, 824
  %div.i.i = udiv i32 %mul.i.i, 10
  %call23.i = call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext %conv11.i, i32 noundef %div.i.i) #7
  br label %if.then13

at803x_cable_test_one_pair.exit:                  ; preds = %if.end.i.at803x_cable_test_one_pair.exit_crit_edge, %for.body.at803x_cable_test_one_pair.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %for.body.at803x_cable_test_one_pair.exit_crit_edge ], [ %call1.i, %if.end.i.at803x_cable_test_one_pair.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp9, label %at803x_cable_test_one_pair.exit.cleanup_crit_edge, label %at803x_cable_test_one_pair.exit.if.then13_crit_edge

at803x_cable_test_one_pair.exit.if.then13_crit_edge: ; preds = %at803x_cable_test_one_pair.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

at803x_cable_test_one_pair.exit.cleanup_crit_edge: ; preds = %at803x_cable_test_one_pair.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %at803x_cable_test_one_pair.exit.if.then13_crit_edge, %if.then18.i, %at803x_cable_test_result_trans.exit.i
  call void @_clear_bit(i32 noundef %pair.043, ptr noundef nonnull %pair_mask) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end7.i.for.inc_crit_edge
  %add = add nsw i32 %pair.043, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %pair_mask, i32 noundef 4, i32 noundef %add) #7
  %cmp7 = icmp slt i32 %call15, 4
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %26 = ptrtoint ptr %pair_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pair_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool16.not = icmp eq i32 %27, 0
  br i1 %tobool16.not, label %for.end.while.end_crit_edge, label %if.end18

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end18:                                         ; preds = %for.end
  call void @msleep(i32 noundef 250) #7
  %28 = ptrtoint ptr %pair_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.pr = load i32, ptr %pair_mask, align 4
  %tobool.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool.not, label %if.end18.while.end_crit_edge, label %if.end18.land.rhs_crit_edge

if.end18.land.rhs_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %for.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %29 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %finished, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %at803x_cable_test_one_pair.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %call.i.i, %if.end4.i.cleanup_crit_edge ], [ %retval.0.i, %at803x_cable_test_one_pair.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pair_mask) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_get_tunable(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %6 = trunc i32 %call.i.i to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 7
  %conv.i = add nuw nsw i8 %8, 2
  %storemerge.i = select i1 %tobool.not.i, i8 0, i8 %conv.i
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge.i, ptr %data, align 1
  br label %return

return:                                           ; preds = %if.end.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end.i ], [ %call.i.i, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %3, label %sw.bb.return_crit_edge [
    i8 -1, label %sw.bb.i
    i8 2, label %sw.bb.do.end16.i_crit_edge
    i8 3, label %sw.bb.do.end16.i_crit_edge1
    i8 4, label %sw.bb.do.end16.i_crit_edge2
    i8 5, label %sw.bb.do.end16.i_crit_edge3
    i8 6, label %sw.bb.do.end16.i_crit_edge4
    i8 7, label %sw.bb.do.end16.i_crit_edge5
    i8 8, label %sw.bb.do.end16.i_crit_edge6
    i8 9, label %sw.bb.do.end16.i_crit_edge7
    i8 0, label %sw.bb.sw.epilog.i_crit_edge
  ]

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.do.end16.i_crit_edge7:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.do.end16.i_crit_edge6:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.do.end16.i_crit_edge5:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.do.end16.i_crit_edge4:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.do.end16.i_crit_edge3:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.do.end16.i_crit_edge2:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.do.end16.i_crit_edge1:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.do.end16.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

do.end16.i:                                       ; preds = %sw.bb.i, %sw.bb.do.end16.i_crit_edge, %sw.bb.do.end16.i_crit_edge1, %sw.bb.do.end16.i_crit_edge2, %sw.bb.do.end16.i_crit_edge3, %sw.bb.do.end16.i_crit_edge4, %sw.bb.do.end16.i_crit_edge5, %sw.bb.do.end16.i_crit_edge6, %sw.bb.do.end16.i_crit_edge7
  %cnt.addr.0.i = phi i8 [ %3, %sw.bb.do.end16.i_crit_edge ], [ %3, %sw.bb.do.end16.i_crit_edge1 ], [ %3, %sw.bb.do.end16.i_crit_edge2 ], [ %3, %sw.bb.do.end16.i_crit_edge3 ], [ %3, %sw.bb.do.end16.i_crit_edge4 ], [ %3, %sw.bb.do.end16.i_crit_edge5 ], [ %3, %sw.bb.do.end16.i_crit_edge6 ], [ %3, %sw.bb.do.end16.i_crit_edge7 ], [ 5, %sw.bb.i ]
  %conv6.i = zext i8 %cnt.addr.0.i to i16
  %sub.i = shl nuw nsw i16 %conv6.i, 2
  %5 = add nuw nsw i16 %sub.i, 24
  %6 = and i16 %5, 28
  %conv20.i = or i16 %6, 34
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end16.i, %sw.bb.sw.epilog.i_crit_edge
  %mask.0.i = phi i16 [ 28, %do.end16.i ], [ 34, %sw.bb.sw.epilog.i_crit_edge ]
  %set.0.i = phi i16 [ %conv20.i, %do.end16.i ], [ 0, %sw.bb.sw.epilog.i_crit_edge ]
  %call.i = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext %mask.0.i, i16 noundef zeroext %set.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then23.i, label %sw.epilog.i.return_crit_edge

sw.epilog.i.return_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then23.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 @phy_init_hw(ptr noundef %phydev) #7
  br label %return

return:                                           ; preds = %if.then23.i, %sw.epilog.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ %call24.i, %if.then23.i ], [ %call.i, %sw.epilog.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at803x_link_change_notify(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %reset_gpio = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 8
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 0) #7
  %conv.i = trunc i32 %call.i.i to i16
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i23.i = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 4) #7
  %conv2.i = trunc i32 %call.i23.i to i16
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i26.i = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 9) #7
  %conv4.i = trunc i32 %call.i26.i to i16
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i29.i = tail call i32 @mdiobus_read(ptr noundef %17, i32 noundef %19, i32 noundef 18) #7
  %conv6.i = trunc i32 %call.i29.i to i16
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i32.i = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %23, i32 noundef 20) #7
  %conv8.i = trunc i32 %call.i32.i to i16
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i35.i = tail call i32 @mdiobus_read(ptr noundef %25, i32 noundef %27, i32 noundef 24) #7
  %conv10.i = trunc i32 %call.i35.i to i16
  tail call void @mdio_device_reset(ptr noundef %phydev, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 1) #7
  tail call void @mdio_device_reset(ptr noundef %phydev, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 1) #7
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i.i15 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 0, i16 noundef zeroext %conv.i) #7
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i18.i = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 4, i16 noundef zeroext %conv2.i) #7
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i21.i = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 9, i16 noundef zeroext %conv4.i) #7
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 8
  %call.i24.i = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 18, i16 noundef zeroext %conv6.i) #7
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i27.i = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 20, i16 noundef zeroext %conv8.i) #7
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i30.i = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 24, i16 noundef zeroext %conv10.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at803x_link_change_notify.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at803x_link_change_notify, %if.then4)) #7
          to label %if.end6 [label %if.then4], !srcloc !131

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at803x_link_change_notify.__UNIQUE_ID_ddebug388, ptr noundef %phydev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_get_features(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_read_abilities(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099777, i32 %3)
  %cmp = icmp eq i32 %3, 5099777
  br i1 %cmp, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.end5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i1.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i1.i, align 4
  %and.i.i.i = and i32 %5, -32769
  %and = shl i32 %call2, 15
  %6 = and i32 %and, 32768
  %and.i.i.sink.i = or i32 %and.i.i.i, %6
  store i32 %and.i.i.sink.i, ptr %add.ptr.i.i1.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv, align 8
  %phy_id8 = getelementptr inbounds %struct.phy_driver, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %phy_id8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_id8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099636, i32 %10)
  %cmp9.not = icmp eq i32 %10, 5099636
  br i1 %cmp9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %12, -513
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_read_page(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %and = lshr i32 %call.i, 15
  %and.lobit = and i32 %and, 1
  %retval.0 = select i1 %cmp, i32 %call.i, i32 %and.lobit
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_write_page(ptr noundef %phydev, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page)
  %cmp = icmp eq i32 %page, 1
  %. = select i1 %cmp, i16 0, i16 -32768
  %.2 = select i1 %cmp, i16 -32768, i16 0
  %call = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 31, i16 noundef zeroext %., i16 noundef zeroext %.2) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca83xx_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_flags = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_flags, align 8
  %conv = and i32 %1, 7
  %2 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %conv, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %entry.sw.bb5_crit_edge
  ]

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %3 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %5 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.at803x_debug_reg_write.exit_crit_edge, label %if.end.i

sw.bb.at803x_debug_reg_write.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_write.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i.i, align 8
  %call.i3.i = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 30, i16 noundef zeroext 746) #7
  br label %at803x_debug_reg_write.exit

at803x_debug_reg_write.exit:                      ; preds = %if.end.i, %sw.bb.at803x_debug_reg_write.exit_crit_edge
  %11 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i, align 8
  %13 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i, align 8
  %call.i.i30 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 29, i16 noundef zeroext 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp.i31 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp.i31, label %at803x_debug_reg_write.exit.sw.epilog_crit_edge, label %at803x_debug_reg_write.exit.sw.epilog.sink.split_crit_edge

at803x_debug_reg_write.exit.sw.epilog.sink.split_crit_edge: ; preds = %at803x_debug_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

at803x_debug_reg_write.exit.sw.epilog_crit_edge:  ; preds = %at803x_debug_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 60, i16 noundef zeroext 0) #7
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb3, %entry.sw.bb5_crit_edge
  %call6 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32781, i16 noundef zeroext -32705) #7
  %bus.i.i35 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i35, align 8
  %addr.i.i36 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %17 = ptrtoint ptr %addr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i36, align 8
  %call.i.i37 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 29, i16 noundef zeroext 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %cmp.i38 = icmp slt i32 %call.i.i37, 0
  br i1 %cmp.i38, label %sw.bb5.at803x_debug_reg_write.exit41_crit_edge, label %if.end.i40

sw.bb5.at803x_debug_reg_write.exit41_crit_edge:   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_write.exit41

if.end.i40:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %bus.i.i35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i.i35, align 8
  %21 = ptrtoint ptr %addr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i.i36, align 8
  %call.i3.i39 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %22, i32 noundef 30, i16 noundef zeroext 26720) #7
  br label %at803x_debug_reg_write.exit41

at803x_debug_reg_write.exit41:                    ; preds = %if.end.i40, %sw.bb5.at803x_debug_reg_write.exit41_crit_edge
  %23 = ptrtoint ptr %bus.i.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i.i35, align 8
  %25 = ptrtoint ptr %addr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i.i36, align 8
  %call.i.i44 = tail call i32 @mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 29, i16 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %cmp.i45 = icmp slt i32 %call.i.i44, 0
  br i1 %cmp.i45, label %at803x_debug_reg_write.exit41.at803x_debug_reg_write.exit48_crit_edge, label %if.end.i47

at803x_debug_reg_write.exit41.at803x_debug_reg_write.exit48_crit_edge: ; preds = %at803x_debug_reg_write.exit41
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_write.exit48

if.end.i47:                                       ; preds = %at803x_debug_reg_write.exit41
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %bus.i.i35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i35, align 8
  %29 = ptrtoint ptr %addr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i36, align 8
  %call.i3.i46 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 30, i16 noundef zeroext 11334) #7
  br label %at803x_debug_reg_write.exit48

at803x_debug_reg_write.exit48:                    ; preds = %if.end.i47, %at803x_debug_reg_write.exit41.at803x_debug_reg_write.exit48_crit_edge
  %31 = ptrtoint ptr %bus.i.i35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i.i35, align 8
  %33 = ptrtoint ptr %addr.i.i36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i36, align 8
  %call.i.i51 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 29, i16 noundef zeroext 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i52 = icmp slt i32 %call.i.i51, 0
  br i1 %cmp.i52, label %at803x_debug_reg_write.exit48.sw.epilog_crit_edge, label %at803x_debug_reg_write.exit48.sw.epilog.sink.split_crit_edge

at803x_debug_reg_write.exit48.sw.epilog.sink.split_crit_edge: ; preds = %at803x_debug_reg_write.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

at803x_debug_reg_write.exit48.sw.epilog_crit_edge: ; preds = %at803x_debug_reg_write.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %at803x_debug_reg_write.exit48.sw.epilog.sink.split_crit_edge, %at803x_debug_reg_write.exit.sw.epilog.sink.split_crit_edge
  %bus.i.i35.sink = phi ptr [ %bus.i.i, %at803x_debug_reg_write.exit.sw.epilog.sink.split_crit_edge ], [ %bus.i.i35, %at803x_debug_reg_write.exit48.sw.epilog.sink.split_crit_edge ]
  %addr.i.i36.sink = phi ptr [ %addr.i.i, %at803x_debug_reg_write.exit.sw.epilog.sink.split_crit_edge ], [ %addr.i.i36, %at803x_debug_reg_write.exit48.sw.epilog.sink.split_crit_edge ]
  %.sink60 = phi i16 [ 26784, %at803x_debug_reg_write.exit.sw.epilog.sink.split_crit_edge ], [ 24576, %at803x_debug_reg_write.exit48.sw.epilog.sink.split_crit_edge ]
  %35 = ptrtoint ptr %bus.i.i35.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i.i35.sink, align 8
  %37 = ptrtoint ptr %addr.i.i36.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.i.i36.sink, align 8
  %call.i3.i53 = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef %38, i32 noundef 30, i16 noundef zeroext %.sink60) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %at803x_debug_reg_write.exit48.sw.epilog_crit_edge, %at803x_debug_reg_write.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %39 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %phy_id, align 4
  %.off = add i32 %42, -5099571
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %43 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %45 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %44, i32 noundef %46, i32 noundef 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %at803x_debug_reg_read.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

at803x_debug_reg_read.exit.i:                     ; preds = %if.then
  %47 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i.i.i, align 8
  %49 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr.i.i.i, align 8
  %call.i6.i.i = tail call i32 @mdiobus_read(ptr noundef %48, i32 noundef %50, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %cmp.i56 = icmp slt i32 %call.i6.i.i, 0
  br i1 %cmp.i56, label %at803x_debug_reg_read.exit.i.if.end_crit_edge, label %if.end.i58

at803x_debug_reg_read.exit.i.if.end_crit_edge:    ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i58:                                       ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = trunc i32 %call.i6.i.i to i16
  %52 = and i16 %51, -5
  %53 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i.i.i, align 8
  %55 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i57 = tail call i32 @mdiobus_write(ptr noundef %54, i32 noundef %56, i32 noundef 30, i16 noundef zeroext %52) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i58, %at803x_debug_reg_read.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 9, i16 noundef zeroext 0, i16 noundef zeroext 1024) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca83xx_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099574, i32 %3)
  %cmp = icmp eq i32 %3, 5099574
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @genphy_suspend(ptr noundef %phydev) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext -321, i16 noundef zeroext 0) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 29, i16 noundef zeroext 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.at803x_debug_reg_mask.exit_crit_edge, label %at803x_debug_reg_read.exit.i

if.end.at803x_debug_reg_mask.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_mask.exit

at803x_debug_reg_read.exit.i:                     ; preds = %if.end
  %8 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i.i, align 8
  %call.i6.i.i = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %cmp.i = icmp slt i32 %call.i6.i.i, 0
  br i1 %cmp.i, label %at803x_debug_reg_read.exit.i.at803x_debug_reg_mask.exit_crit_edge, label %if.end.i

at803x_debug_reg_read.exit.i.at803x_debug_reg_mask.exit_crit_edge: ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_mask.exit

if.end.i:                                         ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = trunc i32 %call.i6.i.i to i16
  %13 = and i16 %12, -65
  %14 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 30, i16 noundef zeroext %13) #7
  br label %at803x_debug_reg_mask.exit

at803x_debug_reg_mask.exit:                       ; preds = %if.end.i, %at803x_debug_reg_read.exit.i.at803x_debug_reg_mask.exit_crit_edge, %if.end.at803x_debug_reg_mask.exit_crit_edge
  %18 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i12 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 29, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i12)
  %cmp.i.i13 = icmp slt i32 %call.i.i.i12, 0
  br i1 %cmp.i.i13, label %at803x_debug_reg_mask.exit.at803x_debug_reg_mask.exit21_crit_edge, label %at803x_debug_reg_read.exit.i16

at803x_debug_reg_mask.exit.at803x_debug_reg_mask.exit21_crit_edge: ; preds = %at803x_debug_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_mask.exit21

at803x_debug_reg_read.exit.i16:                   ; preds = %at803x_debug_reg_mask.exit
  %22 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i.i, align 8
  %call.i6.i.i14 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i14)
  %cmp.i15 = icmp slt i32 %call.i6.i.i14, 0
  br i1 %cmp.i15, label %at803x_debug_reg_read.exit.i16.at803x_debug_reg_mask.exit21_crit_edge, label %if.end.i19

at803x_debug_reg_read.exit.i16.at803x_debug_reg_mask.exit21_crit_edge: ; preds = %at803x_debug_reg_read.exit.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_mask.exit21

if.end.i19:                                       ; preds = %at803x_debug_reg_read.exit.i16
  call void @__sanitizer_cov_trace_pc() #9
  %26 = trunc i32 %call.i6.i.i14 to i16
  %27 = and i16 %26, -9217
  %28 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i18 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 30, i16 noundef zeroext %27) #7
  br label %at803x_debug_reg_mask.exit21

at803x_debug_reg_mask.exit21:                     ; preds = %if.end.i19, %at803x_debug_reg_read.exit.i16.at803x_debug_reg_mask.exit21_crit_edge, %at803x_debug_reg_mask.exit.at803x_debug_reg_mask.exit21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca83xx_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %suspended = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %suspended, align 8
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @qca83xx_config_init(ptr noundef %phydev)
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext -28672) #7
  %call2 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call2, 600000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1547) #7
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #7
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i6977 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 0) #7
  %6 = and i32 %call.i6977, -2147450880
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %6)
  %.not78 = icmp eq i32 %6, 32768
  br i1 %.not78, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then24, label %if.then28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %call.i72 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 0) #7
  %.pre = and i32 %call.i72, -2147450880
  br label %for.end

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #7
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 8
  %call.i69 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %14, i32 noundef 0) #7
  %15 = and i32 %call.i69, -2147450880
  %.not = icmp eq i32 %15, 32768
  br i1 %.not, label %if.then28.land.lhs.true_crit_edge, label %if.then28.for.end_crit_edge

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then28.for.end_crit_edge, %if.then24, %if.end.for.end_crit_edge
  %.pre-phi = phi i32 [ %6, %if.end.for.end_crit_edge ], [ %.pre, %if.then24 ], [ %15, %if.then28.for.end_crit_edge ]
  %val.0 = phi i32 [ %call.i6977, %if.end.for.end_crit_edge ], [ %call.i72, %if.then24 ], [ %call.i69, %if.then28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp34 = icmp slt i32 %val.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %.pre-phi)
  %.not73 = icmp eq i32 %.pre-phi, 32768
  %16 = select i1 %.not73, i32 -110, i32 0
  %__ret.0 = select i1 %cmp34, i32 %val.0, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool38.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool38.not, label %if.end47, label %do.end42

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.47, i32 noundef %__ret.0) #10
  br label %cleanup

if.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__ret.0, %do.end42 ], [ 0, %if.end47 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca83xx_link_change_notify(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099574, i32 %3)
  %cmp = icmp eq i32 %3, 5099574
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp3 = icmp eq i32 %7, 100
  br i1 %cmp3, label %if.then4, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.then2
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then4.if.end7_crit_edge, label %at803x_debug_reg_read.exit.i

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

at803x_debug_reg_read.exit.i:                     ; preds = %if.then4
  %12 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i.i, align 8
  %call.i6.i.i = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %cmp.i = icmp slt i32 %call.i6.i.i, 0
  br i1 %cmp.i, label %at803x_debug_reg_read.exit.i.if.end7_crit_edge, label %if.end.i

at803x_debug_reg_read.exit.i.if.end7_crit_edge:   ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.i:                                         ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = trunc i32 %call.i6.i.i to i16
  %conv7.i = or i16 %16, 4
  br label %if.end7.sink.split

if.else:                                          ; preds = %if.end
  %bus.i.i.i12 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %17 = ptrtoint ptr %bus.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i.i12, align 8
  %addr.i.i.i13 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %19 = ptrtoint ptr %addr.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i.i13, align 8
  %call.i.i.i14 = tail call i32 @mdiobus_write(ptr noundef %18, i32 noundef %20, i32 noundef 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i14)
  %cmp.i.i15 = icmp slt i32 %call.i.i.i14, 0
  br i1 %cmp.i.i15, label %if.else.if.end7_crit_edge, label %at803x_debug_reg_read.exit.i18

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

at803x_debug_reg_read.exit.i18:                   ; preds = %if.else
  %21 = ptrtoint ptr %bus.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i.i12, align 8
  %23 = ptrtoint ptr %addr.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i.i13, align 8
  %call.i6.i.i16 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %24, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i16)
  %cmp.i17 = icmp slt i32 %call.i6.i.i16, 0
  br i1 %cmp.i17, label %at803x_debug_reg_read.exit.i18.if.end7_crit_edge, label %if.end.i21

at803x_debug_reg_read.exit.i18.if.end7_crit_edge: ; preds = %at803x_debug_reg_read.exit.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.i21:                                       ; preds = %at803x_debug_reg_read.exit.i18
  call void @__sanitizer_cov_trace_pc() #9
  %25 = trunc i32 %call.i6.i.i16 to i16
  %26 = and i16 %25, -5
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.end.i21, %if.end.i
  %bus.i.i.i12.sink = phi ptr [ %bus.i.i.i12, %if.end.i21 ], [ %bus.i.i.i, %if.end.i ]
  %addr.i.i.i13.sink = phi ptr [ %addr.i.i.i13, %if.end.i21 ], [ %addr.i.i.i, %if.end.i ]
  %.sink25 = phi i16 [ %26, %if.end.i21 ], [ %conv7.i, %if.end.i ]
  %27 = ptrtoint ptr %bus.i.i.i12.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i.i12.sink, align 8
  %29 = ptrtoint ptr %addr.i.i.i13.sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i.i13.sink, align 8
  %call.i.i20 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 30, i16 noundef zeroext %.sink25) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %at803x_debug_reg_read.exit.i18.if.end7_crit_edge, %if.else.if.end7_crit_edge, %at803x_debug_reg_read.exit.i.if.end7_crit_edge, %if.then4.if.end7_crit_edge, %if.then2.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at803x_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at803x_get_strings(ptr nocapture noundef readnone %phydev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %data, ptr noundef nonnull @.str.48, i32 noundef 32) #7
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call.1 = tail call i32 @strscpy(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.49, i32 noundef 32) #7
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %call.2 = tail call i32 @strscpy(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.50, i32 noundef 32) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at803x_get_stats(ptr noundef %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
if.end.i:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %if.end.i.if.end.i.1_crit_edge, label %if.else8.i

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1

if.else8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call.i.i, 255
  %6 = zext i32 %and.i to i64
  %arrayidx10.i = getelementptr %struct.at803x_priv, ptr %1, i32 0, i32 8, i32 0
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx10.i, align 8
  %add.i = add i64 %8, %6
  store i64 %add.i, ptr %arrayidx10.i, align 8
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.else8.i, %if.end.i.if.end.i.1_crit_edge
  %ret.0.i = phi i64 [ %add.i, %if.else8.i ], [ -1, %if.end.i.if.end.i.1_crit_edge ]
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
  %call.i.i.1 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp5.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp5.i.1, label %if.end.i.1.if.end.i.2_crit_edge, label %if.else8.i.1

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.2

if.else8.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.1 = and i32 %call.i.i.1, 65535
  %16 = zext i32 %and.i.1 to i64
  %arrayidx10.i.1 = getelementptr %struct.at803x_priv, ptr %11, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %arrayidx10.i.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx10.i.1, align 8
  %add.i.1 = add i64 %18, %16
  store i64 %add.i.1, ptr %arrayidx10.i.1, align 8
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.else8.i.1, %if.end.i.1.if.end.i.2_crit_edge
  %ret.0.i.1 = phi i64 [ %add.i.1, %if.else8.i.1 ], [ -1, %if.end.i.1.if.end.i.2_crit_edge ]
  %arrayidx.1 = getelementptr i64, ptr %data, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %ret.0.i.1, ptr %arrayidx.1, align 8
  %20 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv1.i, align 8
  %call.i.2 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp5.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp5.i.2, label %if.end.i.2.at803x_get_stat.exit.2_crit_edge, label %if.else8.i.2

if.end.i.2.at803x_get_stat.exit.2_crit_edge:      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_get_stat.exit.2

if.else8.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.2 = and i32 %call.i.2, 65535
  %22 = zext i32 %and.i.2 to i64
  %arrayidx10.i.2 = getelementptr %struct.at803x_priv, ptr %21, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx10.i.2, align 8
  %add.i.2 = add i64 %24, %22
  store i64 %add.i.2, ptr %arrayidx10.i.2, align 8
  br label %at803x_get_stat.exit.2

at803x_get_stat.exit.2:                           ; preds = %if.else8.i.2, %if.end.i.2.at803x_get_stat.exit.2_crit_edge
  %ret.0.i.2 = phi i64 [ %add.i.2, %if.else8.i.2 ], [ -1, %if.end.i.2.at803x_get_stat.exit.2_crit_edge ]
  %arrayidx.2 = getelementptr i64, ptr %data, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %ret.0.i.2, ptr %arrayidx.2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca808x_soft_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i.i, align 8
  %addr.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i:                   ; preds = %if.end
  %4 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i6.i.i.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i6.i.i.i, 0
  br i1 %cmp.i.i, label %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, label %if.end.i.i

at803x_debug_reg_read.exit.i.i.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %at803x_debug_reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = trunc i32 %call.i6.i.i.i to i16
  %conv7.i.i = or i16 %8, 2
  %9 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i.i.i, align 8
  %11 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 30, i16 noundef zeroext %conv7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i.i ], [ %call.i6.i.i.i, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge ], [ %call.i.i.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca808x_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32775, i16 noundef zeroext 496, i16 noundef zeroext 144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32776, i16 noundef zeroext 7218) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call i32 @genphy_c45_fast_retrain(ptr noundef %phydev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call1.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 36892, i16 noundef zeroext 0) #7
  %call2.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 32788, i16 noundef zeroext 1321) #7
  %call3.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 32782, i16 noundef zeroext 833) #7
  %call4.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 32798, i16 noundef zeroext 1049) #7
  %call5.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 32800, i16 noundef zeroext 833) #7
  %call6.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 41216, i16 noundef zeroext -28157) #7
  %call7.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 41221, i16 noundef zeroext -32767) #7
  %call8.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 41222, i16 noundef zeroext 4369) #7
  %call9.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 41219, i16 noundef zeroext 5784) #7
  %call10.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 40977, i16 noundef zeroext 24453) #7
  %call11.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 41217, i16 noundef zeroext 18605) #7
  %call.i32 = tail call i32 @prandom_u32() #7
  %rem.i = urem i32 %call.i32, 50
  %conv.i = trunc i32 %rem.i to i16
  %conv16.i = shl nuw nsw i16 %conv.i, 2
  %bus.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i.i, align 8
  %addr.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end8.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i:                   ; preds = %if.end8
  %4 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i6.i.i.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i6.i.i.i, 0
  br i1 %cmp.i.i, label %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, label %qca808x_phy_ms_random_seed_set.exit

at803x_debug_reg_read.exit.i.i.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

qca808x_phy_ms_random_seed_set.exit:              ; preds = %at803x_debug_reg_read.exit.i.i
  %8 = trunc i32 %call.i6.i.i.i to i16
  %9 = and i16 %8, -8189
  %conv7.i.i = or i16 %9, %conv16.i
  %10 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 30, i16 noundef zeroext %conv7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge

qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge: ; preds = %qca808x_phy_ms_random_seed_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %qca808x_phy_ms_random_seed_set.exit
  %14 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i.i35 = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 29, i16 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i35)
  %cmp.i.i.i36 = icmp slt i32 %call.i.i.i.i35, 0
  br i1 %cmp.i.i.i36, label %if.end12.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i39

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i39:                 ; preds = %if.end12
  %18 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i6.i.i.i37 = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i37)
  %cmp.i.i38 = icmp slt i32 %call.i6.i.i.i37, 0
  br i1 %cmp.i.i38, label %at803x_debug_reg_read.exit.i.i39.cleanup_crit_edge, label %qca808x_phy_ms_seed_enable.exit

at803x_debug_reg_read.exit.i.i39.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

qca808x_phy_ms_seed_enable.exit:                  ; preds = %at803x_debug_reg_read.exit.i.i39
  %22 = trunc i32 %call.i6.i.i.i37 to i16
  %conv7.i.i40 = or i16 %22, 2
  %23 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i.i.i.i, align 8
  %25 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i41 = tail call i32 @mdiobus_write(ptr noundef %24, i32 noundef %26, i32 noundef 30, i16 noundef zeroext %conv7.i.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i41)
  %tobool14.not = icmp eq i32 %call.i.i.i41, 0
  br i1 %tobool14.not, label %if.end16, label %qca808x_phy_ms_seed_enable.exit.cleanup_crit_edge

qca808x_phy_ms_seed_enable.exit.cleanup_crit_edge: ; preds = %qca808x_phy_ms_seed_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %qca808x_phy_ms_seed_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call fastcc i32 @at803x_debug_reg_mask(ptr noundef %phydev, i16 noundef zeroext 11392, i16 noundef zeroext 255, i16 noundef zeroext 240)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %qca808x_phy_ms_seed_enable.exit.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.i39.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i.i.i, %qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge ], [ %call.i.i.i41, %qca808x_phy_ms_seed_enable.exit.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %call.i.i.i.i, %if.end8.cleanup_crit_edge ], [ %call.i6.i.i.i, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge ], [ %call.i.i.i.i35, %if.end12.cleanup_crit_edge ], [ %call.i6.i.i.i37, %at803x_debug_reg_read.exit.i.i39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca808x_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i1.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i1.i, align 4
  %and.i.i.i = and i32 %1, -32769
  %and = shl i32 %call, 10
  %2 = and i32 %and, 32768
  %and.i.i.sink.i = or i32 %and.i.i.i, %2
  store i32 %and.i.i.sink.i, ptr %add.ptr.i.i1.i, align 4
  %call1 = tail call i32 @genphy_read_status(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @at803x_read_specific_status(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %link, align 8
  %4 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool8.not = icmp eq i16 %4, 0
  br i1 %tobool8.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %if.end7
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %6)
  %cmp10 = icmp eq i32 %6, 2500
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 22, ptr %interface, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %interface, align 4
  br label %cleanup

if.else14:                                        ; preds = %if.end7
  %master_slave_state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 15
  %9 = ptrtoint ptr %master_slave_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %master_slave_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp15 = icmp eq i8 %10, 4
  br i1 %cmp15, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else14
  %bus.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %11 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i.i.i.i, align 8
  %addr.i.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %13 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 29, i16 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then17.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i:                   ; preds = %if.then17
  %15 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i.i.i, align 8
  %17 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i6.i.i.i = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i6.i.i.i, 0
  br i1 %cmp.i.i, label %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, label %if.end.i.i

at803x_debug_reg_read.exit.i.i.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %at803x_debug_reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = trunc i32 %call.i6.i.i.i to i16
  %20 = and i16 %19, -3
  %21 = ptrtoint ptr %bus.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i.i.i.i, align 8
  %23 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 30, i16 noundef zeroext %20) #7
  br label %cleanup

if.else19:                                        ; preds = %if.else14
  %call.i = tail call i32 @prandom_u32() #7
  %rem.i = urem i32 %call.i, 50
  %conv.i = trunc i32 %rem.i to i16
  %conv16.i = shl nuw nsw i16 %conv.i, 2
  %bus.i.i.i.i41 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %25 = ptrtoint ptr %bus.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i.i.i.i41, align 8
  %addr.i.i.i.i42 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %27 = ptrtoint ptr %addr.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i.i.i.i42, align 8
  %call.i.i.i.i43 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef 29, i16 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i43)
  %cmp.i.i.i44 = icmp slt i32 %call.i.i.i.i43, 0
  br i1 %cmp.i.i.i44, label %if.else19.qca808x_phy_ms_random_seed_set.exit_crit_edge, label %at803x_debug_reg_read.exit.i.i47

if.else19.qca808x_phy_ms_random_seed_set.exit_crit_edge: ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %qca808x_phy_ms_random_seed_set.exit

at803x_debug_reg_read.exit.i.i47:                 ; preds = %if.else19
  %29 = ptrtoint ptr %bus.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i.i.i.i41, align 8
  %31 = ptrtoint ptr %addr.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i.i.i.i42, align 8
  %call.i6.i.i.i45 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %32, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i45)
  %cmp.i.i46 = icmp slt i32 %call.i6.i.i.i45, 0
  br i1 %cmp.i.i46, label %at803x_debug_reg_read.exit.i.i47.qca808x_phy_ms_random_seed_set.exit_crit_edge, label %if.end.i.i49

at803x_debug_reg_read.exit.i.i47.qca808x_phy_ms_random_seed_set.exit_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %qca808x_phy_ms_random_seed_set.exit

if.end.i.i49:                                     ; preds = %at803x_debug_reg_read.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  %33 = trunc i32 %call.i6.i.i.i45 to i16
  %34 = and i16 %33, -8189
  %conv7.i.i = or i16 %34, %conv16.i
  %35 = ptrtoint ptr %bus.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i.i.i.i41, align 8
  %37 = ptrtoint ptr %addr.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.i.i.i.i42, align 8
  %call.i.i.i48 = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef %38, i32 noundef 30, i16 noundef zeroext %conv7.i.i) #7
  br label %qca808x_phy_ms_random_seed_set.exit

qca808x_phy_ms_random_seed_set.exit:              ; preds = %if.end.i.i49, %at803x_debug_reg_read.exit.i.i47.qca808x_phy_ms_random_seed_set.exit_crit_edge, %if.else19.qca808x_phy_ms_random_seed_set.exit_crit_edge
  %39 = ptrtoint ptr %bus.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i.i.i.i41, align 8
  %41 = ptrtoint ptr %addr.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i.i.i.i42, align 8
  %call.i.i.i.i53 = tail call i32 @mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 29, i16 noundef zeroext 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i53)
  %cmp.i.i.i54 = icmp slt i32 %call.i.i.i.i53, 0
  br i1 %cmp.i.i.i54, label %qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i.i57

qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge: ; preds = %qca808x_phy_ms_random_seed_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i.i57:                 ; preds = %qca808x_phy_ms_random_seed_set.exit
  %43 = ptrtoint ptr %bus.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i.i.i41, align 8
  %45 = ptrtoint ptr %addr.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.i.i.i42, align 8
  %call.i6.i.i.i55 = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef %46, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i55)
  %cmp.i.i56 = icmp slt i32 %call.i6.i.i.i55, 0
  br i1 %cmp.i.i56, label %at803x_debug_reg_read.exit.i.i57.cleanup_crit_edge, label %if.end.i.i60

at803x_debug_reg_read.exit.i.i57.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i60:                                     ; preds = %at803x_debug_reg_read.exit.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  %47 = trunc i32 %call.i6.i.i.i55 to i16
  %conv7.i.i58 = or i16 %47, 2
  %48 = ptrtoint ptr %bus.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i.i.i41, align 8
  %50 = ptrtoint ptr %addr.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i.i.i42, align 8
  %call.i.i.i59 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 30, i16 noundef zeroext %conv7.i.i58) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i60, %at803x_debug_reg_read.exit.i.i57.cleanup_crit_edge, %qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge, %if.end.i.i, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.else, %if.then11, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.else ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %at803x_debug_reg_read.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %qca808x_phy_ms_random_seed_set.exit.cleanup_crit_edge ], [ 0, %at803x_debug_reg_read.exit.i.i57.cleanup_crit_edge ], [ 0, %if.end.i.i60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca808x_cable_test_start(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i:                     ; preds = %entry
  %4 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i, align 8
  %call.i6.i.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %cmp.i = icmp slt i32 %call.i6.i.i, 0
  br i1 %cmp.i, label %at803x_debug_reg_read.exit.i.cleanup_crit_edge, label %at803x_debug_reg_mask.exit

at803x_debug_reg_read.exit.i.cleanup_crit_edge:   ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_mask.exit:                       ; preds = %at803x_debug_reg_read.exit.i
  %8 = trunc i32 %call.i6.i.i to i16
  %9 = and i16 %8, 32767
  %10 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 30, i16 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %at803x_debug_reg_mask.exit.cleanup_crit_edge, label %if.end

at803x_debug_reg_mask.exit.cleanup_crit_edge:     ; preds = %at803x_debug_reg_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %at803x_debug_reg_mask.exit
  %call.i = tail call i32 @phy_modify_changed(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %duplex, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1000, ptr %speed, align 8
  %call5 = tail call i32 @genphy_c45_pma_setup_forced(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @genphy_setup_forced(ptr noundef %phydev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32884, i16 noundef zeroext -16320) #7
  %call14 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32886, i16 noundef zeroext -16320) #7
  %call15 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32887, i16 noundef zeroext -24480) #7
  %call16 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32888, i16 noundef zeroext -16304) #7
  %call17 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32890, i16 noundef zeroext -16288) #7
  %call18 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32894, i16 noundef zeroext -20384) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %at803x_debug_reg_mask.exit.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ %call.i.i, %at803x_debug_reg_mask.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call.i.i.i, %entry.cleanup_crit_edge ], [ %call.i6.i.i, %at803x_debug_reg_read.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca808x_cable_test_get_status(ptr noundef %phydev, ptr nocapture noundef writeonly %finished) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %finished, align 1
  %drv.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv.i, align 8
  %phy_id.i = getelementptr inbounds %struct.phy_driver, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099777, i32 %4)
  %cmp.i = icmp eq i32 %4, 5099777
  %spec.select = select i1 %cmp.i, i16 -23552, i16 1
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 22, i16 noundef zeroext %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @at803x_cdt_wait_for_completion(ptr noundef %phydev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32868) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %do.end19

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end19:                                         ; preds = %if.end4
  %and = lshr i32 %call5, 12
  %shr = and i32 %and, 15
  %and36 = lshr i32 %call5, 8
  %shr37 = and i32 %and36, 15
  %and54 = lshr i32 %call5, 4
  %shr55 = and i32 %and54, 15
  %and72 = and i32 %call5, 15
  %switch.tableidx = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %retval.0.i = select i1 %9, i8 %switch.offset, i8 0
  %call75 = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i) #7
  %switch.tableidx187 = add nsw i32 %shr37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx187)
  %10 = icmp ult i32 %switch.tableidx187, 3
  %switch.idx.cast188 = trunc i32 %switch.tableidx187 to i8
  %switch.offset189 = add i8 %switch.idx.cast188, 1
  %retval.0.i140 = select i1 %10, i8 %switch.offset189, i8 0
  %call78 = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 1, i8 noundef zeroext %retval.0.i140) #7
  %switch.tableidx184 = add nsw i32 %shr55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx184)
  %11 = icmp ult i32 %switch.tableidx184, 3
  %switch.idx.cast185 = trunc i32 %switch.tableidx184 to i8
  %switch.offset186 = add i8 %switch.idx.cast185, 1
  %retval.0.i145 = select i1 %11, i8 %switch.offset186, i8 0
  %call81 = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 2, i8 noundef zeroext %retval.0.i145) #7
  %switch.tableidx190 = add nsw i32 %and72, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx190)
  %12 = icmp ult i32 %switch.tableidx190, 3
  %switch.idx.cast191 = trunc i32 %switch.tableidx190 to i8
  %switch.offset192 = add i8 %switch.idx.cast191, 1
  %retval.0.i150 = select i1 %12, i8 %switch.offset192, i8 0
  %call84 = tail call i32 @ethnl_cable_test_result(ptr noundef %phydev, i8 noundef zeroext 3, i8 noundef zeroext %retval.0.i150) #7
  %13 = and i32 %call5, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %13)
  %switch.i = icmp eq i32 %13, 8192
  br i1 %switch.i, label %if.then86, label %do.end19.if.end89_crit_edge

do.end19.if.end89_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then86:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32869) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i152 = icmp slt i32 %call.i, 0
  %and.i = and i32 %call.i, 255
  %mul.i = mul nuw nsw i32 %and.i, 824
  %div.i = udiv i32 %mul.i, 10
  %retval.0.i153 = select i1 %cmp.i152, i32 %call.i, i32 %div.i
  %call88 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 0, i32 noundef %retval.0.i153) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %do.end19.if.end89_crit_edge
  %14 = and i32 %call5, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %14)
  %switch.i154 = icmp eq i32 %14, 512
  br i1 %switch.i154, label %if.then91, label %if.end89.if.end94_crit_edge

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %call.i156 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32870) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp.i157 = icmp slt i32 %call.i156, 0
  %and.i158 = and i32 %call.i156, 255
  %mul.i159 = mul nuw nsw i32 %and.i158, 824
  %div.i160 = udiv i32 %mul.i159, 10
  %retval.0.i162 = select i1 %cmp.i157, i32 %call.i156, i32 %div.i160
  %call93 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 1, i32 noundef %retval.0.i162) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end89.if.end94_crit_edge
  %15 = and i32 %call5, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %switch.i164 = icmp eq i32 %15, 32
  br i1 %switch.i164, label %if.then96, label %if.end94.if.end99_crit_edge

if.end94.if.end99_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %call.i166 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32871) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp.i167 = icmp slt i32 %call.i166, 0
  %and.i168 = and i32 %call.i166, 255
  %mul.i169 = mul nuw nsw i32 %and.i168, 824
  %div.i170 = udiv i32 %mul.i169, 10
  %retval.0.i172 = select i1 %cmp.i167, i32 %call.i166, i32 %div.i170
  %call98 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 2, i32 noundef %retval.0.i172) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end94.if.end99_crit_edge
  %16 = and i32 %call5, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch.i174 = icmp eq i32 %16, 2
  br i1 %switch.i174, label %if.then101, label %if.end99.if.end104_crit_edge

if.end99.if.end104_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %call.i175 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 32872) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %cmp.i176 = icmp slt i32 %call.i175, 0
  %and.i177 = and i32 %call.i175, 255
  %mul.i178 = mul nuw nsw i32 %and.i177, 824
  %div.i179 = udiv i32 %mul.i178, 10
  %retval.0.i181 = select i1 %cmp.i176, i32 %call.i175, i32 %div.i179
  %call103 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %phydev, i8 noundef zeroext 3, i32 noundef %retval.0.i181) #7
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end99.if.end104_crit_edge
  %17 = ptrtoint ptr %finished to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %finished, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end104 ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at803x_debug_reg_mask(ptr nocapture noundef readonly %phydev, i16 noundef zeroext %reg, i16 noundef zeroext %clear, i16 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %at803x_debug_reg_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit:                       ; preds = %entry
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i6.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %cmp = icmp slt i32 %call.i6.i, 0
  br i1 %cmp, label %at803x_debug_reg_read.exit.cleanup_crit_edge, label %if.end

at803x_debug_reg_read.exit.cleanup_crit_edge:     ; preds = %at803x_debug_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %at803x_debug_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1 = zext i16 %clear to i32
  %neg = xor i32 %conv1, -1
  %and3 = and i32 %call.i6.i, %neg
  %8 = trunc i32 %and3 to i16
  %conv7 = or i16 %8, %set
  %9 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i, align 8
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 30, i16 noundef zeroext %conv7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %at803x_debug_reg_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call.i6.i, %at803x_debug_reg_read.exit.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_rgmii_reg_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %selector)
  %tobool.not = icmp eq i32 %selector, 0
  %bus.i.i.i4 = getelementptr inbounds %struct.mdio_device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i4, align 8
  %addr.i.i.i5 = getelementptr inbounds %struct.mdio_device, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i5, align 8
  %call.i.i.i6 = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i6)
  %cmp.i.i7 = icmp slt i32 %call.i.i.i6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i7, label %if.then.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i:                     ; preds = %if.then
  %4 = ptrtoint ptr %bus.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i4, align 8
  %6 = ptrtoint ptr %addr.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i5, align 8
  %call.i6.i.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %cmp.i = icmp slt i32 %call.i6.i.i, 0
  br i1 %cmp.i, label %at803x_debug_reg_read.exit.i.cleanup_crit_edge, label %if.end.i

at803x_debug_reg_read.exit.i.cleanup_crit_edge:   ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %at803x_debug_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = trunc i32 %call.i6.i.i to i16
  %conv7.i = or i16 %8, 8
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i7, label %if.else.cleanup_crit_edge, label %at803x_debug_reg_read.exit.i10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

at803x_debug_reg_read.exit.i10:                   ; preds = %if.else
  %9 = ptrtoint ptr %bus.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i.i4, align 8
  %11 = ptrtoint ptr %addr.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i.i5, align 8
  %call.i6.i.i8 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i8)
  %cmp.i9 = icmp slt i32 %call.i6.i.i8, 0
  br i1 %cmp.i9, label %at803x_debug_reg_read.exit.i10.cleanup_crit_edge, label %if.end.i12

at803x_debug_reg_read.exit.i10.cleanup_crit_edge: ; preds = %at803x_debug_reg_read.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i12:                                       ; preds = %at803x_debug_reg_read.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  %13 = trunc i32 %call.i6.i.i8 to i16
  %14 = and i16 %13, -9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i12, %if.end.i
  %.sink16 = phi i16 [ %14, %if.end.i12 ], [ %conv7.i, %if.end.i ]
  %15 = ptrtoint ptr %bus.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i.i4, align 8
  %17 = ptrtoint ptr %addr.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i.i5, align 8
  %call.i.i11 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 30, i16 noundef zeroext %.sink16) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %at803x_debug_reg_read.exit.i10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %at803x_debug_reg_read.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i6.i.i, %at803x_debug_reg_read.exit.i.cleanup_crit_edge ], [ %call.i.i.i6, %if.then.cleanup_crit_edge ], [ %call.i6.i.i8, %at803x_debug_reg_read.exit.i10.cleanup_crit_edge ], [ %call.i.i.i6, %if.else.cleanup_crit_edge ], [ %call.i.i11, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at803x_rgmii_reg_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.at803x_debug_reg_read.exit_crit_edge, label %if.end.i

entry.at803x_debug_reg_read.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %at803x_debug_reg_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i6.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 30) #7
  br label %at803x_debug_reg_read.exit

at803x_debug_reg_read.exit:                       ; preds = %if.end.i, %entry.at803x_debug_reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i6.i, %if.end.i ], [ %call.i.i, %entry.at803x_debug_reg_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %and = lshr i32 %retval.0.i, 3
  %and.lobit = and i32 %and, 1
  %retval.0 = select i1 %cmp, i32 %retval.0.i, i32 %and.lobit
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at803x_read_specific_status(ptr nocapture noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup85_crit_edge, label %if.end

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup85_crit_edge, label %if.then1

if.end.cleanup85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i109 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp3 = icmp slt i32 %call.i109, 0
  br i1 %cmp3, label %if.then1.cleanup85_crit_edge, label %if.end5

if.then1.cleanup85_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.end5:                                          ; preds = %if.then1
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %8 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099777, i32 %11)
  %cmp6 = icmp eq i32 %11, 5099777
  %and20 = lshr i32 %call.i, 7
  %shr = and i32 %and20, 7
  %and37 = lshr i32 %call.i, 14
  %shr38 = and i32 %and37, 3
  %speed.0 = select i1 %cmp6, i32 %shr, i32 %shr38
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %speed.0)
  %12 = icmp ult i32 %speed.0, 5
  br i1 %12, label %switch.hole_check, label %if.end5.sw.epilog_crit_edge

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end5
  %switch.maskindex = trunc i32 %speed.0 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.at803x_read_specific_status, i32 0, i32 %speed.0
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %speed46 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %15 = ptrtoint ptr %speed46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load, ptr %speed46, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %and47 = lshr i32 %call.i, 13
  %and47.lobit = and i32 %and47, 1
  %16 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and47.lobit, ptr %16, align 4
  %and53 = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %.sink110 = select i1 %tobool54.not, i8 1, i8 2
  %18 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink110, ptr %18, align 8
  %and75 = lshr i32 %call.i109, 5
  %shr76 = and i32 %and75, 3
  %20 = zext i32 %shr76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %shr76, label %sw.epilog.cleanup85_crit_edge [
    i32 0, label %sw.epilog.cleanup85.sink.split_crit_edge
    i32 1, label %sw.bb78
    i32 3, label %sw.bb80
  ]

sw.epilog.cleanup85.sink.split_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85.sink.split

sw.epilog.cleanup85_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

sw.bb78:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85.sink.split

sw.bb80:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85.sink.split

cleanup85.sink.split:                             ; preds = %sw.bb80, %sw.bb78, %sw.epilog.cleanup85.sink.split_crit_edge
  %.sink112 = phi i8 [ 2, %sw.bb78 ], [ 3, %sw.bb80 ], [ 1, %sw.epilog.cleanup85.sink.split_crit_edge ]
  %mdix_ctrl = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %21 = ptrtoint ptr %mdix_ctrl to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink112, ptr %mdix_ctrl, align 1
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup85.sink.split, %sw.epilog.cleanup85_crit_edge, %if.then1.cleanup85_crit_edge, %if.end.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %retval.1 = phi i32 [ %call.i, %entry.cleanup85_crit_edge ], [ %call.i109, %if.then1.cleanup85_crit_edge ], [ 0, %sw.epilog.cleanup85_crit_edge ], [ 0, %if.end.cleanup85_crit_edge ], [ 0, %cleanup85.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at803x_cdt_wait_for_completion(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %phy_id = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5099777, i32 %3)
  %cmp = icmp eq i32 %3, 5099777
  %. = select i1 %cmp, i32 32768, i32 1
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1373) #7
  tail call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #7
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i76 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 22) #7
  %and77 = and i32 %call.i76, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool14.not78 = icmp eq i32 %and77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp1579 = icmp slt i32 %call.i76, 0
  %or.cond80 = or i1 %cmp1579, %tobool14.not78
  br i1 %or.cond80, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %if.then24, label %if.then28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i72 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 22) #7
  %.pre = and i32 %call.i72, %.
  br label %for.end

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #7
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %15, i32 noundef 22) #7
  %and = and i32 %call.i, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  %or.cond = or i1 %cmp15, %tobool14.not
  br i1 %or.cond, label %if.then28.for.end_crit_edge, label %if.then28.land.lhs.true_crit_edge

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then28.for.end_crit_edge, %if.then24, %entry.for.end_crit_edge
  %and33.pre-phi = phi i32 [ %and77, %entry.for.end_crit_edge ], [ %.pre, %if.then24 ], [ %and, %if.then28.for.end_crit_edge ]
  %val.0 = phi i32 [ %call.i76, %entry.for.end_crit_edge ], [ %call.i72, %if.then24 ], [ %call.i, %if.then28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.pre-phi)
  %tobool34.not = icmp eq i32 %and33.pre-phi, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp35 = icmp slt i32 %val.0, 0
  %16 = or i1 %cmp35, %tobool34.not
  %17 = select i1 %16, i32 0, i32 -110
  %__ret.0 = select i1 %cmp35, i32 %val.0, i32 %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool41.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool41.not, label %for.end.if.end46_crit_edge, label %do.end45

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %__ret.0) #10
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %for.end.if.end46_crit_edge
  ret i32 %__ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_fault_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_fast_retrain(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__UNIQUE_ID_description379, !1, !"__UNIQUE_ID_description379", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/at803x.c", i32 258, i32 1}
!2 = !{ptr @__UNIQUE_ID_author380, !3, !"__UNIQUE_ID_author380", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/at803x.c", i32 259, i32 1}
!4 = !{ptr @__UNIQUE_ID_file381, !5, !"__UNIQUE_ID_file381", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/at803x.c", i32 260, i32 1}
!6 = !{ptr @__UNIQUE_ID_license382, !5, !"__UNIQUE_ID_license382", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_at803x__474_2054_phy_module_init6, !8, !"__initcall__kmod_at803x__474_2054_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/at803x.c", i32 2054, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/at803x.c", i32 1877, i32 12}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/at803x.c", i32 1899, i32 12}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/at803x.c", i32 1915, i32 12}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/at803x.c", i32 1939, i32 12}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/at803x.c", i32 1957, i32 12}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/at803x.c", i32 1972, i32 12}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/at803x.c", i32 1988, i32 12}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/at803x.c", i32 2004, i32 12}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/at803x.c", i32 2020, i32 12}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/at803x.c", i32 2035, i32 12}
!30 = !{ptr @at803x_driver, !31, !"at803x_driver", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/at803x.c", i32 1873, i32 26}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/at803x.c", i32 664, i32 34}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/at803x.c", i32 667, i32 34}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/phy/at803x.c", i32 669, i32 4}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @at803x_parse_dt._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @at803x_parse_dt._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/at803x.c", i32 675, i32 34}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/at803x.c", i32 677, i32 4}
!48 = !{ptr @at803x_parse_dt._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @at803x_parse_dt._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/phy/at803x.c", i32 683, i32 35}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/at803x.c", i32 699, i32 4}
!54 = !{ptr @at803x_parse_dt._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @at803x_parse_dt._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/phy/at803x.c", i32 724, i32 35}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/at803x.c", i32 738, i32 4}
!60 = !{ptr @at803x_parse_dt._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @at803x_parse_dt._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/at803x.c", i32 747, i32 35}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/phy/at803x.c", i32 755, i32 10}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/phy/at803x.c", i32 757, i32 4}
!68 = !{ptr @at803x_parse_dt._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @at803x_parse_dt._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/phy/at803x.c", i32 640, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @at8031_register_regulators._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @at8031_register_regulators._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/phy/at803x.c", i32 646, i32 3}
!77 = !{ptr @at8031_register_regulators._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @at8031_register_regulators._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/phy/at803x.c", i32 608, i32 14}
!81 = !{ptr @vddio_desc, !82, !"vddio_desc", i1 false, i1 false}
!82 = !{!"../drivers/net/phy/at803x.c", i32 606, i32 36}
!83 = !{ptr @vddio_regulator_ops, !84, !"vddio_regulator_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/phy/at803x.c", i32 595, i32 35}
!85 = !{ptr @vddio_voltage_table, !86, !"vddio_voltage_table", i1 false, i1 false}
!86 = !{!"../drivers/net/phy/at803x.c", i32 601, i32 27}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/phy/at803x.c", i32 620, i32 10}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/phy/at803x.c", i32 621, i32 14}
!91 = !{ptr @vddh_desc, !92, !"vddh_desc", i1 false, i1 false}
!92 = !{!"../drivers/net/phy/at803x.c", i32 619, i32 36}
!93 = !{ptr @vddh_regulator_ops, !94, !"vddh_regulator_ops", i1 false, i1 false}
!94 = !{!"../drivers/net/phy/at803x.c", i32 616, i32 35}
!95 = distinct !{null, !96, !"offsets", i1 false, i1 false}
!96 = !{!"../drivers/net/phy/at803x.c", i32 424, i32 28}
!97 = !{ptr @at803x_cable_test_one_pair.ethtool_pair, !98, !"ethtool_pair", i1 false, i1 false}
!98 = !{!"../drivers/net/phy/at803x.c", i32 1380, i32 19}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/phy/at803x.c", i32 1371, i32 8}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @at803x_cdt_wait_for_completion._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @at803x_cdt_wait_for_completion._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/phy/at803x.c", i32 1047, i32 3}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @at803x_link_change_notify.__UNIQUE_ID_ddebug388, !105, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/phy/at803x.c", i32 1546, i32 8}
!111 = !{ptr @qca83xx_resume._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @qca83xx_resume._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/phy/at803x.c", i32 275, i32 4}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/phy/at803x.c", i32 276, i32 4}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/phy/at803x.c", i32 277, i32 4}
!119 = distinct !{null, !120, !"at803x_hw_stats", i1 false, i1 false}
!120 = !{!"../drivers/net/phy/at803x.c", i32 274, i32 30}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"auto-init"}
!131 = !{i64 2148416858, i64 2148416863, i64 2148416876, i64 2148416920, i64 2148416954, i64 2148416975}
