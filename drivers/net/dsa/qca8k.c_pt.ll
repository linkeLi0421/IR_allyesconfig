; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/qca8k.c_pt.bc'
source_filename = "../drivers/net/dsa/qca8k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qca8k_match_data = type { i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.qca8k_mib_desc = type { i32, i32, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.qca8k_priv = type { i8, i8, i8, i8, i8, i8, %struct.qca8k_ports_config, ptr, ptr, [7 x %struct.ar8xxx_port_status], ptr, %struct.mutex, ptr, %struct.dsa_switch_ops, ptr, [7 x i32] }
%struct.qca8k_ports_config = type { i8, i8, i8, [2 x i8], [2 x i8] }
%struct.ar8xxx_port_status = type { i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_port = type { %union.anon.150, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.qca8k_fdb = type { i16, i8, i8, [6 x i8] }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.dsa_mall_mirror_tc_entry = type { i8, i8 }
%struct.netdev_lag_upper_info = type { i32, i32 }

@__initcall__kmod_qca8k__868_2611_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@qca8kmdio_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qca8k_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca8k_pm_ops, ptr null, ptr null }, i32 0 }, ptr @qca8k_sw_probe, ptr @qca8k_sw_remove, ptr @qca8k_sw_shutdown }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author869 = internal constant [62 x i8] c"qca8k.author=Mathieu Olivari, John Crispin <john@phrozen.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description870 = internal constant [58 x i8] c"qca8k.description=Driver for QCA8K ethernet switch family\00", section ".modinfo", align 1
@__UNIQUE_ID_file871 = internal constant [33 x i8] c"qca8k.file=drivers/net/dsa/qca8k\00", section ".modinfo", align 1
@__UNIQUE_ID_license872 = internal constant [21 x i8] c"qca8k.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias873 = internal constant [27 x i8] c"qca8k.alias=platform:qca8k\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qca8k\00", [26 x i8] zeroinitializer }, align 32
@qca8k_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,qca8327\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca8327 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,qca8328\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca8328 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,qca8334\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca833x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,qca8337\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qca833x }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@qca8k_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qca8k_suspend, ptr @qca8k_resume, ptr @qca8k_suspend, ptr @qca8k_resume, ptr @qca8k_suspend, ptr @qca8k_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@qca8327 = internal constant { %struct.qca8k_match_data, [29 x i8] } { %struct.qca8k_match_data { i8 18, i8 1, i8 39 }, [29 x i8] zeroinitializer }, align 32
@qca8328 = internal constant { %struct.qca8k_match_data, [29 x i8] } { %struct.qca8k_match_data { i8 18, i8 0, i8 39 }, [29 x i8] zeroinitializer }, align 32
@qca833x = internal constant { %struct.qca8k_match_data, [29 x i8] } { %struct.qca8k_match_data { i8 19, i8 0, i8 41 }, [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@qca8k_sw_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@qca8k_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr @qca8k_regmap_read, ptr @qca8k_regmap_write, ptr @qca8k_regmap_update_bits, i8 0, i32 5804, ptr null, ptr @qca8k_readable_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"qca8k:2485:(&qca8k_regmap_config)->lock\00", [56 x i8] zeroinitializer }, align 32
@qca8k_sw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regmap initialization failed\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qca8k_sw_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/dsa/qca8k.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qca8k_sw_probe._entry_ptr = internal global ptr @qca8k_sw_probe._entry, section ".printk_index", align 4
@qca8k_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @qca8k_get_tag_protocol, ptr null, ptr null, ptr @qca8k_setup, ptr null, ptr null, ptr null, ptr @qca8k_get_phy_flags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca8k_phylink_validate, ptr @qca8k_phylink_mac_link_state, ptr @qca8k_phylink_mac_config, ptr null, ptr @qca8k_phylink_mac_link_down, ptr @qca8k_phylink_mac_link_up, ptr null, ptr @qca8k_get_strings, ptr @qca8k_get_ethtool_stats, ptr @qca8k_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca8k_port_enable, ptr @qca8k_port_disable, ptr @qca8k_set_mac_eee, ptr @qca8k_get_mac_eee, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca8k_set_ageing_time, ptr @qca8k_port_bridge_join, ptr @qca8k_port_bridge_leave, ptr @qca8k_port_stp_state_set, ptr @qca8k_port_fast_age, ptr null, ptr null, ptr @qca8k_port_vlan_filtering, ptr @qca8k_port_vlan_add, ptr @qca8k_port_vlan_del, ptr @qca8k_port_fdb_add, ptr @qca8k_port_fdb_del, ptr @qca8k_port_fdb_dump, ptr @qca8k_port_mdb_add, ptr @qca8k_port_mdb_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca8k_port_mirror_add, ptr @qca8k_port_mirror_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca8k_port_change_mtu, ptr @qca8k_port_max_mtu, ptr null, ptr @qca8k_port_lag_join, ptr @qca8k_port_lag_leave, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@qca8k_sw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->reg_mutex\00", [47 x i8] zeroinitializer }, align 32
@qca8k_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @qca8k_readable_ranges, i32 15, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@qca8k_current_page = internal global { i16, [30 x i8] } { i16 -1, [30 x i8] zeroinitializer }, align 32
@qca8k_set_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.qca8k_set_page = private unnamed_addr constant [15 x i8] c"qca8k_set_page\00", align 1
@qca8k_set_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.qca8k_set_page, ptr @.str.5, i32 146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set qca8k page\0A\00", [38 x i8] zeroinitializer }, align 32
@qca8k_set_page._entry_ptr = internal global ptr @qca8k_set_page._entry, section ".printk_index", align 4
@qca8k_mii_read32._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qca8k_mii_read32 = private unnamed_addr constant [17 x i8] c"qca8k_mii_read32\00", align 1
@qca8k_mii_read32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.qca8k_mii_read32, ptr @.str.5, i32 110, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read qca8k 32bit register\0A\00", [59 x i8] zeroinitializer }, align 32
@qca8k_mii_read32._entry_ptr = internal global ptr @qca8k_mii_read32._entry, section ".printk_index", align 4
@qca8k_mii_write32._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qca8k_mii_write32 = private unnamed_addr constant [18 x i8] c"qca8k_mii_write32\00", align 1
@qca8k_mii_write32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.qca8k_mii_write32, ptr @.str.5, i32 132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to write qca8k 32bit register\0A\00", [58 x i8] zeroinitializer }, align 32
@qca8k_mii_write32._entry_ptr = internal global ptr @qca8k_mii_write32._entry, section ".printk_index", align 4
@qca8k_readable_ranges = internal constant { [15 x %struct.regmap_range], [40 x i8] } { [15 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 228 }, %struct.regmap_range { i32 256, i32 360 }, %struct.regmap_range { i32 512, i32 624 }, %struct.regmap_range { i32 1024, i32 1108 }, %struct.regmap_range { i32 1536, i32 1816 }, %struct.regmap_range { i32 2048, i32 2928 }, %struct.regmap_range { i32 3072, i32 3200 }, %struct.regmap_range { i32 3584, i32 3736 }, %struct.regmap_range { i32 4096, i32 4268 }, %struct.regmap_range { i32 4352, i32 4524 }, %struct.regmap_range { i32 4608, i32 4780 }, %struct.regmap_range { i32 4864, i32 5036 }, %struct.regmap_range { i32 5120, i32 5292 }, %struct.regmap_range { i32 5376, i32 5548 }, %struct.regmap_range { i32 5632, i32 5804 }], [40 x i8] zeroinitializer }, align 32
@qca8k_read_switch_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 2441, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Switch id detected %x but expected %x\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca8k_read_switch_id\00", [43 x i8] zeroinitializer }, align 32
@qca8k_read_switch_id._entry_ptr = internal global ptr @qca8k_read_switch_id._entry, section ".printk_index", align 4
@qca8k_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 1144, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"No cpu port configured in both cpu port0 and port6\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qca8k_setup\00", [20 x i8] zeroinitializer }, align 32
@qca8k_setup._entry_ptr = internal global ptr @qca8k_setup._entry, section ".printk_index", align 4
@qca8k_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 1169, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed disabling MAC06 exchange\00", [32 x i8] zeroinitializer }, align 32
@qca8k_setup._entry_ptr.19 = internal global ptr @qca8k_setup._entry.17, section ".printk_index", align 4
@qca8k_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.5, i32 1177, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed enabling CPU port\00", [39 x i8] zeroinitializer }, align 32
@qca8k_setup._entry_ptr.22 = internal global ptr @qca8k_setup._entry.20, section ".printk_index", align 4
@qca8k_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.5, i32 1184, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mib init failed\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qca8k_setup._entry_ptr.26 = internal global ptr @qca8k_setup._entry.23, section ".printk_index", align 4
@qca8k_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.5, i32 1200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed enabling QCA header mode\00", [32 x i8] zeroinitializer }, align 32
@qca8k_setup._entry_ptr.29 = internal global ptr @qca8k_setup._entry.27, section ".printk_index", align 4
@qca8k_setup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.16, ptr @.str.5, i32 1331, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed setting MTU settings\00", [36 x i8] zeroinitializer }, align 32
@qca8k_setup._entry_ptr.32 = internal global ptr @qca8k_setup._entry.30, section ".printk_index", align 4
@qca8k_find_cpu_port.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qca8k_find_cpu_port\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"port 0 is not the CPU port. Checking port 6\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@qca8k_parse_port_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 1079, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"rgmii tx delay is limited to a max value of 3ns, setting to the max value\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qca8k_parse_port_config\00", [40 x i8] zeroinitializer }, align 32
@qca8k_parse_port_config._entry_ptr = internal global ptr @qca8k_parse_port_config._entry, section ".printk_index", align 4
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx-internal-delay-ps\00", [43 x i8] zeroinitializer }, align 32
@qca8k_parse_port_config._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.5, i32 1095, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"rgmii rx delay is limited to a max value of 3ns, setting to the max value\00", [54 x i8] zeroinitializer }, align 32
@qca8k_parse_port_config._entry_ptr.41 = internal global ptr @qca8k_parse_port_config._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qca,sgmii-txclk-falling-edge\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qca,sgmii-rxclk-falling-edge\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca,sgmii-enable-pll\00", [43 x i8] zeroinitializer }, align 32
@qca8k_parse_port_config._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.37, ptr @.str.5, i32 1118, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"SGMII PLL should NOT be enabled for qca8327. Aborting enabling\00", [33 x i8] zeroinitializer }, align 32
@qca8k_parse_port_config._entry_ptr.47 = internal global ptr @qca8k_parse_port_config._entry.45, section ".printk_index", align 4
@qca8k_parse_port_config._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.37, ptr @.str.5, i32 1123, ptr @.str.25, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"SGMII PLL should NOT be enabled for qca8337 with revision 2 or more.\00", [59 x i8] zeroinitializer }, align 32
@qca8k_parse_port_config._entry_ptr.50 = internal global ptr @qca8k_parse_port_config._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@qca8k_setup_mdio_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 903, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no PHYs are defined.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qca8k_setup_mdio_bus\00", [43 x i8] zeroinitializer }, align 32
@qca8k_setup_mdio_bus._entry_ptr = internal global ptr @qca8k_setup_mdio_bus._entry, section ".printk_index", align 4
@qca8k_setup_mdio_bus._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.5, i32 919, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"either internal or external mdio bus configuration is supported.\0A\00", [62 x i8] zeroinitializer }, align 32
@qca8k_setup_mdio_bus._entry_ptr.59 = internal global ptr @qca8k_setup_mdio_bus._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qca8k slave mii\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qca8k-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qca,ignore-power-on-sel\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qca,led-open-drain\00", [45 x i8] zeroinitializer }, align 32
@qca8k_setup_of_pws_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 1025, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"qca,led-open-drain require qca,ignore-power-on-sel to be set.\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qca8k_setup_of_pws_reg\00", [41 x i8] zeroinitializer }, align 32
@qca8k_setup_of_pws_reg._entry_ptr = internal global ptr @qca8k_setup_of_pws_reg._entry, section ".printk_index", align 4
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,ipq8064\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,ipq8065\00", [19 x i8] zeroinitializer }, align 32
@qca8k_phylink_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 1430, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unsupported port: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qca8k_phylink_mac_config\00", [39 x i8] zeroinitializer }, align 32
@qca8k_phylink_mac_config._entry_ptr = internal global ptr @qca8k_phylink_mac_config._entry, section ".printk_index", align 4
@qca8k_phylink_mac_config._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.5, i32 1436, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: in-band negotiation unsupported\0A\00", [59 x i8] zeroinitializer }, align 32
@qca8k_phylink_mac_config._entry_ptr.73 = internal global ptr @qca8k_phylink_mac_config._entry.71, section ".printk_index", align 4
@qca8k_phylink_mac_config._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.5, i32 1529, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"xMII mode %s not supported for port %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qca8k_phylink_mac_config._entry_ptr.76 = internal global ptr @qca8k_phylink_mac_config._entry.74, section ".printk_index", align 4
@qca8k_mac_config_setup_internal_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 1387, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to set internal delay for CPU port%d\00", [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"qca8k_mac_config_setup_internal_delay\00", [58 x i8] zeroinitializer }, align 32
@qca8k_mac_config_setup_internal_delay._entry_ptr = internal global ptr @qca8k_mac_config_setup_internal_delay._entry, section ".printk_index", align 4
@.str.79 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ar8327_mib = internal constant { [41 x %struct.qca8k_mib_desc], [116 x i8] } { [41 x %struct.qca8k_mib_desc] [%struct.qca8k_mib_desc { i32 1, i32 0, ptr @.str.110 }, %struct.qca8k_mib_desc { i32 1, i32 4, ptr @.str.111 }, %struct.qca8k_mib_desc { i32 1, i32 8, ptr @.str.112 }, %struct.qca8k_mib_desc { i32 1, i32 12, ptr @.str.113 }, %struct.qca8k_mib_desc { i32 1, i32 16, ptr @.str.114 }, %struct.qca8k_mib_desc { i32 1, i32 20, ptr @.str.115 }, %struct.qca8k_mib_desc { i32 1, i32 24, ptr @.str.116 }, %struct.qca8k_mib_desc { i32 1, i32 28, ptr @.str.117 }, %struct.qca8k_mib_desc { i32 1, i32 32, ptr @.str.118 }, %struct.qca8k_mib_desc { i32 1, i32 36, ptr @.str.119 }, %struct.qca8k_mib_desc { i32 1, i32 40, ptr @.str.120 }, %struct.qca8k_mib_desc { i32 1, i32 44, ptr @.str.121 }, %struct.qca8k_mib_desc { i32 1, i32 48, ptr @.str.122 }, %struct.qca8k_mib_desc { i32 1, i32 52, ptr @.str.123 }, %struct.qca8k_mib_desc { i32 1, i32 56, ptr @.str.124 }, %struct.qca8k_mib_desc { i32 2, i32 60, ptr @.str.125 }, %struct.qca8k_mib_desc { i32 2, i32 68, ptr @.str.126 }, %struct.qca8k_mib_desc { i32 1, i32 76, ptr @.str.127 }, %struct.qca8k_mib_desc { i32 1, i32 80, ptr @.str.128 }, %struct.qca8k_mib_desc { i32 1, i32 84, ptr @.str.129 }, %struct.qca8k_mib_desc { i32 1, i32 88, ptr @.str.130 }, %struct.qca8k_mib_desc { i32 1, i32 92, ptr @.str.131 }, %struct.qca8k_mib_desc { i32 1, i32 96, ptr @.str.132 }, %struct.qca8k_mib_desc { i32 1, i32 100, ptr @.str.133 }, %struct.qca8k_mib_desc { i32 1, i32 104, ptr @.str.134 }, %struct.qca8k_mib_desc { i32 1, i32 108, ptr @.str.135 }, %struct.qca8k_mib_desc { i32 1, i32 112, ptr @.str.136 }, %struct.qca8k_mib_desc { i32 1, i32 116, ptr @.str.137 }, %struct.qca8k_mib_desc { i32 1, i32 120, ptr @.str.138 }, %struct.qca8k_mib_desc { i32 1, i32 124, ptr @.str.139 }, %struct.qca8k_mib_desc { i32 1, i32 128, ptr @.str.140 }, %struct.qca8k_mib_desc { i32 2, i32 132, ptr @.str.141 }, %struct.qca8k_mib_desc { i32 1, i32 140, ptr @.str.142 }, %struct.qca8k_mib_desc { i32 1, i32 144, ptr @.str.143 }, %struct.qca8k_mib_desc { i32 1, i32 148, ptr @.str.144 }, %struct.qca8k_mib_desc { i32 1, i32 152, ptr @.str.145 }, %struct.qca8k_mib_desc { i32 1, i32 156, ptr @.str.146 }, %struct.qca8k_mib_desc { i32 1, i32 160, ptr @.str.147 }, %struct.qca8k_mib_desc { i32 1, i32 164, ptr @.str.148 }, %struct.qca8k_mib_desc { i32 1, i32 168, ptr @.str.149 }, %struct.qca8k_mib_desc { i32 1, i32 172, ptr @.str.150 }], [116 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxBroad\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxPause\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxMulti\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxFcsErr\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxAlignErr\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RxRunt\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxFragment\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rx64Byte\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx128Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx256Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Rx512Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rx1024Byte\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rx1518Byte\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxMaxByte\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxTooLong\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxGoodByte\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxBadByte\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxOverFlow\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Filtered\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxBroad\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxPause\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxMulti\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxUnderRun\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Tx64Byte\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx128Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx256Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tx512Byte\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tx1024Byte\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tx1518Byte\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxMaxByte\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxOverSize\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TxByte\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxCollision\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxAbortCol\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxMultiCol\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxSingleCol\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxExcDefer\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxDefer\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxLateCol\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RXUnicast\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TXUnicast\00", [22 x i8] zeroinitializer }, align 32
@qca8k_port_vlan_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.5, i32 2158, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to add VLAN to port %d (%d)\00", [61 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qca8k_port_vlan_add\00", [44 x i8] zeroinitializer }, align 32
@qca8k_port_vlan_add._entry_ptr = internal global ptr @qca8k_port_vlan_add._entry, section ".printk_index", align 4
@qca8k_port_vlan_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.5, i32 2186, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to delete VLAN from port %d (%d)\00", [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qca8k_port_vlan_del\00", [44 x i8] zeroinitializer }, align 32
@qca8k_port_vlan_del._entry_ptr = internal global ptr @qca8k_port_vlan_del._entry, section ".printk_index", align 4
@qca8k_port_mirror_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.5, i32 2123, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to del mirror port from %d\00", [62 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qca8k_port_mirror_del\00", [42 x i8] zeroinitializer }, align 32
@qca8k_port_mirror_del._entry_ptr = internal global ptr @qca8k_port_mirror_del._entry, section ".printk_index", align 4
@.str.157 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Error: Mismatched Hash Mode across different lag is not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@switch.table.qca8k_setup = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 512115779, i32 419464771, i32 419464771, i32 419464771, i32 419464771, i32 512115779, i32 512115779], [36 x i8] zeroinitializer }, align 32
@switch.table.qca8k_phylink_mac_link_state = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 10, i32 100, i32 1000], [20 x i8] zeroinitializer }, align 32
@switch.table.qca8k_port_stp_state_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 131072, i32 196608, i32 262144, i32 65536], [44 x i8] zeroinitializer }, align 32
@switch.table.phy_modes = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.108, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.158 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.160 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.161 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4, i64 9, i64 10, i64 11, i64 12, i64 21]
@__sancov_gen_cov_switch_values.164 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.165 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.166 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12, i64 21]
@__sancov_gen_cov_switch_values.167 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12, i64 21]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 21]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"qca8kmdio_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2600, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2605, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"qca8k_of_match\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2592, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"qca8k_pm_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2573, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant [8 x i8] c"qca8327\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2576, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant [8 x i8] c"qca8328\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2582, i32 38 }
@___asan_gen_.189 = private unnamed_addr constant [8 x i8] c"qca833x\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2587, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2469, i32 56 }
@___asan_gen_.195 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c"qca8k_regmap_config\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 274, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2484, i32 17 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2487, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"qca8k_switch_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2386, i32 36 }
@___asan_gen_.225 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2505, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [21 x i8] c"qca8k_readable_table\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 269, i32 41 }
@___asan_gen_.234 = private unnamed_addr constant [19 x i8] c"qca8k_current_page\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 81, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 145, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 109, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 131, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [22 x i8] c"qca8k_readable_ranges\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 250, i32 34 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2441, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1144, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1169, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1177, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1184, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1200, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1331, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 987, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1071, i32 39 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1079, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1087, i32 39 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1095, i32 5 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1108, i32 39 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1111, i32 39 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1114, i32 39 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1118, i32 6 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1123, i32 6 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 874, i32 51 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 876, i32 52 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 882, i32 36 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 894, i32 35 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 903, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 919, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 933, i32 50 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 852, i32 14 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 855, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1020, i32 34 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1023, i32 34 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1025, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 962, i32 31 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 966, i32 31 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1430, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1435, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1528, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 1386, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 211, i32 10 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 213, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 215, i32 10 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 217, i32 10 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 219, i32 10 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 221, i32 10 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 223, i32 10 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 225, i32 10 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 227, i32 10 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 229, i32 10 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 231, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 233, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 235, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 237, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 239, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 241, i32 10 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 243, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 245, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 247, i32 10 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 249, i32 10 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 251, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 253, i32 10 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 255, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 257, i32 10 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 259, i32 10 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 261, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 263, i32 10 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 265, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 267, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 269, i32 10 }
@___asan_gen_.547 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 271, i32 10 }
@___asan_gen_.549 = private unnamed_addr constant [11 x i8] c"ar8327_mib\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 33, i32 36 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 34, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 35, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 36, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 37, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 38, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 39, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 40, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 41, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 42, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 43, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 44, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 45, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 46, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 47, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 48, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 49, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 50, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 51, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 52, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 53, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 54, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 55, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 56, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 57, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 58, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 59, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 60, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 61, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 62, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 63, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 64, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 65, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 66, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 67, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 68, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 69, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 70, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 71, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 72, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 73, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 74, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2158, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2186, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2123, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.703 = private constant [27 x i8] c"../drivers/net/dsa/qca8k.c\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.703, i32 2285, i32 19 }
@___asan_gen_.705 = private unnamed_addr constant [25 x i8] c"switch.table.qca8k_setup\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [42 x i8] c"switch.table.qca8k_phylink_mac_link_state\00", align 1
@___asan_gen_.707 = private unnamed_addr constant [38 x i8] c"switch.table.qca8k_port_stp_state_set\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [23 x i8] c"switch.table.phy_modes\00", align 1
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_alias873, ptr @__UNIQUE_ID_author869, ptr @__UNIQUE_ID_description870, ptr @__UNIQUE_ID_file871, ptr @__UNIQUE_ID_license872, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_qca8k__868_2611_mdio_module_init6, ptr @mdio_module_exit, ptr @qca8k_mac_config_setup_internal_delay._entry, ptr @qca8k_mac_config_setup_internal_delay._entry_ptr, ptr @qca8k_mii_read32._entry, ptr @qca8k_mii_read32._entry_ptr, ptr @qca8k_mii_write32._entry, ptr @qca8k_mii_write32._entry_ptr, ptr @qca8k_parse_port_config._entry, ptr @qca8k_parse_port_config._entry.39, ptr @qca8k_parse_port_config._entry.45, ptr @qca8k_parse_port_config._entry.48, ptr @qca8k_parse_port_config._entry_ptr, ptr @qca8k_parse_port_config._entry_ptr.41, ptr @qca8k_parse_port_config._entry_ptr.47, ptr @qca8k_parse_port_config._entry_ptr.50, ptr @qca8k_phylink_mac_config._entry, ptr @qca8k_phylink_mac_config._entry.71, ptr @qca8k_phylink_mac_config._entry.74, ptr @qca8k_phylink_mac_config._entry_ptr, ptr @qca8k_phylink_mac_config._entry_ptr.73, ptr @qca8k_phylink_mac_config._entry_ptr.76, ptr @qca8k_port_mirror_del._entry, ptr @qca8k_port_mirror_del._entry_ptr, ptr @qca8k_port_vlan_add._entry, ptr @qca8k_port_vlan_add._entry_ptr, ptr @qca8k_port_vlan_del._entry, ptr @qca8k_port_vlan_del._entry_ptr, ptr @qca8k_read_switch_id._entry, ptr @qca8k_read_switch_id._entry_ptr, ptr @qca8k_set_page._entry, ptr @qca8k_set_page._entry_ptr, ptr @qca8k_setup._entry, ptr @qca8k_setup._entry.17, ptr @qca8k_setup._entry.20, ptr @qca8k_setup._entry.23, ptr @qca8k_setup._entry.27, ptr @qca8k_setup._entry.30, ptr @qca8k_setup._entry_ptr, ptr @qca8k_setup._entry_ptr.19, ptr @qca8k_setup._entry_ptr.22, ptr @qca8k_setup._entry_ptr.26, ptr @qca8k_setup._entry_ptr.29, ptr @qca8k_setup._entry_ptr.32, ptr @qca8k_setup_mdio_bus._entry, ptr @qca8k_setup_mdio_bus._entry.57, ptr @qca8k_setup_mdio_bus._entry_ptr, ptr @qca8k_setup_mdio_bus._entry_ptr.59, ptr @qca8k_setup_of_pws_reg._entry, ptr @qca8k_setup_of_pws_reg._entry_ptr, ptr @qca8k_sw_probe._entry, ptr @qca8k_sw_probe._entry_ptr, ptr @qca8kmdio_driver, ptr @.str, ptr @qca8k_of_match, ptr @qca8k_pm_ops, ptr @qca8327, ptr @qca8328, ptr @qca833x, ptr @.str.1, ptr @qca8k_sw_probe._key, ptr @qca8k_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @qca8k_switch_ops, ptr @qca8k_sw_probe.__key, ptr @.str.8, ptr @qca8k_readable_table, ptr @qca8k_current_page, ptr @qca8k_set_page._rs, ptr @.str.9, ptr @.str.10, ptr @qca8k_mii_read32._rs, ptr @.str.11, ptr @qca8k_mii_write32._rs, ptr @.str.12, ptr @qca8k_readable_ranges, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @ar8327_mib, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @switch.table.qca8k_setup, ptr @switch.table.qca8k_phylink_mac_link_state, ptr @switch.table.qca8k_port_stp_state_set, ptr @switch.table.phy_modes], section "llvm.metadata"
@0 = internal global [182 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8kmdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8327 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8328 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca833x to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_sw_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_sw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_sw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_current_page to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_set_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_set_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_mii_read32._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_mii_read32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_mii_write32._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_mii_write32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_readable_ranges to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_read_switch_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_parse_port_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_parse_port_config._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_parse_port_config._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_parse_port_config._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup_mdio_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup_mdio_bus._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_setup_of_pws_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_phylink_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_phylink_mac_config._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_phylink_mac_config._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_mac_config_setup_internal_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar8327_mib to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_port_vlan_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_port_vlan_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca8k_port_mirror_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qca8k_setup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qca8k_phylink_mac_link_state to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qca8k_port_stp_state_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @qca8kmdio_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mdio_driver_unregister(ptr noundef nonnull @qca8kmdio_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_sw_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 600, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdiodev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %bus1 = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %bus1, align 4
  %dev3 = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mdiodev, ptr %dev3, align 4
  %call5 = tail call ptr @devm_gpiod_get_optional(ptr noundef %mdiodev, ptr noundef nonnull @.str.1, i32 noundef 0) #11
  %reset_gpio = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool13.not = icmp eq ptr %call5, null
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call5, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 20) #11
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %call19 = tail call ptr @__devm_regmap_init(ptr noundef %mdiodev, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @qca8k_regmap_config, ptr noundef nonnull @qca8k_sw_probe._key, ptr noundef nonnull @.str.2) #11
  %regmap = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %regmap, align 4
  %cmp.i87 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3) #14
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !359
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3, align 4
  %call.i88 = tail call ptr @of_device_get_match_data(ptr noundef %16) #11
  %tobool.not.i = icmp eq ptr %call.i88, null
  br i1 %tobool.not.i, label %if.end26.qca8k_read_switch_id.exit.thread_crit_edge, label %if.end.i

if.end26.qca8k_read_switch_id.exit.thread_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_read_switch_id.exit.thread

if.end.i:                                         ; preds = %if.end26
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i89 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i89, label %if.end.i.qca8k_read_switch_id.exit.thread_crit_edge, label %do.end15.i

if.end.i.qca8k_read_switch_id.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_read_switch_id.exit.thread

do.end15.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %and.i = lshr i32 %20, 8
  %conv16.i = and i32 %and.i, 255
  %21 = ptrtoint ptr %call.i88 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call.i88, align 1
  %conv18.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv18.i)
  %cmp19.not.i = icmp eq i32 %conv16.i, %conv18.i
  br i1 %cmp19.not.i, label %if.end30, label %do.end24.i

do.end24.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %conv18.i) #14
  br label %qca8k_read_switch_id.exit.thread

qca8k_read_switch_id.exit.thread:                 ; preds = %do.end24.i, %if.end.i.qca8k_read_switch_id.exit.thread_crit_edge, %if.end26.qca8k_read_switch_id.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

if.end30:                                         ; preds = %do.end15.i
  %conv.i = trunc i32 %and.i to i8
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %call.i, align 4
  %conv48.i = trunc i32 %20 to i8
  %switch_revision.i = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %switch_revision.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv48.i, ptr %switch_revision.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %call.i90 = call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 84, i32 noundef 3520) #11
  %ds = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i90, ptr %ds, align 4
  %tobool34.not = icmp eq ptr %call.i90, null
  br i1 %tobool34.not, label %if.end30.cleanup_crit_edge, label %if.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %call.i90 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mdiodev, ptr %call.i90, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %call.i90, i32 0, i32 18
  %29 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %num_ports, align 4
  %priv42 = getelementptr inbounds %struct.dsa_switch, ptr %call.i90, i32 0, i32 5
  %30 = ptrtoint ptr %priv42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %priv42, align 4
  %ops = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 13
  %31 = call ptr @memcpy(ptr %ops, ptr @qca8k_switch_ops, i32 416)
  %ops45 = getelementptr inbounds %struct.dsa_switch, ptr %call.i90, i32 0, i32 8
  %32 = ptrtoint ptr %ops45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ops, ptr %ops45, align 4
  %reg_mutex = getelementptr inbounds %struct.qca8k_priv, ptr %call.i, i32 0, i32 11
  call void @__mutex_init(ptr noundef %reg_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @qca8k_sw_probe.__key) #11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i, align 4
  %34 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ds, align 4
  %call51 = call i32 @dsa_register_switch(ptr noundef %35) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end30.cleanup_crit_edge, %qca8k_read_switch_id.exit.thread, %do.end, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %13, %do.end ], [ %call51, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ -19, %qca8k_read_switch_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_sw_remove(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regmap3.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap3.i, align 4
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 124, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %4 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap3.i, align 4
  %call.i14.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 128, i32 noundef 524, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %6 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap3.i, align 4
  %call.i14.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 132, i32 noundef 524, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %8 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap3.i, align 4
  %call.i14.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 136, i32 noundef 524, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %10 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap3.i, align 4
  %call.i14.i.4 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 140, i32 noundef 524, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %12 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap3.i, align 4
  %call.i14.i.5 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 144, i32 noundef 524, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %14 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap3.i, align 4
  %call.i14.i.6 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 148, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %ds = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %17) #11
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_sw_shutdown(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ds = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #11
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @qca8k_set_pm(ptr noundef %1, i32 noundef 0)
  %ds = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %call1 = tail call i32 @dsa_switch_suspend(ptr noundef %3) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @qca8k_set_pm(ptr noundef %1, i32 noundef 1)
  %ds = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %call1 = tail call i32 @dsa_switch_resume(ptr noundef %3) #11
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qca8k_set_pm(ptr nocapture noundef readonly %priv, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not.i = icmp eq i32 %enable, 0
  %regmap3.i = getelementptr inbounds %struct.qca8k_priv, ptr %priv, i32 0, i32 7
  %arrayidx = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap3.i, align 4
  %.mask.0.i = select i1 %tobool.not.i, i32 0, i32 12
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 124, i32 noundef 12, i32 noundef %.mask.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap3.i, align 4
  %.mask.0.i.1 = select i1 %tobool.not.i, i32 0, i32 524
  %call.i14.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 128, i32 noundef 524, i32 noundef %.mask.0.i.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2 = icmp eq i32 %9, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap3.i, align 4
  %.mask.0.i.2 = select i1 %tobool.not.i, i32 0, i32 524
  %call.i14.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 132, i32 noundef 524, i32 noundef %.mask.0.i.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.3 = icmp eq i32 %13, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap3.i, align 4
  %.mask.0.i.3 = select i1 %tobool.not.i, i32 0, i32 524
  %call.i14.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 136, i32 noundef 524, i32 noundef %.mask.0.i.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.4 = icmp eq i32 %17, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap3.i, align 4
  %.mask.0.i.4 = select i1 %tobool.not.i, i32 0, i32 524
  %call.i14.i.4 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 140, i32 noundef 524, i32 noundef %.mask.0.i.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 9, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.5 = icmp eq i32 %21, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap3.i, align 4
  %.mask.0.i.5 = select i1 %tobool.not.i, i32 0, i32 524
  %call.i14.i.5 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 144, i32 noundef 524, i32 noundef %.mask.0.i.5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 9, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.6 = icmp eq i32 %25, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap3.i, align 4
  %.mask.0.i.6 = select i1 %tobool.not.i, i32 0, i32 12
  %call.i14.i.6 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 148, i32 noundef 12, i32 noundef %.mask.0.i.6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_regmap_read(ptr nocapture noundef readonly %ctx, i32 noundef %reg, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.qca8k_priv, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = lshr i32 %reg, 1
  %conv.i = and i32 %2, 30
  %3 = lshr i32 %reg, 6
  %conv3.i = and i32 %3, 7
  %shr4.i = lshr i32 %reg, 9
  %4 = trunc i32 %shr4.i to i16
  %conv6.i = and i16 %4, 1023
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #11
  %5 = load i16, ptr @qca8k_current_page, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %conv6.i)
  %cmp.i = icmp eq i16 %5, %conv6.i
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 24, i32 noundef 0, i16 noundef zeroext %conv6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_set_page._rs, ptr noundef nonnull @__func__.qca8k_set_page) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.exit_crit_edge, label %do.end.i

do.body.i.exit_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #14
  br label %exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i16 %conv6.i, ptr @qca8k_current_page, align 2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %entry.if.end_crit_edge
  %8 = or i32 %conv3.i, 16
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call.i9 = tail call i32 %10(ptr noundef %1, i32 noundef %8, i32 noundef %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i9)
  %cmp.i10 = icmp sgt i32 %call.i9, -1
  br i1 %cmp.i10, label %if.end.i12, label %if.end.do.body.i14_crit_edge

if.end.do.body.i14_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i14

if.end.i12:                                       ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i9, ptr %val, align 4
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 4
  %add.i = or i32 %conv.i, 1
  %call2.i = tail call i32 %13(ptr noundef %1, i32 noundef %8, i32 noundef %add.i) #11
  %shl.i = shl i32 %call2.i, 16
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %or.i = or i32 %15, %shl.i
  store i32 %or.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i11 = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i11, label %if.end.i12.do.body.i14_crit_edge, label %if.end.i12.exit_crit_edge

if.end.i12.exit_crit_edge:                        ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end.i12.do.body.i14_crit_edge:                 ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i14

do.body.i14:                                      ; preds = %if.end.i12.do.body.i14_crit_edge, %if.end.do.body.i14_crit_edge
  %ret.026.i = phi i32 [ %call2.i, %if.end.i12.do.body.i14_crit_edge ], [ %call.i9, %if.end.do.body.i14_crit_edge ]
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_read32._rs, ptr noundef nonnull @__func__.qca8k_mii_read32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i13 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i13, label %do.body.i14.do.end10.i_crit_edge, label %do.end.i16

do.body.i14.do.end10.i_crit_edge:                 ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

do.end.i16:                                       ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i15 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i15, ptr noundef nonnull @.str.11) #14
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i16, %do.body.i14.do.end10.i_crit_edge
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val, align 4
  br label %exit

exit:                                             ; preds = %do.end10.i, %if.end.i12.exit_crit_edge, %do.end.i, %do.body.i.exit_crit_edge
  %ret.0 = phi i32 [ %ret.026.i, %do.end10.i ], [ 0, %if.end.i12.exit_crit_edge ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_regmap_write(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.qca8k_priv, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = lshr i32 %reg, 1
  %conv.i = and i32 %2, 30
  %3 = lshr i32 %reg, 6
  %conv3.i = and i32 %3, 7
  %shr4.i = lshr i32 %reg, 9
  %4 = trunc i32 %shr4.i to i16
  %conv6.i = and i16 %4, 1023
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #11
  %5 = load i16, ptr @qca8k_current_page, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %conv6.i)
  %cmp.i = icmp eq i16 %5, %conv6.i
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 24, i32 noundef 0, i16 noundef zeroext %conv6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_set_page._rs, ptr noundef nonnull @__func__.qca8k_set_page) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.exit_crit_edge, label %do.body.i.exit.sink.split_crit_edge

do.body.i.exit.sink.split_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.sink.split

do.body.i.exit_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i16 %conv6.i, ptr @qca8k_current_page, align 2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %entry.if.end_crit_edge
  %8 = or i32 %conv3.i, 16
  %conv.i8 = trunc i32 %val to i16
  %write.i9 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %write.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i9, align 8
  %call.i10 = tail call i32 %10(ptr noundef %1, i32 noundef %8, i32 noundef %conv.i, i16 noundef zeroext %conv.i8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i10)
  %cmp.i11 = icmp sgt i32 %call.i10, -1
  br i1 %cmp.i11, label %if.end.i12, label %if.end.do.body.i14_crit_edge

if.end.do.body.i14_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i14

if.end.i12:                                       ; preds = %if.end
  %shr.i = lshr i32 %val, 16
  %conv1.i = trunc i32 %shr.i to i16
  %11 = ptrtoint ptr %write.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i9, align 8
  %add.i = or i32 %conv.i, 1
  %call4.i = tail call i32 %12(ptr noundef %1, i32 noundef %8, i32 noundef %add.i, i16 noundef zeroext %conv1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i12.do.body.i14_crit_edge, label %if.end.i12.exit_crit_edge

if.end.i12.exit_crit_edge:                        ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end.i12.do.body.i14_crit_edge:                 ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i14

do.body.i14:                                      ; preds = %if.end.i12.do.body.i14_crit_edge, %if.end.do.body.i14_crit_edge
  %call8.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_write32._rs, ptr noundef nonnull @__func__.qca8k_mii_write32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i13 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i13, label %do.body.i14.exit_crit_edge, label %do.body.i14.exit.sink.split_crit_edge

do.body.i14.exit.sink.split_crit_edge:            ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.sink.split

do.body.i14.exit_crit_edge:                       ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

exit.sink.split:                                  ; preds = %do.body.i14.exit.sink.split_crit_edge, %do.body.i.exit.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.10, %do.body.i.exit.sink.split_crit_edge ], [ @.str.12, %do.body.i14.exit.sink.split_crit_edge ]
  %retval.0.i19.ph = phi i32 [ %call.i, %do.body.i.exit.sink.split_crit_edge ], [ 0, %do.body.i14.exit.sink.split_crit_edge ]
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.10.sink) #14
  br label %exit

exit:                                             ; preds = %exit.sink.split, %do.body.i14.exit_crit_edge, %if.end.i12.exit_crit_edge, %do.body.i.exit_crit_edge
  %retval.0.i19 = phi i32 [ 0, %if.end.i12.exit_crit_edge ], [ 0, %do.body.i14.exit_crit_edge ], [ %call.i, %do.body.i.exit_crit_edge ], [ %retval.0.i19.ph, %exit.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #11
  ret i32 %retval.0.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_regmap_update_bits(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %mask, i32 noundef %write_val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.qca8k_priv, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = lshr i32 %reg, 1
  %conv.i = and i32 %2, 30
  %3 = lshr i32 %reg, 6
  %conv3.i = and i32 %3, 7
  %shr4.i = lshr i32 %reg, 9
  %4 = trunc i32 %shr4.i to i16
  %conv6.i = and i16 %4, 1023
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #11
  %5 = load i16, ptr @qca8k_current_page, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %conv6.i)
  %cmp.i = icmp eq i16 %5, %conv6.i
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 24, i32 noundef 0, i16 noundef zeroext %conv6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_set_page._rs, ptr noundef nonnull @__func__.qca8k_set_page) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.exit_crit_edge, label %do.body.i.exit.sink.split_crit_edge

do.body.i.exit.sink.split_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.sink.split

do.body.i.exit_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i16 %conv6.i, ptr @qca8k_current_page, align 2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %entry.if.end_crit_edge
  %8 = or i32 %conv3.i, 16
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call.i19 = tail call i32 %10(ptr noundef %1, i32 noundef %8, i32 noundef %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i19)
  %cmp.i20 = icmp sgt i32 %call.i19, -1
  br i1 %cmp.i20, label %if.end.i22, label %if.end.do.body.i24_crit_edge

if.end.do.body.i24_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i24

if.end.i22:                                       ; preds = %if.end
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %add.i = or i32 %conv.i, 1
  %call2.i = tail call i32 %12(ptr noundef %1, i32 noundef %8, i32 noundef %add.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i21 = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i21, label %if.end.i22.do.body.i24_crit_edge, label %if.end7

if.end.i22.do.body.i24_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i24

do.body.i24:                                      ; preds = %if.end.i22.do.body.i24_crit_edge, %if.end.do.body.i24_crit_edge
  %ret.026.i = phi i32 [ %call2.i, %if.end.i22.do.body.i24_crit_edge ], [ %call.i19, %if.end.do.body.i24_crit_edge ]
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_read32._rs, ptr noundef nonnull @__func__.qca8k_mii_read32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i23 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i23, label %do.body.i24.exit_crit_edge, label %do.body.i24.exit.sink.split_crit_edge

do.body.i24.exit.sink.split_crit_edge:            ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.sink.split

do.body.i24.exit_crit_edge:                       ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end7:                                          ; preds = %if.end.i22
  %shl.i = shl i32 %call2.i, 16
  %or.i = or i32 %shl.i, %call.i19
  %neg = xor i32 %mask, -1
  %and = and i32 %or.i, %neg
  %or8 = or i32 %and, %write_val
  %conv.i28 = trunc i32 %or8 to i16
  %write.i29 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %write.i29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i29, align 8
  %call.i30 = tail call i32 %14(ptr noundef %1, i32 noundef %8, i32 noundef %conv.i, i16 noundef zeroext %conv.i28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i30)
  %cmp.i31 = icmp sgt i32 %call.i30, -1
  br i1 %cmp.i31, label %if.end.i33, label %if.end7.do.body.i35_crit_edge

if.end7.do.body.i35_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i35

if.end.i33:                                       ; preds = %if.end7
  %shr.i = lshr i32 %or8, 16
  %conv1.i = trunc i32 %shr.i to i16
  %15 = ptrtoint ptr %write.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i29, align 8
  %call4.i = tail call i32 %16(ptr noundef %1, i32 noundef %8, i32 noundef %add.i, i16 noundef zeroext %conv1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i33.do.body.i35_crit_edge, label %if.end.i33.exit_crit_edge

if.end.i33.exit_crit_edge:                        ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end.i33.do.body.i35_crit_edge:                 ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i35

do.body.i35:                                      ; preds = %if.end.i33.do.body.i35_crit_edge, %if.end7.do.body.i35_crit_edge
  %call8.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_write32._rs, ptr noundef nonnull @__func__.qca8k_mii_write32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i34 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i34, label %do.body.i35.exit_crit_edge, label %do.body.i35.exit.sink.split_crit_edge

do.body.i35.exit.sink.split_crit_edge:            ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.sink.split

do.body.i35.exit_crit_edge:                       ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

exit.sink.split:                                  ; preds = %do.body.i35.exit.sink.split_crit_edge, %do.body.i24.exit.sink.split_crit_edge, %do.body.i.exit.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.10, %do.body.i.exit.sink.split_crit_edge ], [ @.str.11, %do.body.i24.exit.sink.split_crit_edge ], [ @.str.12, %do.body.i35.exit.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %do.body.i.exit.sink.split_crit_edge ], [ %ret.026.i, %do.body.i24.exit.sink.split_crit_edge ], [ 0, %do.body.i35.exit.sink.split_crit_edge ]
  %dev.i25 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i25, ptr noundef nonnull %.str.11.sink) #14
  br label %exit

exit:                                             ; preds = %exit.sink.split, %do.body.i35.exit_crit_edge, %if.end.i33.exit_crit_edge, %do.body.i24.exit_crit_edge, %do.body.i.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.i33.exit_crit_edge ], [ 0, %do.body.i35.exit_crit_edge ], [ %call.i, %do.body.i.exit_crit_edge ], [ %ret.026.i, %do.body.i24.exit_crit_edge ], [ %ret.0.ph, %exit.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qca8k_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_setup(ptr noundef %ds) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %mode.i683 = alloca i32, align 4
  %mode.i = alloca i32, align 4
  %delay.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %entry.dsa_is_cpu_port.exit.i_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.dsa_is_cpu_port.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %entry.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, %entry.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %entry.dsa_is_cpu_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 1
  br i1 %cmp.i.i, label %dsa_is_cpu_port.exit.i.if.end_crit_edge, label %do.body.i

dsa_is_cpu_port.exit.i.if.end_crit_edge:          ; preds = %dsa_is_cpu_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.i:                                        ; preds = %dsa_is_cpu_port.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qca8k_find_cpu_port.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qca8k_setup, %if.then5.i)) #11
          to label %do.end.i [label %if.then5.i], !srcloc !360

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qca8k_find_cpu_port.__UNIQUE_ID_ddebug642, ptr noundef %13, ptr noundef nonnull @.str.34) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %14 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i13.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ports.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn20.i.i14.i = load ptr, ptr %ports.i.i13.i, align 4
  %cmp.not21.i.i15.i = icmp eq ptr %.pn20.i.i14.i, %ports.i.i13.i
  br i1 %cmp.not21.i.i15.i, label %do.end.i.dsa_is_cpu_port.exit31.i_crit_edge, label %do.end.i.for.body.i.i19.i_crit_edge

do.end.i.for.body.i.i19.i_crit_edge:              ; preds = %do.end.i
  br label %for.body.i.i19.i

do.end.i.dsa_is_cpu_port.exit31.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit31.i

for.body.i.i19.i:                                 ; preds = %for.inc.i.i25.i.for.body.i.i19.i_crit_edge, %do.end.i.for.body.i.i19.i_crit_edge
  %.pn22.i.i16.i = phi ptr [ %.pn.i.i23.i, %for.inc.i.i25.i.for.body.i.i19.i_crit_edge ], [ %.pn20.i.i14.i, %do.end.i.for.body.i.i19.i_crit_edge ]
  %ds3.i.i17.i = getelementptr i8, ptr %.pn22.i.i16.i, i32 -432
  %17 = ptrtoint ptr %ds3.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds3.i.i17.i, align 4
  %cmp4.i.i18.i = icmp eq ptr %18, %ds
  br i1 %cmp4.i.i18.i, label %land.lhs.true.i.i22.i, label %for.body.i.i19.i.for.inc.i.i25.i_crit_edge

for.body.i.i19.i.for.inc.i.i25.i_crit_edge:       ; preds = %for.body.i.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i25.i

land.lhs.true.i.i22.i:                            ; preds = %for.body.i.i19.i
  %index.i.i20.i = getelementptr i8, ptr %.pn22.i.i16.i, i32 -428
  %19 = ptrtoint ptr %index.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp5.i.i21.i = icmp eq i32 %20, 6
  br i1 %cmp5.i.i21.i, label %cleanup.split.loop.exit18.i.i27.i, label %land.lhs.true.i.i22.i.for.inc.i.i25.i_crit_edge

land.lhs.true.i.i22.i.for.inc.i.i25.i_crit_edge:  ; preds = %land.lhs.true.i.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i25.i

for.inc.i.i25.i:                                  ; preds = %land.lhs.true.i.i22.i.for.inc.i.i25.i_crit_edge, %for.body.i.i19.i.for.inc.i.i25.i_crit_edge
  %21 = ptrtoint ptr %.pn22.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i23.i = load ptr, ptr %.pn22.i.i16.i, align 4
  %cmp.not.i.i24.i = icmp eq ptr %.pn.i.i23.i, %ports.i.i13.i
  br i1 %cmp.not.i.i24.i, label %for.inc.i.i25.i.dsa_is_cpu_port.exit31.i_crit_edge, label %for.inc.i.i25.i.for.body.i.i19.i_crit_edge

for.inc.i.i25.i.for.body.i.i19.i_crit_edge:       ; preds = %for.inc.i.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i19.i

for.inc.i.i25.i.dsa_is_cpu_port.exit31.i_crit_edge: ; preds = %for.inc.i.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit31.i

cleanup.split.loop.exit18.i.i27.i:                ; preds = %land.lhs.true.i.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i26.i = getelementptr i8, ptr %.pn22.i.i16.i, i32 -448
  br label %dsa_is_cpu_port.exit31.i

dsa_is_cpu_port.exit31.i:                         ; preds = %cleanup.split.loop.exit18.i.i27.i, %for.inc.i.i25.i.dsa_is_cpu_port.exit31.i_crit_edge, %do.end.i.dsa_is_cpu_port.exit31.i_crit_edge
  %retval.0.i.i28.i = phi ptr [ %dp.0.le.i.i26.i, %cleanup.split.loop.exit18.i.i27.i ], [ null, %do.end.i.dsa_is_cpu_port.exit31.i_crit_edge ], [ null, %for.inc.i.i25.i.dsa_is_cpu_port.exit31.i_crit_edge ]
  %type.i29.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i28.i, i32 0, i32 6
  %22 = ptrtoint ptr %type.i29.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i30.i = icmp eq i32 %23, 1
  br i1 %cmp.i30.i, label %dsa_is_cpu_port.exit31.i.if.end_crit_edge, label %do.end

dsa_is_cpu_port.exit31.i.if.end_crit_edge:        ; preds = %dsa_is_cpu_port.exit31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %dsa_is_cpu_port.exit31.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end:                                           ; preds = %dsa_is_cpu_port.exit31.i.if.end_crit_edge, %dsa_is_cpu_port.exit.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %dsa_is_cpu_port.exit.i.if.end_crit_edge ], [ 6, %dsa_is_cpu_port.exit31.i.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #11
  %26 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %mode.i, align 4, !annotation !359
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay.i) #11
  %27 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %delay.i, align 4, !annotation !359
  %ds.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 10
  %dev.i682 = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %ports_config.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 6
  %sgmii_tx_clk_falling_edge.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 1
  %sgmii_enable_pll.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 2
  %switch_revision.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %port.010.i = phi i32 [ 0, %if.end ], [ %inc125.i, %for.inc.i.for.body.i_crit_edge ]
  %cpu_port_index.09.i = phi i32 [ -1, %if.end ], [ %cpu_port_index.1.i, %for.inc.i.for.body.i_crit_edge ]
  %28 = zext i32 %port.010.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %port.010.i, label %for.body.i.for.inc.i_crit_edge [
    i32 0, label %for.body.i.if.end.i_crit_edge
    i32 6, label %for.body.i.if.end.i_crit_edge962
  ]

for.body.i.if.end.i_crit_edge962:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge962
  %29 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds.i, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.end.i.dsa_to_port.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.dsa_to_port.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %34 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %35, %30
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %36 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %port.010.i)
  %cmp5.i.i = icmp eq i32 %37, %port.010.i
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %38 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %if.end.i.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.end.i.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %dn.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 12
  %39 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dn.i, align 4
  %inc.i = add i32 %cpu_port_index.09.i, 1
  %call3.i = call zeroext i1 @of_device_is_available(ptr noundef %40) #11
  br i1 %call3.i, label %if.end5.i, label %dsa_to_port.exit.i.for.inc.i_crit_edge

dsa_to_port.exit.i.for.inc.i_crit_edge:           ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end5.i:                                        ; preds = %dsa_to_port.exit.i
  %call6.i = call i32 @of_get_phy_mode(ptr noundef %40, ptr noundef nonnull %mode.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end5.i
  %41 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %42, label %if.end8.i.for.inc.i_crit_edge [
    i32 9, label %if.end8.i.sw.bb.i_crit_edge
    i32 10, label %if.end8.i.sw.bb.i_crit_edge963
    i32 12, label %if.end8.i.sw.bb.i_crit_edge964
    i32 11, label %if.end8.i.sw.bb.i_crit_edge965
    i32 4, label %if.end8.i.sw.bb.i_crit_edge966
  ]

if.end8.i.sw.bb.i_crit_edge966:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge965:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge964:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge963:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.sw.bb.i_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end8.i.sw.bb.i_crit_edge, %if.end8.i.sw.bb.i_crit_edge963, %if.end8.i.sw.bb.i_crit_edge964, %if.end8.i.sw.bb.i_crit_edge965, %if.end8.i.sw.bb.i_crit_edge966
  %44 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %delay.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.35, ptr noundef nonnull %delay.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay.i, align 4
  %div.i = udiv i32 %46, 1000
  store i32 %div.i, ptr %delay.i, align 4
  br label %do.end28.i

if.else.i:                                        ; preds = %sw.bb.i
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %48, label %if.else.i.do.end28.i_crit_edge [
    i32 10, label %if.else.i.if.then14.i_crit_edge
    i32 12, label %if.else.i.if.then14.i_crit_edge967
  ]

if.else.i.if.then14.i_crit_edge967:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

if.else.i.if.then14.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i

if.else.i.do.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28.i

if.then14.i:                                      ; preds = %if.else.i.if.then14.i_crit_edge, %if.else.i.if.then14.i_crit_edge967
  %50 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %delay.i, align 4
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.then14.i, %if.else.i.do.end28.i_crit_edge, %if.then11.i
  %51 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay.i, align 4
  %53 = and i32 %52, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool29.not.i = icmp eq i32 %53, 0
  br i1 %tobool29.not.i, label %do.end28.i.if.end35.i_crit_edge, label %do.end34.i

do.end28.i.if.end35.i_crit_edge:                  ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

do.end34.i:                                       ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.36) #14
  %56 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %delay.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end34.i, %do.end28.i.if.end35.i_crit_edge
  %57 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay.i, align 4
  %conv.i = trunc i32 %58 to i8
  %arrayidx.i = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 4, i32 %inc.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  store i32 0, ptr %delay.i, align 4
  %call.i.i3.i = call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.38, ptr noundef nonnull %delay.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i3.i)
  %tobool37.not.i = icmp sgt i32 %call.i.i3.i, -1
  br i1 %tobool37.not.i, label %if.then38.i, label %if.else40.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay.i, align 4
  %div39.i = udiv i32 %61, 1000
  store i32 %div39.i, ptr %delay.i, align 4
  br label %do.end63.i

if.else40.i:                                      ; preds = %if.end35.i
  %62 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mode.i, align 4
  %64 = and i32 %63, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %64)
  %switch.i = icmp eq i32 %64, 10
  br i1 %switch.i, label %if.then46.i, label %if.else40.i.do.end63.i_crit_edge

if.else40.i.do.end63.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63.i

if.then46.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %delay.i, align 4
  br label %do.end63.i

do.end63.i:                                       ; preds = %if.then46.i, %if.else40.i.do.end63.i_crit_edge, %if.then38.i
  %66 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay.i, align 4
  %68 = and i32 %67, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool67.not.i = icmp eq i32 %68, 0
  br i1 %tobool67.not.i, label %do.end63.i.if.end76.i_crit_edge, label %do.end74.i

do.end63.i.if.end76.i_crit_edge:                  ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i

do.end74.i:                                       ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.40) #14
  %71 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %delay.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end74.i, %do.end63.i.if.end76.i_crit_edge
  %72 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay.i, align 4
  %conv77.i = trunc i32 %73 to i8
  %arrayidx79.i = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 3, i32 %inc.i
  %74 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv77.i, ptr %arrayidx79.i, align 1
  %75 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode.i, align 4
  %.off1.i = add i32 %76, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off1.i)
  %switch2.i = icmp ult i32 %.off1.i, 4
  br i1 %switch2.i, label %if.end76.i.for.inc.i_crit_edge, label %if.end92.i

if.end76.i.for.inc.i_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end92.i:                                       ; preds = %if.end76.i
  %call.i.i = call ptr @of_find_property(ptr noundef %40, ptr noundef nonnull @.str.42, ptr noundef null) #11
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end92.i.if.end96.i_crit_edge, label %if.then94.i

if.end92.i.if.end96.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96.i

if.then94.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %sgmii_tx_clk_falling_edge.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %sgmii_tx_clk_falling_edge.i, align 1
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then94.i, %if.end92.i.if.end96.i_crit_edge
  %call.i4.i = call ptr @of_find_property(ptr noundef %40, ptr noundef nonnull @.str.43, ptr noundef null) #11
  %tobool.i5.not.i = icmp eq ptr %call.i4.i, null
  br i1 %tobool.i5.not.i, label %if.end96.i.if.end100.i_crit_edge, label %if.then98.i

if.end96.i.if.end100.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.i

if.then98.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %ports_config.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %ports_config.i, align 2
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then98.i, %if.end96.i.if.end100.i_crit_edge
  %call.i6.i = call ptr @of_find_property(ptr noundef %40, ptr noundef nonnull @.str.44, ptr noundef null) #11
  %tobool.i7.not.i = icmp eq ptr %call.i6.i, null
  br i1 %tobool.i7.not.i, label %if.end100.i.for.inc.i_crit_edge, label %if.then102.i

if.end100.i.for.inc.i_crit_edge:                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then102.i:                                     ; preds = %if.end100.i
  %79 = ptrtoint ptr %sgmii_enable_pll.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %sgmii_enable_pll.i, align 2
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %81)
  %cmp105.i = icmp eq i8 %81, 18
  br i1 %cmp105.i, label %do.end110.i, label %if.then102.i.if.end114.i_crit_edge

if.then102.i.if.end114.i_crit_edge:               ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114.i

do.end110.i:                                      ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.46) #14
  %84 = ptrtoint ptr %sgmii_enable_pll.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %sgmii_enable_pll.i, align 2
  br label %if.end114.i

if.end114.i:                                      ; preds = %do.end110.i, %if.then102.i.if.end114.i_crit_edge
  %85 = ptrtoint ptr %switch_revision.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %switch_revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp116.i = icmp ult i8 %86, 2
  br i1 %cmp116.i, label %do.end121.i, label %if.end114.i.for.inc.i_crit_edge

if.end114.i.for.inc.i_crit_edge:                  ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.end121.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.49) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end121.i, %if.end114.i.for.inc.i_crit_edge, %if.end100.i.for.inc.i_crit_edge, %if.end76.i.for.inc.i_crit_edge, %if.end8.i.for.inc.i_crit_edge, %if.end5.i.for.inc.i_crit_edge, %dsa_to_port.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cpu_port_index.1.i = phi i32 [ %inc.i, %if.end5.i.for.inc.i_crit_edge ], [ %inc.i, %if.end8.i.for.inc.i_crit_edge ], [ %inc.i, %do.end121.i ], [ %inc.i, %if.end114.i.for.inc.i_crit_edge ], [ %inc.i, %if.end100.i.for.inc.i_crit_edge ], [ %inc.i, %dsa_to_port.exit.i.for.inc.i_crit_edge ], [ %cpu_port_index.09.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end76.i.for.inc.i_crit_edge ]
  %inc125.i = add nuw nsw i32 %port.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc125.i, 7
  br i1 %exitcond.not.i, label %qca8k_parse_port_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

qca8k_parse_port_config.exit:                     ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %89 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %reg.i, align 4, !annotation !359
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i683) #11
  %90 = ptrtoint ptr %mode.i683 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %mode.i683, align 4, !annotation !359
  %91 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i682, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node.i, align 8
  %call.i = call ptr @of_get_child_by_name(ptr noundef %94, ptr noundef nonnull @.str.51) #11
  %tobool.not.i685 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i685, label %if.end.i687, label %qca8k_parse_port_config.exit.if.end6.i_crit_edge

qca8k_parse_port_config.exit.if.end6.i_crit_edge: ; preds = %qca8k_parse_port_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.end.i687:                                      ; preds = %qca8k_parse_port_config.exit
  %95 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i682, align 4
  %of_node2.i = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 27
  %97 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node2.i, align 8
  %call3.i686 = call ptr @of_get_child_by_name(ptr noundef %98, ptr noundef nonnull @.str.52) #11
  %tobool4.not.i = icmp eq ptr %call3.i686, null
  br i1 %tobool4.not.i, label %if.end.i687.qca8k_setup_mdio_bus.exit.thread_crit_edge, label %if.end.i687.if.end6.i_crit_edge

if.end.i687.if.end6.i_crit_edge:                  ; preds = %if.end.i687
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.end.i687.qca8k_setup_mdio_bus.exit.thread_crit_edge: ; preds = %if.end.i687
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_setup_mdio_bus.exit.thread

if.end6.i:                                        ; preds = %if.end.i687.if.end6.i_crit_edge, %qca8k_parse_port_config.exit.if.end6.i_crit_edge
  %ports.095.i = phi ptr [ %call3.i686, %if.end.i687.if.end6.i_crit_edge ], [ %call.i, %qca8k_parse_port_config.exit.if.end6.i_crit_edge ]
  %call7.i = call ptr @of_get_next_available_child(ptr noundef nonnull %ports.095.i, ptr noundef null) #11
  %cmp.not103.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not103.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i690_crit_edge

if.end6.i.for.body.i690_crit_edge:                ; preds = %if.end6.i
  br label %for.body.i690

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i690:                                    ; preds = %for.inc.i713.for.body.i690_crit_edge, %if.end6.i.for.body.i690_crit_edge
  %port.0106.i = phi ptr [ %call22.i, %for.inc.i713.for.body.i690_crit_edge ], [ %call7.i, %if.end6.i.for.body.i690_crit_edge ]
  %external_mdio_mask.0105.i = phi i32 [ %external_mdio_mask.1.i, %for.inc.i713.for.body.i690_crit_edge ], [ 0, %if.end6.i.for.body.i690_crit_edge ]
  %internal_mdio_mask.0104.i = phi i32 [ %internal_mdio_mask.1.i, %for.inc.i713.for.body.i690_crit_edge ], [ 0, %if.end6.i.for.body.i690_crit_edge ]
  %call.i.i.i689 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %port.0106.i, ptr noundef nonnull @.str.53, ptr noundef nonnull %reg.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i689)
  %tobool9.not.i = icmp sgt i32 %call.i.i.i689, -1
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %for.body.i690
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %port.0106.i) #11
  call void @of_node_put(ptr noundef nonnull %ports.095.i) #11
  br label %qca8k_setup_mdio_bus.exit.thread

if.end11.i:                                       ; preds = %for.body.i690
  %99 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ds.i, align 4
  %101 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reg.i, align 4
  %dst1.i.i.i691 = getelementptr inbounds %struct.dsa_switch, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %dst1.i.i.i691 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dst1.i.i.i691, align 4
  %ports.i.i.i692 = getelementptr inbounds %struct.dsa_switch_tree, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %ports.i.i.i692 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn20.i.i.i693 = load ptr, ptr %ports.i.i.i692, align 4
  %cmp.not21.i.i.i694 = icmp eq ptr %.pn20.i.i.i693, %ports.i.i.i692
  br i1 %cmp.not21.i.i.i694, label %if.end11.i.dsa_is_user_port.exit.i_crit_edge, label %if.end11.i.for.body.i.i.i698_crit_edge

if.end11.i.for.body.i.i.i698_crit_edge:           ; preds = %if.end11.i
  br label %for.body.i.i.i698

if.end11.i.dsa_is_user_port.exit.i_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit.i

for.body.i.i.i698:                                ; preds = %for.inc.i.i.i704.for.body.i.i.i698_crit_edge, %if.end11.i.for.body.i.i.i698_crit_edge
  %.pn22.i.i.i695 = phi ptr [ %.pn.i.i.i702, %for.inc.i.i.i704.for.body.i.i.i698_crit_edge ], [ %.pn20.i.i.i693, %if.end11.i.for.body.i.i.i698_crit_edge ]
  %ds3.i.i.i696 = getelementptr i8, ptr %.pn22.i.i.i695, i32 -432
  %106 = ptrtoint ptr %ds3.i.i.i696 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ds3.i.i.i696, align 4
  %cmp4.i.i.i697 = icmp eq ptr %107, %100
  br i1 %cmp4.i.i.i697, label %land.lhs.true.i.i.i701, label %for.body.i.i.i698.for.inc.i.i.i704_crit_edge

for.body.i.i.i698.for.inc.i.i.i704_crit_edge:     ; preds = %for.body.i.i.i698
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i704

land.lhs.true.i.i.i701:                           ; preds = %for.body.i.i.i698
  %index.i.i.i699 = getelementptr i8, ptr %.pn22.i.i.i695, i32 -428
  %108 = ptrtoint ptr %index.i.i.i699 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index.i.i.i699, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %102)
  %cmp5.i.i.i700 = icmp eq i32 %109, %102
  br i1 %cmp5.i.i.i700, label %cleanup.split.loop.exit18.i.i.i706, label %land.lhs.true.i.i.i701.for.inc.i.i.i704_crit_edge

land.lhs.true.i.i.i701.for.inc.i.i.i704_crit_edge: ; preds = %land.lhs.true.i.i.i701
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i704

for.inc.i.i.i704:                                 ; preds = %land.lhs.true.i.i.i701.for.inc.i.i.i704_crit_edge, %for.body.i.i.i698.for.inc.i.i.i704_crit_edge
  %110 = ptrtoint ptr %.pn22.i.i.i695 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn.i.i.i702 = load ptr, ptr %.pn22.i.i.i695, align 4
  %cmp.not.i.i.i703 = icmp eq ptr %.pn.i.i.i702, %ports.i.i.i692
  br i1 %cmp.not.i.i.i703, label %for.inc.i.i.i704.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i.i704.for.body.i.i.i698_crit_edge

for.inc.i.i.i704.for.body.i.i.i698_crit_edge:     ; preds = %for.inc.i.i.i704
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i698

for.inc.i.i.i704.dsa_is_user_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i704
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i.i706:               ; preds = %land.lhs.true.i.i.i701
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i.i705 = getelementptr i8, ptr %.pn22.i.i.i695, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i.i706, %for.inc.i.i.i704.dsa_is_user_port.exit.i_crit_edge, %if.end11.i.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i.i707 = phi ptr [ %dp.0.le.i.i.i705, %cleanup.split.loop.exit18.i.i.i706 ], [ null, %if.end11.i.dsa_is_user_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i704.dsa_is_user_port.exit.i_crit_edge ]
  %type.i.i708 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i707, i32 0, i32 6
  %111 = ptrtoint ptr %type.i.i708 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %type.i.i708, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %112)
  %cmp.i.i709 = icmp eq i32 %112, 3
  br i1 %cmp.i.i709, label %if.end14.i, label %dsa_is_user_port.exit.i.for.inc.i713_crit_edge

dsa_is_user_port.exit.i.for.inc.i713_crit_edge:   ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i713

if.end14.i:                                       ; preds = %dsa_is_user_port.exit.i
  %call15.i = call i32 @of_get_phy_mode(ptr noundef nonnull %port.0106.i, ptr noundef nonnull %mode.i683) #11
  %call.i.i710 = call ptr @of_find_property(ptr noundef nonnull %port.0106.i, ptr noundef nonnull @.str.54, ptr noundef null) #11
  %tobool.i.not.i711 = icmp eq ptr %call.i.i710, null
  br i1 %tobool.i.not.i711, label %if.end14.i.if.else.i712_crit_edge, label %land.lhs.true.i

if.end14.i.if.else.i712_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i712

land.lhs.true.i:                                  ; preds = %if.end14.i
  %113 = ptrtoint ptr %mode.i683 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode.i683, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %cmp17.not.i = icmp eq i32 %114, 1
  br i1 %cmp17.not.i, label %land.lhs.true.i.if.else.i712_crit_edge, label %if.then18.i

land.lhs.true.i.if.else.i712_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i712

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %reg.i, align 4
  %shl.i = shl nuw i32 1, %116
  %or.i = or i32 %shl.i, %external_mdio_mask.0105.i
  br label %for.inc.i713

if.else.i712:                                     ; preds = %land.lhs.true.i.if.else.i712_crit_edge, %if.end14.i.if.else.i712_crit_edge
  %117 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %reg.i, align 4
  %shl19.i = shl nuw i32 1, %118
  %or20.i = or i32 %shl19.i, %internal_mdio_mask.0104.i
  br label %for.inc.i713

for.inc.i713:                                     ; preds = %if.else.i712, %if.then18.i, %dsa_is_user_port.exit.i.for.inc.i713_crit_edge
  %internal_mdio_mask.1.i = phi i32 [ %internal_mdio_mask.0104.i, %if.then18.i ], [ %or20.i, %if.else.i712 ], [ %internal_mdio_mask.0104.i, %dsa_is_user_port.exit.i.for.inc.i713_crit_edge ]
  %external_mdio_mask.1.i = phi i32 [ %or.i, %if.then18.i ], [ %external_mdio_mask.0105.i, %if.else.i712 ], [ %external_mdio_mask.0105.i, %dsa_is_user_port.exit.i.for.inc.i713_crit_edge ]
  %call22.i = call ptr @of_get_next_available_child(ptr noundef nonnull %ports.095.i, ptr noundef nonnull %port.0106.i) #11
  %cmp.not.i = icmp eq ptr %call22.i, null
  br i1 %cmp.not.i, label %for.inc.i713.for.end.i_crit_edge, label %for.inc.i713.for.body.i690_crit_edge

for.inc.i713.for.body.i690_crit_edge:             ; preds = %for.inc.i713
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i690

for.inc.i713.for.end.i_crit_edge:                 ; preds = %for.inc.i713
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i713.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %internal_mdio_mask.0.lcssa.i = phi i32 [ 0, %if.end6.i.for.end.i_crit_edge ], [ %internal_mdio_mask.1.i, %for.inc.i713.for.end.i_crit_edge ]
  %external_mdio_mask.0.lcssa.i = phi i32 [ 0, %if.end6.i.for.end.i_crit_edge ], [ %external_mdio_mask.1.i, %for.inc.i713.for.end.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %ports.095.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %external_mdio_mask.0.lcssa.i)
  %tobool23.not.i = icmp eq i32 %external_mdio_mask.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %internal_mdio_mask.0.lcssa.i)
  %tobool25.not.i = icmp eq i32 %internal_mdio_mask.0.lcssa.i, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 %tobool25.not.i, i1 false
  br i1 %or.cond.i, label %do.end.i714, label %if.end28.i

do.end.i714:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.55) #14
  br label %qca8k_setup_mdio_bus.exit.thread

if.end28.i:                                       ; preds = %for.end.i
  %or.cond90.i = select i1 %tobool23.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond90.i, label %if.end37.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.58) #14
  br label %qca8k_setup_mdio_bus.exit.thread

if.end37.i:                                       ; preds = %if.end28.i
  br i1 %tobool23.not.i, label %if.end41.i, label %qca8k_setup_mdio_bus.exit

if.end41.i:                                       ; preds = %if.end37.i
  %123 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i682, align 4
  %of_node43.i = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 27
  %125 = ptrtoint ptr %of_node43.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %of_node43.i, align 8
  %call44.i = call ptr @of_get_child_by_name(ptr noundef %126, ptr noundef nonnull @.str.60) #11
  %call45.i = call zeroext i1 @of_device_is_available(ptr noundef %call44.i) #11
  br i1 %call45.i, label %if.then46.i715, label %if.end51.i

if.then46.i715:                                   ; preds = %if.end41.i
  %127 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ds.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %call.i.i92.i = call ptr @devm_mdiobus_alloc_size(ptr noundef %130, i32 noundef 0) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i92.i, null
  br i1 %tobool.not.i.i, label %if.then46.i715.if.then49.i_crit_edge, label %qca8k_mdio_register.exit.i

if.then46.i715.if.then49.i_crit_edge:             ; preds = %if.then46.i715
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49.i

qca8k_mdio_register.exit.i:                       ; preds = %if.then46.i715
  %priv2.i.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i92.i, i32 0, i32 3
  %131 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %1, ptr %priv2.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i92.i, i32 0, i32 1
  %132 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.61, ptr %name.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i92.i, i32 0, i32 4
  %133 = ptrtoint ptr %read.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @qca8k_internal_mdio_read, ptr %read.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i92.i, i32 0, i32 5
  %134 = ptrtoint ptr %write.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @qca8k_internal_mdio_write, ptr %write.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i92.i, i32 0, i32 2
  %index.i.i716 = getelementptr inbounds %struct.dsa_switch, ptr %128, i32 0, i32 2
  %135 = ptrtoint ptr %index.i.i716 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index.i.i716, align 4
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i.i, i32 noundef 61, ptr noundef nonnull @.str.62, i32 noundef %136) #11
  %137 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %128, align 4
  %parent.i.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i92.i, i32 0, i32 9
  %139 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %parent.i.i, align 4
  %phys_mii_mask.i.i = getelementptr inbounds %struct.dsa_switch, ptr %128, i32 0, i32 9
  %140 = ptrtoint ptr %phys_mii_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %phys_mii_mask.i.i, align 4
  %neg.i.i = xor i32 %141, -1
  %phy_mask.i.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i92.i, i32 0, i32 13
  %142 = ptrtoint ptr %phy_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %neg.i.i, ptr %phy_mask.i.i, align 8
  %slave_mii_bus.i.i = getelementptr inbounds %struct.dsa_switch, ptr %128, i32 0, i32 10
  %143 = ptrtoint ptr %slave_mii_bus.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i.i92.i, ptr %slave_mii_bus.i.i, align 4
  %144 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i682, align 4
  %call6.i.i = call i32 @devm_of_mdiobus_register(ptr noundef %145, ptr noundef nonnull %call.i.i92.i, ptr noundef %call44.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool48.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool48.not.i, label %qca8k_mdio_register.exit.i.qca8k_setup_mdio_bus.exit.thread864_crit_edge, label %qca8k_mdio_register.exit.i.if.then49.i_crit_edge

qca8k_mdio_register.exit.i.if.then49.i_crit_edge: ; preds = %qca8k_mdio_register.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49.i

qca8k_mdio_register.exit.i.qca8k_setup_mdio_bus.exit.thread864_crit_edge: ; preds = %qca8k_mdio_register.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_setup_mdio_bus.exit.thread864

if.then49.i:                                      ; preds = %qca8k_mdio_register.exit.i.if.then49.i_crit_edge, %if.then46.i715.if.then49.i_crit_edge
  %retval.0.i98.i = phi i32 [ %call6.i.i, %qca8k_mdio_register.exit.i.if.then49.i_crit_edge ], [ -12, %if.then46.i715.if.then49.i_crit_edge ]
  call void @of_node_put(ptr noundef %call44.i) #11
  br label %qca8k_setup_mdio_bus.exit.thread

if.end51.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  %legacy_phy_port_mapping.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 5
  %146 = ptrtoint ptr %legacy_phy_port_mapping.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %legacy_phy_port_mapping.i, align 1
  %phy_read.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 13, i32 8
  %147 = ptrtoint ptr %phy_read.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @qca8k_phy_read, ptr %phy_read.i, align 4
  %phy_write.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 13, i32 9
  %148 = ptrtoint ptr %phy_write.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @qca8k_phy_write, ptr %phy_write.i, align 4
  br label %qca8k_setup_mdio_bus.exit.thread864

qca8k_setup_mdio_bus.exit.thread:                 ; preds = %if.then49.i, %do.end35.i, %do.end.i714, %if.then10.i, %if.end.i687.qca8k_setup_mdio_bus.exit.thread_crit_edge
  %retval.0.i717.ph = phi i32 [ %retval.0.i98.i, %if.then49.i ], [ -22, %if.end.i687.qca8k_setup_mdio_bus.exit.thread_crit_edge ], [ -22, %do.end.i714 ], [ -22, %do.end35.i ], [ %call.i.i.i689, %if.then10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i683) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  br label %cleanup

qca8k_setup_mdio_bus.exit.thread864:              ; preds = %if.end51.i, %qca8k_mdio_register.exit.i.qca8k_setup_mdio_bus.exit.thread864_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i683) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  br label %if.end8

qca8k_setup_mdio_bus.exit:                        ; preds = %if.end37.i
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %149 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap.i, align 4
  %call.i91.i = call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef 60, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i683) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool6.not = icmp eq i32 %call.i91.i, 0
  br i1 %tobool6.not, label %qca8k_setup_mdio_bus.exit.if.end8_crit_edge, label %qca8k_setup_mdio_bus.exit.cleanup_crit_edge

qca8k_setup_mdio_bus.exit.cleanup_crit_edge:      ; preds = %qca8k_setup_mdio_bus.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

qca8k_setup_mdio_bus.exit.if.end8_crit_edge:      ; preds = %qca8k_setup_mdio_bus.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %qca8k_setup_mdio_bus.exit.if.end8_crit_edge, %qca8k_setup_mdio_bus.exit.thread864
  %151 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i682, align 4
  %of_node.i719 = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 27
  %153 = ptrtoint ptr %of_node.i719 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %of_node.i719, align 8
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %156)
  %cmp.i = icmp eq i8 %156, 18
  br i1 %cmp.i, label %if.then.i, label %if.end8.if.end8.i725_crit_edge

if.end8.if.end8.i725_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i725

if.then.i:                                        ; preds = %if.end8
  %call.i720 = call ptr @of_device_get_match_data(ptr noundef %152) #11
  %reduced_package.i = getelementptr inbounds %struct.qca8k_match_data, ptr %call.i720, i32 0, i32 1
  %157 = ptrtoint ptr %reduced_package.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %reduced_package.i, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i721 = icmp eq i8 %158, 0
  %spec.select.i = select i1 %tobool.not.i721, i32 0, i32 1073741824
  %regmap.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %159 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i722 = call i32 @regmap_update_bits_base(ptr noundef %160, i32 noundef 16, i32 noundef 1073741824, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i722)
  %tobool5.not.i = icmp eq i32 %call.i.i.i722, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end8.i725_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.if.end8.i725_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i725

if.end8.i725:                                     ; preds = %if.then.i.if.end8.i725_crit_edge, %if.end8.if.end8.i725_crit_edge
  %val.1.i = phi i32 [ %spec.select.i, %if.then.i.if.end8.i725_crit_edge ], [ 0, %if.end8.if.end8.i725_crit_edge ]
  %call.i.i723 = call ptr @of_find_property(ptr noundef %154, ptr noundef nonnull @.str.63, ptr noundef null) #11
  %tobool.i.not.i724 = icmp eq ptr %call.i.i723, null
  %or11.i = or i32 %val.1.i, -2147483648
  %spec.select37.i = select i1 %tobool.i.not.i724, i32 %val.1.i, i32 %or11.i
  %call.i38.i = call ptr @of_find_property(ptr noundef %154, ptr noundef nonnull @.str.64, ptr noundef null) #11
  %tobool.i39.not.i = icmp eq ptr %call.i38.i, null
  br i1 %tobool.i39.not.i, label %if.end8.i725.qca8k_setup_of_pws_reg.exit_crit_edge, label %if.then14.i726

if.end8.i725.qca8k_setup_of_pws_reg.exit_crit_edge: ; preds = %if.end8.i725
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_setup_of_pws_reg.exit

if.then14.i726:                                   ; preds = %if.end8.i725
  br i1 %tobool.i.not.i724, label %do.end.i727, label %if.end18.i

do.end.i727:                                      ; preds = %if.then14.i726
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.65) #14
  br label %cleanup

if.end18.i:                                       ; preds = %if.then14.i726
  call void @__sanitizer_cov_trace_pc() #13
  %or19.i = or i32 %spec.select37.i, 16777216
  br label %qca8k_setup_of_pws_reg.exit

qca8k_setup_of_pws_reg.exit:                      ; preds = %if.end18.i, %if.end8.i725.qca8k_setup_of_pws_reg.exit_crit_edge
  %val.3.i = phi i32 [ %or19.i, %if.end18.i ], [ %spec.select37.i, %if.end8.i725.qca8k_setup_of_pws_reg.exit_crit_edge ]
  %regmap.i40.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %163 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i41.i = call i32 @regmap_update_bits_base(ptr noundef %164, i32 noundef 16, i32 noundef -2130706432, i32 noundef %val.3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41.i)
  %tobool10.not = icmp eq i32 %call.i.i41.i, 0
  br i1 %tobool10.not, label %if.end12, label %qca8k_setup_of_pws_reg.exit.cleanup_crit_edge

qca8k_setup_of_pws_reg.exit.cleanup_crit_edge:    ; preds = %qca8k_setup_of_pws_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %qca8k_setup_of_pws_reg.exit
  %call.i729 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i729)
  %tobool.not.i730 = icmp eq i32 %call.i729, 0
  %call1.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.68) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %tobool6.not.i = select i1 %tobool2.not.i, i1 %tobool.not.i730, i1 false
  br i1 %tobool6.not.i, label %if.end12.if.end16_crit_edge, label %qca8k_setup_mac_pwr_sel.exit

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

qca8k_setup_mac_pwr_sel.exit:                     ; preds = %if.end12
  %spec.select.i731 = select i1 %tobool.not.i730, i32 0, i32 524288
  %or4.i = or i32 %spec.select.i731, 262144
  %mask.1.i = select i1 %tobool2.not.i, i32 %spec.select.i731, i32 %or4.i
  %165 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i.i733 = call i32 @regmap_update_bits_base(ptr noundef %166, i32 noundef 228, i32 noundef 786432, i32 noundef %mask.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i733)
  %tobool14.not = icmp eq i32 %call.i.i.i733, 0
  br i1 %tobool14.not, label %qca8k_setup_mac_pwr_sel.exit.if.end16_crit_edge, label %qca8k_setup_mac_pwr_sel.exit.cleanup_crit_edge

qca8k_setup_mac_pwr_sel.exit.cleanup_crit_edge:   ; preds = %qca8k_setup_mac_pwr_sel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

qca8k_setup_mac_pwr_sel.exit.if.end16_crit_edge:  ; preds = %qca8k_setup_mac_pwr_sel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %qca8k_setup_mac_pwr_sel.exit.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %167 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regmap.i40.i, align 4
  %call.i734 = call i32 @regmap_update_bits_base(ptr noundef %168, i32 noundef 4, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i734)
  %tobool18.not = icmp eq i32 %call.i734, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %171 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regmap.i40.i, align 4
  %call.i735 = call i32 @regmap_update_bits_base(ptr noundef %172, i32 noundef 1568, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i735)
  %tobool27.not = icmp eq i32 %call.i735, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %reg_mutex.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #11
  %175 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i737 = call i32 @regmap_update_bits_base(ptr noundef %176, i32 noundef 52, i32 noundef 16908288, i32 noundef 16908288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i737)
  %tobool.not.i738 = icmp eq i32 %call.i.i737, 0
  br i1 %tobool.not.i738, label %if.end.i739, label %if.end33.qca8k_mib_init.exit.thread_crit_edge

if.end33.qca8k_mib_init.exit.thread_crit_edge:    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mib_init.exit.thread

if.end.i739:                                      ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #11
  %177 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -1, ptr %val.i.i, align 4, !annotation !359
  %call.i20.i = call i64 @ktime_get() #11
  %add.i.i.i = add i64 %call.i20.i, 2000000000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i741.for.cond.i.i_crit_edge, %if.end.i739
  %178 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regmap.i40.i, align 4
  %call8.i.i = call i32 @regmap_read(ptr noundef %179, i32 noundef 52, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i740 = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i740, label %lor.lhs.false.i.i, label %for.cond.i.i.qca8k_busy_wait.exit.thread.i_crit_edge

for.cond.i.i.qca8k_busy_wait.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %for.cond.i.i
  %180 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %181, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i741

lor.lhs.false.i.i.lor.rhs.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs.i.i

land.lhs.true.i.i741:                             ; preds = %lor.lhs.false.i.i
  %call13.i.i = call i64 @ktime_get() #11
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %land.lhs.true.i.i741.for.cond.i.i_crit_edge

land.lhs.true.i.i741.for.cond.i.i_crit_edge:      ; preds = %land.lhs.true.i.i741
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i741
  %182 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regmap.i40.i, align 4
  %call18.i.i = call i32 @regmap_read(ptr noundef %183, i32 noundef 52, ptr noundef nonnull %val.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool23.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool23.not.i.i, label %for.end.i.i.lor.rhs.i.i_crit_edge, label %for.end.i.i.qca8k_busy_wait.exit.thread.i_crit_edge

for.end.i.i.qca8k_busy_wait.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread.i

for.end.i.i.lor.rhs.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %for.end.i.i.lor.rhs.i.i_crit_edge, %lor.lhs.false.i.i.lor.rhs.i.i_crit_edge
  %184 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %val.i.i, align 4
  %and24.i.i = and i32 %185, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end4.i, label %lor.rhs.i.i.qca8k_busy_wait.exit.thread.i_crit_edge

lor.rhs.i.i.qca8k_busy_wait.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread.i

qca8k_busy_wait.exit.thread.i:                    ; preds = %lor.rhs.i.i.qca8k_busy_wait.exit.thread.i_crit_edge, %for.end.i.i.qca8k_busy_wait.exit.thread.i_crit_edge, %for.cond.i.i.qca8k_busy_wait.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  br label %qca8k_mib_init.exit.thread

if.end4.i:                                        ; preds = %lor.rhs.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #11
  %186 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regmap.i40.i, align 4
  %call.i21.i = call i32 @regmap_update_bits_base(ptr noundef %187, i32 noundef 52, i32 noundef 1048576, i32 noundef 1048576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool7.not.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool7.not.i, label %qca8k_mib_init.exit, label %if.end4.i.qca8k_mib_init.exit.thread_crit_edge

if.end4.i.qca8k_mib_init.exit.thread_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mib_init.exit.thread

qca8k_mib_init.exit.thread:                       ; preds = %if.end4.i.qca8k_mib_init.exit.thread_crit_edge, %qca8k_busy_wait.exit.thread.i, %if.end33.qca8k_mib_init.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  br label %do.end39

qca8k_mib_init.exit:                              ; preds = %if.end4.i
  %188 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regmap.i40.i, align 4
  %call.i23.i = call i32 @regmap_write(ptr noundef %189, i32 noundef 48, i32 noundef 1) #11
  call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool35.not = icmp eq i32 %call.i23.i, 0
  br i1 %tobool35.not, label %qca8k_mib_init.exit.for.body.preheader_crit_edge, label %qca8k_mib_init.exit.do.end39_crit_edge

qca8k_mib_init.exit.do.end39_crit_edge:           ; preds = %qca8k_mib_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

qca8k_mib_init.exit.for.body.preheader_crit_edge: ; preds = %qca8k_mib_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

do.end39:                                         ; preds = %qca8k_mib_init.exit.do.end39_crit_edge, %qca8k_mib_init.exit.thread
  %190 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.24) #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end39, %qca8k_mib_init.exit.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0891 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = mul nuw nsw i32 %i.0891, 12
  %add = add nuw nsw i32 %mul, 1632
  %192 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i744 = call i32 @regmap_update_bits_base(ptr noundef %193, i32 noundef %add, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i744)
  %tobool44.not = icmp eq i32 %call.i.i744, 0
  br i1 %tobool44.not, label %if.end46, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end46:                                         ; preds = %for.body
  %194 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i746 = getelementptr inbounds %struct.dsa_switch_tree, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %ports.i.i746 to i32
  call void @__asan_load4_noabort(i32 %196)
  %.pn20.i.i747 = load ptr, ptr %ports.i.i746, align 4
  %cmp.not21.i.i748 = icmp eq ptr %.pn20.i.i747, %ports.i.i746
  br i1 %cmp.not21.i.i748, label %if.end46.dsa_is_cpu_port.exit_crit_edge, label %if.end46.for.body.i.i752_crit_edge

if.end46.for.body.i.i752_crit_edge:               ; preds = %if.end46
  br label %for.body.i.i752

if.end46.dsa_is_cpu_port.exit_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i752:                                  ; preds = %for.inc.i.i758.for.body.i.i752_crit_edge, %if.end46.for.body.i.i752_crit_edge
  %.pn22.i.i749 = phi ptr [ %.pn.i.i756, %for.inc.i.i758.for.body.i.i752_crit_edge ], [ %.pn20.i.i747, %if.end46.for.body.i.i752_crit_edge ]
  %ds3.i.i750 = getelementptr i8, ptr %.pn22.i.i749, i32 -432
  %197 = ptrtoint ptr %ds3.i.i750 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ds3.i.i750, align 4
  %cmp4.i.i751 = icmp eq ptr %198, %ds
  br i1 %cmp4.i.i751, label %land.lhs.true.i.i755, label %for.body.i.i752.for.inc.i.i758_crit_edge

for.body.i.i752.for.inc.i.i758_crit_edge:         ; preds = %for.body.i.i752
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i758

land.lhs.true.i.i755:                             ; preds = %for.body.i.i752
  %index.i.i753 = getelementptr i8, ptr %.pn22.i.i749, i32 -428
  %199 = ptrtoint ptr %index.i.i753 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %index.i.i753, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %i.0891)
  %cmp5.i.i754 = icmp eq i32 %200, %i.0891
  br i1 %cmp5.i.i754, label %cleanup.split.loop.exit18.i.i760, label %land.lhs.true.i.i755.for.inc.i.i758_crit_edge

land.lhs.true.i.i755.for.inc.i.i758_crit_edge:    ; preds = %land.lhs.true.i.i755
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i758

for.inc.i.i758:                                   ; preds = %land.lhs.true.i.i755.for.inc.i.i758_crit_edge, %for.body.i.i752.for.inc.i.i758_crit_edge
  %201 = ptrtoint ptr %.pn22.i.i749 to i32
  call void @__asan_load4_noabort(i32 %201)
  %.pn.i.i756 = load ptr, ptr %.pn22.i.i749, align 4
  %cmp.not.i.i757 = icmp eq ptr %.pn.i.i756, %ports.i.i746
  br i1 %cmp.not.i.i757, label %for.inc.i.i758.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i758.for.body.i.i752_crit_edge

for.inc.i.i758.for.body.i.i752_crit_edge:         ; preds = %for.inc.i.i758
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i752

for.inc.i.i758.dsa_is_cpu_port.exit_crit_edge:    ; preds = %for.inc.i.i758
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i760:                 ; preds = %land.lhs.true.i.i755
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i759 = getelementptr i8, ptr %.pn22.i.i749, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i760, %for.inc.i.i758.dsa_is_cpu_port.exit_crit_edge, %if.end46.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i761 = phi ptr [ %dp.0.le.i.i759, %cleanup.split.loop.exit18.i.i760 ], [ null, %if.end46.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i758.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i761, i32 0, i32 6
  %202 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp.i762 = icmp eq i32 %203, 1
  br i1 %cmp.i762, label %if.then48, label %dsa_is_cpu_port.exit.if.end90_crit_edge

dsa_is_cpu_port.exit.if.end90_crit_edge:          ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then48:                                        ; preds = %dsa_is_cpu_port.exit
  %mul49 = shl i32 %i.0891, 2
  %add50 = add nuw nsw i32 %mul49, 156
  %204 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regmap.i40.i, align 4
  %call.i765 = call i32 @regmap_write(ptr noundef %205, i32 noundef %add50, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i765)
  %tobool83.not = icmp eq i32 %call.i765, 0
  br i1 %tobool83.not, label %if.then48.if.end90_crit_edge, label %do.end87

if.then48.if.end90_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.end87:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %206 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.28) #14
  br label %cleanup

if.end90:                                         ; preds = %if.then48.if.end90_crit_edge, %dsa_is_cpu_port.exit.if.end90_crit_edge
  %208 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i767 = getelementptr inbounds %struct.dsa_switch_tree, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %ports.i.i767 to i32
  call void @__asan_load4_noabort(i32 %210)
  %.pn20.i.i768 = load ptr, ptr %ports.i.i767, align 4
  %cmp.not21.i.i769 = icmp eq ptr %.pn20.i.i768, %ports.i.i767
  br i1 %cmp.not21.i.i769, label %if.end90.dsa_is_user_port.exit_crit_edge, label %if.end90.for.body.i.i773_crit_edge

if.end90.for.body.i.i773_crit_edge:               ; preds = %if.end90
  br label %for.body.i.i773

if.end90.dsa_is_user_port.exit_crit_edge:         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit

for.body.i.i773:                                  ; preds = %for.inc.i.i779.for.body.i.i773_crit_edge, %if.end90.for.body.i.i773_crit_edge
  %.pn22.i.i770 = phi ptr [ %.pn.i.i777, %for.inc.i.i779.for.body.i.i773_crit_edge ], [ %.pn20.i.i768, %if.end90.for.body.i.i773_crit_edge ]
  %ds3.i.i771 = getelementptr i8, ptr %.pn22.i.i770, i32 -432
  %211 = ptrtoint ptr %ds3.i.i771 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ds3.i.i771, align 4
  %cmp4.i.i772 = icmp eq ptr %212, %ds
  br i1 %cmp4.i.i772, label %land.lhs.true.i.i776, label %for.body.i.i773.for.inc.i.i779_crit_edge

for.body.i.i773.for.inc.i.i779_crit_edge:         ; preds = %for.body.i.i773
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i779

land.lhs.true.i.i776:                             ; preds = %for.body.i.i773
  %index.i.i774 = getelementptr i8, ptr %.pn22.i.i770, i32 -428
  %213 = ptrtoint ptr %index.i.i774 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %index.i.i774, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %i.0891)
  %cmp5.i.i775 = icmp eq i32 %214, %i.0891
  br i1 %cmp5.i.i775, label %cleanup.split.loop.exit18.i.i781, label %land.lhs.true.i.i776.for.inc.i.i779_crit_edge

land.lhs.true.i.i776.for.inc.i.i779_crit_edge:    ; preds = %land.lhs.true.i.i776
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i779

for.inc.i.i779:                                   ; preds = %land.lhs.true.i.i776.for.inc.i.i779_crit_edge, %for.body.i.i773.for.inc.i.i779_crit_edge
  %215 = ptrtoint ptr %.pn22.i.i770 to i32
  call void @__asan_load4_noabort(i32 %215)
  %.pn.i.i777 = load ptr, ptr %.pn22.i.i770, align 4
  %cmp.not.i.i778 = icmp eq ptr %.pn.i.i777, %ports.i.i767
  br i1 %cmp.not.i.i778, label %for.inc.i.i779.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i779.for.body.i.i773_crit_edge

for.inc.i.i779.for.body.i.i773_crit_edge:         ; preds = %for.inc.i.i779
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i773

for.inc.i.i779.dsa_is_user_port.exit_crit_edge:   ; preds = %for.inc.i.i779
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i781:                 ; preds = %land.lhs.true.i.i776
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i780 = getelementptr i8, ptr %.pn22.i.i770, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i781, %for.inc.i.i779.dsa_is_user_port.exit_crit_edge, %if.end90.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i782 = phi ptr [ %dp.0.le.i.i780, %cleanup.split.loop.exit18.i.i781 ], [ null, %if.end90.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i779.dsa_is_user_port.exit_crit_edge ]
  %type.i783 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i782, i32 0, i32 6
  %216 = ptrtoint ptr %type.i783 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %type.i783, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %217)
  %cmp.i784 = icmp eq i32 %217, 3
  br i1 %cmp.i784, label %if.then92, label %dsa_is_user_port.exit.for.inc_crit_edge

dsa_is_user_port.exit.for.inc_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then92:                                        ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %218 = add nsw i32 %i.0891, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %218)
  %219 = icmp ult i32 %218, 5
  %mask.0.i = select i1 %219, i32 524, i32 12
  %220 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regmap.i40.i, align 4
  %mul4.i = shl i32 %i.0891, 2
  %add5.i = add nuw nsw i32 %mul4.i, 124
  %call.i14.i = call i32 @regmap_update_bits_base(ptr noundef %221, i32 noundef %add5.i, i32 noundef %mask.0.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then92, %dsa_is_user_port.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0891, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %shl = shl nuw i32 1, %retval.0.i.ph
  %or144 = shl nuw i32 16842752, %retval.0.i.ph
  %shl170 = shl nuw nsw i32 %shl, 8
  %or172 = or i32 %or144, %shl170
  %or200 = or i32 %or172, %shl
  %222 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap.i40.i, align 4
  %call.i787 = call i32 @regmap_write(ptr noundef %223, i32 noundef 1572, i32 noundef %or200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i787)
  %tobool202.not = icmp eq i32 %call.i787, 0
  br i1 %tobool202.not, label %for.end.for.body207_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.for.body207_crit_edge:                    ; preds = %for.end
  br label %for.body207

for.body207:                                      ; preds = %if.end515.for.body207_crit_edge, %for.end.for.body207_crit_edge
  %i.1893 = phi i32 [ %inc517, %if.end515.for.body207_crit_edge ], [ 0, %for.end.for.body207_crit_edge ]
  %224 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i789 = getelementptr inbounds %struct.dsa_switch_tree, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %ports.i.i789 to i32
  call void @__asan_load4_noabort(i32 %226)
  %.pn20.i.i790 = load ptr, ptr %ports.i.i789, align 4
  %cmp.not21.i.i791 = icmp eq ptr %.pn20.i.i790, %ports.i.i789
  br i1 %cmp.not21.i.i791, label %dsa_is_cpu_port.exit808.thread, label %for.body207.for.body.i.i795_crit_edge

for.body207.for.body.i.i795_crit_edge:            ; preds = %for.body207
  br label %for.body.i.i795

for.body.i.i795:                                  ; preds = %for.inc.i.i801.for.body.i.i795_crit_edge, %for.body207.for.body.i.i795_crit_edge
  %.pn22.i.i792 = phi ptr [ %.pn.i.i799, %for.inc.i.i801.for.body.i.i795_crit_edge ], [ %.pn20.i.i790, %for.body207.for.body.i.i795_crit_edge ]
  %ds3.i.i793 = getelementptr i8, ptr %.pn22.i.i792, i32 -432
  %227 = ptrtoint ptr %ds3.i.i793 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ds3.i.i793, align 4
  %cmp4.i.i794 = icmp eq ptr %228, %ds
  br i1 %cmp4.i.i794, label %land.lhs.true.i.i798, label %for.body.i.i795.for.inc.i.i801_crit_edge

for.body.i.i795.for.inc.i.i801_crit_edge:         ; preds = %for.body.i.i795
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i801

land.lhs.true.i.i798:                             ; preds = %for.body.i.i795
  %index.i.i796 = getelementptr i8, ptr %.pn22.i.i792, i32 -428
  %229 = ptrtoint ptr %index.i.i796 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %index.i.i796, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %i.1893)
  %cmp5.i.i797 = icmp eq i32 %230, %i.1893
  br i1 %cmp5.i.i797, label %cleanup.split.loop.exit18.i.i803, label %land.lhs.true.i.i798.for.inc.i.i801_crit_edge

land.lhs.true.i.i798.for.inc.i.i801_crit_edge:    ; preds = %land.lhs.true.i.i798
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i801

for.inc.i.i801:                                   ; preds = %land.lhs.true.i.i798.for.inc.i.i801_crit_edge, %for.body.i.i795.for.inc.i.i801_crit_edge
  %231 = ptrtoint ptr %.pn22.i.i792 to i32
  call void @__asan_load4_noabort(i32 %231)
  %.pn.i.i799 = load ptr, ptr %.pn22.i.i792, align 4
  %cmp.not.i.i800 = icmp eq ptr %.pn.i.i799, %ports.i.i789
  br i1 %cmp.not.i.i800, label %for.inc.i.i801.dsa_is_cpu_port.exit808_crit_edge, label %for.inc.i.i801.for.body.i.i795_crit_edge

for.inc.i.i801.for.body.i.i795_crit_edge:         ; preds = %for.inc.i.i801
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i795

for.inc.i.i801.dsa_is_cpu_port.exit808_crit_edge: ; preds = %for.inc.i.i801
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit808

cleanup.split.loop.exit18.i.i803:                 ; preds = %land.lhs.true.i.i798
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i802 = getelementptr i8, ptr %.pn22.i.i792, i32 -448
  br label %dsa_is_cpu_port.exit808

dsa_is_cpu_port.exit808:                          ; preds = %cleanup.split.loop.exit18.i.i803, %for.inc.i.i801.dsa_is_cpu_port.exit808_crit_edge
  %retval.0.i.i804 = phi ptr [ %dp.0.le.i.i802, %cleanup.split.loop.exit18.i.i803 ], [ null, %for.inc.i.i801.dsa_is_cpu_port.exit808_crit_edge ]
  %type.i805 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i804, i32 0, i32 6
  %232 = ptrtoint ptr %type.i805 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %type.i805, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %233)
  %cmp.i806 = icmp eq i32 %233, 1
  br i1 %cmp.i806, label %dsa_is_cpu_port.exit808.for.body.i809_crit_edge, label %dsa_is_cpu_port.exit808.if.end217_crit_edge

dsa_is_cpu_port.exit808.if.end217_crit_edge:      ; preds = %dsa_is_cpu_port.exit808
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end217

dsa_is_cpu_port.exit808.for.body.i809_crit_edge:  ; preds = %dsa_is_cpu_port.exit808
  br label %for.body.i809

dsa_is_cpu_port.exit808.thread:                   ; preds = %for.body207
  call void @__asan_load4_noabort(i32 24)
  %234 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %234)
  %cmp.i806875 = icmp eq i32 %234, 1
  br i1 %cmp.i806875, label %dsa_is_cpu_port.exit808.thread.dsa_user_ports.exit_crit_edge, label %dsa_is_cpu_port.exit808.thread.if.end217_crit_edge

dsa_is_cpu_port.exit808.thread.if.end217_crit_edge: ; preds = %dsa_is_cpu_port.exit808.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end217

dsa_is_cpu_port.exit808.thread.dsa_user_ports.exit_crit_edge: ; preds = %dsa_is_cpu_port.exit808.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_user_ports.exit

for.body.i809:                                    ; preds = %for.inc.i818.for.body.i809_crit_edge, %dsa_is_cpu_port.exit808.for.body.i809_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i818.for.body.i809_crit_edge ], [ %.pn20.i.i790, %dsa_is_cpu_port.exit808.for.body.i809_crit_edge ]
  %mask.021.i = phi i32 [ %mask.1.i816, %for.inc.i818.for.body.i809_crit_edge ], [ 0, %dsa_is_cpu_port.exit808.for.body.i809_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %235 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %236, %ds
  br i1 %cmp4.i, label %if.then.i812, label %for.body.i809.for.inc.i818_crit_edge

for.body.i809.for.inc.i818_crit_edge:             ; preds = %for.body.i809
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i818

if.then.i812:                                     ; preds = %for.body.i809
  %type.i.i810 = getelementptr i8, ptr %.pn22.i, i32 -424
  %237 = ptrtoint ptr %type.i.i810 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %type.i.i810, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %238)
  %cmp.i.i811 = icmp eq i32 %238, 3
  br i1 %cmp.i.i811, label %if.then5.i815, label %if.then.i812.for.inc.i818_crit_edge

if.then.i812.for.inc.i818_crit_edge:              ; preds = %if.then.i812
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i818

if.then5.i815:                                    ; preds = %if.then.i812
  call void @__sanitizer_cov_trace_pc() #13
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %239 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %index.i, align 4
  %shl.i813 = shl nuw i32 1, %240
  %or.i814 = or i32 %shl.i813, %mask.021.i
  br label %for.inc.i818

for.inc.i818:                                     ; preds = %if.then5.i815, %if.then.i812.for.inc.i818_crit_edge, %for.body.i809.for.inc.i818_crit_edge
  %mask.1.i816 = phi i32 [ %or.i814, %if.then5.i815 ], [ %mask.021.i, %if.then.i812.for.inc.i818_crit_edge ], [ %mask.021.i, %for.body.i809.for.inc.i818_crit_edge ]
  %241 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i817 = icmp eq ptr %.pn.i, %ports.i.i789
  br i1 %cmp.not.i817, label %for.inc.i818.dsa_user_ports.exit_crit_edge, label %for.inc.i818.for.body.i809_crit_edge

for.inc.i818.for.body.i809_crit_edge:             ; preds = %for.inc.i818
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i809

for.inc.i818.dsa_user_ports.exit_crit_edge:       ; preds = %for.inc.i818
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_user_ports.exit

dsa_user_ports.exit:                              ; preds = %for.inc.i818.dsa_user_ports.exit_crit_edge, %dsa_is_cpu_port.exit808.thread.dsa_user_ports.exit_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %dsa_is_cpu_port.exit808.thread.dsa_user_ports.exit_crit_edge ], [ %mask.1.i816, %for.inc.i818.dsa_user_ports.exit_crit_edge ]
  %add211878.in = mul nuw nsw i32 %i.1893, 12
  %add211878 = add nuw nsw i32 %add211878.in, 1632
  %242 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i821 = call i32 @regmap_update_bits_base(ptr noundef %243, i32 noundef %add211878, i32 noundef 127, i32 noundef %mask.0.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i821)
  %tobool214.not = icmp eq i32 %call.i.i821, 0
  br i1 %tobool214.not, label %dsa_user_ports.exit.if.end217_crit_edge, label %dsa_user_ports.exit.cleanup_crit_edge

dsa_user_ports.exit.cleanup_crit_edge:            ; preds = %dsa_user_ports.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dsa_user_ports.exit.if.end217_crit_edge:          ; preds = %dsa_user_ports.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end217

if.end217:                                        ; preds = %dsa_user_ports.exit.if.end217_crit_edge, %dsa_is_cpu_port.exit808.thread.if.end217_crit_edge, %dsa_is_cpu_port.exit808.if.end217_crit_edge
  %244 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i823 = getelementptr inbounds %struct.dsa_switch_tree, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %ports.i.i823 to i32
  call void @__asan_load4_noabort(i32 %246)
  %.pn20.i.i824 = load ptr, ptr %ports.i.i823, align 4
  %cmp.not21.i.i825 = icmp eq ptr %.pn20.i.i824, %ports.i.i823
  br i1 %cmp.not21.i.i825, label %if.end217.dsa_is_user_port.exit842_crit_edge, label %if.end217.for.body.i.i829_crit_edge

if.end217.for.body.i.i829_crit_edge:              ; preds = %if.end217
  br label %for.body.i.i829

if.end217.dsa_is_user_port.exit842_crit_edge:     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit842

for.body.i.i829:                                  ; preds = %for.inc.i.i835.for.body.i.i829_crit_edge, %if.end217.for.body.i.i829_crit_edge
  %.pn22.i.i826 = phi ptr [ %.pn.i.i833, %for.inc.i.i835.for.body.i.i829_crit_edge ], [ %.pn20.i.i824, %if.end217.for.body.i.i829_crit_edge ]
  %ds3.i.i827 = getelementptr i8, ptr %.pn22.i.i826, i32 -432
  %247 = ptrtoint ptr %ds3.i.i827 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ds3.i.i827, align 4
  %cmp4.i.i828 = icmp eq ptr %248, %ds
  br i1 %cmp4.i.i828, label %land.lhs.true.i.i832, label %for.body.i.i829.for.inc.i.i835_crit_edge

for.body.i.i829.for.inc.i.i835_crit_edge:         ; preds = %for.body.i.i829
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i835

land.lhs.true.i.i832:                             ; preds = %for.body.i.i829
  %index.i.i830 = getelementptr i8, ptr %.pn22.i.i826, i32 -428
  %249 = ptrtoint ptr %index.i.i830 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %index.i.i830, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %250, i32 %i.1893)
  %cmp5.i.i831 = icmp eq i32 %250, %i.1893
  br i1 %cmp5.i.i831, label %cleanup.split.loop.exit18.i.i837, label %land.lhs.true.i.i832.for.inc.i.i835_crit_edge

land.lhs.true.i.i832.for.inc.i.i835_crit_edge:    ; preds = %land.lhs.true.i.i832
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i835

for.inc.i.i835:                                   ; preds = %land.lhs.true.i.i832.for.inc.i.i835_crit_edge, %for.body.i.i829.for.inc.i.i835_crit_edge
  %251 = ptrtoint ptr %.pn22.i.i826 to i32
  call void @__asan_load4_noabort(i32 %251)
  %.pn.i.i833 = load ptr, ptr %.pn22.i.i826, align 4
  %cmp.not.i.i834 = icmp eq ptr %.pn.i.i833, %ports.i.i823
  br i1 %cmp.not.i.i834, label %for.inc.i.i835.dsa_is_user_port.exit842_crit_edge, label %for.inc.i.i835.for.body.i.i829_crit_edge

for.inc.i.i835.for.body.i.i829_crit_edge:         ; preds = %for.inc.i.i835
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i829

for.inc.i.i835.dsa_is_user_port.exit842_crit_edge: ; preds = %for.inc.i.i835
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit842

cleanup.split.loop.exit18.i.i837:                 ; preds = %land.lhs.true.i.i832
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i836 = getelementptr i8, ptr %.pn22.i.i826, i32 -448
  br label %dsa_is_user_port.exit842

dsa_is_user_port.exit842:                         ; preds = %cleanup.split.loop.exit18.i.i837, %for.inc.i.i835.dsa_is_user_port.exit842_crit_edge, %if.end217.dsa_is_user_port.exit842_crit_edge
  %retval.0.i.i838 = phi ptr [ %dp.0.le.i.i836, %cleanup.split.loop.exit18.i.i837 ], [ null, %if.end217.dsa_is_user_port.exit842_crit_edge ], [ null, %for.inc.i.i835.dsa_is_user_port.exit842_crit_edge ]
  %type.i839 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i838, i32 0, i32 6
  %252 = ptrtoint ptr %type.i839 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %type.i839, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %253)
  %cmp.i840 = icmp eq i32 %253, 3
  br i1 %cmp.i840, label %if.then219, label %dsa_is_user_port.exit842.if.end284_crit_edge

dsa_is_user_port.exit842.if.end284_crit_edge:     ; preds = %dsa_is_user_port.exit842
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end284

if.then219:                                       ; preds = %dsa_is_user_port.exit842
  %mul220 = mul nuw nsw i32 %i.1893, 12
  %add221 = add nuw nsw i32 %mul220, 1632
  %254 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i844 = call i32 @regmap_update_bits_base(ptr noundef %255, i32 noundef %add221, i32 noundef 127, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i844)
  %tobool224.not = icmp eq i32 %call.i.i844, 0
  br i1 %tobool224.not, label %if.end226, label %if.then219.cleanup_crit_edge

if.then219.cleanup_crit_edge:                     ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end226:                                        ; preds = %if.then219
  %256 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regmap.i40.i, align 4
  %call.i845 = call i32 @regmap_update_bits_base(ptr noundef %257, i32 noundef %add221, i32 noundef 1048576, i32 noundef 1048576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i845)
  %tobool231.not = icmp eq i32 %call.i845, 0
  br i1 %tobool231.not, label %if.end233, label %if.end226.cleanup_crit_edge

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end233:                                        ; preds = %if.end226
  %258 = shl nuw i32 %i.1893, 1
  %259 = add i32 %258, 3184
  %add235 = and i32 %259, -4
  %rem.urem = shl i32 %i.1893, 4
  %mul236 = and i32 %rem.urem, 16
  %shl237 = shl nuw nsw i32 4095, %mul236
  %shl240 = shl nuw nsw i32 1, %mul236
  %260 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i847 = call i32 @regmap_update_bits_base(ptr noundef %261, i32 noundef %add235, i32 noundef %shl237, i32 noundef %shl240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i847)
  %tobool242.not = icmp eq i32 %call.i.i847, 0
  br i1 %tobool242.not, label %if.end244, label %if.end233.cleanup_crit_edge

if.end233.cleanup_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end244:                                        ; preds = %if.end233
  %mul245 = shl i32 %i.1893, 3
  %add246 = add nuw nsw i32 %mul245, 1056
  %262 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regmap.i40.i, align 4
  %call.i849 = call i32 @regmap_write(ptr noundef %263, i32 noundef %add246, i32 noundef 65537) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i849)
  %tobool281.not = icmp eq i32 %call.i849, 0
  br i1 %tobool281.not, label %if.end244.if.end284_crit_edge, label %if.end244.cleanup_crit_edge

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end244.if.end284_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end284

if.end284:                                        ; preds = %if.end244.if.end284_crit_edge, %dsa_is_user_port.exit842.if.end284_crit_edge
  %264 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %265)
  %cmp285 = icmp eq i8 %265, 19
  br i1 %cmp285, label %if.then287, label %if.end284.if.end515_crit_edge

if.end284.if.end515_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end515

if.then287:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1893)
  %266 = icmp ult i32 %i.1893, 7
  br i1 %266, label %switch.lookup, label %if.then287.sw.epilog_crit_edge

if.then287.sw.epilog_crit_edge:                   ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.qca8k_setup, i32 0, i32 %i.1893
  %267 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %267)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then287.sw.epilog_crit_edge
  %mask.0 = phi i32 [ %switch.load, %switch.lookup ], [ 419464771, %if.then287.sw.epilog_crit_edge ]
  %mul490 = shl i32 %i.1893, 3
  %add491 = add nuw nsw i32 %mul490, 2416
  %268 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %regmap.i40.i, align 4
  %call.i851 = call i32 @regmap_write(ptr noundef %269, i32 noundef %add491, i32 noundef %mask.0) #11
  %add513 = add nuw nsw i32 %mul490, 2420
  %270 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i853 = call i32 @regmap_update_bits_base(ptr noundef %271, i32 noundef %add513, i32 noundef 463, i32 noundef 454, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end515

if.end515:                                        ; preds = %sw.epilog, %if.end284.if.end515_crit_edge
  %arrayidx = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 %i.1893
  %272 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 1500, ptr %arrayidx, align 4
  %inc517 = add nuw nsw i32 %i.1893, 1
  %exitcond909.not = icmp eq i32 %inc517, 7
  br i1 %exitcond909.not, label %for.end518, label %if.end515.for.body207_crit_edge

if.end515.for.body207_crit_edge:                  ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body207

for.end518:                                       ; preds = %if.end515
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %274)
  %cmp521 = icmp eq i8 %274, 18
  br i1 %cmp521, label %do.end538, label %for.end518.if.end558_crit_edge

for.end518.if.end558_crit_edge:                   ; preds = %for.end518
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end558

do.end538:                                        ; preds = %for.end518
  call void @__sanitizer_cov_trace_pc() #13
  %275 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regmap.i40.i, align 4
  %call.i.i855 = call i32 @regmap_update_bits_base(ptr noundef %276, i32 noundef 2048, i32 noundef 33489407, i32 noundef 18874864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end558

if.end558:                                        ; preds = %do.end538, %for.end518.if.end558_crit_edge
  %277 = ptrtoint ptr %regmap.i40.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regmap.i40.i, align 4
  %call.i857 = call i32 @regmap_write(ptr noundef %278, i32 noundef 120, i32 noundef 1518) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i857)
  %tobool560.not = icmp eq i32 %call.i857, 0
  br i1 %tobool560.not, label %if.end558.if.end566_crit_edge, label %do.end564

if.end558.if.end566_crit_edge:                    ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end566

do.end564:                                        ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #13
  %279 = ptrtoint ptr %dev.i682 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev.i682, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %280, ptr noundef nonnull @.str.31) #14
  br label %if.end566

if.end566:                                        ; preds = %do.end564, %if.end558.if.end566_crit_edge
  call fastcc void @qca8k_fdb_flush(ptr noundef %1)
  %pcs_poll = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %281 = ptrtoint ptr %pcs_poll to i32
  call void @__asan_load2_noabort(i32 %281)
  %bf.load = load i16, ptr %pcs_poll, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %pcs_poll, align 4
  %ageing_time_min = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 11
  %282 = ptrtoint ptr %ageing_time_min to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 7000, ptr %ageing_time_min, align 4
  %ageing_time_max = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 12
  %283 = ptrtoint ptr %ageing_time_max to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 458745000, ptr %ageing_time_max, align 4
  %num_lag_ids = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 16
  %284 = ptrtoint ptr %num_lag_ids to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 4, ptr %num_lag_ids, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end566, %if.end244.cleanup_crit_edge, %if.end233.cleanup_crit_edge, %if.end226.cleanup_crit_edge, %if.then219.cleanup_crit_edge, %dsa_user_ports.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end87, %for.body.cleanup_crit_edge, %do.end31, %do.end22, %qca8k_setup_mac_pwr_sel.exit.cleanup_crit_edge, %qca8k_setup_of_pws_reg.exit.cleanup_crit_edge, %do.end.i727, %if.then.i.cleanup_crit_edge, %qca8k_setup_mdio_bus.exit.cleanup_crit_edge, %qca8k_setup_mdio_bus.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i734, %do.end22 ], [ %call.i735, %do.end31 ], [ %call.i765, %do.end87 ], [ 0, %if.end566 ], [ %call.i91.i, %qca8k_setup_mdio_bus.exit.cleanup_crit_edge ], [ %call.i.i41.i, %qca8k_setup_of_pws_reg.exit.cleanup_crit_edge ], [ %call.i.i.i733, %qca8k_setup_mac_pwr_sel.exit.cleanup_crit_edge ], [ %call.i787, %for.end.cleanup_crit_edge ], [ %retval.0.i717.ph, %qca8k_setup_mdio_bus.exit.thread ], [ %call.i.i.i722, %if.then.i.cleanup_crit_edge ], [ -22, %do.end.i727 ], [ %call.i849, %if.end244.cleanup_crit_edge ], [ %call.i.i847, %if.end233.cleanup_crit_edge ], [ %call.i845, %if.end226.cleanup_crit_edge ], [ %call.i.i844, %if.then219.cleanup_crit_edge ], [ %call.i.i821, %dsa_user_ports.exit.cleanup_crit_edge ], [ %call.i.i744, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qca8k_get_phy_flags(ptr nocapture noundef readonly %ds, i32 noundef %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %port, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %switch_revision = getelementptr inbounds %struct.qca8k_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %switch_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %switch_revision, align 1
  %conv = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_phylink_validate(ptr nocapture noundef readnone %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #11
  %0 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %1 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %port, label %entry.unsupported_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb15_crit_edge
    i32 2, label %entry.sw.bb15_crit_edge98
    i32 3, label %entry.sw.bb15_crit_edge99
    i32 4, label %entry.sw.bb15_crit_edge100
    i32 5, label %entry.sw.bb15_crit_edge101
    i32 6, label %sw.bb26
  ]

entry.sw.bb15_crit_edge101:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

entry.sw.bb15_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

entry.sw.bb15_crit_edge99:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

entry.sw.bb15_crit_edge98:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

entry.unsupported_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unsupported

sw.bb:                                            ; preds = %entry
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %3, label %sw.bb.unsupported_crit_edge [
    i32 0, label %sw.bb.sw.epilog_crit_edge
    i32 9, label %sw.bb.sw.epilog_crit_edge102
    i32 10, label %sw.bb.sw.epilog_crit_edge103
    i32 12, label %sw.bb.sw.epilog_crit_edge104
    i32 11, label %sw.bb.sw.epilog_crit_edge105
    i32 4, label %sw.bb.sw.epilog_crit_edge106
  ]

sw.bb.sw.epilog_crit_edge106:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge105:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge104:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge103:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge102:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.unsupported_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %unsupported

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge98, %entry.sw.bb15_crit_edge99, %entry.sw.bb15_crit_edge100, %entry.sw.bb15_crit_edge101
  %interface16 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %interface16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface16, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %6, label %sw.bb15.unsupported_crit_edge [
    i32 0, label %sw.bb15.sw.epilog_crit_edge
    i32 3, label %sw.bb15.sw.epilog_crit_edge107
    i32 1, label %sw.bb15.sw.epilog_crit_edge108
  ]

sw.bb15.sw.epilog_crit_edge108:                   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb15.sw.epilog_crit_edge107:                   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb15.unsupported_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %unsupported

sw.bb26:                                          ; preds = %entry
  %interface27 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %interface27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interface27, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %9, label %sw.bb26.unsupported_crit_edge [
    i32 0, label %sw.bb26.sw.epilog_crit_edge
    i32 9, label %sw.bb26.sw.epilog_crit_edge109
    i32 10, label %sw.bb26.sw.epilog_crit_edge110
    i32 12, label %sw.bb26.sw.epilog_crit_edge111
    i32 11, label %sw.bb26.sw.epilog_crit_edge112
    i32 4, label %sw.bb26.sw.epilog_crit_edge113
    i32 21, label %sw.bb26.sw.epilog_crit_edge114
  ]

sw.bb26.sw.epilog_crit_edge114:                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26.sw.epilog_crit_edge113:                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26.sw.epilog_crit_edge112:                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26.sw.epilog_crit_edge111:                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26.sw.epilog_crit_edge110:                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26.sw.epilog_crit_edge109:                   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb26.unsupported_crit_edge:                    ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %unsupported

unsupported:                                      ; preds = %sw.bb26.unsupported_crit_edge, %sw.bb15.unsupported_crit_edge, %sw.bb.unsupported_crit_edge, %entry.unsupported_crit_edge
  %11 = call ptr @memset(ptr %supported, i32 0, i32 12)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb26.sw.epilog_crit_edge, %sw.bb26.sw.epilog_crit_edge109, %sw.bb26.sw.epilog_crit_edge110, %sw.bb26.sw.epilog_crit_edge111, %sw.bb26.sw.epilog_crit_edge112, %sw.bb26.sw.epilog_crit_edge113, %sw.bb26.sw.epilog_crit_edge114, %sw.bb15.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge107, %sw.bb15.sw.epilog_crit_edge108, %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge102, %sw.bb.sw.epilog_crit_edge103, %sw.bb.sw.epilog_crit_edge104, %sw.bb.sw.epilog_crit_edge105, %sw.bb.sw.epilog_crit_edge106
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #11
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %interface55 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %interface55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interface55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %15)
  %cmp56 = icmp eq i32 %15, 21
  br i1 %cmp56, label %if.then57, label %sw.epilog.if.end59_crit_edge

sw.epilog.if.end59_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then57:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr inbounds i32, ptr %mask, i32 1
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %or.i94 = or i32 %17, 512
  store i32 %or.i94, ptr %add.ptr.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %sw.epilog.if.end59_crit_edge
  %or.i96 = or i32 %13, 24687
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i96, ptr %mask, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #11
  %call.i.i97 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %unsupported
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_phylink_mac_link_state(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %state) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !359
  %mul = shl i32 %port, 2
  %add = add i32 %mul, 124
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %link, align 4
  %sh.diff = lshr i32 %6, 1
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.shl, %bf.clear
  %8 = lshr i8 %tr.sh.diff, 2
  %bf.shl7 = and i8 %8, 32
  %sh.diff56 = lshr i32 %6, 3
  %tr.sh.diff57 = trunc i32 %sh.diff56 to i8
  %bf.shl19 = and i8 %tr.sh.diff57, 64
  %bf.set9 = or i8 %bf.set, %bf.shl19
  %bf.set21 = or i8 %bf.set9, %bf.shl7
  store i8 %bf.set21, ptr %link, align 4
  %and23 = lshr i32 %6, 6
  %and23.lobit = and i32 %and23, 1
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and23.lobit, ptr %duplex, align 4
  %and25 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and25)
  %.not = icmp eq i32 %and25, 3
  br i1 %.not, label %if.end.sw.epilog_crit_edge, label %switch.lookup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qca8k_phylink_mac_link_state, i32 0, i32 %and25
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ -1, %if.end.sw.epilog_crit_edge ]
  %speed30 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %11 = ptrtoint ptr %speed30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %speed30, align 4
  %pause = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %and31 = lshr i32 %6, 5
  %and31.lobit = and i32 %and31, 1
  %12 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and31.lobit, ptr %pause, align 4
  %and36 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %sw.epilog.cleanup_crit_edge, label %if.then38

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then38:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %or40 = or i32 %and31.lobit, 2
  %13 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or40, ptr %pause, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 1, %if.then38 ], [ 1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_phylink_mac_config(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %mode, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !359
  %3 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %port, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge255
    i32 3, label %entry.cleanup_crit_edge256
    i32 4, label %entry.cleanup_crit_edge257
    i32 5, label %entry.cleanup_crit_edge258
    i32 6, label %sw.bb14
  ]

entry.cleanup_crit_edge258:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge257:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge256:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge255:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %5, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb.land.lhs.true35_crit_edge
    i32 10, label %sw.bb.land.lhs.true35_crit_edge259
    i32 12, label %sw.bb.land.lhs.true35_crit_edge260
    i32 11, label %sw.bb.land.lhs.true35_crit_edge261
    i32 4, label %sw.bb.land.lhs.true35_crit_edge262
  ]

sw.bb.land.lhs.true35_crit_edge262:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true35

sw.bb.land.lhs.true35_crit_edge261:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true35

sw.bb.land.lhs.true35_crit_edge260:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true35

sw.bb.land.lhs.true35_crit_edge259:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true35

sw.bb.land.lhs.true35_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true35

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %interface15 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %interface15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface15, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %8, label %sw.bb14.cleanup_crit_edge [
    i32 9, label %sw.bb14.if.end41_crit_edge
    i32 10, label %sw.bb14.if.end41_crit_edge263
    i32 12, label %sw.bb14.if.end41_crit_edge264
    i32 11, label %sw.bb14.if.end41_crit_edge265
    i32 4, label %sw.bb14.if.end41_crit_edge266
    i32 21, label %sw.bb14.if.end41_crit_edge267
  ]

sw.bb14.if.end41_crit_edge267:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb14.if.end41_crit_edge266:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb14.if.end41_crit_edge265:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb14.if.end41_crit_edge264:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb14.if.end41_crit_edge263:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb14.if.end41_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %port) #14
  br label %cleanup

land.lhs.true35:                                  ; preds = %sw.bb.land.lhs.true35_crit_edge, %sw.bb.land.lhs.true35_crit_edge259, %sw.bb.land.lhs.true35_crit_edge260, %sw.bb.land.lhs.true35_crit_edge261, %sw.bb.land.lhs.true35_crit_edge262
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  br i1 %cmp.i, label %do.end39, label %land.lhs.true35.if.end41_crit_edge

land.lhs.true35.if.end41_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end39:                                         ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.70) #14
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true35.if.end41_crit_edge, %sw.bb14.if.end41_crit_edge, %sw.bb14.if.end41_crit_edge263, %sw.bb14.if.end41_crit_edge264, %sw.bb14.if.end41_crit_edge265, %sw.bb14.if.end41_crit_edge266, %sw.bb14.if.end41_crit_edge267
  %cpu_port_index.0247 = phi i32 [ 1, %sw.bb14.if.end41_crit_edge ], [ 1, %sw.bb14.if.end41_crit_edge263 ], [ 1, %sw.bb14.if.end41_crit_edge264 ], [ 1, %sw.bb14.if.end41_crit_edge265 ], [ 1, %sw.bb14.if.end41_crit_edge266 ], [ 1, %sw.bb14.if.end41_crit_edge267 ], [ 0, %land.lhs.true35.if.end41_crit_edge ]
  %reg.0245 = phi i32 [ 12, %sw.bb14.if.end41_crit_edge ], [ 12, %sw.bb14.if.end41_crit_edge263 ], [ 12, %sw.bb14.if.end41_crit_edge264 ], [ 12, %sw.bb14.if.end41_crit_edge265 ], [ 12, %sw.bb14.if.end41_crit_edge266 ], [ 12, %sw.bb14.if.end41_crit_edge267 ], [ 4, %land.lhs.true35.if.end41_crit_edge ]
  %interface42 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %interface42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interface42, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %15, label %do.end169 [
    i32 9, label %if.end41.sw.bb43_crit_edge
    i32 10, label %if.end41.sw.bb43_crit_edge268
    i32 12, label %if.end41.sw.bb43_crit_edge269
    i32 11, label %if.end41.sw.bb43_crit_edge270
    i32 4, label %if.end41.sw.bb50_crit_edge
    i32 21, label %if.end41.sw.bb50_crit_edge271
  ]

if.end41.sw.bb50_crit_edge271:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb50

if.end41.sw.bb50_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb50

if.end41.sw.bb43_crit_edge270:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

if.end41.sw.bb43_crit_edge269:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

if.end41.sw.bb43_crit_edge268:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

if.end41.sw.bb43_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb43

sw.bb43:                                          ; preds = %if.end41.sw.bb43_crit_edge, %if.end41.sw.bb43_crit_edge268, %if.end41.sw.bb43_crit_edge269, %if.end41.sw.bb43_crit_edge270
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %reg.0245, i32 noundef 67108864) #11
  %arrayidx.i = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 4, i32 %cpu_port_index.0247
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %conv.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 22
  %and18.i = and i32 %shl.i, 12582912
  %or.i = or i32 %and18.i, 33554432
  %val.0.i = select i1 %tobool.not.i, i32 0, i32 %or.i
  %arrayidx22.i = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 3, i32 %cpu_port_index.0247
  %21 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not.i = icmp eq i8 %22, 0
  %conv28.i = zext i8 %22 to i32
  %shl51.i = shl nuw nsw i32 %conv28.i, 20
  %and52.i = and i32 %shl51.i, 3145728
  %or53.i = or i32 %val.0.i, %and52.i
  %or54.i = or i32 %or53.i, 16777216
  %val.1.i = select i1 %tobool23.not.i, i32 %val.0.i, i32 %or54.i
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %reg.0245, i32 noundef 66060288, i32 noundef %val.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool56.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool56.not.i, label %sw.bb43.qca8k_mac_config_setup_internal_delay.exit_crit_edge, label %do.end60.i

sw.bb43.qca8k_mac_config_setup_internal_delay.exit_crit_edge: ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mac_config_setup_internal_delay.exit

do.end60.i:                                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.77, i32 noundef %port) #14
  br label %qca8k_mac_config_setup_internal_delay.exit

qca8k_mac_config_setup_internal_delay.exit:       ; preds = %do.end60.i, %sw.bb43.qca8k_mac_config_setup_internal_delay.exit_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %28)
  %cmp45 = icmp eq i8 %28, 19
  br i1 %cmp45, label %if.then47, label %qca8k_mac_config_setup_internal_delay.exit.cleanup_crit_edge

qca8k_mac_config_setup_internal_delay.exit.cleanup_crit_edge: ; preds = %qca8k_mac_config_setup_internal_delay.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then47:                                        ; preds = %qca8k_mac_config_setup_internal_delay.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i228 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 8, i32 noundef 16777216) #11
  br label %cleanup

sw.bb50:                                          ; preds = %if.end41.sw.bb50_crit_edge, %if.end41.sw.bb50_crit_edge271
  %regmap.i229 = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %regmap.i229 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i229, align 4
  %call.i230 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %reg.0245, i32 noundef 128) #11
  %33 = ptrtoint ptr %regmap.i229 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i229, align 4
  %call.i232 = call i32 @regmap_read(ptr noundef %34, i32 noundef 16, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool.not = icmp eq i32 %call.i232, 0
  br i1 %tobool.not, label %if.end54, label %sw.bb50.cleanup_crit_edge

sw.bb50.cleanup_crit_edge:                        ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end54:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i233 = icmp eq i32 %mode, 2
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %and = and i32 %36, -129
  %masksel = select i1 %cmp.i233, i32 0, i32 128
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %val, align 4
  %37 = ptrtoint ptr %regmap.i229 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i229, align 4
  %call.i235 = call i32 @regmap_write(ptr noundef %38, i32 noundef 16, i32 noundef %storemerge) #11
  %39 = ptrtoint ptr %regmap.i229 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i229, align 4
  %call.i237 = call i32 @regmap_read(ptr noundef %40, i32 noundef 224, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool60.not = icmp eq i32 %call.i237, 0
  br i1 %tobool60.not, label %if.end62, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %or63 = or i32 %42, 16
  store i32 %or63, ptr %val, align 4
  %ports_config = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 6
  %sgmii_enable_pll = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %sgmii_enable_pll to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sgmii_enable_pll, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool64.not = icmp eq i8 %44, 0
  br i1 %tobool64.not, label %if.end62.if.end67_crit_edge, label %if.then65

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %or66 = or i32 %42, 30
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or66, ptr %val, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %46 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.end67.dsa_is_cpu_port.exit_crit_edge, label %if.end67.for.body.i.i_crit_edge

if.end67.for.body.i.i_crit_edge:                  ; preds = %if.end67
  br label %for.body.i.i

if.end67.dsa_is_cpu_port.exit_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end67.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end67.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %49 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %50, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %51 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %port)
  %cmp5.i.i = icmp eq i32 %52, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %53 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %if.end67.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.end67.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i238 = icmp eq i32 %55, 1
  br i1 %cmp.i238, label %if.then69, label %if.else87

if.then69:                                        ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %and70 = and i32 %57, -12582913
  %or86 = or i32 %and70, 4194304
  store i32 %or86, ptr %val, align 4
  br label %if.end135

if.else87:                                        ; preds = %dsa_is_cpu_port.exit
  %58 = ptrtoint ptr %interface42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %interface42, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %59, label %if.else87.if.end135_crit_edge [
    i32 4, label %if.then91
    i32 21, label %if.then114
  ]

if.else87.if.end135_crit_edge:                    ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then91:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  %and92 = and i32 %62, -12582913
  %or109 = or i32 %and92, 8388608
  store i32 %or109, ptr %val, align 4
  br label %if.end135

if.then114:                                       ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val, align 4
  %and115 = and i32 %64, -12582913
  store i32 %and115, ptr %val, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then114, %if.then91, %if.else87.if.end135_crit_edge, %if.then69
  %65 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val, align 4
  %67 = ptrtoint ptr %regmap.i229 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i229, align 4
  %call.i240 = call i32 @regmap_write(ptr noundef %68, i32 noundef 224, i32 noundef %66) #11
  %69 = ptrtoint ptr %interface42 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %interface42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %cmp138 = icmp eq i32 %70, 4
  br i1 %cmp138, label %if.then140, label %if.end135.if.end141_crit_edge

if.end135.if.end141_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then140:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @qca8k_mac_config_setup_internal_delay(ptr noundef %1, i32 noundef %cpu_port_index.0247, i32 noundef %reg.0245)
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.end135.if.end141_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %1, align 4
  %73 = and i8 %72, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %73)
  %switch = icmp eq i8 %73, 18
  %spec.select = select i1 %switch, i32 4, i32 %reg.0245
  %74 = ptrtoint ptr %ports_config to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ports_config, align 2, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool153.not = icmp eq i8 %75, 0
  %spec.store.select = select i1 %tobool153.not, i32 0, i32 524288
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %spec.store.select, ptr %val, align 4
  %sgmii_tx_clk_falling_edge = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 6, i32 1
  %77 = ptrtoint ptr %sgmii_tx_clk_falling_edge to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sgmii_tx_clk_falling_edge, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool158.not = icmp eq i8 %78, 0
  br i1 %tobool158.not, label %if.end161, label %if.end161.thread

if.end161.thread:                                 ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  %or160 = or i32 %spec.store.select, 262144
  %79 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or160, ptr %val, align 4
  br label %if.then163

if.end161:                                        ; preds = %if.end141
  br i1 %tobool153.not, label %if.end161.cleanup_crit_edge, label %if.end161.if.then163_crit_edge

if.end161.if.then163_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then163

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then163:                                       ; preds = %if.end161.if.then163_crit_edge, %if.end161.thread
  %80 = phi i32 [ %or160, %if.end161.thread ], [ 524288, %if.end161.if.then163_crit_edge ]
  %81 = ptrtoint ptr %regmap.i229 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i229, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef %spec.select, i32 noundef 786432, i32 noundef %80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

do.end169:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ds, align 4
  %call172 = tail call fastcc ptr @phy_modes(i32 noundef %15)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.75, ptr noundef nonnull %call172, i32 noundef %port) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end169, %if.then163, %if.end161.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %sw.bb50.cleanup_crit_edge, %if.then47, %qca8k_mac_config_setup_internal_delay.exit.cleanup_crit_edge, %do.end39, %do.end, %sw.bb14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge255, %entry.cleanup_crit_edge256, %entry.cleanup_crit_edge257, %entry.cleanup_crit_edge258
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_phylink_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = add i32 %port, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %3 = icmp ult i32 %2, 5
  %mask.0.i = select i1 %3, i32 524, i32 12
  %regmap3.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap3.i, align 4
  %mul4.i = shl i32 %port, 2
  %add5.i = add i32 %mul4.i, 124
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add5.i, i32 noundef %mask.0.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_phylink_mac_link_up(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr nocapture noundef readnone %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  br i1 %cmp.i, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %speed, label %sw.default [
    i32 10, label %if.else.sw.epilog_crit_edge
    i32 100, label %sw.bb3
    i32 1000, label %sw.bb4
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %if.else.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 512, %sw.default ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ 0, %if.else.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp = icmp eq i32 %duplex, 1
  %or = or i32 %reg.0, 64
  %spec.select = select i1 %cmp, i32 %or, i32 %reg.0
  br i1 %rx_pause, label %sw.epilog.if.then7_crit_edge, label %lor.lhs.false

sw.epilog.if.then7_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %sw.epilog
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %3 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %lor.lhs.false.dsa_is_cpu_port.exit_crit_edge, label %lor.lhs.false.for.body.i.i_crit_edge

lor.lhs.false.for.body.i.i_crit_edge:             ; preds = %lor.lhs.false
  br label %for.body.i.i

lor.lhs.false.dsa_is_cpu_port.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %lor.lhs.false.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %lor.lhs.false.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %6 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %7, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %8 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %port)
  %cmp5.i.i = icmp eq i32 %9, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %10 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %lor.lhs.false.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %lor.lhs.false.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i27 = icmp eq i32 %12, 1
  br i1 %cmp.i27, label %dsa_is_cpu_port.exit.if.then7_crit_edge, label %dsa_is_cpu_port.exit.if.end9_crit_edge

dsa_is_cpu_port.exit.if.end9_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

dsa_is_cpu_port.exit.if.then7_crit_edge:          ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %dsa_is_cpu_port.exit.if.then7_crit_edge, %sw.epilog.if.then7_crit_edge
  %or8 = or i32 %spec.select, 32
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %dsa_is_cpu_port.exit.if.end9_crit_edge
  %reg.2 = phi i32 [ %or8, %if.then7 ], [ %spec.select, %dsa_is_cpu_port.exit.if.end9_crit_edge ]
  br i1 %tx_pause, label %if.end9.if.then13_crit_edge, label %lor.lhs.false11

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

lor.lhs.false11:                                  ; preds = %if.end9
  %dst1.i.i28 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %13 = ptrtoint ptr %dst1.i.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst1.i.i28, align 4
  %ports.i.i29 = getelementptr inbounds %struct.dsa_switch_tree, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ports.i.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn20.i.i30 = load ptr, ptr %ports.i.i29, align 4
  %cmp.not21.i.i31 = icmp eq ptr %.pn20.i.i30, %ports.i.i29
  br i1 %cmp.not21.i.i31, label %lor.lhs.false11.dsa_is_cpu_port.exit47_crit_edge, label %lor.lhs.false11.for.body.i.i35_crit_edge

lor.lhs.false11.for.body.i.i35_crit_edge:         ; preds = %lor.lhs.false11
  br label %for.body.i.i35

lor.lhs.false11.dsa_is_cpu_port.exit47_crit_edge: ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit47

for.body.i.i35:                                   ; preds = %for.inc.i.i41.for.body.i.i35_crit_edge, %lor.lhs.false11.for.body.i.i35_crit_edge
  %.pn22.i.i32 = phi ptr [ %.pn.i.i39, %for.inc.i.i41.for.body.i.i35_crit_edge ], [ %.pn20.i.i30, %lor.lhs.false11.for.body.i.i35_crit_edge ]
  %ds3.i.i33 = getelementptr i8, ptr %.pn22.i.i32, i32 -432
  %16 = ptrtoint ptr %ds3.i.i33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds3.i.i33, align 4
  %cmp4.i.i34 = icmp eq ptr %17, %ds
  br i1 %cmp4.i.i34, label %land.lhs.true.i.i38, label %for.body.i.i35.for.inc.i.i41_crit_edge

for.body.i.i35.for.inc.i.i41_crit_edge:           ; preds = %for.body.i.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i41

land.lhs.true.i.i38:                              ; preds = %for.body.i.i35
  %index.i.i36 = getelementptr i8, ptr %.pn22.i.i32, i32 -428
  %18 = ptrtoint ptr %index.i.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %port)
  %cmp5.i.i37 = icmp eq i32 %19, %port
  br i1 %cmp5.i.i37, label %cleanup.split.loop.exit18.i.i43, label %land.lhs.true.i.i38.for.inc.i.i41_crit_edge

land.lhs.true.i.i38.for.inc.i.i41_crit_edge:      ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i41

for.inc.i.i41:                                    ; preds = %land.lhs.true.i.i38.for.inc.i.i41_crit_edge, %for.body.i.i35.for.inc.i.i41_crit_edge
  %20 = ptrtoint ptr %.pn22.i.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i39 = load ptr, ptr %.pn22.i.i32, align 4
  %cmp.not.i.i40 = icmp eq ptr %.pn.i.i39, %ports.i.i29
  br i1 %cmp.not.i.i40, label %for.inc.i.i41.dsa_is_cpu_port.exit47_crit_edge, label %for.inc.i.i41.for.body.i.i35_crit_edge

for.inc.i.i41.for.body.i.i35_crit_edge:           ; preds = %for.inc.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i35

for.inc.i.i41.dsa_is_cpu_port.exit47_crit_edge:   ; preds = %for.inc.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit47

cleanup.split.loop.exit18.i.i43:                  ; preds = %land.lhs.true.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i42 = getelementptr i8, ptr %.pn22.i.i32, i32 -448
  br label %dsa_is_cpu_port.exit47

dsa_is_cpu_port.exit47:                           ; preds = %cleanup.split.loop.exit18.i.i43, %for.inc.i.i41.dsa_is_cpu_port.exit47_crit_edge, %lor.lhs.false11.dsa_is_cpu_port.exit47_crit_edge
  %retval.0.i.i44 = phi ptr [ %dp.0.le.i.i42, %cleanup.split.loop.exit18.i.i43 ], [ null, %lor.lhs.false11.dsa_is_cpu_port.exit47_crit_edge ], [ null, %for.inc.i.i41.dsa_is_cpu_port.exit47_crit_edge ]
  %type.i45 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i44, i32 0, i32 6
  %21 = ptrtoint ptr %type.i45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i46 = icmp eq i32 %22, 1
  br i1 %cmp.i46, label %dsa_is_cpu_port.exit47.if.then13_crit_edge, label %dsa_is_cpu_port.exit47.if.end16_crit_edge

dsa_is_cpu_port.exit47.if.end16_crit_edge:        ; preds = %dsa_is_cpu_port.exit47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

dsa_is_cpu_port.exit47.if.then13_crit_edge:       ; preds = %dsa_is_cpu_port.exit47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %dsa_is_cpu_port.exit47.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  %or14 = or i32 %reg.2, 16
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %dsa_is_cpu_port.exit47.if.end16_crit_edge, %entry.if.end16_crit_edge
  %reg.3 = phi i32 [ %or14, %if.then13 ], [ %reg.2, %dsa_is_cpu_port.exit47.if.end16_crit_edge ], [ 512, %entry.if.end16_crit_edge ]
  %or17 = or i32 %reg.3, 12
  %mul = shl i32 %port, 2
  %add = add i32 %mul, 124
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %add, i32 noundef %or17) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_get_strings(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %3) #11
  %mib_count = getelementptr inbounds %struct.qca8k_match_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %mib_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mib_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp211.not = icmp eq i8 %5, 0
  br i1 %cmp211.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mul = shl i32 %i.012, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %name = getelementptr [41 x %struct.qca8k_mib_desc], ptr @ar8327_mib, i32 0, i32 %i.012, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call4 = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 32)
  %inc = add nuw nsw i32 %i.012, 1
  %8 = ptrtoint ptr %mib_count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mib_count, align 1
  %conv = zext i8 %9 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %hi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !359
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hi) #11
  %3 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hi, align 4
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %5) #11
  %mib_count = getelementptr inbounds %struct.qca8k_match_data, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %mib_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mib_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp44.not = icmp eq i8 %7, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 4096
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %offset = getelementptr [41 x %struct.qca8k_mib_desc], ptr @ar8327_mib, i32 0, i32 %i.045, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add3 = add i32 %add, %9
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %add3, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [41 x %struct.qca8k_mib_desc], ptr @ar8327_mib, i32 0, i32 %i.045
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp7 = icmp eq i32 %13, 2
  br i1 %cmp7, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end
  %add10 = add i32 %add3, 4
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i38 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add10, ptr noundef nonnull %hi) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp12 = icmp slt i32 %call.i38, 0
  br i1 %cmp12, label %if.then9.for.inc_crit_edge, label %if.then22

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %conv17 = zext i32 %17 to i64
  %arrayidx18 = getelementptr i64, ptr %data, i32 %i.045
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv17, ptr %arrayidx18, align 8
  br label %for.inc

if.then22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %conv1739 = zext i32 %20 to i64
  %arrayidx1840 = getelementptr i64, ptr %data, i32 %i.045
  %21 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hi, align 4
  %conv23 = zext i32 %22 to i64
  %shl = shl nuw i64 %conv23, 32
  %or = or i64 %shl, %conv1739
  %23 = ptrtoint ptr %arrayidx1840 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or, ptr %arrayidx1840, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.end16, %if.then9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %24 = ptrtoint ptr %mib_count to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mib_count, align 1
  %conv = zext i8 %25 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hi) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_get_sset_count(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %3) #11
  %mib_count = getelementptr inbounds %struct.qca8k_match_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %mib_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mib_count, align 1
  %conv = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_enable(ptr noundef readonly %ds, i32 noundef %port, ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = add i32 %port, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %3 = icmp ult i32 %2, 5
  %mask.0.i = select i1 %3, i32 524, i32 12
  %regmap3.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap3.i, align 4
  %mul4.i = shl i32 %port, 2
  %add5.i = add i32 %mul4.i, 124
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add5.i, i32 noundef %mask.0.i, i32 noundef %mask.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %arrayidx = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 9, i32 %port
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %arrayidx, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %7 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_user_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_user_port.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %10 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %11, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %port)
  %cmp5.i.i = icmp eq i32 %13, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %14 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %entry.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i = icmp eq i32 %16, 3
  br i1 %cmp.i, label %if.then, label %dsa_is_user_port.exit.if.end_crit_edge

dsa_is_user_port.exit.if.end_crit_edge:           ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_support_asym_pause(ptr noundef %phy) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %dsa_is_user_port.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_port_disable(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = add i32 %port, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %3 = icmp ult i32 %2, 5
  %mask.0.i = select i1 %3, i32 524, i32 12
  %regmap3.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap3.i, align 4
  %mul4.i = shl i32 %port, 2
  %add5.i = add i32 %mul4.i, 124
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add5.i, i32 noundef %mask.0.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %arrayidx = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 9, i32 %port
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_set_mac_eee(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %eee) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %add = shl i32 %port, 1
  %mul = add i32 %add, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !359
  %reg_mutex = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #11
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 256, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end:                                           ; preds = %entry
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 5
  %5 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %or = or i32 %8, %mul
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %neg = sub i32 -3, %add
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and = and i32 %10, %neg
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then2 ]
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %reg, align 4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i12 = call i32 @regmap_write(ptr noundef %13, i32 noundef 256, i32 noundef %storemerge) #11
  br label %exit

exit:                                             ; preds = %if.end3, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.exit_crit_edge ], [ %call.i12, %if.end3 ]
  call void @mutex_unlock(ptr noundef %reg_mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qca8k_get_mac_eee(ptr nocapture noundef readnone %ds, i32 noundef %port, ptr nocapture noundef readnone %e) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_set_ageing_time(ptr nocapture noundef readonly %ds, i32 noundef %msecs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000, i32 %msecs)
  %0 = icmp ult i32 %msecs, 7000
  %div2 = udiv i32 %msecs, 7000
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %regmap = getelementptr inbounds %struct.qca8k_priv, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %div2.op = and i32 %div2, 65535
  %and18 = select i1 %0, i32 1, i32 %div2.op
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 1560, i32 noundef 65535, i32 noundef %and18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_bridge_join(ptr noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef readnone %tx_fwd_offload) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %3 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %6 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %7, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %port)
  %cmp5.i = icmp eq i32 %9, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %11 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_dp, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %14
  %regmap = getelementptr inbounds %struct.qca8k_priv, ptr %2, i32 0, i32 7
  %shl7 = shl nuw i32 1, %port
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %dsa_to_port.exit
  %i.066 = phi i32 [ 0, %dsa_to_port.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %port_mask.064 = phi i32 [ %shl, %dsa_to_port.exit ], [ %port_mask.1, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst1.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_cpu_port.exit.thread, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %18 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %19, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %20 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %i.066)
  %cmp5.i.i = icmp eq i32 %21, %i.066
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %22 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp eq i32 %24, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.for.inc_crit_edge, label %dsa_is_cpu_port.exit.for.body.i45_crit_edge

dsa_is_cpu_port.exit.for.body.i45_crit_edge:      ; preds = %dsa_is_cpu_port.exit
  br label %for.body.i45

dsa_is_cpu_port.exit.for.inc_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

dsa_is_cpu_port.exit.thread:                      ; preds = %for.body
  call void @__asan_load4_noabort(i32 24)
  %25 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i59 = icmp eq i32 %25, 1
  br i1 %cmp.i59, label %dsa_is_cpu_port.exit.thread.for.inc_crit_edge, label %dsa_is_cpu_port.exit.thread.dsa_to_port.exit55_crit_edge

dsa_is_cpu_port.exit.thread.dsa_to_port.exit55_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit55

dsa_is_cpu_port.exit.thread.for.inc_crit_edge:    ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.i45:                                     ; preds = %for.inc.i51.for.body.i45_crit_edge, %dsa_is_cpu_port.exit.for.body.i45_crit_edge
  %.pn22.i42 = phi ptr [ %.pn.i49, %for.inc.i51.for.body.i45_crit_edge ], [ %.pn20.i.i, %dsa_is_cpu_port.exit.for.body.i45_crit_edge ]
  %ds3.i43 = getelementptr i8, ptr %.pn22.i42, i32 -432
  %26 = ptrtoint ptr %ds3.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds3.i43, align 4
  %cmp4.i44 = icmp eq ptr %27, %ds
  br i1 %cmp4.i44, label %land.lhs.true.i48, label %for.body.i45.for.inc.i51_crit_edge

for.body.i45.for.inc.i51_crit_edge:               ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i51

land.lhs.true.i48:                                ; preds = %for.body.i45
  %index.i46 = getelementptr i8, ptr %.pn22.i42, i32 -428
  %28 = ptrtoint ptr %index.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %i.066)
  %cmp5.i47 = icmp eq i32 %29, %i.066
  br i1 %cmp5.i47, label %cleanup.split.loop.exit18.i53, label %land.lhs.true.i48.for.inc.i51_crit_edge

land.lhs.true.i48.for.inc.i51_crit_edge:          ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i51

for.inc.i51:                                      ; preds = %land.lhs.true.i48.for.inc.i51_crit_edge, %for.body.i45.for.inc.i51_crit_edge
  %30 = ptrtoint ptr %.pn22.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i49 = load ptr, ptr %.pn22.i42, align 4
  %cmp.not.i50 = icmp eq ptr %.pn.i49, %ports.i.i
  br i1 %cmp.not.i50, label %for.inc.i51.dsa_to_port.exit55_crit_edge, label %for.inc.i51.for.body.i45_crit_edge

for.inc.i51.for.body.i45_crit_edge:               ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i45

for.inc.i51.dsa_to_port.exit55_crit_edge:         ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit55

cleanup.split.loop.exit18.i53:                    ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i52 = getelementptr i8, ptr %.pn22.i42, i32 -448
  br label %dsa_to_port.exit55

dsa_to_port.exit55:                               ; preds = %cleanup.split.loop.exit18.i53, %for.inc.i51.dsa_to_port.exit55_crit_edge, %dsa_is_cpu_port.exit.thread.dsa_to_port.exit55_crit_edge
  %retval.0.i54 = phi ptr [ %dp.0.le.i52, %cleanup.split.loop.exit18.i53 ], [ null, %dsa_is_cpu_port.exit.thread.dsa_to_port.exit55_crit_edge ], [ null, %for.inc.i51.dsa_to_port.exit55_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i54, i32 0, i32 14
  %31 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit55.dsa_port_offloads_bridge.exit_crit_edge, label %cond.true.i.i

dsa_to_port.exit55.dsa_port_offloads_bridge.exit_crit_edge: ; preds = %dsa_to_port.exit55
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_port_offloads_bridge.exit

cond.true.i.i:                                    ; preds = %dsa_to_port.exit55
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  br label %dsa_port_offloads_bridge.exit

dsa_port_offloads_bridge.exit:                    ; preds = %cond.true.i.i, %dsa_to_port.exit55.dsa_port_offloads_bridge.exit_crit_edge
  %cond.i.i = phi ptr [ %34, %cond.true.i.i ], [ null, %dsa_to_port.exit55.dsa_port_offloads_bridge.exit_crit_edge ]
  %cmp.i56 = icmp eq ptr %cond.i.i, %0
  br i1 %cmp.i56, label %if.end6, label %dsa_port_offloads_bridge.exit.for.inc_crit_edge

dsa_port_offloads_bridge.exit.for.inc_crit_edge:  ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end6:                                          ; preds = %dsa_port_offloads_bridge.exit
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %mul = mul nuw nsw i32 %i.066, 12
  %add = add nuw nsw i32 %mul, 1632
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %add, i32 noundef %shl7, i32 noundef %shl7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.066, i32 %port)
  %cmp11.not = icmp eq i32 %i.066, %port
  br i1 %cmp11.not, label %if.end10.for.inc_crit_edge, label %if.then12

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %shl13 = shl nuw i32 1, %i.066
  %or = or i32 %shl13, %port_mask.064
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end10.for.inc_crit_edge, %dsa_port_offloads_bridge.exit.for.inc_crit_edge, %dsa_is_cpu_port.exit.thread.for.inc_crit_edge, %dsa_is_cpu_port.exit.for.inc_crit_edge
  %port_mask.1 = phi i32 [ %port_mask.064, %dsa_is_cpu_port.exit.for.inc_crit_edge ], [ %or, %if.then12 ], [ %port_mask.064, %if.end10.for.inc_crit_edge ], [ %port_mask.064, %dsa_port_offloads_bridge.exit.for.inc_crit_edge ], [ %port_mask.064, %dsa_is_cpu_port.exit.thread.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %mul15 = mul i32 %port, 12
  %add16 = add i32 %mul15, 1632
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %add16, i32 noundef 127, i32 noundef %port_mask.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %for.end ], [ %call.i, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_port_bridge_leave(ptr noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %3 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %6 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %7, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %port)
  %cmp5.i = icmp eq i32 %9, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %11 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_dp, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %regmap = getelementptr inbounds %struct.qca8k_priv, ptr %2, i32 0, i32 7
  %shl = shl nuw i32 1, %port
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %dsa_to_port.exit
  %i.047 = phi i32 [ 0, %dsa_to_port.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst1.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_cpu_port.exit.thread, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %18 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %19, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %20 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %i.047)
  %cmp5.i.i = icmp eq i32 %21, %i.047
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %22 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp eq i32 %24, 1
  br i1 %cmp.i, label %dsa_is_cpu_port.exit.for.inc_crit_edge, label %dsa_is_cpu_port.exit.for.body.i29_crit_edge

dsa_is_cpu_port.exit.for.body.i29_crit_edge:      ; preds = %dsa_is_cpu_port.exit
  br label %for.body.i29

dsa_is_cpu_port.exit.for.inc_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

dsa_is_cpu_port.exit.thread:                      ; preds = %for.body
  call void @__asan_load4_noabort(i32 24)
  %25 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i43 = icmp eq i32 %25, 1
  br i1 %cmp.i43, label %dsa_is_cpu_port.exit.thread.for.inc_crit_edge, label %dsa_is_cpu_port.exit.thread.dsa_to_port.exit39_crit_edge

dsa_is_cpu_port.exit.thread.dsa_to_port.exit39_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit39

dsa_is_cpu_port.exit.thread.for.inc_crit_edge:    ; preds = %dsa_is_cpu_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.i29:                                     ; preds = %for.inc.i35.for.body.i29_crit_edge, %dsa_is_cpu_port.exit.for.body.i29_crit_edge
  %.pn22.i26 = phi ptr [ %.pn.i33, %for.inc.i35.for.body.i29_crit_edge ], [ %.pn20.i.i, %dsa_is_cpu_port.exit.for.body.i29_crit_edge ]
  %ds3.i27 = getelementptr i8, ptr %.pn22.i26, i32 -432
  %26 = ptrtoint ptr %ds3.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds3.i27, align 4
  %cmp4.i28 = icmp eq ptr %27, %ds
  br i1 %cmp4.i28, label %land.lhs.true.i32, label %for.body.i29.for.inc.i35_crit_edge

for.body.i29.for.inc.i35_crit_edge:               ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i35

land.lhs.true.i32:                                ; preds = %for.body.i29
  %index.i30 = getelementptr i8, ptr %.pn22.i26, i32 -428
  %28 = ptrtoint ptr %index.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %i.047)
  %cmp5.i31 = icmp eq i32 %29, %i.047
  br i1 %cmp5.i31, label %cleanup.split.loop.exit18.i37, label %land.lhs.true.i32.for.inc.i35_crit_edge

land.lhs.true.i32.for.inc.i35_crit_edge:          ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i35

for.inc.i35:                                      ; preds = %land.lhs.true.i32.for.inc.i35_crit_edge, %for.body.i29.for.inc.i35_crit_edge
  %30 = ptrtoint ptr %.pn22.i26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i33 = load ptr, ptr %.pn22.i26, align 4
  %cmp.not.i34 = icmp eq ptr %.pn.i33, %ports.i.i
  br i1 %cmp.not.i34, label %for.inc.i35.dsa_to_port.exit39_crit_edge, label %for.inc.i35.for.body.i29_crit_edge

for.inc.i35.for.body.i29_crit_edge:               ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i29

for.inc.i35.dsa_to_port.exit39_crit_edge:         ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_to_port.exit39

cleanup.split.loop.exit18.i37:                    ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #13
  %dp.0.le.i36 = getelementptr i8, ptr %.pn22.i26, i32 -448
  br label %dsa_to_port.exit39

dsa_to_port.exit39:                               ; preds = %cleanup.split.loop.exit18.i37, %for.inc.i35.dsa_to_port.exit39_crit_edge, %dsa_is_cpu_port.exit.thread.dsa_to_port.exit39_crit_edge
  %retval.0.i38 = phi ptr [ %dp.0.le.i36, %cleanup.split.loop.exit18.i37 ], [ null, %dsa_is_cpu_port.exit.thread.dsa_to_port.exit39_crit_edge ], [ null, %for.inc.i35.dsa_to_port.exit39_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i38, i32 0, i32 14
  %31 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit39.dsa_port_offloads_bridge.exit_crit_edge, label %cond.true.i.i

dsa_to_port.exit39.dsa_port_offloads_bridge.exit_crit_edge: ; preds = %dsa_to_port.exit39
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_port_offloads_bridge.exit

cond.true.i.i:                                    ; preds = %dsa_to_port.exit39
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  br label %dsa_port_offloads_bridge.exit

dsa_port_offloads_bridge.exit:                    ; preds = %cond.true.i.i, %dsa_to_port.exit39.dsa_port_offloads_bridge.exit_crit_edge
  %cond.i.i = phi ptr [ %34, %cond.true.i.i ], [ null, %dsa_to_port.exit39.dsa_port_offloads_bridge.exit_crit_edge ]
  %cmp.i40 = icmp eq ptr %cond.i.i, %0
  br i1 %cmp.i40, label %if.end6, label %dsa_port_offloads_bridge.exit.for.inc_crit_edge

dsa_port_offloads_bridge.exit.for.inc_crit_edge:  ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end6:                                          ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %mul = mul nuw nsw i32 %i.047, 12
  %add = add nuw nsw i32 %mul, 1632
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %add, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %dsa_port_offloads_bridge.exit.for.inc_crit_edge, %dsa_is_cpu_port.exit.thread.for.inc_crit_edge, %dsa_is_cpu_port.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %mul8 = mul i32 %port, 12
  %add9 = add i32 %mul8, 1632
  %shl10 = shl nuw i32 1, %14
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %add9, i32 noundef 127, i32 noundef %shl10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_port_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %state)
  %2 = icmp ult i8 %state, 5
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.qca8k_port_stp_state_set, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %stp_state.0 = phi i32 [ %switch.load, %switch.lookup ], [ 262144, %entry.sw.epilog_crit_edge ]
  %mul = mul i32 %port, 12
  %add = add i32 %mul, 1632
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add, i32 noundef 458752, i32 noundef %stp_state.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_port_fast_age(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reg_mutex = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #11
  %call = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 5, i32 noundef %port)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_vlan_filtering(ptr nocapture noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %vlan_filtering, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mul = mul i32 %port, 12
  %add = add i32 %mul, 1632
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %. = select i1 %vlan_filtering, i32 768, i32 0
  %call.i.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 768, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret i32 %call.i.i36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_vlan_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %priv6 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv6, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i, align 4, !annotation !359
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  br i1 %cmp.i, label %qca8k_vlan_add.exit.thread, label %if.end.i

qca8k_vlan_add.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %reg_mutex.i = getelementptr inbounds %struct.qca8k_priv, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #11
  %call.i = tail call fastcc i32 @qca8k_vlan_access(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i.qca8k_vlan_add.exit.thread113_crit_edge, label %if.end5.i

if.end.i.qca8k_vlan_add.exit.thread113_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_add.exit.thread113

if.end5.i:                                        ; preds = %if.end.i
  %regmap.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 1552, ptr noundef nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %if.end5.i.qca8k_vlan_add.exit.thread113_crit_edge, label %if.end10.i

if.end5.i.qca8k_vlan_add.exit.thread113_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_add.exit.thread113

if.end10.i:                                       ; preds = %if.end5.i
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %10, 1572864
  %conv11.i = shl i32 %port, 1
  %mul.i = and i32 %conv11.i, 510
  %shl.i = shl i32 48, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %or.i, %neg.i
  %..i = select i1 %tobool.not, i32 32, i32 16
  %shl49.pn.i = shl i32 %..i, %mul.i
  %storemerge.i = or i32 %and.i, %shl49.pn.i
  store i32 %storemerge.i, ptr %reg.i, align 4
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i72.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 1552, i32 noundef %storemerge.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool53.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool53.not.i, label %qca8k_vlan_add.exit, label %if.end10.i.qca8k_vlan_add.exit.thread113_crit_edge

if.end10.i.qca8k_vlan_add.exit.thread113_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_add.exit.thread113

qca8k_vlan_add.exit.thread113:                    ; preds = %if.end10.i.qca8k_vlan_add.exit.thread113_crit_edge, %if.end5.i.qca8k_vlan_add.exit.thread113_crit_edge, %if.end.i.qca8k_vlan_add.exit.thread113_crit_edge
  %ret.0.i.ph = phi i32 [ %call.i72.i, %if.end10.i.qca8k_vlan_add.exit.thread113_crit_edge ], [ %call.i.i, %if.end5.i.qca8k_vlan_add.exit.thread113_crit_edge ], [ %call.i, %if.end.i.qca8k_vlan_add.exit.thread113_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  br label %do.end

qca8k_vlan_add.exit:                              ; preds = %if.end10.i
  %call56.i = call fastcc i32 @qca8k_vlan_access(ptr noundef %3, i32 noundef 2, i16 noundef zeroext %5) #11
  call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool9.not = icmp eq i32 %call56.i, 0
  br i1 %tobool9.not, label %qca8k_vlan_add.exit.if.end_crit_edge, label %qca8k_vlan_add.exit.do.end_crit_edge

qca8k_vlan_add.exit.do.end_crit_edge:             ; preds = %qca8k_vlan_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

qca8k_vlan_add.exit.if.end_crit_edge:             ; preds = %qca8k_vlan_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %qca8k_vlan_add.exit.do.end_crit_edge, %qca8k_vlan_add.exit.thread113
  %ret.0.i116 = phi i32 [ %ret.0.i.ph, %qca8k_vlan_add.exit.thread113 ], [ %call56.i, %qca8k_vlan_add.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.151, i32 noundef %port, i32 noundef %ret.0.i116) #14
  br label %cleanup

if.end:                                           ; preds = %qca8k_vlan_add.exit.if.end_crit_edge, %qca8k_vlan_add.exit.thread
  %and3 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %div = sdiv i32 %port, 2
  %mul = shl i32 %div, 2
  %add = add i32 %mul, 3184
  %15 = mul i32 %div, 2
  %rem.decomposed = sub i32 %port, %15
  %mul12 = shl nsw i32 %rem.decomposed, 4
  %shl = shl i32 4095, %mul12
  %16 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vid, align 2
  %conv14 = zext i16 %17 to i32
  %shl17 = shl i32 %conv14, %mul12
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i108 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %add, i32 noundef %shl, i32 noundef %shl17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool19.not = icmp eq i32 %call.i.i108, 0
  br i1 %tobool19.not, label %if.end21, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %mul22 = shl i32 %port, 3
  %add23 = add i32 %mul22, 1056
  %20 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vid, align 2
  %conv47 = zext i16 %21 to i32
  %shl48 = shl nuw i32 %conv47, 16
  %and49 = and i32 %shl48, 268369920
  %22 = and i16 %21, 4095
  %and78 = zext i16 %22 to i32
  %or = or i32 %and49, %and78
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i110 = call i32 @regmap_write(ptr noundef %24, i32 noundef %add23, i32 noundef %or) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0.i116, %do.end ], [ %call.i.i108, %if.then11.cleanup_crit_edge ], [ %call.i110, %if.end21 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_vlan_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg.i, align 4, !annotation !359
  %reg_mutex.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #11
  %call.i = tail call fastcc i32 @qca8k_vlan_access(ptr noundef %1, i32 noundef 6, i16 noundef zeroext %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.qca8k_vlan_del.exit.thread_crit_edge, label %if.end.i

entry.qca8k_vlan_del.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_del.exit.thread

if.end.i:                                         ; preds = %entry
  %regmap.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 1552, ptr noundef nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.qca8k_vlan_del.exit.thread_crit_edge, label %if.end4.i

if.end.i.qca8k_vlan_del.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_del.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %conv.i = shl i32 %port, 1
  %mul.i = and i32 %conv.i, 510
  %shl.i = shl i32 48, %mul.i
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %8, %shl.i
  store i32 %or.i, ptr %reg.i, align 4
  %9 = and i32 %or.i, 262128
  call void @__sanitizer_cov_trace_const_cmp4(i32 262128, i32 %9)
  %10 = icmp eq i32 %9, 262128
  br i1 %10, label %if.end4.i.qca8k_vlan_del.exit_crit_edge, label %if.else.i

if.end4.i.qca8k_vlan_del.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_del.exit

if.else.i:                                        ; preds = %if.end4.i
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i72.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 1552, i32 noundef %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool50.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool50.not.i, label %if.else.i.qca8k_vlan_del.exit_crit_edge, label %if.else.i.qca8k_vlan_del.exit.thread_crit_edge

if.else.i.qca8k_vlan_del.exit.thread_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_del.exit.thread

if.else.i.qca8k_vlan_del.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_vlan_del.exit

qca8k_vlan_del.exit.thread:                       ; preds = %if.else.i.qca8k_vlan_del.exit.thread_crit_edge, %if.end.i.qca8k_vlan_del.exit.thread_crit_edge, %entry.qca8k_vlan_del.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call.i72.i, %if.else.i.qca8k_vlan_del.exit.thread_crit_edge ], [ %call.i.i, %if.end.i.qca8k_vlan_del.exit.thread_crit_edge ], [ %call.i, %entry.qca8k_vlan_del.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  br label %do.end

qca8k_vlan_del.exit:                              ; preds = %if.else.i.qca8k_vlan_del.exit_crit_edge, %if.end4.i.qca8k_vlan_del.exit_crit_edge
  %.sink.i = phi i32 [ 3, %if.end4.i.qca8k_vlan_del.exit_crit_edge ], [ 2, %if.else.i.qca8k_vlan_del.exit_crit_edge ]
  %call48.i = call fastcc i32 @qca8k_vlan_access(ptr noundef %1, i32 noundef %.sink.i, i16 noundef zeroext %3) #11
  call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool.not = icmp eq i32 %call48.i, 0
  br i1 %tobool.not, label %qca8k_vlan_del.exit.if.end_crit_edge, label %qca8k_vlan_del.exit.do.end_crit_edge

qca8k_vlan_del.exit.do.end_crit_edge:             ; preds = %qca8k_vlan_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

qca8k_vlan_del.exit.if.end_crit_edge:             ; preds = %qca8k_vlan_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %qca8k_vlan_del.exit.do.end_crit_edge, %qca8k_vlan_del.exit.thread
  %ret.0.i8 = phi i32 [ %ret.0.i.ph, %qca8k_vlan_del.exit.thread ], [ %call48.i, %qca8k_vlan_del.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.153, i32 noundef %port, i32 noundef %ret.0.i8) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %qca8k_vlan_del.exit.if.end_crit_edge
  %ret.0.i9 = phi i32 [ %ret.0.i8, %do.end ], [ 0, %qca8k_vlan_del.exit.if.end_crit_edge ]
  ret i32 %ret.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reg_mutex.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool.not.i = icmp eq i16 %vid, 0
  %spec.store.select.i = select i1 %tobool.not.i, i16 1, i16 %vid
  %conv13.i.i.i = zext i16 %spec.store.select.i to i32
  %shl.i.i.i = shl nuw nsw i32 %conv13.i.i.i, 8
  %and14.i.i.i = and i32 %shl.i.i.i, 1048320
  %or.i.i.i = or i32 %and14.i.i.i, 15
  %conv.mask.i.i = shl i32 65536, %port
  %shl66.i.i.i = and i32 %conv.mask.i.i, 8323072
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 1
  %conv95.i.i.i = zext i8 %3 to i32
  %shl96.i.i.i = shl nuw nsw i32 %conv95.i.i.i, 8
  %or99.i.i.i = or i32 %shl96.i.i.i, %shl66.i.i.i
  %arrayidx107.i.i.i = getelementptr i8, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx107.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx107.i.i.i, align 1
  %conv126.i.i.i = zext i8 %5 to i32
  %or130.i.i.i = or i32 %or99.i.i.i, %conv126.i.i.i
  %arrayidx138.i.i.i = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx138.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx138.i.i.i, align 1
  %conv157.i.i.i = zext i8 %7 to i32
  %shl158.i.i.i = shl nuw i32 %conv157.i.i.i, 24
  %arrayidx169.i.i.i = getelementptr i8, ptr %addr, i32 3
  %8 = ptrtoint ptr %arrayidx169.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx169.i.i.i, align 1
  %conv188.i.i.i = zext i8 %9 to i32
  %shl189.i.i.i = shl nuw nsw i32 %conv188.i.i.i, 16
  %or192.i.i.i = or i32 %shl189.i.i.i, %shl158.i.i.i
  %arrayidx200.i.i.i = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %arrayidx200.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx200.i.i.i, align 1
  %conv219.i.i.i = zext i8 %11 to i32
  %shl220.i.i.i = shl nuw nsw i32 %conv219.i.i.i, 8
  %or223.i.i.i = or i32 %or192.i.i.i, %shl220.i.i.i
  %arrayidx231.i.i.i = getelementptr i8, ptr %addr, i32 5
  %12 = ptrtoint ptr %arrayidx231.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx231.i.i.i, align 1
  %conv250.i.i.i = zext i8 %13 to i32
  %or254.i.i.i = or i32 %or223.i.i.i, %conv250.i.i.i
  %regmap.i.i.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1536, i32 noundef %or254.i.i.i) #11
  %16 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i.1.i.i.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1540, i32 noundef %or130.i.i.i) #11
  %18 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i.2.i.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1544, i32 noundef %or.i.i.i) #11
  %call.i.i = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 2, i32 noundef -1) #11
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i.i) #11
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reg_mutex.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool.not = icmp eq i16 %vid, 0
  %spec.store.select = select i1 %tobool.not, i16 1, i16 %vid
  %conv13.i.i = zext i16 %spec.store.select to i32
  %shl.i.i = shl nuw nsw i32 %conv13.i.i, 8
  %and14.i.i = and i32 %shl.i.i, 1048320
  %conv.mask.i = shl i32 65536, %port
  %shl66.i.i = and i32 %conv.mask.i, 8323072
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 1
  %conv95.i.i = zext i8 %3 to i32
  %shl96.i.i = shl nuw nsw i32 %conv95.i.i, 8
  %or99.i.i = or i32 %shl96.i.i, %shl66.i.i
  %arrayidx107.i.i = getelementptr i8, ptr %addr, i32 1
  %4 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx107.i.i, align 1
  %conv126.i.i = zext i8 %5 to i32
  %or130.i.i = or i32 %or99.i.i, %conv126.i.i
  %arrayidx138.i.i = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx138.i.i, align 1
  %conv157.i.i = zext i8 %7 to i32
  %shl158.i.i = shl nuw i32 %conv157.i.i, 24
  %arrayidx169.i.i = getelementptr i8, ptr %addr, i32 3
  %8 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx169.i.i, align 1
  %conv188.i.i = zext i8 %9 to i32
  %shl189.i.i = shl nuw nsw i32 %conv188.i.i, 16
  %or192.i.i = or i32 %shl189.i.i, %shl158.i.i
  %arrayidx200.i.i = getelementptr i8, ptr %addr, i32 4
  %10 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx200.i.i, align 1
  %conv219.i.i = zext i8 %11 to i32
  %shl220.i.i = shl nuw nsw i32 %conv219.i.i, 8
  %or223.i.i = or i32 %or192.i.i, %shl220.i.i
  %arrayidx231.i.i = getelementptr i8, ptr %addr, i32 5
  %12 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx231.i.i, align 1
  %conv250.i.i = zext i8 %13 to i32
  %or254.i.i = or i32 %or223.i.i, %conv250.i.i
  %regmap.i.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1536, i32 noundef %or254.i.i) #11
  %16 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.1.i.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1540, i32 noundef %or130.i.i) #11
  %18 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.2.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1544, i32 noundef %and14.i.i) #11
  %call.i = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 3, i32 noundef -1) #11
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_fdb_dump(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cb, ptr noundef %data) #2 align 64 {
entry:
  %_fdb = alloca %struct.qca8k_fdb, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %_fdb) #11
  %2 = call ptr @memset(ptr %_fdb, i32 0, i32 10)
  %reg_mutex = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #11
  %port_mask.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 1
  %mac.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 3
  %aging.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 2
  %arrayidx107.i.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 3, i32 1
  %arrayidx138.i.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 3, i32 2
  %arrayidx169.i.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 3, i32 3
  %arrayidx200.i.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 3, i32 4
  %arrayidx231.i.i = getelementptr inbounds %struct.qca8k_fdb, ptr %_fdb, i32 0, i32 3, i32 5
  %regmap.i.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %cnt.0 = phi i32 [ 2048, %entry ], [ %dec, %if.end.while.cond_crit_edge ]
  %dec = add nsw i32 %cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %tobool.not = icmp eq i32 %cnt.0, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %3 = ptrtoint ptr %_fdb to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %_fdb, align 2
  %5 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_mask.i, align 2
  %7 = ptrtoint ptr %aging.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aging.i, align 1
  %conv13.i.i = zext i16 %4 to i32
  %shl.i.i = shl nuw nsw i32 %conv13.i.i, 8
  %and14.i.i = and i32 %shl.i.i, 1048320
  %9 = and i8 %8, 15
  %and40.i.i = zext i8 %9 to i32
  %or.i.i = or i32 %and14.i.i, %and40.i.i
  %conv65.i.i = zext i8 %6 to i32
  %shl66.i.i = shl nuw nsw i32 %conv65.i.i, 16
  %and67.i.i = and i32 %shl66.i.i, 8323072
  %10 = ptrtoint ptr %mac.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mac.i, align 2
  %conv95.i.i = zext i8 %11 to i32
  %shl96.i.i = shl nuw nsw i32 %conv95.i.i, 8
  %or99.i.i = or i32 %shl96.i.i, %and67.i.i
  %12 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx107.i.i, align 1
  %conv126.i.i = zext i8 %13 to i32
  %or130.i.i = or i32 %or99.i.i, %conv126.i.i
  %14 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx138.i.i, align 2
  %conv157.i.i = zext i8 %15 to i32
  %shl158.i.i = shl nuw i32 %conv157.i.i, 24
  %16 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx169.i.i, align 1
  %conv188.i.i = zext i8 %17 to i32
  %shl189.i.i = shl nuw nsw i32 %conv188.i.i, 16
  %or192.i.i = or i32 %shl189.i.i, %shl158.i.i
  %18 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx200.i.i, align 2
  %conv219.i.i = zext i8 %19 to i32
  %shl220.i.i = shl nuw nsw i32 %conv219.i.i, 8
  %or223.i.i = or i32 %or192.i.i, %shl220.i.i
  %20 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx231.i.i, align 1
  %conv250.i.i = zext i8 %21 to i32
  %or254.i.i = or i32 %or223.i.i, %conv250.i.i
  %22 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 1536, i32 noundef %or254.i.i) #11
  %24 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.1.i.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 1540, i32 noundef %or130.i.i) #11
  %26 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.2.i.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 1544, i32 noundef %or.i.i) #11
  %call.i = call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 6, i32 noundef %port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %land.rhs.while.end_crit_edge, label %qca8k_fdb_next.exit

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

qca8k_fdb_next.exit:                              ; preds = %land.rhs
  %call1.i = call fastcc i32 @qca8k_fdb_read(ptr noundef %1, ptr noundef nonnull %_fdb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %while.body, label %qca8k_fdb_next.exit.while.end_crit_edge

qca8k_fdb_next.exit.while.end_crit_edge:          ; preds = %qca8k_fdb_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %qca8k_fdb_next.exit
  %28 = ptrtoint ptr %aging.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %aging.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not = icmp eq i8 %29, 0
  br i1 %tobool3.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %29)
  %cmp = icmp eq i8 %29, 15
  %30 = ptrtoint ptr %_fdb to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %_fdb, align 2
  %call7 = call i32 %cb(ptr noundef %mac.i, i16 noundef zeroext %31, i1 noundef zeroext %cmp, ptr noundef %data) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.while.cond_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %qca8k_fdb_next.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %reg_mutex) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %_fdb) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_mdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mdb) #2 align 64 {
entry:
  %fdb.i = alloca %struct.qca8k_fdb, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %addr2 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %vid3 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %2 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid3, align 2
  %shl = shl nuw i32 1, %port
  %conv = trunc i32 %shl to i8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %fdb.i) #11
  %4 = call ptr @memset(ptr %fdb.i, i32 0, i32 10)
  %reg_mutex.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #11
  %conv13.i.i = zext i16 %3 to i32
  %shl.i.i = shl nuw nsw i32 %conv13.i.i, 8
  %and14.i.i = and i32 %shl.i.i, 1048320
  %5 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr2, align 1
  %conv95.i.i = zext i8 %6 to i32
  %shl96.i.i = shl nuw nsw i32 %conv95.i.i, 8
  %arrayidx107.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx107.i.i, align 1
  %conv126.i.i = zext i8 %8 to i32
  %or130.i.i = or i32 %shl96.i.i, %conv126.i.i
  %arrayidx138.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx138.i.i, align 1
  %conv157.i.i = zext i8 %10 to i32
  %shl158.i.i = shl nuw i32 %conv157.i.i, 24
  %arrayidx169.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx169.i.i, align 1
  %conv188.i.i = zext i8 %12 to i32
  %shl189.i.i = shl nuw nsw i32 %conv188.i.i, 16
  %or192.i.i = or i32 %shl189.i.i, %shl158.i.i
  %arrayidx200.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx200.i.i, align 1
  %conv219.i.i = zext i8 %14 to i32
  %shl220.i.i = shl nuw nsw i32 %conv219.i.i, 8
  %or223.i.i = or i32 %or192.i.i, %shl220.i.i
  %arrayidx231.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx231.i.i, align 1
  %conv250.i.i = zext i8 %16 to i32
  %or254.i.i = or i32 %or223.i.i, %conv250.i.i
  %regmap.i.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 1536, i32 noundef %or254.i.i) #11
  %19 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.1.i.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 1540, i32 noundef %or130.i.i) #11
  %21 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.2.i.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 1544, i32 noundef %and14.i.i) #11
  %call.i = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 7, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.qca8k_fdb_search_and_insert.exit_crit_edge, label %if.end.i

entry.qca8k_fdb_search_and_insert.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_fdb_search_and_insert.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @qca8k_fdb_read(ptr noundef %1, ptr noundef nonnull %fdb.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.qca8k_fdb_search_and_insert.exit_crit_edge, label %if.end4.i

if.end.i.qca8k_fdb_search_and_insert.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_fdb_search_and_insert.exit

if.end4.i:                                        ; preds = %if.end.i
  %aging.i = getelementptr inbounds %struct.qca8k_fdb, ptr %fdb.i, i32 0, i32 2
  %23 = ptrtoint ptr %aging.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %aging.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.end4.i.do.end12.i.i_crit_edge

if.end4.i.do.end12.i.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

if.then5.i:                                       ; preds = %if.end4.i
  %call6.i = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 3, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.do.end12.i.i_crit_edge, label %if.then5.i.qca8k_fdb_search_and_insert.exit_crit_edge

if.then5.i.qca8k_fdb_search_and_insert.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_fdb_search_and_insert.exit

if.then5.i.do.end12.i.i_crit_edge:                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then5.i.do.end12.i.i_crit_edge, %if.end4.i.do.end12.i.i_crit_edge
  %port_mask11.i = getelementptr inbounds %struct.qca8k_fdb, ptr %fdb.i, i32 0, i32 1
  %25 = ptrtoint ptr %port_mask11.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port_mask11.i, align 2
  %or30.i = or i8 %26, %conv
  store i8 %or30.i, ptr %port_mask11.i, align 2
  %27 = and i8 %24, 15
  %and40.i.i = zext i8 %27 to i32
  %or.i.i = or i32 %and14.i.i, %and40.i.i
  %conv65.i.i = zext i8 %or30.i to i32
  %shl66.i.i = shl nuw nsw i32 %conv65.i.i, 16
  %and67.i.i = and i32 %shl66.i.i, 8323072
  %28 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr2, align 1
  %conv95.i36.i = zext i8 %29 to i32
  %shl96.i37.i = shl nuw nsw i32 %conv95.i36.i, 8
  %or99.i.i = or i32 %shl96.i37.i, %and67.i.i
  %30 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx107.i.i, align 1
  %conv126.i39.i = zext i8 %31 to i32
  %or130.i40.i = or i32 %or99.i.i, %conv126.i39.i
  %32 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx138.i.i, align 1
  %conv157.i42.i = zext i8 %33 to i32
  %shl158.i43.i = shl nuw i32 %conv157.i42.i, 24
  %34 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx169.i.i, align 1
  %conv188.i45.i = zext i8 %35 to i32
  %shl189.i46.i = shl nuw nsw i32 %conv188.i45.i, 16
  %or192.i47.i = or i32 %shl189.i46.i, %shl158.i43.i
  %36 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx200.i.i, align 1
  %conv219.i49.i = zext i8 %37 to i32
  %shl220.i50.i = shl nuw nsw i32 %conv219.i49.i, 8
  %or223.i51.i = or i32 %or192.i47.i, %shl220.i50.i
  %38 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx231.i.i, align 1
  %conv250.i53.i = zext i8 %39 to i32
  %or254.i54.i = or i32 %or223.i51.i, %conv250.i53.i
  %40 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i56.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 1536, i32 noundef %or254.i54.i) #11
  %42 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.1.i57.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 1540, i32 noundef %or130.i40.i) #11
  %44 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.2.i58.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 1544, i32 noundef %or.i.i) #11
  %call16.i = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 2, i32 noundef -1) #11
  br label %qca8k_fdb_search_and_insert.exit

qca8k_fdb_search_and_insert.exit:                 ; preds = %do.end12.i.i, %if.then5.i.qca8k_fdb_search_and_insert.exit_crit_edge, %if.end.i.qca8k_fdb_search_and_insert.exit_crit_edge, %entry.qca8k_fdb_search_and_insert.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.qca8k_fdb_search_and_insert.exit_crit_edge ], [ %call1.i, %if.end.i.qca8k_fdb_search_and_insert.exit_crit_edge ], [ %call16.i, %do.end12.i.i ], [ %call6.i, %if.then5.i.qca8k_fdb_search_and_insert.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fdb.i) #11
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_mdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mdb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %vid3 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 2
  %2 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid3, align 2
  %reg_mutex.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #11
  %addr2 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1
  %conv13.i.i = zext i16 %3 to i32
  %shl.i.i = shl nuw nsw i32 %conv13.i.i, 8
  %and14.i.i = and i32 %shl.i.i, 1048320
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr2, align 1
  %conv95.i.i = zext i8 %5 to i32
  %shl96.i.i = shl nuw nsw i32 %conv95.i.i, 8
  %arrayidx107.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx107.i.i, align 1
  %conv126.i.i = zext i8 %7 to i32
  %or130.i.i = or i32 %shl96.i.i, %conv126.i.i
  %arrayidx138.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx138.i.i, align 1
  %conv157.i.i = zext i8 %9 to i32
  %shl158.i.i = shl nuw i32 %conv157.i.i, 24
  %arrayidx169.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx169.i.i, align 1
  %conv188.i.i = zext i8 %11 to i32
  %shl189.i.i = shl nuw nsw i32 %conv188.i.i, 16
  %or192.i.i = or i32 %shl189.i.i, %shl158.i.i
  %arrayidx200.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx200.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx200.i.i, align 1
  %conv219.i.i = zext i8 %13 to i32
  %shl220.i.i = shl nuw nsw i32 %conv219.i.i, 8
  %or223.i.i = or i32 %or192.i.i, %shl220.i.i
  %arrayidx231.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %mdb, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx231.i.i, align 1
  %conv250.i.i = zext i8 %15 to i32
  %or254.i.i = or i32 %or223.i.i, %conv250.i.i
  %regmap.i.i.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1536, i32 noundef %or254.i.i) #11
  %18 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.1.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1540, i32 noundef %or130.i.i) #11
  %20 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.2.i.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 1544, i32 noundef %and14.i.i) #11
  %call.i = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %1, i32 noundef 7, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %ret.0.i = select i1 %cmp.i, i32 %call.i, i32 -22
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i) #11
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_mirror_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror, i1 noundef zeroext %ingress) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !359
  %mirror_rx = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 2
  %mirror_tx = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 3
  %cond.in.in = select i1 %ingress, ptr %mirror_rx, ptr %mirror_tx
  %3 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %shl = shl nuw i32 1, %port
  %and = and i32 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 1568, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %if.end
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and19 = lshr i32 %7, 4
  %shr = and i32 %and19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 15
  br i1 %cmp.not, label %do.end18.do.end49_crit_edge, label %land.lhs.true

do.end18.do.end49_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

land.lhs.true:                                    ; preds = %do.end18
  %8 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mirror, align 1
  %conv21 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv21)
  %cmp22.not = icmp eq i32 %shr, %conv21
  br i1 %cmp22.not, label %land.lhs.true.do.end49_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.do.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.end49:                                         ; preds = %land.lhs.true.do.end49_crit_edge, %do.end18.do.end49_crit_edge
  %10 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mirror, align 1
  %conv52 = zext i8 %11 to i32
  %shl53 = shl nuw nsw i32 %conv52, 4
  %and54 = and i32 %shl53, 240
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and54, ptr %val, align 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 1568, i32 noundef 240, i32 noundef %and54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.end59, label %do.end49.cleanup_crit_edge

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %do.end49
  %mul62 = shl i32 %port, 3
  %add63 = add i32 %mul62, 2420
  %mul = mul i32 %port, 12
  %add = add i32 %mul, 1632
  %storemerge = select i1 %ingress, i32 33554432, i32 65536
  %reg.0 = select i1 %ingress, i32 %add, i32 %add63
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %val, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i108 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %reg.0, i32 noundef %storemerge, i32 noundef %storemerge, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool67.not = icmp eq i32 %call.i108, 0
  br i1 %tobool67.not, label %if.end69, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  br i1 %ingress, label %if.then71, label %if.else76

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %mirror_rx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mirror_rx, align 2
  %20 = trunc i32 %shl to i8
  %conv75 = or i8 %19, %20
  store i8 %conv75, ptr %mirror_rx, align 2
  br label %cleanup

if.else76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %mirror_tx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mirror_tx, align 1
  %23 = trunc i32 %shl to i8
  %conv81 = or i8 %22, %23
  store i8 %conv81, ptr %mirror_tx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else76, %if.then71, %if.end59.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -17, %land.lhs.true.cleanup_crit_edge ], [ %call.i, %do.end49.cleanup_crit_edge ], [ %call.i108, %if.end59.cleanup_crit_edge ], [ 0, %if.else76 ], [ 0, %if.then71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qca8k_port_mirror_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ingress = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, ptr %mirror, i32 0, i32 1
  %2 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ingress, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %mul = mul i32 %port, 12
  %add = add i32 %mul, 1632
  %mul2 = shl i32 %port, 3
  %add3 = add i32 %mul2, 2420
  %reg.0 = select i1 %tobool.not, i32 %add3, i32 %add
  %val.0 = select i1 %tobool.not, i32 65536, i32 33554432
  %regmap = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %reg.0, i32 noundef %val.0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %entry.do.end43_crit_edge

entry.do.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

if.end6:                                          ; preds = %entry
  %6 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ingress, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  %shl12 = shl nuw i32 1, %port
  br i1 %tobool8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %mirror_rx = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mirror_rx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mirror_rx, align 2
  %10 = trunc i32 %shl12 to i8
  %11 = xor i8 %10, -1
  %conv10 = and i8 %9, %11
  store i8 %conv10, ptr %mirror_rx, align 2
  br label %if.end17

if.else11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %mirror_tx = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %mirror_tx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mirror_tx, align 1
  %14 = trunc i32 %shl12 to i8
  %15 = xor i8 %14, -1
  %conv16 = and i8 %13, %15
  store i8 %conv16, ptr %mirror_tx, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.then9
  %mirror_rx18 = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %mirror_rx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mirror_rx18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end17.do.end43_crit_edge

if.end17.do.end43_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

land.lhs.true:                                    ; preds = %if.end17
  %mirror_tx20 = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %mirror_tx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mirror_tx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  br i1 %tobool21.not, label %do.end34, label %land.lhs.true.do.end43_crit_edge

land.lhs.true.do.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

do.end34:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 1568, i32 noundef 240, i32 noundef 240, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %do.end43

do.end43:                                         ; preds = %do.end34, %land.lhs.true.do.end43_crit_edge, %if.end17.do.end43_crit_edge, %entry.do.end43_crit_edge
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.155, i32 noundef %port) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_change_mtu(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %arrayidx = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 0
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %arrayidx3.1 = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3.1, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 %4)
  %arrayidx3.2 = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.2, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %7)
  %arrayidx3.3 = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.3, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %10)
  %arrayidx3.4 = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.4, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 %13)
  %arrayidx3.5 = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 5
  %17 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3.5, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %16)
  %arrayidx3.6 = getelementptr %struct.qca8k_priv, ptr %1, i32 0, i32 15, i32 6
  %20 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx3.6, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %19)
  %add7 = add i32 %22, 18
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 120, i32 noundef %add7) #11
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qca8k_port_max_mtu(ptr nocapture noundef readnone %ds, i32 noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 9000
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_lag_join(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %lag, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst.i, align 4
  %lags_len.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %lags_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lags_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %entry
  %lags.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %lags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lags.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %id.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 %id.011.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %7, null
  %cmp1.i.i = icmp eq ptr %7, %lag
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %dsa_lag_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %id.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dsa_lag_id.exit.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.011.i.i)
  %cmp.i = icmp slt i32 %id.011.i.i, 0
  br i1 %cmp.i, label %dsa_lag_id.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

dsa_lag_id.exit.i.cleanup_crit_edge:              ; preds = %dsa_lag_id.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %dsa_lag_id.exit.i
  %num_lag_ids.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 16
  %8 = ptrtoint ptr %num_lag_ids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_lag_ids.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %id.011.i.i, i32 %9)
  %cmp1.not.i = icmp ult i32 %id.011.i.i, %9
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn40.i = load ptr, ptr %ports.i, align 4
  %cmp5.not41.i = icmp eq ptr %.pn40.i, %ports.i
  br i1 %cmp5.not41.i, label %if.end.i.if.end16.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn43.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn40.i, %if.end.i.for.body.i_crit_edge ]
  %members.042.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %lag_dev.i = getelementptr i8, ptr %.pn43.i, i32 -8
  %11 = ptrtoint ptr %lag_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lag_dev.i, align 4
  %cmp6.i = icmp eq ptr %12, %lag
  %inc.i = zext i1 %cmp6.i to i32
  %spec.select.i = add i32 %members.042.i, %inc.i
  %13 = ptrtoint ptr %.pn43.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn43.i, align 4
  %cmp5.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp5.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.i)
  %phi.cmp.i = icmp sgt i32 %spec.select.i, 4
  br i1 %phi.cmp.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end16.i_crit_edge

for.end.i.if.end16.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16.i:                                       ; preds = %for.end.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp17.not.i = icmp eq i32 %15, 5
  br i1 %cmp17.not.i, label %qca8k_lag_can_offload.exit, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

qca8k_lag_can_offload.exit:                       ; preds = %if.end16.i
  %hash_type.i = getelementptr inbounds %struct.netdev_lag_upper_info, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %hash_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hash_type.i, align 4
  %18 = add i32 %17, -1
  %switch.and.i = and i32 %18, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %for.body.lr.ph.i.i15, label %qca8k_lag_can_offload.exit.cleanup_crit_edge

qca8k_lag_can_offload.exit.cleanup_crit_edge:     ; preds = %qca8k_lag_can_offload.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i.i15:                             ; preds = %qca8k_lag_can_offload.exit
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %19 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1.i, align 4
  %21 = ptrtoint ptr %lags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lags.i.i, align 4
  br label %for.body.i.i21

for.body.i.i21:                                   ; preds = %for.inc.i.i24.for.body.i.i21_crit_edge, %for.body.lr.ph.i.i15
  %id.011.i.i16 = phi i32 [ 0, %for.body.lr.ph.i.i15 ], [ %inc.i.i22, %for.inc.i.i24.for.body.i.i21_crit_edge ]
  %arrayidx.i.i17 = getelementptr ptr, ptr %22, i32 %id.011.i.i16
  %23 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i17, align 4
  %tobool.not.i.i18 = icmp ne ptr %24, null
  %cmp1.i.i19 = icmp eq ptr %24, %lag
  %or.cond.i.i20 = and i1 %tobool.not.i.i18, %cmp1.i.i19
  br i1 %or.cond.i.i20, label %for.body.i.i21.dsa_lag_id.exit.i26_crit_edge, label %for.inc.i.i24

for.body.i.i21.dsa_lag_id.exit.i26_crit_edge:     ; preds = %for.body.i.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_lag_id.exit.i26

for.inc.i.i24:                                    ; preds = %for.body.i.i21
  %inc.i.i22 = add nuw i32 %id.011.i.i16, 1
  %exitcond.not.i.i23 = icmp eq i32 %inc.i.i22, %3
  br i1 %exitcond.not.i.i23, label %for.inc.i.i24.dsa_lag_id.exit.i26_crit_edge, label %for.inc.i.i24.for.body.i.i21_crit_edge

for.inc.i.i24.for.body.i.i21_crit_edge:           ; preds = %for.inc.i.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i21

for.inc.i.i24.dsa_lag_id.exit.i26_crit_edge:      ; preds = %for.inc.i.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_lag_id.exit.i26

dsa_lag_id.exit.i26:                              ; preds = %for.inc.i.i24.dsa_lag_id.exit.i26_crit_edge, %for.body.i.i21.dsa_lag_id.exit.i26_crit_edge
  %retval.0.i.i.ph = phi i32 [ -19, %for.inc.i.i24.dsa_lag_id.exit.i26_crit_edge ], [ %id.011.i.i16, %for.body.i.i21.dsa_lag_id.exit.i26_crit_edge ]
  %25 = ptrtoint ptr %hash_type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash_type.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %26, label %dsa_lag_id.exit.i26.cleanup_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %dsa_lag_id.exit.i26.for.body.lr.ph.i_crit_edge
  ]

dsa_lag_id.exit.i26.for.body.lr.ph.i_crit_edge:   ; preds = %dsa_lag_id.exit.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i

dsa_lag_id.exit.i26.cleanup_crit_edge:            ; preds = %dsa_lag_id.exit.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i:                                          ; preds = %dsa_lag_id.exit.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %sw.bb.i, %dsa_lag_id.exit.i26.for.body.lr.ph.i_crit_edge
  %hash.0.i = phi i32 [ 3, %dsa_lag_id.exit.i26.for.body.lr.ph.i_crit_edge ], [ 15, %sw.bb.i ]
  %28 = ptrtoint ptr %lags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lags.i.i, align 4
  br label %for.body.i28

for.cond.i:                                       ; preds = %for.body.i28
  %inc.i27 = add nuw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i27, %3
  br i1 %exitcond.not.i, label %if.then15.critedge.i, label %for.cond.i.for.body.i28_crit_edge

for.cond.i.for.body.i28_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.cond.i.for.body.i28_crit_edge, %for.body.lr.ph.i
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i27, %for.cond.i.for.body.i28_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %29, i32 %i.048.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048.i, i32 %retval.0.i.i.ph)
  %cmp8.not.i = icmp eq i32 %i.048.i, %retval.0.i.i.ph
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i, label %for.cond.i, label %if.else.i

if.then15.critedge.i:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %hash.0.i to i8
  %lag_hash_mode.i = getelementptr inbounds %struct.qca8k_priv, ptr %20, i32 0, i32 4
  %32 = ptrtoint ptr %lag_hash_mode.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %lag_hash_mode.i, align 4
  br label %qca8k_lag_setup_hash.exit

if.else.i:                                        ; preds = %for.body.i28
  %lag_hash_mode16.i = getelementptr inbounds %struct.qca8k_priv, ptr %20, i32 0, i32 4
  %33 = ptrtoint ptr %lag_hash_mode16.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lag_hash_mode16.i, align 4
  %conv17.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %hash.0.i, i32 %conv17.i)
  %cmp18.not.i = icmp eq i32 %hash.0.i, %conv17.i
  br i1 %cmp18.not.i, label %if.else.i.qca8k_lag_setup_hash.exit_crit_edge, label %if.then20.i

if.else.i.qca8k_lag_setup_hash.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_lag_setup_hash.exit

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %lag, ptr noundef nonnull @.str.157) #14
  br label %cleanup

qca8k_lag_setup_hash.exit:                        ; preds = %if.else.i.qca8k_lag_setup_hash.exit_crit_edge, %if.then15.critedge.i
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %20, i32 0, i32 7
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 624, i32 noundef 15, i32 noundef %hash.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end3, label %qca8k_lag_setup_hash.exit.cleanup_crit_edge

qca8k_lag_setup_hash.exit.cleanup_crit_edge:      ; preds = %qca8k_lag_setup_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %qca8k_lag_setup_hash.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call fastcc i32 @qca8k_lag_refresh_portmap(ptr noundef %ds, i32 noundef %port, ptr noundef %lag, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %qca8k_lag_setup_hash.exit.cleanup_crit_edge, %if.then20.i, %dsa_lag_id.exit.i26.cleanup_crit_edge, %qca8k_lag_can_offload.exit.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %dsa_lag_id.exit.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -95, %qca8k_lag_can_offload.exit.cleanup_crit_edge ], [ %call.i.i, %qca8k_lag_setup_hash.exit.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %dsa_lag_id.exit.i.cleanup_crit_edge ], [ -95, %for.end.i.cleanup_crit_edge ], [ -95, %if.end16.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then20.i ], [ -95, %dsa_lag_id.exit.i26.cleanup_crit_edge ], [ -95, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_port_lag_leave(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %lag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qca8k_lag_refresh_portmap(ptr noundef %ds, i32 noundef %port, ptr noundef %lag, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qca8k_fdb_flush(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mutex = getelementptr inbounds %struct.qca8k_priv, ptr %priv, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #11
  %call = tail call fastcc i32 @qca8k_fdb_access(ptr noundef %priv, i32 noundef 1, i32 noundef -1)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_phy_read(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %legacy_phy_port_mapping = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %legacy_phy_port_mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %legacy_phy_port_mapping, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %sub.i = add i32 %port, 31
  %rem = and i32 %sub.i, 31
  %port.addr.0 = select i1 %tobool.not, i32 %port, i32 %rem
  %bus = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %call2 = tail call fastcc i32 @qca8k_mdio_read(ptr noundef %5, i32 noundef %port.addr.0, i32 noundef %regnum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %.call2 = select i1 %cmp, i32 65535, i32 %call2
  ret i32 %.call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_phy_write(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %legacy_phy_port_mapping = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %legacy_phy_port_mapping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %legacy_phy_port_mapping, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %sub.i = add i32 %port, 31
  %rem = and i32 %sub.i, 31
  %port.addr.0 = select i1 %tobool.not, i32 %port, i32 %rem
  %bus = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %call2 = tail call fastcc i32 @qca8k_mdio_write(ptr noundef %5, i32 noundef %port.addr.0, i32 noundef %regnum, i16 noundef zeroext %data)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_internal_mdio_read(ptr nocapture noundef readonly %slave_bus, i32 noundef %phy, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %slave_bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %bus2 = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus2, align 4
  %call = tail call fastcc i32 @qca8k_mdio_read(ptr noundef %3, i32 noundef %phy, i32 noundef %regnum)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qca8k_internal_mdio_write(ptr nocapture noundef readonly %slave_bus, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %slave_bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %bus2 = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus2, align 4
  %call = tail call fastcc i32 @qca8k_mdio_write(ptr noundef %3, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %data)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca8k_mdio_read(ptr noundef %bus, i32 noundef %phy, i32 noundef %regnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %regnum)
  %cmp = icmp sgt i32 %regnum, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end36:                                         ; preds = %entry
  %shl = shl i32 %phy, 21
  %and15 = and i32 %shl, 65011712
  %shl38 = shl i32 %regnum, 16
  %and39 = and i32 %shl38, 2031616
  %or = or i32 %and15, %and39
  %or40 = or i32 %or, -939524096
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #11
  %0 = load i16, ptr @qca8k_current_page, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i = icmp eq i16 %0, 0
  br i1 %cmp.i, label %do.end36.if.end43_crit_edge, label %if.end.i

do.end36.if.end43_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end.i:                                         ; preds = %do.end36
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 5
  %1 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %2(ptr noundef %bus, i32 noundef 24, i32 noundef 0, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_set_page._rs, ptr noundef nonnull @__func__.qca8k_set_page) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.exit_crit_edge, label %do.body.i.exit.sink.split_crit_edge

do.body.i.exit.sink.split_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.sink.split

do.body.i.exit_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i16 0, ptr @qca8k_current_page, align 2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %if.end43

if.end43:                                         ; preds = %if.end12.i, %do.end36.if.end43_crit_edge
  %write.i83 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 5
  %3 = ptrtoint ptr %write.i83 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i83, align 8
  %call.i84 = tail call i32 %4(ptr noundef %bus, i32 noundef 16, i32 noundef 30, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i84)
  %cmp.i85 = icmp sgt i32 %call.i84, -1
  br i1 %cmp.i85, label %if.end.i86, label %if.end43.do.body.i88_crit_edge

if.end43.do.body.i88_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i88

if.end.i86:                                       ; preds = %if.end43
  %shr.i = lshr exact i32 %or40, 16
  %conv1.i = trunc i32 %shr.i to i16
  %5 = ptrtoint ptr %write.i83 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i83, align 8
  %call4.i = tail call i32 %6(ptr noundef %bus, i32 noundef 16, i32 noundef 31, i16 noundef zeroext %conv1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i86.do.body.i88_crit_edge, label %if.end.i86.qca8k_mii_write32.exit_crit_edge

if.end.i86.qca8k_mii_write32.exit_crit_edge:      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit

if.end.i86.do.body.i88_crit_edge:                 ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i88

do.body.i88:                                      ; preds = %if.end.i86.do.body.i88_crit_edge, %if.end43.do.body.i88_crit_edge
  %call8.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_write32._rs, ptr noundef nonnull @__func__.qca8k_mii_write32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i87 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i87, label %do.body.i88.qca8k_mii_write32.exit_crit_edge, label %do.end.i90

do.body.i88.qca8k_mii_write32.exit_crit_edge:     ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit

do.end.i90:                                       ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i89 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i89, ptr noundef nonnull @.str.12) #14
  br label %qca8k_mii_write32.exit

qca8k_mii_write32.exit:                           ; preds = %do.end.i90, %do.body.i88.qca8k_mii_write32.exit_crit_edge, %if.end.i86.qca8k_mii_write32.exit_crit_edge
  %call46 = tail call fastcc i32 @qca8k_mdio_busy_wait(ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %qca8k_mii_write32.exit.exit_crit_edge

qca8k_mii_write32.exit.exit_crit_edge:            ; preds = %qca8k_mii_write32.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end49:                                         ; preds = %qca8k_mii_write32.exit
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 4
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %call.i91 = tail call i32 %8(ptr noundef %bus, i32 noundef 16, i32 noundef 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i91)
  %cmp.i92 = icmp sgt i32 %call.i91, -1
  br i1 %cmp.i92, label %if.end.i95, label %if.end49.do.body.i97_crit_edge

if.end49.do.body.i97_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i97

if.end.i95:                                       ; preds = %if.end49
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call2.i = tail call i32 %10(ptr noundef %bus, i32 noundef 16, i32 noundef 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i94 = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i94, label %if.end.i95.do.body.i97_crit_edge, label %if.end.i95.exit_crit_edge

if.end.i95.exit_crit_edge:                        ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end.i95.do.body.i97_crit_edge:                 ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i97

do.body.i97:                                      ; preds = %if.end.i95.do.body.i97_crit_edge, %if.end49.do.body.i97_crit_edge
  %ret.026.i = phi i32 [ %call2.i, %if.end.i95.do.body.i97_crit_edge ], [ %call.i91, %if.end49.do.body.i97_crit_edge ]
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_read32._rs, ptr noundef nonnull @__func__.qca8k_mii_read32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i96 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i96, label %do.body.i97.exit_crit_edge, label %do.body.i97.exit.sink.split_crit_edge

do.body.i97.exit.sink.split_crit_edge:            ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit.sink.split

do.body.i97.exit_crit_edge:                       ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

exit.sink.split:                                  ; preds = %do.body.i97.exit.sink.split_crit_edge, %do.body.i.exit.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.10, %do.body.i.exit.sink.split_crit_edge ], [ @.str.11, %do.body.i97.exit.sink.split_crit_edge ]
  %val.1.ph = phi i32 [ %or40, %do.body.i.exit.sink.split_crit_edge ], [ 0, %do.body.i97.exit.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %do.body.i.exit.sink.split_crit_edge ], [ %ret.026.i, %do.body.i97.exit.sink.split_crit_edge ]
  %dev.i98 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i98, ptr noundef nonnull %.str.11.sink) #14
  br label %exit

exit:                                             ; preds = %exit.sink.split, %do.body.i97.exit_crit_edge, %if.end.i95.exit_crit_edge, %qca8k_mii_write32.exit.exit_crit_edge, %do.body.i.exit_crit_edge
  %val.1 = phi i32 [ %or40, %qca8k_mii_write32.exit.exit_crit_edge ], [ %or40, %do.body.i.exit_crit_edge ], [ %call.i91, %if.end.i95.exit_crit_edge ], [ 0, %do.body.i97.exit_crit_edge ], [ %val.1.ph, %exit.sink.split ]
  %ret.0 = phi i32 [ %call46, %qca8k_mii_write32.exit.exit_crit_edge ], [ %call.i, %do.body.i.exit_crit_edge ], [ 0, %if.end.i95.exit_crit_edge ], [ %ret.026.i, %do.body.i97.exit_crit_edge ], [ %ret.0.ph, %exit.sink.split ]
  %write.i101 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 5
  %11 = ptrtoint ptr %write.i101 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i101, align 8
  %call.i102 = tail call i32 %12(ptr noundef %bus, i32 noundef 16, i32 noundef 30, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i102)
  %cmp.i103 = icmp sgt i32 %call.i102, -1
  br i1 %cmp.i103, label %if.end.i107, label %exit.do.body.i110_crit_edge

exit.do.body.i110_crit_edge:                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i110

if.end.i107:                                      ; preds = %exit
  %13 = ptrtoint ptr %write.i101 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i101, align 8
  %call4.i105 = tail call i32 %14(ptr noundef %bus, i32 noundef 16, i32 noundef 31, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i105)
  %cmp5.i106 = icmp slt i32 %call4.i105, 0
  br i1 %cmp5.i106, label %if.end.i107.do.body.i110_crit_edge, label %if.end.i107.qca8k_mii_write32.exit113_crit_edge

if.end.i107.qca8k_mii_write32.exit113_crit_edge:  ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit113

if.end.i107.do.body.i110_crit_edge:               ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i110

do.body.i110:                                     ; preds = %if.end.i107.do.body.i110_crit_edge, %exit.do.body.i110_crit_edge
  %call8.i108 = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_write32._rs, ptr noundef nonnull @__func__.qca8k_mii_write32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i108)
  %tobool.not.i109 = icmp eq i32 %call8.i108, 0
  br i1 %tobool.not.i109, label %do.body.i110.qca8k_mii_write32.exit113_crit_edge, label %do.end.i112

do.body.i110.qca8k_mii_write32.exit113_crit_edge: ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit113

do.end.i112:                                      ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i111 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i111, ptr noundef nonnull @.str.12) #14
  br label %qca8k_mii_write32.exit113

qca8k_mii_write32.exit113:                        ; preds = %do.end.i112, %do.body.i110.qca8k_mii_write32.exit113_crit_edge, %if.end.i107.qca8k_mii_write32.exit113_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #11
  %and61 = and i32 %val.1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp58122 = icmp slt i32 %ret.0, 0
  %spec.select = select i1 %cmp58122, i32 %ret.0, i32 %and61
  br label %cleanup

cleanup:                                          ; preds = %qca8k_mii_write32.exit113, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %qca8k_mii_write32.exit113 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca8k_mdio_busy_wait(ptr noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 2000000000
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %0 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %1(ptr noundef %bus, i32 noundef 16, i32 noundef 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end.i, label %for.cond.do.body.i_crit_edge

for.cond.do.body.i_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end.i:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call2.i = tail call i32 %3(ptr noundef %bus, i32 noundef 16, i32 noundef 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.body.i_crit_edge, label %qca8k_mii_read32.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.cond.do.body.i_crit_edge
  %ret.026.i = phi i32 [ %call2.i, %if.end.i.do.body.i_crit_edge ], [ %call.i, %for.cond.do.body.i_crit_edge ]
  %call5.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_read32._rs, ptr noundef nonnull @__func__.qca8k_mii_read32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %do.body.i.for.end_crit_edge, label %do.body.i.for.end.sink.split_crit_edge

do.body.i.for.end.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.sink.split

do.body.i.for.end_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

qca8k_mii_read32.exit:                            ; preds = %if.end.i
  %shl.i = shl i32 %call2.i, 16
  %or.i = or i32 %shl.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i)
  %tobool.not = icmp sgt i32 %or.i, -1
  br i1 %tobool.not, label %qca8k_mii_read32.exit.for.end_crit_edge, label %land.lhs.true

qca8k_mii_read32.exit.for.end_crit_edge:          ; preds = %qca8k_mii_read32.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %qca8k_mii_read32.exit
  %call13 = tail call i64 @ktime_get() #11
  %cmp3.i3 = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i3, label %if.then17, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then17:                                        ; preds = %land.lhs.true
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i6 = tail call i32 %5(ptr noundef %bus, i32 noundef 16, i32 noundef 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i6)
  %cmp.i7 = icmp sgt i32 %call.i6, -1
  br i1 %cmp.i7, label %if.end.i13, label %if.then17.do.body.i17_crit_edge

if.then17.do.body.i17_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i17

if.end.i13:                                       ; preds = %if.then17
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %call2.i9 = tail call i32 %7(ptr noundef %bus, i32 noundef 16, i32 noundef 31) #11
  %shl.i10 = shl i32 %call2.i9, 16
  %or.i11 = or i32 %shl.i10, %call.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i9)
  %cmp3.i12 = icmp slt i32 %call2.i9, 0
  br i1 %cmp3.i12, label %if.end.i13.do.body.i17_crit_edge, label %if.end.i13.for.end_crit_edge

if.end.i13.for.end_crit_edge:                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i13.do.body.i17_crit_edge:                 ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i17

do.body.i17:                                      ; preds = %if.end.i13.do.body.i17_crit_edge, %if.then17.do.body.i17_crit_edge
  %ret.026.i14 = phi i32 [ %call2.i9, %if.end.i13.do.body.i17_crit_edge ], [ %call.i6, %if.then17.do.body.i17_crit_edge ]
  %call5.i15 = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_read32._rs, ptr noundef nonnull @__func__.qca8k_mii_read32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i15)
  %tobool.not.i16 = icmp eq i32 %call5.i15, 0
  br i1 %tobool.not.i16, label %do.body.i17.for.end_crit_edge, label %do.body.i17.for.end.sink.split_crit_edge

do.body.i17.for.end.sink.split_crit_edge:         ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.sink.split

do.body.i17.for.end_crit_edge:                    ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.sink.split:                               ; preds = %do.body.i17.for.end.sink.split_crit_edge, %do.body.i.for.end.sink.split_crit_edge
  %ret1.0.ph = phi i32 [ %ret.026.i, %do.body.i.for.end.sink.split_crit_edge ], [ %ret.026.i14, %do.body.i17.for.end.sink.split_crit_edge ]
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11) #14
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %do.body.i17.for.end_crit_edge, %if.end.i13.for.end_crit_edge, %qca8k_mii_read32.exit.for.end_crit_edge, %do.body.i.for.end_crit_edge
  %val.2 = phi i32 [ %or.i11, %if.end.i13.for.end_crit_edge ], [ 0, %do.body.i17.for.end_crit_edge ], [ 0, %do.body.i.for.end_crit_edge ], [ 0, %for.end.sink.split ], [ %or.i, %qca8k_mii_read32.exit.for.end_crit_edge ]
  %ret1.0 = phi i32 [ 0, %if.end.i13.for.end_crit_edge ], [ %ret.026.i14, %do.body.i17.for.end_crit_edge ], [ %ret.026.i, %do.body.i.for.end_crit_edge ], [ %ret1.0.ph, %for.end.sink.split ], [ 0, %qca8k_mii_read32.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val.2)
  %tobool27.not = icmp sgt i32 %val.2, -1
  %cond = select i1 %tobool27.not, i32 0, i32 -110
  %tobool27.not.not = xor i1 %tobool27.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret1.0)
  %cmp31 = icmp slt i32 %ret1.0, 0
  %or.cond = select i1 %tobool27.not.not, i1 %cmp31, i1 false
  %retval.0 = select i1 %or.cond, i32 %ret1.0, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca8k_mdio_write(ptr noundef %bus, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %regnum)
  %cmp = icmp sgt i32 %regnum, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end36:                                         ; preds = %entry
  %shl = shl i32 %phy, 21
  %and15 = and i32 %shl, 65011712
  %shl38 = shl i32 %regnum, 16
  %and39 = and i32 %shl38, 2031616
  %or = or i32 %and39, %and15
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #11
  %0 = load i16, ptr @qca8k_current_page, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i = icmp eq i16 %0, 0
  br i1 %cmp.i, label %do.end36.if.end69_crit_edge, label %if.end.i

do.end36.if.end69_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end.i:                                         ; preds = %do.end36
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 5
  %1 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %2(ptr noundef %bus, i32 noundef 24, i32 noundef 0, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_set_page._rs, ptr noundef nonnull @__func__.qca8k_set_page) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.exit_crit_edge, label %do.end.i

do.body.i.exit_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #14
  br label %exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i16 0, ptr @qca8k_current_page, align 2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  br label %if.end69

if.end69:                                         ; preds = %if.end12.i, %do.end36.if.end69_crit_edge
  %write.i97 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 5
  %3 = ptrtoint ptr %write.i97 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i97, align 8
  %call.i98 = tail call i32 %4(ptr noundef %bus, i32 noundef 16, i32 noundef 30, i16 noundef zeroext %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i98)
  %cmp.i99 = icmp sgt i32 %call.i98, -1
  br i1 %cmp.i99, label %if.end.i100, label %if.end69.do.body.i102_crit_edge

if.end69.do.body.i102_crit_edge:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i102

if.end.i100:                                      ; preds = %if.end69
  %or66 = lshr exact i32 %or, 16
  %5 = trunc i32 %or66 to i16
  %conv1.i = or i16 %5, -16384
  %6 = ptrtoint ptr %write.i97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i97, align 8
  %call4.i = tail call i32 %7(ptr noundef %bus, i32 noundef 16, i32 noundef 31, i16 noundef zeroext %conv1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i100.do.body.i102_crit_edge, label %if.end.i100.qca8k_mii_write32.exit_crit_edge

if.end.i100.qca8k_mii_write32.exit_crit_edge:     ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit

if.end.i100.do.body.i102_crit_edge:               ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i102

do.body.i102:                                     ; preds = %if.end.i100.do.body.i102_crit_edge, %if.end69.do.body.i102_crit_edge
  %call8.i = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_write32._rs, ptr noundef nonnull @__func__.qca8k_mii_write32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i101 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i101, label %do.body.i102.qca8k_mii_write32.exit_crit_edge, label %do.end.i104

do.body.i102.qca8k_mii_write32.exit_crit_edge:    ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit

do.end.i104:                                      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i103 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i103, ptr noundef nonnull @.str.12) #14
  br label %qca8k_mii_write32.exit

qca8k_mii_write32.exit:                           ; preds = %do.end.i104, %do.body.i102.qca8k_mii_write32.exit_crit_edge, %if.end.i100.qca8k_mii_write32.exit_crit_edge
  %call73 = tail call fastcc i32 @qca8k_mdio_busy_wait(ptr noundef %bus)
  br label %exit

exit:                                             ; preds = %qca8k_mii_write32.exit, %do.end.i, %do.body.i.exit_crit_edge
  %ret.0 = phi i32 [ %call73, %qca8k_mii_write32.exit ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.exit_crit_edge ]
  %write.i105 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 5
  %8 = ptrtoint ptr %write.i105 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i105, align 8
  %call.i106 = tail call i32 %9(ptr noundef %bus, i32 noundef 16, i32 noundef 30, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i106)
  %cmp.i107 = icmp sgt i32 %call.i106, -1
  br i1 %cmp.i107, label %if.end.i111, label %exit.do.body.i114_crit_edge

exit.do.body.i114_crit_edge:                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i114

if.end.i111:                                      ; preds = %exit
  %10 = ptrtoint ptr %write.i105 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i105, align 8
  %call4.i109 = tail call i32 %11(ptr noundef %bus, i32 noundef 16, i32 noundef 31, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i109)
  %cmp5.i110 = icmp slt i32 %call4.i109, 0
  br i1 %cmp5.i110, label %if.end.i111.do.body.i114_crit_edge, label %if.end.i111.qca8k_mii_write32.exit117_crit_edge

if.end.i111.qca8k_mii_write32.exit117_crit_edge:  ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit117

if.end.i111.do.body.i114_crit_edge:               ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i114

do.body.i114:                                     ; preds = %if.end.i111.do.body.i114_crit_edge, %exit.do.body.i114_crit_edge
  %call8.i112 = tail call i32 @___ratelimit(ptr noundef nonnull @qca8k_mii_write32._rs, ptr noundef nonnull @__func__.qca8k_mii_write32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i112)
  %tobool.not.i113 = icmp eq i32 %call8.i112, 0
  br i1 %tobool.not.i113, label %do.body.i114.qca8k_mii_write32.exit117_crit_edge, label %do.end.i116

do.body.i114.qca8k_mii_write32.exit117_crit_edge: ; preds = %do.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_mii_write32.exit117

do.end.i116:                                      ; preds = %do.body.i114
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i115 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i115, ptr noundef nonnull @.str.12) #14
  br label %qca8k_mii_write32.exit117

qca8k_mii_write32.exit117:                        ; preds = %do.end.i116, %do.body.i114.qca8k_mii_write32.exit117_crit_edge, %if.end.i111.qca8k_mii_write32.exit117_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %qca8k_mii_write32.exit117, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %qca8k_mii_write32.exit117 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca8k_fdb_access(ptr nocapture noundef readonly %priv, i32 noundef %cmd, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %or = or i32 %cmd, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %port)
  %cmp = icmp sgt i32 %port, -1
  %or1 = or i32 %cmd, -2147467264
  %shl = shl i32 %port, 8
  %and15 = and i32 %shl, 3840
  %or16 = or i32 %and15, %or1
  %storemerge = select i1 %cmp, i32 %or16, i32 %or
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %storemerge, ptr %reg, align 4
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 1548, i32 noundef %storemerge) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !359
  %call.i48 = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i48, 2000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end20
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 1548, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.cond.i.qca8k_busy_wait.exit.thread_crit_edge

for.cond.i.qca8k_busy_wait.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool9.not.i = icmp sgt i32 %7, -1
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.end24_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end24_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call13.i = call i64 @ktime_get() #11
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 1548, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool23.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool23.not.i, label %lor.rhs.i, label %for.end.i.qca8k_busy_wait.exit.thread_crit_edge

for.end.i.qca8k_busy_wait.exit.thread_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread

lor.rhs.i:                                        ; preds = %for.end.i
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %tobool25.not.i = icmp sgt i32 %.pr, -1
  br i1 %tobool25.not.i, label %lor.rhs.i.if.end24_crit_edge, label %lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge

lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge:  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread

lor.rhs.i.if.end24_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

qca8k_busy_wait.exit.thread:                      ; preds = %lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge, %for.end.i.qca8k_busy_wait.exit.thread_crit_edge, %for.cond.i.qca8k_busy_wait.exit.thread_crit_edge
  %tobool23.not42.i.ph = phi i32 [ -110, %lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge ], [ %call18.i, %for.end.i.qca8k_busy_wait.exit.thread_crit_edge ], [ %call8.i, %for.cond.i.qca8k_busy_wait.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs.i.if.end24_crit_edge, %lor.lhs.false.i.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp25 = icmp eq i32 %cmd, 2
  br i1 %cmp25, label %if.then26, label %if.end24.if.end35_crit_edge

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then26:                                        ; preds = %if.end24
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i51 = call i32 @regmap_read(ptr noundef %12, i32 noundef 1548, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp28 = icmp slt i32 %call.i51, 0
  br i1 %cmp28, label %if.then26.cleanup_crit_edge, label %if.end30

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and31 = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end35:                                         ; preds = %if.end30.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %qca8k_busy_wait.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i51, %if.then26.cleanup_crit_edge ], [ -1, %if.end30.cleanup_crit_edge ], [ %tobool23.not42.i.ph, %qca8k_busy_wait.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qca8k_mac_config_setup_internal_delay(ptr nocapture noundef readonly %priv, i32 noundef %cpu_port_index, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 6, i32 4, i32 %cpu_port_index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 22
  %and18 = and i32 %shl, 12582912
  %or = or i32 %and18, 33554432
  %val.0 = select i1 %tobool.not, i32 0, i32 %or
  %arrayidx22 = getelementptr %struct.qca8k_priv, ptr %priv, i32 0, i32 6, i32 3, i32 %cpu_port_index
  %2 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool23.not = icmp eq i8 %3, 0
  %conv28 = zext i8 %3 to i32
  %shl51 = shl nuw nsw i32 %conv28, 20
  %and52 = and i32 %shl51, 3145728
  %or53 = or i32 %val.0, %and52
  %or54 = or i32 %or53, 16777216
  %val.1 = select i1 %tobool23.not, i32 %val.0, i32 %or54
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %reg, i32 noundef 66060288, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool56.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool56.not, label %entry.if.end62_crit_edge, label %do.end60

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.end60:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.qca8k_priv, ptr %priv, i32 0, i32 12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu_port_index)
  %cmp = icmp eq i32 %cpu_port_index, 0
  %cond = select i1 %cmp, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.77, i32 noundef %cond) #14
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %entry.if.end62_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %interface) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface)
  %0 = icmp ult i32 %interface, 30
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %interface
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.109, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca8k_vlan_access(ptr nocapture noundef readonly %priv, i32 noundef %cmd, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %or = or i32 %cmd, -2147483648
  %conv13 = zext i16 %vid to i32
  %shl = shl nuw i32 %conv13, 16
  %and14 = and i32 %shl, 268369920
  %or15 = or i32 %and14, %or
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or15, ptr %reg, align 4
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 1556, i32 noundef %or15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !359
  %call.i46 = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i46, 2000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end18
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 1556, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.cond.i.qca8k_busy_wait.exit.thread_crit_edge

for.cond.i.qca8k_busy_wait.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool9.not.i = icmp sgt i32 %7, -1
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.end22_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end22_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call13.i = call i64 @ktime_get() #11
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 1556, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool23.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool23.not.i, label %lor.rhs.i, label %for.end.i.qca8k_busy_wait.exit.thread_crit_edge

for.end.i.qca8k_busy_wait.exit.thread_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread

lor.rhs.i:                                        ; preds = %for.end.i
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %tobool25.not.i = icmp sgt i32 %.pr, -1
  br i1 %tobool25.not.i, label %lor.rhs.i.if.end22_crit_edge, label %lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge

lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge:  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qca8k_busy_wait.exit.thread

lor.rhs.i.if.end22_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

qca8k_busy_wait.exit.thread:                      ; preds = %lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge, %for.end.i.qca8k_busy_wait.exit.thread_crit_edge, %for.cond.i.qca8k_busy_wait.exit.thread_crit_edge
  %tobool23.not42.i.ph = phi i32 [ -110, %lor.rhs.i.qca8k_busy_wait.exit.thread_crit_edge ], [ %call18.i, %for.end.i.qca8k_busy_wait.exit.thread_crit_edge ], [ %call8.i, %for.cond.i.qca8k_busy_wait.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

if.end22:                                         ; preds = %lor.rhs.i.if.end22_crit_edge, %lor.lhs.false.i.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 2
  br i1 %cmp, label %if.then24, label %if.end22.if.end34_crit_edge

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then24:                                        ; preds = %if.end22
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i49 = call i32 @regmap_read(ptr noundef %12, i32 noundef 1556, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp26 = icmp slt i32 %call.i49, 0
  br i1 %cmp26, label %if.then24.cleanup_crit_edge, label %if.end29

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.then24
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and30 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end34:                                         ; preds = %if.end29.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end29.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %qca8k_busy_wait.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i49, %if.then24.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ %tobool23.not42.i.ph, %qca8k_busy_wait.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca8k_fdb_read(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %fdb) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !359
  %regmap.i = getelementptr inbounds %struct.qca8k_priv, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 1536, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1540, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp1.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.2 = call i32 @regmap_read(ptr noundef %10, i32 noundef 1544, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp1.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i.3 = call i32 @regmap_read(ptr noundef %14, i32 noundef 1548, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp1.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  %and = lshr i32 %12, 8
  %15 = trunc i32 %and to i16
  %conv = and i16 %15, 4095
  %16 = ptrtoint ptr %fdb to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %fdb, align 2
  %17 = trunc i32 %12 to i8
  %conv34 = and i8 %17, 15
  %aging = getelementptr inbounds %struct.qca8k_fdb, ptr %fdb, i32 0, i32 2
  %18 = ptrtoint ptr %aging to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv34, ptr %aging, align 1
  %and52 = lshr i32 %8, 16
  %19 = trunc i32 %and52 to i8
  %conv54 = and i8 %19, 127
  %port_mask = getelementptr inbounds %struct.qca8k_fdb, ptr %fdb, i32 0, i32 1
  %20 = ptrtoint ptr %port_mask to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv54, ptr %port_mask, align 2
  %and72 = lshr i32 %8, 8
  %conv74 = trunc i32 %and72 to i8
  %mac = getelementptr inbounds %struct.qca8k_fdb, ptr %fdb, i32 0, i32 3
  %21 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv74, ptr %mac, align 2
  %conv95 = trunc i32 %8 to i8
  %arrayidx97 = getelementptr %struct.qca8k_fdb, ptr %fdb, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv95, ptr %arrayidx97, align 1
  %shr116 = lshr i32 %4, 24
  %conv117 = trunc i32 %shr116 to i8
  %arrayidx119 = getelementptr %struct.qca8k_fdb, ptr %fdb, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv117, ptr %arrayidx119, align 2
  %and137 = lshr i32 %4, 16
  %conv139 = trunc i32 %and137 to i8
  %arrayidx141 = getelementptr %struct.qca8k_fdb, ptr %fdb, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv139, ptr %arrayidx141, align 1
  %and159 = lshr i32 %4, 8
  %conv161 = trunc i32 %and159 to i8
  %arrayidx163 = getelementptr %struct.qca8k_fdb, ptr %fdb, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv161, ptr %arrayidx163, align 2
  %conv183 = trunc i32 %4 to i8
  %arrayidx185 = getelementptr %struct.qca8k_fdb, ptr %fdb, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv183, ptr %arrayidx185, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.3 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.1, %if.end.cleanup_crit_edge ], [ %call.i.2, %if.end.1.cleanup_crit_edge ], [ %call.i.3, %if.end.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qca8k_lag_refresh_portmap(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef readnone %lag, i1 noundef zeroext %delete) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !359
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 4
  %lags_len.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %lags_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lags_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10.not.i = icmp eq i32 %6, 0
  br i1 %cmp10.not.i, label %entry.dsa_lag_id.exit_crit_edge, label %for.body.lr.ph.i

entry.dsa_lag_id.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_lag_id.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %lags.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %lags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lags.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %id.011.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %10, null
  %cmp1.i = icmp eq ptr %10, %lag
  %or.cond.i = and i1 %tobool.not.i, %cmp1.i
  br i1 %or.cond.i, label %for.body.i.dsa_lag_id.exit_crit_edge, label %for.inc.i

for.body.i.dsa_lag_id.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_lag_id.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %id.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.dsa_lag_id.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.dsa_lag_id.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dsa_lag_id.exit

dsa_lag_id.exit:                                  ; preds = %for.inc.i.dsa_lag_id.exit_crit_edge, %for.body.i.dsa_lag_id.exit_crit_edge, %entry.dsa_lag_id.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %entry.dsa_lag_id.exit_crit_edge ], [ -19, %for.inc.i.dsa_lag_id.exit_crit_edge ], [ %id.011.i, %for.body.i.dsa_lag_id.exit_crit_edge ]
  %regmap = getelementptr inbounds %struct.qca8k_priv, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %12, i32 noundef 1792, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %dsa_lag_id.exit.cleanup_crit_edge

dsa_lag_id.exit.cleanup_crit_edge:                ; preds = %dsa_lag_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dsa_lag_id.exit
  %mul = shl i32 %retval.0.i, 3
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %shr = lshr i32 %14, %mul
  %and = and i32 %shr, 127
  %shl = shl nuw i32 1, %port
  %or = or i32 %and, %shl
  %neg = xor i32 %shl, -1
  %and5 = and i32 %and, %neg
  %storemerge = select i1 %delete, i32 %and5, i32 %or
  store i32 %storemerge, ptr %val, align 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %or13 = shl i32 255, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool14.not = icmp eq i32 %storemerge, 0
  %lnot.ext = zext i1 %tobool14.not to i32
  %shl16110 = or i32 %storemerge, %lnot.ext
  %or19 = shl i32 %shl16110, %mul
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 1792, i32 noundef %or13, i32 noundef %or19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %div = sdiv i32 %retval.0.i, 2
  %mul22 = shl i32 %div, 2
  %add = add i32 %mul22, 1796
  %mul29 = shl i32 %div, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp39.not = icmp eq i32 %port, 0
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_read(ptr noundef %18, i32 noundef %add, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %shr31 = lshr i32 %20, %mul29
  %and32 = and i32 %shr31, 15
  store i32 %and32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and32)
  %cmp35.not = icmp eq i32 %and32, 8
  br i1 %delete, label %if.then34, label %if.else42

if.then34:                                        ; preds = %if.end26
  br i1 %cmp35.not, label %if.end37, label %if.then34.for.inc_crit_edge

if.then34.for.inc_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end37:                                         ; preds = %if.then34
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val, align 4
  br i1 %cmp39.not, label %if.end37.for.end_crit_edge, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else42:                                        ; preds = %if.end26
  br i1 %cmp35.not, label %if.else42.for.inc_crit_edge, label %if.else42.for.end_crit_edge

if.else42.for.end_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else42.for.inc_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.else42.for.inc_crit_edge, %if.end37.for.inc_crit_edge, %if.then34.for.inc_crit_edge
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call23.1 = call i32 @regmap_read(ptr noundef %23, i32 noundef %add, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1)
  %tobool24.not.1 = icmp eq i32 %call23.1, 0
  br i1 %tobool24.not.1, label %if.end26.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26.1:                                       ; preds = %for.inc
  %add30.1 = or i32 %mul29, 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %shr31.1 = lshr i32 %25, %add30.1
  %and32.1 = and i32 %shr31.1, 15
  store i32 %and32.1, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and32.1)
  %cmp35.not.1 = icmp eq i32 %and32.1, 8
  br i1 %delete, label %if.then34.1, label %if.else42.1

if.else42.1:                                      ; preds = %if.end26.1
  br i1 %cmp35.not.1, label %if.else42.1.for.inc.1_crit_edge, label %if.else42.1.for.end_crit_edge

if.else42.1.for.end_crit_edge:                    ; preds = %if.else42.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else42.1.for.inc.1_crit_edge:                  ; preds = %if.else42.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then34.1:                                      ; preds = %if.end26.1
  br i1 %cmp35.not.1, label %if.end37.1, label %if.then34.1.for.inc.1_crit_edge

if.then34.1.for.inc.1_crit_edge:                  ; preds = %if.then34.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end37.1:                                       ; preds = %if.then34.1
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %val, align 4
  br i1 %cmp39.not, label %if.end37.1.for.end_crit_edge, label %if.end37.1.for.inc.1_crit_edge

if.end37.1.for.inc.1_crit_edge:                   ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end37.1.for.end_crit_edge:                     ; preds = %if.end37.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.1:                                        ; preds = %if.end37.1.for.inc.1_crit_edge, %if.then34.1.for.inc.1_crit_edge, %if.else42.1.for.inc.1_crit_edge
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call23.2 = call i32 @regmap_read(ptr noundef %28, i32 noundef %add, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.2)
  %tobool24.not.2 = icmp eq i32 %call23.2, 0
  br i1 %tobool24.not.2, label %if.end26.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26.2:                                       ; preds = %for.inc.1
  %add30.2 = or i32 %mul29, 8
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %shr31.2 = lshr i32 %30, %add30.2
  %and32.2 = and i32 %shr31.2, 15
  store i32 %and32.2, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and32.2)
  %cmp35.not.2 = icmp eq i32 %and32.2, 8
  br i1 %delete, label %if.then34.2, label %if.else42.2

if.else42.2:                                      ; preds = %if.end26.2
  br i1 %cmp35.not.2, label %if.else42.2.for.inc.2_crit_edge, label %if.else42.2.for.end_crit_edge

if.else42.2.for.end_crit_edge:                    ; preds = %if.else42.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else42.2.for.inc.2_crit_edge:                  ; preds = %if.else42.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then34.2:                                      ; preds = %if.end26.2
  br i1 %cmp35.not.2, label %if.end37.2, label %if.then34.2.for.inc.2_crit_edge

if.then34.2.for.inc.2_crit_edge:                  ; preds = %if.then34.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end37.2:                                       ; preds = %if.then34.2
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val, align 4
  br i1 %cmp39.not, label %if.end37.2.for.end_crit_edge, label %if.end37.2.for.inc.2_crit_edge

if.end37.2.for.inc.2_crit_edge:                   ; preds = %if.end37.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end37.2.for.end_crit_edge:                     ; preds = %if.end37.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.2:                                        ; preds = %if.end37.2.for.inc.2_crit_edge, %if.then34.2.for.inc.2_crit_edge, %if.else42.2.for.inc.2_crit_edge
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call23.3 = call i32 @regmap_read(ptr noundef %33, i32 noundef %add, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.3)
  %tobool24.not.3 = icmp eq i32 %call23.3, 0
  br i1 %tobool24.not.3, label %if.end26.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26.3:                                       ; preds = %for.inc.2
  %add30.3 = or i32 %mul29, 12
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %shr31.3 = lshr i32 %35, %add30.3
  %and32.3 = and i32 %shr31.3, 15
  store i32 %and32.3, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and32.3)
  %cmp35.not.3 = icmp eq i32 %and32.3, 8
  br i1 %delete, label %if.then34.3, label %if.else42.3

if.else42.3:                                      ; preds = %if.end26.3
  br i1 %cmp35.not.3, label %if.else42.3.for.inc.3_crit_edge, label %if.else42.3.for.end_crit_edge

if.else42.3.for.end_crit_edge:                    ; preds = %if.else42.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.else42.3.for.inc.3_crit_edge:                  ; preds = %if.else42.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then34.3:                                      ; preds = %if.end26.3
  br i1 %cmp35.not.3, label %if.end37.3, label %if.then34.3.for.inc.3_crit_edge

if.then34.3.for.inc.3_crit_edge:                  ; preds = %if.then34.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end37.3:                                       ; preds = %if.then34.3
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %val, align 4
  br i1 %cmp39.not, label %if.end37.3.for.end_crit_edge, label %if.end37.3.for.inc.3_crit_edge

if.end37.3.for.inc.3_crit_edge:                   ; preds = %if.end37.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end37.3.for.end_crit_edge:                     ; preds = %if.end37.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.3:                                        ; preds = %if.end37.3.for.inc.3_crit_edge, %if.then34.3.for.inc.3_crit_edge, %if.else42.3.for.inc.3_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.3, %if.end37.3.for.end_crit_edge, %if.else42.3.for.end_crit_edge, %if.end37.2.for.end_crit_edge, %if.else42.2.for.end_crit_edge, %if.end37.1.for.end_crit_edge, %if.else42.1.for.end_crit_edge, %if.else42.for.end_crit_edge, %if.end37.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end37.for.end_crit_edge ], [ 0, %if.else42.for.end_crit_edge ], [ 4, %if.else42.1.for.end_crit_edge ], [ 4, %if.end37.1.for.end_crit_edge ], [ 8, %if.else42.2.for.end_crit_edge ], [ 8, %if.end37.2.for.end_crit_edge ], [ 12, %if.else42.3.for.end_crit_edge ], [ 12, %if.end37.3.for.end_crit_edge ], [ 16, %for.inc.3 ]
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %add54 = add i32 %i.0.lcssa, %mul29
  %or61 = shl i32 15, %add54
  %lnot63 = xor i1 %delete, true
  %lnot.ext64 = zext i1 %lnot63 to i32
  %shl69111 = or i32 %lnot.ext64, %port
  %or75 = shl i32 %shl69111, %add54
  %call.i112 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %add, i32 noundef %or61, i32 noundef %or75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dsa_lag_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i112, %for.end ], [ %call2, %dsa_lag_id.exit.cleanup_crit_edge ], [ %call23, %if.end.cleanup_crit_edge ], [ %call23.1, %for.inc.cleanup_crit_edge ], [ %call23.2, %for.inc.1.cleanup_crit_edge ], [ %call23.3, %for.inc.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !50, !51, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !69, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !113, !115, !117, !118, !119, !121, !123, !125, !127, !128, !129, !131, !132, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !336, !337, !338, !340, !341, !342, !343, !345, !346, !347, !348}
!llvm.module.flags = !{!350, !351, !352, !353, !354, !355, !356, !357}
!llvm.ident = !{!358}

!0 = !{ptr @__initcall__kmod_qca8k__868_2611_mdio_module_init6, !1, !"__initcall__kmod_qca8k__868_2611_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/qca8k.c", i32 2611, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author869, !4, !"__UNIQUE_ID_author869", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/qca8k.c", i32 2613, i32 1}
!5 = !{ptr @__UNIQUE_ID_description870, !6, !"__UNIQUE_ID_description870", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/qca8k.c", i32 2614, i32 1}
!7 = !{ptr @__UNIQUE_ID_file871, !8, !"__UNIQUE_ID_file871", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/qca8k.c", i32 2615, i32 1}
!9 = !{ptr @__UNIQUE_ID_license872, !8, !"__UNIQUE_ID_license872", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias873, !11, !"__UNIQUE_ID_alias873", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/qca8k.c", i32 2616, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/qca8k.c", i32 2605, i32 11}
!14 = !{ptr @qca8kmdio_driver, !15, !"qca8kmdio_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/qca8k.c", i32 2600, i32 27}
!16 = !{ptr @qca8k_of_match, !17, !"qca8k_of_match", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/qca8k.c", i32 2592, i32 34}
!18 = !{ptr @qca8327, !19, !"qca8327", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/qca8k.c", i32 2576, i32 38}
!20 = !{ptr @qca8328, !21, !"qca8328", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/qca8k.c", i32 2582, i32 38}
!22 = !{ptr @qca833x, !23, !"qca833x", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/qca8k.c", i32 2587, i32 38}
!24 = !{ptr @qca8k_pm_ops, !25, !"qca8k_pm_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/qca8k.c", i32 2573, i32 8}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/qca8k.c", i32 2469, i32 56}
!28 = !{ptr @qca8k_sw_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/qca8k.c", i32 2484, i32 17}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/qca8k.c", i32 2487, i32 3}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @qca8k_sw_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @qca8k_sw_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @qca8k_sw_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/dsa/qca8k.c", i32 2505, i32 2}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qca8k_regmap_config, !43, !"qca8k_regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/qca8k.c", i32 274, i32 29}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/qca8k.c", i32 145, i32 3}
!46 = !{ptr @qca8k_set_page._rs, !45, !"_rs", i1 false, i1 false}
!47 = !{ptr @__func__.qca8k_set_page, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @qca8k_set_page._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @qca8k_set_page._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @qca8k_current_page, !52, !"qca8k_current_page", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/qca8k.c", i32 81, i32 12}
!53 = !{ptr @qca8k_mii_read32._rs, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../drivers/net/dsa/qca8k.c", i32 109, i32 3}
!55 = !{ptr @__func__.qca8k_mii_read32, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @qca8k_mii_read32._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @qca8k_mii_read32._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @qca8k_mii_write32._rs, !60, !"_rs", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/qca8k.c", i32 131, i32 3}
!61 = !{ptr @__func__.qca8k_mii_write32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @qca8k_mii_write32._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @qca8k_mii_write32._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @qca8k_readable_table, !66, !"qca8k_readable_table", i1 false, i1 false}
!66 = !{!"../drivers/net/dsa/qca8k.c", i32 269, i32 41}
!67 = !{ptr @qca8k_readable_ranges, !68, !"qca8k_readable_ranges", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/qca8k.c", i32 250, i32 34}
!69 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/dsa/qca8k.c", i32 2441, i32 3}
!71 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qca8k_read_switch_id._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @qca8k_read_switch_id._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @qca8k_switch_ops, !75, !"qca8k_switch_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/dsa/qca8k.c", i32 2386, i32 36}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/dsa/qca8k.c", i32 1144, i32 3}
!78 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @qca8k_setup._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @qca8k_setup._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/dsa/qca8k.c", i32 1169, i32 3}
!83 = !{ptr @qca8k_setup._entry.17, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @qca8k_setup._entry_ptr.19, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/dsa/qca8k.c", i32 1177, i32 3}
!87 = !{ptr @qca8k_setup._entry.20, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @qca8k_setup._entry_ptr.22, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/dsa/qca8k.c", i32 1184, i32 3}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qca8k_setup._entry.23, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qca8k_setup._entry_ptr.26, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/qca8k.c", i32 1200, i32 5}
!96 = !{ptr @qca8k_setup._entry.27, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qca8k_setup._entry_ptr.29, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/qca8k.c", i32 1331, i32 3}
!100 = !{ptr @qca8k_setup._entry.30, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @qca8k_setup._entry_ptr.32, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/qca8k.c", i32 987, i32 2}
!104 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qca8k_find_cpu_port.__UNIQUE_ID_ddebug642, !103, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/dsa/qca8k.c", i32 1071, i32 39}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/dsa/qca8k.c", i32 1079, i32 5}
!110 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @qca8k_parse_port_config._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @qca8k_parse_port_config._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/dsa/qca8k.c", i32 1087, i32 39}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/qca8k.c", i32 1095, i32 5}
!117 = !{ptr @qca8k_parse_port_config._entry.39, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @qca8k_parse_port_config._entry_ptr.41, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/qca8k.c", i32 1108, i32 39}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/dsa/qca8k.c", i32 1111, i32 39}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/dsa/qca8k.c", i32 1114, i32 39}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/dsa/qca8k.c", i32 1118, i32 6}
!127 = !{ptr @qca8k_parse_port_config._entry.45, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @qca8k_parse_port_config._entry_ptr.47, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/dsa/qca8k.c", i32 1123, i32 6}
!131 = !{ptr @qca8k_parse_port_config._entry.48, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @qca8k_parse_port_config._entry_ptr.50, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/dsa/qca8k.c", i32 874, i32 51}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/dsa/qca8k.c", i32 876, i32 52}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/dsa/qca8k.c", i32 882, i32 36}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/dsa/qca8k.c", i32 894, i32 35}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/dsa/qca8k.c", i32 903, i32 3}
!143 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @qca8k_setup_mdio_bus._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @qca8k_setup_mdio_bus._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/dsa/qca8k.c", i32 919, i32 3}
!148 = !{ptr @qca8k_setup_mdio_bus._entry.57, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @qca8k_setup_mdio_bus._entry_ptr.59, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/dsa/qca8k.c", i32 933, i32 50}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/dsa/qca8k.c", i32 852, i32 14}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/dsa/qca8k.c", i32 855, i32 37}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/dsa/qca8k.c", i32 1020, i32 34}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/dsa/qca8k.c", i32 1023, i32 34}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/dsa/qca8k.c", i32 1025, i32 4}
!162 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @qca8k_setup_of_pws_reg._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @qca8k_setup_of_pws_reg._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/dsa/qca8k.c", i32 962, i32 31}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/dsa/qca8k.c", i32 966, i32 31}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/dsa/qca8k.c", i32 1430, i32 3}
!171 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @qca8k_phylink_mac_config._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @qca8k_phylink_mac_config._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/dsa/qca8k.c", i32 1435, i32 3}
!176 = !{ptr @qca8k_phylink_mac_config._entry.71, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @qca8k_phylink_mac_config._entry_ptr.73, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/dsa/qca8k.c", i32 1528, i32 3}
!180 = !{ptr @qca8k_phylink_mac_config._entry.74, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @qca8k_phylink_mac_config._entry_ptr.76, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.77, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/dsa/qca8k.c", i32 1386, i32 3}
!184 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @qca8k_mac_config_setup_internal_delay._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @qca8k_mac_config_setup_internal_delay._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/phy.h", i32 211, i32 10}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/phy.h", i32 213, i32 10}
!191 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../include/linux/phy.h", i32 215, i32 10}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/phy.h", i32 217, i32 10}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/phy.h", i32 219, i32 10}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/phy.h", i32 221, i32 10}
!199 = !{ptr @.str.85, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/phy.h", i32 223, i32 10}
!201 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../include/linux/phy.h", i32 225, i32 10}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../include/linux/phy.h", i32 227, i32 10}
!205 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../include/linux/phy.h", i32 229, i32 10}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/phy.h", i32 231, i32 10}
!209 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/phy.h", i32 233, i32 10}
!211 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/phy.h", i32 235, i32 10}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../include/linux/phy.h", i32 237, i32 10}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/linux/phy.h", i32 239, i32 10}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../include/linux/phy.h", i32 241, i32 10}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/phy.h", i32 243, i32 10}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../include/linux/phy.h", i32 245, i32 10}
!223 = !{ptr @.str.97, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../include/linux/phy.h", i32 247, i32 10}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../include/linux/phy.h", i32 249, i32 10}
!227 = !{ptr @.str.99, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../include/linux/phy.h", i32 251, i32 10}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../include/linux/phy.h", i32 253, i32 10}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../include/linux/phy.h", i32 255, i32 10}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../include/linux/phy.h", i32 257, i32 10}
!235 = !{ptr @.str.103, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../include/linux/phy.h", i32 259, i32 10}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../include/linux/phy.h", i32 261, i32 10}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../include/linux/phy.h", i32 263, i32 10}
!241 = !{ptr @.str.106, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../include/linux/phy.h", i32 265, i32 10}
!243 = !{ptr @.str.107, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../include/linux/phy.h", i32 267, i32 10}
!245 = !{ptr @.str.108, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../include/linux/phy.h", i32 269, i32 10}
!247 = !{ptr @.str.109, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../include/linux/phy.h", i32 271, i32 10}
!249 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/dsa/qca8k.c", i32 34, i32 2}
!251 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/dsa/qca8k.c", i32 35, i32 2}
!253 = !{ptr @.str.112, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/dsa/qca8k.c", i32 36, i32 2}
!255 = !{ptr @.str.113, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/dsa/qca8k.c", i32 37, i32 2}
!257 = !{ptr @.str.114, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/dsa/qca8k.c", i32 38, i32 2}
!259 = !{ptr @.str.115, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/dsa/qca8k.c", i32 39, i32 2}
!261 = !{ptr @.str.116, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/dsa/qca8k.c", i32 40, i32 2}
!263 = !{ptr @.str.117, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/dsa/qca8k.c", i32 41, i32 2}
!265 = !{ptr @.str.118, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/dsa/qca8k.c", i32 42, i32 2}
!267 = !{ptr @.str.119, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/dsa/qca8k.c", i32 43, i32 2}
!269 = !{ptr @.str.120, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/dsa/qca8k.c", i32 44, i32 2}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/dsa/qca8k.c", i32 45, i32 2}
!273 = !{ptr @.str.122, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/dsa/qca8k.c", i32 46, i32 2}
!275 = !{ptr @.str.123, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/dsa/qca8k.c", i32 47, i32 2}
!277 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/dsa/qca8k.c", i32 48, i32 2}
!279 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/dsa/qca8k.c", i32 49, i32 2}
!281 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/dsa/qca8k.c", i32 50, i32 2}
!283 = !{ptr @.str.127, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/dsa/qca8k.c", i32 51, i32 2}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/dsa/qca8k.c", i32 52, i32 2}
!287 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/dsa/qca8k.c", i32 53, i32 2}
!289 = !{ptr @.str.130, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/dsa/qca8k.c", i32 54, i32 2}
!291 = !{ptr @.str.131, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/dsa/qca8k.c", i32 55, i32 2}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/dsa/qca8k.c", i32 56, i32 2}
!295 = !{ptr @.str.133, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/dsa/qca8k.c", i32 57, i32 2}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/dsa/qca8k.c", i32 58, i32 2}
!299 = !{ptr @.str.135, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/dsa/qca8k.c", i32 59, i32 2}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/dsa/qca8k.c", i32 60, i32 2}
!303 = !{ptr @.str.137, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/dsa/qca8k.c", i32 61, i32 2}
!305 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/dsa/qca8k.c", i32 62, i32 2}
!307 = !{ptr @.str.139, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/dsa/qca8k.c", i32 63, i32 2}
!309 = !{ptr @.str.140, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/dsa/qca8k.c", i32 64, i32 2}
!311 = !{ptr @.str.141, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/dsa/qca8k.c", i32 65, i32 2}
!313 = !{ptr @.str.142, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/dsa/qca8k.c", i32 66, i32 2}
!315 = !{ptr @.str.143, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/dsa/qca8k.c", i32 67, i32 2}
!317 = !{ptr @.str.144, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/dsa/qca8k.c", i32 68, i32 2}
!319 = !{ptr @.str.145, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/dsa/qca8k.c", i32 69, i32 2}
!321 = !{ptr @.str.146, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/dsa/qca8k.c", i32 70, i32 2}
!323 = !{ptr @.str.147, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/dsa/qca8k.c", i32 71, i32 2}
!325 = !{ptr @.str.148, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/dsa/qca8k.c", i32 72, i32 2}
!327 = !{ptr @.str.149, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/dsa/qca8k.c", i32 73, i32 2}
!329 = !{ptr @.str.150, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/dsa/qca8k.c", i32 74, i32 2}
!331 = !{ptr @ar8327_mib, !332, !"ar8327_mib", i1 false, i1 false}
!332 = !{!"../drivers/net/dsa/qca8k.c", i32 33, i32 36}
!333 = !{ptr @.str.151, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/dsa/qca8k.c", i32 2158, i32 3}
!335 = !{ptr @.str.152, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @qca8k_port_vlan_add._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @qca8k_port_vlan_add._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.153, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/dsa/qca8k.c", i32 2186, i32 3}
!340 = !{ptr @.str.154, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @qca8k_port_vlan_del._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @qca8k_port_vlan_del._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.155, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/dsa/qca8k.c", i32 2123, i32 2}
!345 = !{ptr @.str.156, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @qca8k_port_mirror_del._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @qca8k_port_mirror_del._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.157, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/dsa/qca8k.c", i32 2285, i32 19}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 1, !"min_enum_size", i32 4}
!352 = !{i32 8, !"branch-target-enforcement", i32 0}
!353 = !{i32 8, !"sign-return-address", i32 0}
!354 = !{i32 8, !"sign-return-address-all", i32 0}
!355 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!356 = !{i32 7, !"uwtable", i32 1}
!357 = !{i32 7, !"frame-pointer", i32 2}
!358 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!359 = !{!"auto-init"}
!360 = !{i64 2149017789, i64 2149017794, i64 2149017807, i64 2149017851, i64 2149017885, i64 2149017906}
!361 = !{i8 0, i8 2}
