; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/qca/ar9331.c_pt.bc'
source_filename = "../drivers/net/dsa/qca/ar9331.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ar9331_sw_priv = type { ptr, %struct.dsa_switch, %struct.dsa_switch_ops, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, [6 x %struct.ar9331_sw_port] }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ar9331_sw_port = type { i32, %struct.delayed_work, %struct.rtnl_link_stats64, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.ar9331_sw_stats_raw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_ar9331__570_1128_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@ar9331_sw_mdio_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ar9331_sw_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @ar9331_sw_probe, ptr @ar9331_sw_remove, ptr @ar9331_sw_shutdown }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author571 = internal constant [53 x i8] c"ar9331.author=Oleksij Rempel <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description572 = internal constant [52 x i8] c"ar9331.description=Driver for Atheros AR9331 switch\00", section ".modinfo", align 1
@__UNIQUE_ID_file573 = internal constant [39 x i8] c"ar9331.file=drivers/net/dsa/qca/ar9331\00", section ".modinfo", align 1
@__UNIQUE_ID_license574 = internal constant [22 x i8] c"ar9331.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar9331_switch\00", [18 x i8] zeroinitializer }, align 32
@ar9331_sw_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qca,ar9331-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ar9331_sw_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ar9331_sw_bus = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @ar9331_sw_bus_write, ptr null, ptr null, ptr null, ptr null, ptr @ar9331_mdio_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 3, i32 4, i32 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ar9331_mdio_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 262144, ptr @ar9331_register_set, ptr @ar9331_register_set, ptr @ar9331_volatile_set, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @ar9331_regmap_range, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ar9331:1031:(&ar9331_mdio_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@ar9331_sw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1034, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regmap init failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ar9331_sw_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/dsa/qca/ar9331.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ar9331_sw_probe._entry_ptr = internal global ptr @ar9331_sw_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@ar9331_sw_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1040, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing switch reset\0A\00", [42 x i8] zeroinitializer }, align 32
@ar9331_sw_probe._entry_ptr.10 = internal global ptr @ar9331_sw_probe._entry.8, section ".printk_index", align 4
@ar9331_sw_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @ar9331_sw_get_tag_protocol, ptr null, ptr null, ptr @ar9331_sw_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar9331_sw_phylink_validate, ptr null, ptr @ar9331_sw_phylink_mac_config, ptr null, ptr @ar9331_sw_phylink_mac_link_down, ptr @ar9331_sw_phylink_mac_link_up, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar9331_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar9331_sw_port_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@ar9331_sw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port->stats_lock\00", [46 x i8] zeroinitializer }, align 32
@ar9331_sw_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&port->mib_read)->work)\00", [52 x i8] zeroinitializer }, align 32
@ar9331_sw_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&port->mib_read)->timer\00", [38 x i8] zeroinitializer }, align 32
@ar9331_mdio_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ar9331_mdio_write = private unnamed_addr constant [18 x i8] c"ar9331_mdio_write\00", align 1
@ar9331_mdio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.ar9331_mdio_write, ptr @.str.4, i32 928, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bus error. Failed to write register.\0A\00", [58 x i8] zeroinitializer }, align 32
@ar9331_mdio_write._entry_ptr = internal global ptr @ar9331_mdio_write._entry, section ".printk_index", align 4
@ar9331_mdio_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_mdio_read = private unnamed_addr constant [17 x i8] c"ar9331_mdio_read\00", align 1
@ar9331_mdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.ar9331_mdio_read, ptr @.str.4, i32 890, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bus error. Failed to read register.\0A\00", [59 x i8] zeroinitializer }, align 32
@ar9331_mdio_read._entry_ptr = internal global ptr @ar9331_mdio_read._entry, section ".printk_index", align 4
@ar9331_register_set = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @ar9331_valid_regs, i32 20, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ar9331_volatile_set = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @ar9331_nonvolatile_regs, i32 1 }, [16 x i8] zeroinitializer }, align 32
@ar9331_regmap_range = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 262140, i32 262144, i32 1023, i32 0, i32 0, i32 512 }], [32 x i8] zeroinitializer }, align 32
@ar9331_valid_regs = internal constant { [20 x %struct.regmap_range], [32 x i8] } { [20 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 16, i32 20 }, %struct.regmap_range { i32 32, i32 36 }, %struct.regmap_range { i32 44, i32 48 }, %struct.regmap_range { i32 64, i32 68 }, %struct.regmap_range { i32 80, i32 120 }, %struct.regmap_range { i32 128, i32 152 }, %struct.regmap_range { i32 256, i32 288 }, %struct.regmap_range { i32 512, i32 544 }, %struct.regmap_range { i32 768, i32 800 }, %struct.regmap_range { i32 1024, i32 1056 }, %struct.regmap_range { i32 1280, i32 1312 }, %struct.regmap_range { i32 1536, i32 1568 }, %struct.regmap_range { i32 131072, i32 131236 }, %struct.regmap_range { i32 131328, i32 131492 }, %struct.regmap_range { i32 131584, i32 131748 }, %struct.regmap_range { i32 131840, i32 132004 }, %struct.regmap_range { i32 132096, i32 132260 }, %struct.regmap_range { i32 132352, i32 132516 }, %struct.regmap_range { i32 262144, i32 262144 }], [32 x i8] zeroinitializer }, align 32
@ar9331_nonvolatile_regs = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 262144, i32 262144 }], [24 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 814, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get parent IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ar9331_sw_irq_init\00", [45 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_init._entry_ptr = internal global ptr @ar9331_sw_irq_init._entry, section ".printk_index", align 4
@ar9331_sw_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->lock_irq\00", [16 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.4, i32 822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_init._entry_ptr.24 = internal global ptr @ar9331_sw_irq_init._entry.22, section ".printk_index", align 4
@ar9331_sw_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @ar9331_sw_irq_map, ptr @ar9331_sw_irq_unmap, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_init._entry_ptr.27 = internal global ptr @ar9331_sw_irq_init._entry.25, section ".printk_index", align 4
@ar9331_sw_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 716, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't read interrupt status\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar9331_sw_irq\00", [18 x i8] zeroinitializer }, align 32
@ar9331_sw_irq._entry_ptr = internal global ptr @ar9331_sw_irq._entry, section ".printk_index", align 4
@ar9331_sw_irq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 732, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't write interrupt status\0A\00", [34 x i8] zeroinitializer }, align 32
@ar9331_sw_irq._entry_ptr.32 = internal global ptr @ar9331_sw_irq._entry.30, section ".printk_index", align 4
@ar9331_sw_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar9331_sw_mask_irq, ptr null, ptr @ar9331_sw_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ar9331_sw_irq_bus_lock, ptr @ar9331_sw_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_bus_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 769, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to change IRQ mask\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ar9331_sw_irq_bus_sync_unlock\00", [34 x i8] zeroinitializer }, align 32
@ar9331_sw_irq_bus_sync_unlock._entry_ptr = internal global ptr @ar9331_sw_irq_bus_sync_unlock._entry, section ".printk_index", align 4
@ar9331_sw_setup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_setup = private unnamed_addr constant [16 x i8] c"ar9331_sw_setup\00", align 1
@ar9331_sw_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ar9331_sw_setup, ptr @.str.4, i32 480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %i\0A\00", [24 x i8] zeroinitializer }, align 32
@ar9331_sw_setup._entry_ptr = internal global ptr @ar9331_sw_setup._entry, section ".printk_index", align 4
@ar9331_sw_reset._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_reset = private unnamed_addr constant [16 x i8] c"ar9331_sw_reset\00", align 1
@ar9331_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ar9331_sw_reset, ptr @.str.4, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ar9331_sw_reset._entry_ptr = internal global ptr @ar9331_sw_reset._entry, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pOF\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@ar9331_sw_mbus_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_mbus_read = private unnamed_addr constant [20 x i8] c"ar9331_sw_mbus_read\00", align 1
@ar9331_sw_mbus_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.ar9331_sw_mbus_read, ptr @.str.4, i32 352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PHY read error: %i\0A\00", [44 x i8] zeroinitializer }, align 32
@ar9331_sw_mbus_read._entry_ptr = internal global ptr @ar9331_sw_mbus_read._entry, section ".printk_index", align 4
@ar9331_sw_mbus_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_mbus_write = private unnamed_addr constant [21 x i8] c"ar9331_sw_mbus_write\00", align 1
@ar9331_sw_mbus_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.ar9331_sw_mbus_write, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY write error: %i\0A\00", [43 x i8] zeroinitializer }, align 32
@ar9331_sw_mbus_write._entry_ptr = internal global ptr @ar9331_sw_mbus_write._entry, section ".printk_index", align 4
@ar9331_sw_setup_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: error: %i\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ar9331_sw_setup_port\00", [43 x i8] zeroinitializer }, align 32
@ar9331_sw_setup_port._entry_ptr = internal global ptr @ar9331_sw_setup_port._entry, section ".printk_index", align 4
@ar9331_sw_phylink_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported port: %i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ar9331_sw_phylink_validate\00", [37 x i8] zeroinitializer }, align 32
@ar9331_sw_phylink_validate._entry_ptr = internal global ptr @ar9331_sw_phylink_validate._entry, section ".printk_index", align 4
@ar9331_sw_phylink_validate._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported interface: %d, port: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ar9331_sw_phylink_validate._entry_ptr.46 = internal global ptr @ar9331_sw_phylink_validate._entry.44, section ".printk_index", align 4
@ar9331_sw_phylink_mac_config._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_phylink_mac_config = private unnamed_addr constant [29 x i8] c"ar9331_sw_phylink_mac_config\00", align 1
@ar9331_sw_phylink_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ar9331_sw_phylink_mac_config, ptr @.str.4, i32 562, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ar9331_sw_phylink_mac_config._entry_ptr = internal global ptr @ar9331_sw_phylink_mac_config._entry, section ".printk_index", align 4
@ar9331_sw_phylink_mac_link_down._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_phylink_mac_link_down = private unnamed_addr constant [32 x i8] c"ar9331_sw_phylink_mac_link_down\00", align 1
@ar9331_sw_phylink_mac_link_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ar9331_sw_phylink_mac_link_down, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ar9331_sw_phylink_mac_link_down._entry_ptr = internal global ptr @ar9331_sw_phylink_mac_link_down._entry, section ".printk_index", align 4
@ar9331_sw_phylink_mac_link_up._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_phylink_mac_link_up = private unnamed_addr constant [30 x i8] c"ar9331_sw_phylink_mac_link_up\00", align 1
@ar9331_sw_phylink_mac_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ar9331_sw_phylink_mac_link_up, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ar9331_sw_phylink_mac_link_up._entry_ptr = internal global ptr @ar9331_sw_phylink_mac_link_up._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ar9331_sw_port_disable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_sw_port_disable = private unnamed_addr constant [23 x i8] c"ar9331_sw_port_disable\00", align 1
@ar9331_sw_port_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ar9331_sw_port_disable, ptr @.str.4, i32 492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ar9331_sw_port_disable._entry_ptr = internal global ptr @ar9331_sw_port_disable._entry, section ".printk_index", align 4
@ar9331_read_stats._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ar9331_read_stats = private unnamed_addr constant [18 x i8] c"ar9331_read_stats\00", align 1
@ar9331_read_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ar9331_read_stats, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ar9331_read_stats._entry_ptr = internal global ptr @ar9331_read_stats._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"ar9331_sw_mdio_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1118, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1123, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"ar9331_sw_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1113, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"ar9331_sw_bus\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1011, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"ar9331_mdio_regmap_config\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 995, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1030, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1034, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1038, i32 57 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1040, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"ar9331_sw_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 696, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1063, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1064, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 928, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 890, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"ar9331_register_set\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 985, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"ar9331_volatile_set\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 990, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"ar9331_regmap_range\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 971, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"ar9331_valid_regs\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 940, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"ar9331_nonvolatile_regs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 967, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 814, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 818, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 822, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [24 x i8] c"ar9331_sw_irqdomain_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 800, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 829, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 716, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 732, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"ar9331_sw_irq_chip\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 774, i32 24 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 769, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 480, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 288, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 370, i32 38 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 377, i32 33 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 352, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 318, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 434, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 526, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 546, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 562, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 577, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 626, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 492, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private constant [32 x i8] c"../drivers/net/dsa/qca/ar9331.c\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 640, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author571, ptr @__UNIQUE_ID_description572, ptr @__UNIQUE_ID_file573, ptr @__UNIQUE_ID_license574, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_ar9331__570_1128_mdio_module_init6, ptr @ar9331_mdio_read._entry, ptr @ar9331_mdio_read._entry_ptr, ptr @ar9331_mdio_write._entry, ptr @ar9331_mdio_write._entry_ptr, ptr @ar9331_read_stats._entry, ptr @ar9331_read_stats._entry_ptr, ptr @ar9331_sw_irq._entry, ptr @ar9331_sw_irq._entry.30, ptr @ar9331_sw_irq._entry_ptr, ptr @ar9331_sw_irq._entry_ptr.32, ptr @ar9331_sw_irq_bus_sync_unlock._entry, ptr @ar9331_sw_irq_bus_sync_unlock._entry_ptr, ptr @ar9331_sw_irq_init._entry, ptr @ar9331_sw_irq_init._entry.22, ptr @ar9331_sw_irq_init._entry.25, ptr @ar9331_sw_irq_init._entry_ptr, ptr @ar9331_sw_irq_init._entry_ptr.24, ptr @ar9331_sw_irq_init._entry_ptr.27, ptr @ar9331_sw_mbus_read._entry, ptr @ar9331_sw_mbus_read._entry_ptr, ptr @ar9331_sw_mbus_write._entry, ptr @ar9331_sw_mbus_write._entry_ptr, ptr @ar9331_sw_phylink_mac_config._entry, ptr @ar9331_sw_phylink_mac_config._entry_ptr, ptr @ar9331_sw_phylink_mac_link_down._entry, ptr @ar9331_sw_phylink_mac_link_down._entry_ptr, ptr @ar9331_sw_phylink_mac_link_up._entry, ptr @ar9331_sw_phylink_mac_link_up._entry_ptr, ptr @ar9331_sw_phylink_validate._entry, ptr @ar9331_sw_phylink_validate._entry.44, ptr @ar9331_sw_phylink_validate._entry_ptr, ptr @ar9331_sw_phylink_validate._entry_ptr.46, ptr @ar9331_sw_port_disable._entry, ptr @ar9331_sw_port_disable._entry_ptr, ptr @ar9331_sw_probe._entry, ptr @ar9331_sw_probe._entry.8, ptr @ar9331_sw_probe._entry_ptr, ptr @ar9331_sw_probe._entry_ptr.10, ptr @ar9331_sw_reset._entry, ptr @ar9331_sw_reset._entry_ptr, ptr @ar9331_sw_setup._entry, ptr @ar9331_sw_setup._entry_ptr, ptr @ar9331_sw_setup_port._entry, ptr @ar9331_sw_setup_port._entry_ptr, ptr @mdio_module_exit, ptr @ar9331_sw_mdio_driver, ptr @.str, ptr @ar9331_sw_of_match, ptr @ar9331_sw_probe._key, ptr @ar9331_sw_bus, ptr @ar9331_mdio_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @ar9331_sw_ops, ptr @ar9331_sw_probe.__key, ptr @.str.11, ptr @ar9331_sw_probe.__key.12, ptr @.str.13, ptr @ar9331_sw_probe.__key.14, ptr @.str.15, ptr @ar9331_mdio_write._rs, ptr @.str.16, ptr @.str.17, ptr @ar9331_mdio_read._rs, ptr @.str.18, ptr @ar9331_register_set, ptr @ar9331_volatile_set, ptr @ar9331_regmap_range, ptr @ar9331_valid_regs, ptr @ar9331_nonvolatile_regs, ptr @.str.19, ptr @.str.20, ptr @ar9331_sw_irq_init.__key, ptr @.str.21, ptr @.str.23, ptr @ar9331_sw_irqdomain_ops, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @ar9331_sw_irq_chip, ptr @.str.33, ptr @.str.34, ptr @ar9331_sw_setup._rs, ptr @.str.35, ptr @ar9331_sw_reset._rs, ptr @.str.36, ptr @.str.37, ptr @ar9331_sw_mbus_read._rs, ptr @.str.38, ptr @ar9331_sw_mbus_write._rs, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @ar9331_sw_phylink_mac_config._rs, ptr @ar9331_sw_phylink_mac_link_down._rs, ptr @ar9331_sw_phylink_mac_link_up._rs, ptr @ar9331_sw_port_disable._rs, ptr @ar9331_read_stats._rs], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_mdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_mdio_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_mdio_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_mdio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_mdio_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_mdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_register_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_volatile_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_regmap_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_valid_regs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_nonvolatile_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_irq_bus_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_setup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_reset._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_mbus_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_mbus_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_mbus_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_mbus_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_setup_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_validate._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_mac_config._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_mac_link_down._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_mac_link_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_mac_link_up._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_phylink_mac_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_port_disable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_sw_port_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_read_stats._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_read_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @ar9331_sw_mdio_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mdio_driver_unregister(ptr noundef nonnull @ar9331_sw_mdio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_sw_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 2688, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init(ptr noundef %mdiodev, ptr noundef nonnull @ar9331_sw_bus, ptr noundef nonnull %call.i, ptr noundef nonnull @ar9331_mdio_regmap_config, ptr noundef nonnull @ar9331_sw_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.2, i32 noundef %1) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %mdiodev, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %sw_reset = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %sw_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %sw_reset, align 8
  %cmp.i110 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.9) #11
  %3 = ptrtoint ptr %sw_reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw_reset, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdiodev, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %sbus = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %sbus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %sbus, align 8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mdiodev, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call.i111 = tail call i32 @of_irq_get(ptr noundef %11, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 1
  br i1 %cmp.i112, label %do.end.i, label %do.body3.i

do.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i = icmp eq i32 %call.i111, 0
  %spec.select = select i1 %tobool.not.i, i32 -22, i32 %call.i111
  br label %cleanup

do.body3.i:                                       ; preds = %if.end21
  %lock_irq.i = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock_irq.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @ar9331_sw_irq_init.__key) #8
  %call6.i = tail call i32 @devm_request_threaded_irq(ptr noundef %mdiodev, i32 noundef %call.i111, ptr noundef null, ptr noundef nonnull @ar9331_sw_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end12.i, label %do.end11.i

do.end11.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.23, i32 noundef %call6.i) #11
  br label %cleanup

if.end12.i:                                       ; preds = %do.body3.i
  %tobool.not.i.i.i = icmp eq ptr %11, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @ar9331_sw_irqdomain_ops, ptr noundef nonnull %call.i) #8
  %irqdomain.i = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i.i, ptr %irqdomain.i, align 8
  %tobool15.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end27

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end12.i
  %call.i.i113 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %call1.i.i, i32 noundef 0, ptr noundef null) #8
  %call23.i = tail call i32 @irq_set_parent(i32 noundef %call.i.i113, i32 noundef %call.i111) #8
  %ds28 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %ds28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mdiodev, ptr %ds28, align 4
  %num_ports = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 1, i32 18
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %num_ports, align 4
  %priv31 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %priv31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %priv31, align 4
  %ops = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %ops, ptr @ar9331_sw_ops, i32 416)
  %ops33 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %ops33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ops, ptr %ops33, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end27
  %i.0116 = phi i32 [ 0, %if.end27 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 10, i32 %i.0116
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0116, ptr %arrayidx, align 8
  %stats_lock = getelementptr %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 10, i32 %i.0116, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ar9331_sw_probe.__key, i16 noundef signext 3) #8
  %mib_read = getelementptr %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 10, i32 %i.0116, i32 1
  tail call void @__init_work(ptr noundef %mib_read, i32 noundef 0) #8
  %20 = ptrtoint ptr %mib_read to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %mib_read, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %mib_read, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @ar9331_sw_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry48 = getelementptr inbounds %struct.work_struct, ptr %mib_read, i32 0, i32 1
  %21 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry48, ptr %entry48, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %mib_read, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry48, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %mib_read, i32 0, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ar9331_do_stats_poll, ptr %func, align 4
  %timer = getelementptr %struct.ar9331_sw_priv, ptr %call.i, i32 0, i32 10, i32 %i.0116, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @ar9331_sw_probe.__key.14) #8
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %call59 = tail call i32 @dsa_register_switch(ptr noundef %ds28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %for.end.cleanup_crit_edge, label %err_remove_irq

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_remove_irq:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %irqdomain.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irqdomain.i, align 8
  tail call void @irq_domain_remove(ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %err_remove_irq, %for.end.cleanup_crit_edge, %do.end19.i, %do.end11.i, %do.end.i, %do.end17, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %5, %do.end17 ], [ %call59, %err_remove_irq ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %do.end19.i ], [ %call6.i, %do.end11.i ], [ %spec.select, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_remove(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mib_read = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 0, i32 1
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_read) #8
  %mib_read.1 = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 1, i32 1
  %call2.1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_read.1) #8
  %mib_read.2 = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 2, i32 1
  %call2.2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_read.2) #8
  %mib_read.3 = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 3, i32 1
  %call2.3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_read.3) #8
  %mib_read.4 = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 4, i32 1
  %call2.4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_read.4) #8
  %mib_read.5 = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 5, i32 1
  %call2.5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_read.5) #8
  %irqdomain = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irqdomain, align 8
  tail call void @irq_domain_remove(ptr noundef %3) #8
  %ds = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 1
  tail call void @dsa_unregister_switch(ptr noundef %ds) #8
  %sw_reset = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %sw_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw_reset, align 8
  %call3 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_shutdown(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ds = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 1
  tail call void @dsa_switch_shutdown(ptr noundef %ds) #8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_do_stats_poll(ptr noundef %work) #2 align 64 {
entry:
  %raw.i = alloca %struct.ar9331_sw_stats_raw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %idx.neg.i.i = sub i32 0, %1
  %add.ptr.i.i = getelementptr %struct.ar9331_sw_port, ptr %add.ptr, i32 %idx.neg.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -624
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %raw.i) #8
  %2 = call ptr @memset(ptr %raw.i, i32 255, i32 168)
  %regmap.i = getelementptr inbounds %struct.ar9331_sw_priv, ptr %add.ptr1.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl i32 %1, 8
  %add.i = add i32 %mul.i, 131072
  %call2.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %raw.i, i32 noundef 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @ar9331_read_stats._rs, ptr noundef nonnull @__func__.ar9331_read_stats) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.ar9331_read_stats.exit_crit_edge, label %do.end.i

do.body.i.ar9331_read_stats.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9331_read_stats.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr1.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ar9331_read_stats, i32 noundef %call2.i) #11
  br label %ar9331_read_stats.exit

if.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stats1.i = getelementptr i8, ptr %work, i32 100
  %stats_lock.i = getelementptr i8, ptr %work, i32 292
  call void @_raw_spin_lock(ptr noundef %stats_lock.i) #8
  %rxgoodbyte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 15
  %7 = ptrtoint ptr %rxgoodbyte.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxgoodbyte.i, align 4
  %conv.i = zext i32 %8 to i64
  %rx_bytes.i = getelementptr i8, ptr %work, i32 116
  %9 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_bytes.i, align 8
  %add10.i = add i64 %10, %conv.i
  store i64 %add10.i, ptr %rx_bytes.i, align 8
  %txbyte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 33
  %11 = ptrtoint ptr %txbyte.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txbyte.i, align 4
  %conv11.i = zext i32 %12 to i64
  %tx_bytes.i = getelementptr i8, ptr %work, i32 124
  %13 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tx_bytes.i, align 8
  %add12.i = add i64 %14, %conv11.i
  store i64 %add12.i, ptr %tx_bytes.i, align 8
  %rx64byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 7
  %15 = ptrtoint ptr %rx64byte.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx64byte.i, align 4
  %rx128byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 8
  %17 = ptrtoint ptr %rx128byte.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx128byte.i, align 4
  %add13.i = add i32 %18, %16
  %rx256byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 9
  %19 = ptrtoint ptr %rx256byte.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx256byte.i, align 4
  %add14.i = add i32 %add13.i, %20
  %rx512byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 10
  %21 = ptrtoint ptr %rx512byte.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx512byte.i, align 4
  %add15.i = add i32 %add14.i, %22
  %rx1024byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 11
  %23 = ptrtoint ptr %rx1024byte.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx1024byte.i, align 4
  %add16.i = add i32 %add15.i, %24
  %rx1518byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 12
  %25 = ptrtoint ptr %rx1518byte.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx1518byte.i, align 4
  %add17.i = add i32 %add16.i, %26
  %rxmaxbyte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 13
  %27 = ptrtoint ptr %rxmaxbyte.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxmaxbyte.i, align 4
  %add18.i = add i32 %add17.i, %28
  %conv19.i = zext i32 %add18.i to i64
  %29 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stats1.i, align 8
  %add20.i = add i64 %30, %conv19.i
  store i64 %add20.i, ptr %stats1.i, align 8
  %tx64byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 25
  %31 = ptrtoint ptr %tx64byte.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx64byte.i, align 4
  %tx128byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 26
  %33 = ptrtoint ptr %tx128byte.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx128byte.i, align 4
  %add21.i = add i32 %34, %32
  %tx256byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 27
  %35 = ptrtoint ptr %tx256byte.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx256byte.i, align 4
  %add22.i = add i32 %add21.i, %36
  %tx512byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 28
  %37 = ptrtoint ptr %tx512byte.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx512byte.i, align 4
  %add23.i = add i32 %add22.i, %38
  %tx1024byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 29
  %39 = ptrtoint ptr %tx1024byte.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx1024byte.i, align 4
  %add24.i = add i32 %add23.i, %40
  %tx1518byte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 30
  %41 = ptrtoint ptr %tx1518byte.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx1518byte.i, align 4
  %add25.i = add i32 %add24.i, %42
  %txmaxbyte.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 31
  %43 = ptrtoint ptr %txmaxbyte.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %txmaxbyte.i, align 4
  %add26.i = add i32 %add25.i, %44
  %conv27.i = zext i32 %add26.i to i64
  %tx_packets.i = getelementptr i8, ptr %work, i32 108
  %45 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_packets.i, align 8
  %add28.i = add i64 %46, %conv27.i
  store i64 %add28.i, ptr %tx_packets.i, align 8
  %rxrunt.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 5
  %47 = ptrtoint ptr %rxrunt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxrunt.i, align 4
  %rxfragment.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 6
  %49 = ptrtoint ptr %rxfragment.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rxfragment.i, align 4
  %add29.i = add i32 %50, %48
  %rxtoolong.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 14
  %51 = ptrtoint ptr %rxtoolong.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rxtoolong.i, align 4
  %add30.i = add i32 %add29.i, %52
  %conv31.i = zext i32 %add30.i to i64
  %rx_length_errors.i = getelementptr i8, ptr %work, i32 180
  %53 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_length_errors.i, align 8
  %add32.i = add i64 %54, %conv31.i
  store i64 %add32.i, ptr %rx_length_errors.i, align 8
  %rxfcserr.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 3
  %55 = ptrtoint ptr %rxfcserr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rxfcserr.i, align 4
  %conv33.i = zext i32 %56 to i64
  %rx_crc_errors.i = getelementptr i8, ptr %work, i32 196
  %57 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rx_crc_errors.i, align 8
  %add34.i = add i64 %58, %conv33.i
  store i64 %add34.i, ptr %rx_crc_errors.i, align 8
  %rxalignerr.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 4
  %59 = ptrtoint ptr %rxalignerr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxalignerr.i, align 4
  %conv35.i = zext i32 %60 to i64
  %rx_frame_errors.i = getelementptr i8, ptr %work, i32 204
  %61 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rx_frame_errors.i, align 8
  %add36.i = add i64 %62, %conv35.i
  store i64 %add36.i, ptr %rx_frame_errors.i, align 8
  %rxoverflow.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 19
  %63 = ptrtoint ptr %rxoverflow.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rxoverflow.i, align 4
  %conv37.i = zext i32 %64 to i64
  %rx_missed_errors.i = getelementptr i8, ptr %work, i32 220
  %65 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rx_missed_errors.i, align 8
  %add38.i = add i64 %66, %conv37.i
  store i64 %add38.i, ptr %rx_missed_errors.i, align 8
  %filtered.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 20
  %67 = ptrtoint ptr %filtered.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %filtered.i, align 4
  %conv39.i = zext i32 %68 to i64
  %rx_dropped.i = getelementptr i8, ptr %work, i32 148
  %69 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %rx_dropped.i, align 8
  %add40.i = add i64 %70, %conv39.i
  store i64 %add40.i, ptr %rx_dropped.i, align 8
  %add47.i = add i32 %56, %add30.i
  %add49.i = add i32 %add47.i, %60
  %add51.i = add i32 %add49.i, %64
  %conv52.i = zext i32 %add51.i to i64
  %rx_errors.i = getelementptr i8, ptr %work, i32 132
  %71 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %rx_errors.i, align 8
  %add53.i = add i64 %72, %conv52.i
  store i64 %add53.i, ptr %rx_errors.i, align 8
  %txlatecol.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 41
  %73 = ptrtoint ptr %txlatecol.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %txlatecol.i, align 4
  %conv54.i = zext i32 %74 to i64
  %tx_window_errors.i = getelementptr i8, ptr %work, i32 260
  %75 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %tx_window_errors.i, align 8
  %add55.i = add i64 %76, %conv54.i
  store i64 %add55.i, ptr %tx_window_errors.i, align 8
  %txunderrun.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 24
  %77 = ptrtoint ptr %txunderrun.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %txunderrun.i, align 4
  %conv56.i = zext i32 %78 to i64
  %tx_fifo_errors.i = getelementptr i8, ptr %work, i32 244
  %79 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %tx_fifo_errors.i, align 8
  %add57.i = add i64 %80, %conv56.i
  store i64 %add57.i, ptr %tx_fifo_errors.i, align 8
  %txabortcol.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 36
  %81 = ptrtoint ptr %txabortcol.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %txabortcol.i, align 4
  %conv58.i = zext i32 %82 to i64
  %tx_aborted_errors.i = getelementptr i8, ptr %work, i32 228
  %83 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %tx_aborted_errors.i, align 8
  %add59.i = add i64 %84, %conv58.i
  store i64 %add59.i, ptr %tx_aborted_errors.i, align 8
  %txoversize.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 32
  %85 = ptrtoint ptr %txoversize.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %txoversize.i, align 4
  %add61.i = add i32 %78, %74
  %add63.i = add i32 %add61.i, %82
  %add65.i = add i32 %add63.i, %86
  %conv66.i = zext i32 %add65.i to i64
  %tx_errors.i = getelementptr i8, ptr %work, i32 140
  %87 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %tx_errors.i, align 8
  %add67.i = add i64 %88, %conv66.i
  store i64 %add67.i, ptr %tx_errors.i, align 8
  %rxmulti.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 2
  %89 = ptrtoint ptr %rxmulti.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rxmulti.i, align 4
  %conv68.i = zext i32 %90 to i64
  %multicast.i = getelementptr i8, ptr %work, i32 164
  %91 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %multicast.i, align 8
  %add69.i = add i64 %92, %conv68.i
  store i64 %add69.i, ptr %multicast.i, align 8
  %txcollision.i = getelementptr inbounds %struct.ar9331_sw_stats_raw, ptr %raw.i, i32 0, i32 35
  %93 = ptrtoint ptr %txcollision.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %txcollision.i, align 4
  %conv70.i = zext i32 %94 to i64
  %collisions.i = getelementptr i8, ptr %work, i32 172
  %95 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %collisions.i, align 8
  %add71.i = add i64 %96, %conv70.i
  store i64 %add71.i, ptr %collisions.i, align 8
  call void @_raw_spin_unlock(ptr noundef %stats_lock.i) #8
  br label %ar9331_read_stats.exit

ar9331_read_stats.exit:                           ; preds = %if.end9.i, %do.end.i, %do.body.i.ar9331_read_stats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %raw.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %97 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %97, ptr noundef %work, i32 noundef 300) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_sw_bus_write(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %sbus1.i = getelementptr inbounds %struct.ar9331_sw_priv, ptr %context, i32 0, i32 7
  %4 = ptrtoint ptr %sbus1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sbus1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %1)
  %cmp.i = icmp eq i32 %1, 262144
  br i1 %cmp.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %entry
  %conv.i = trunc i32 %3 to i16
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef 24, i32 noundef 0, i16 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then.i.do.body.i_crit_edge, label %if.then.i.ar9331_mdio_write.exit_crit_edge

if.then.i.ar9331_mdio_write.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9331_mdio_write.exit

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end5.i:                                        ; preds = %entry
  %6 = trunc i32 %1 to i16
  %conv6.i = add i16 %6, 2
  %shr.i = lshr i32 %3, 16
  %conv7.i = trunc i32 %shr.i to i16
  %and32.i.i = lshr i16 %conv6.i, 6
  %shr.i.i = and i16 %and32.i.i, 7
  %or.i.i = or i16 %shr.i.i, 16
  %conv33.i.i = zext i16 %or.i.i to i32
  %7 = lshr i16 %conv6.i, 1
  %8 = and i16 %7, 31
  %conv53.i.i = zext i16 %8 to i32
  %call.i38.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %conv33.i.i, i32 noundef %conv53.i.i, i16 noundef zeroext %conv7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %cmp9.i = icmp slt i32 %call.i38.i, 0
  br i1 %cmp9.i, label %if.end5.i.do.body.i_crit_edge, label %if.end12.i

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end12.i:                                       ; preds = %if.end5.i
  %conv14.i = trunc i32 %3 to i16
  %and32.i39.i = lshr i32 %1, 6
  %shr.i40.i = and i32 %and32.i39.i, 7
  %or.i41.i = or i32 %shr.i40.i, 16
  %9 = lshr i32 %1, 1
  %10 = and i32 %9, 31
  %call.i44.i = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %or.i41.i, i32 noundef %10, i16 noundef zeroext %conv14.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp16.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp16.i, label %if.end12.i.do.body.i_crit_edge, label %if.end12.i.ar9331_mdio_write.exit_crit_edge

if.end12.i.ar9331_mdio_write.exit_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9331_mdio_write.exit

if.end12.i.do.body.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end12.i.do.body.i_crit_edge, %if.end5.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i.do.body.i_crit_edge ], [ %call.i38.i, %if.end5.i.do.body.i_crit_edge ], [ %call.i44.i, %if.end12.i.do.body.i_crit_edge ]
  %call20.i = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_mdio_write._rs, ptr noundef nonnull @__func__.ar9331_mdio_write) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool.not.i, label %do.body.i.ar9331_mdio_write.exit_crit_edge, label %do.end.i

do.body.i.ar9331_mdio_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9331_mdio_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #11
  br label %ar9331_mdio_write.exit

ar9331_mdio_write.exit:                           ; preds = %do.end.i, %do.body.i.ar9331_mdio_write.exit_crit_edge, %if.end12.i.ar9331_mdio_write.exit_crit_edge, %if.then.i.ar9331_mdio_write.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i.ar9331_mdio_write.exit_crit_edge ], [ 0, %if.end12.i.ar9331_mdio_write.exit_crit_edge ], [ %ret.0.i, %do.end.i ], [ %ret.0.i, %do.body.i.ar9331_mdio_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_mdio_read(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_len, ptr nocapture noundef %val_buf, i32 noundef %val_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sbus1 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %sbus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbus1, align 8
  %2 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %3)
  %cmp = icmp eq i32 %3, 262144
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %val_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1023, ptr %val_buf, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = lshr i32 %3, 6
  %5 = and i32 %and.i, 7
  %6 = or i32 %5, 16
  %7 = lshr i32 %3, 1
  %8 = and i32 %7, 31
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %6, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.do.body_crit_edge, label %if.end5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end5:                                          ; preds = %if.end
  %conv = trunc i32 %3 to i16
  %9 = ptrtoint ptr %val_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i, ptr %val_buf, align 4
  %conv6 = add i16 %conv, 2
  %and.i31 = lshr i16 %conv6, 6
  %10 = and i16 %and.i31, 7
  %11 = or i16 %10, 16
  %conv29.i32 = zext i16 %11 to i32
  %12 = lshr i16 %conv6, 1
  %13 = and i16 %12, 31
  %conv49.i33 = zext i16 %13 to i32
  %call.i34 = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %conv29.i32, i32 noundef %conv49.i33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp8 = icmp slt i32 %call.i34, 0
  br i1 %cmp8, label %if.end5.do.body_crit_edge, label %if.end11

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %call.i34, 16
  %14 = ptrtoint ptr %val_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val_buf, align 4
  %or = or i32 %15, %shl
  store i32 %or, ptr %val_buf, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %if.end.do.body_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.do.body_crit_edge ], [ %call.i34, %if.end5.do.body_crit_edge ]
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_mdio_read._rs, ptr noundef nonnull @__func__.ar9331_mdio_read) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end11 ], [ %ret.0, %do.end ], [ %ret.0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_sw_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #8
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %stat, align 4, !annotation !179
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %stat) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  %irqdomain = getelementptr inbounds %struct.ar9331_sw_priv, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %irqdomain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irqdomain, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq.i, align 4, !annotation !179
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then6.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then6.irq_find_mapping.exit_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then6.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ 0, %if.then6.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  call void @handle_nested_irq(i32 noundef %retval.0.i) #8
  br label %if.end8

if.end8:                                          ; preds = %irq_find_mapping.exit, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat, align 4
  %call9 = call i32 @regmap_write(ptr noundef %1, i32 noundef 16, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.28, %entry.cleanup.sink.split_crit_edge ], [ @.str.31, %if.end8.cleanup.sink.split_crit_edge ]
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.31.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_sw_irq_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @ar9331_sw_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_irq_unmap(ptr nocapture noundef readnone %d, i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 32768, i32 noundef 0) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ar9331_sw_mask_irq(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_mask = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %irq_mask, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ar9331_sw_unmask_irq(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_mask = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %irq_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock_irq = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock_irq, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %regmap1 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %irq_mask = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 20, i32 noundef 4, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock_irq = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %lock_irq) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ar9331_sw_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %m) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_sw_setup(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %regmap2 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %sw_reset.i = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %sw_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw_reset.i, align 8
  %call.i = tail call i32 @reset_control_assert(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #8
  %6 = ptrtoint ptr %sw_reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw_reset.i, align 8
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.body.i_crit_edge ], [ %call2.i, %if.end.i.do.body.i_crit_edge ]
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_reset._rs, ptr noundef nonnull @__func__.ar9331_sw_reset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ar9331_sw_reset, i32 noundef %ret.0.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %11, i32 noundef 0) #8
  %tobool.not.i46 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i46, label %if.end.cleanup_crit_edge, label %if.end.i48

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i48:                                       ; preds = %if.end
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %full_name.i, align 4
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %name.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 2
  %call2.i47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.36, ptr noundef %13) #8
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ar9331_sw_mbus_read, ptr %read.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ar9331_sw_mbus_write, ptr %write.i, align 8
  %priv3.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %priv3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %priv3.i, align 8
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %parent.i, align 4
  %call4.i = tail call ptr @of_get_child_by_name(ptr noundef %13, ptr noundef nonnull @.str.37) #8
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i48.cleanup_crit_edge, label %if.end7.i

if.end.i48.cleanup_crit_edge:                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i48
  %call8.i = tail call i32 @devm_of_mdiobus_register(ptr noundef %11, ptr noundef nonnull %call.i.i, ptr noundef nonnull %call4.i) #8
  tail call void @of_node_put(ptr noundef nonnull %call4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end6, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i
  %mbus12.i = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %mbus12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %mbus12.i, align 4
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 44, i32 noundef 67108864, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool8.not = icmp eq i32 %call.i50, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.body_crit_edge

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end10:                                         ; preds = %if.end6
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 48, i32 noundef 16383, i32 noundef 16383, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool12.not = icmp eq i32 %call.i51, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond.preheader:                               ; preds = %if.end10
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %22 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp67.not = icmp eq i32 %23, 0
  br i1 %cmp67.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %index.i10.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end61.i
  %inc = add nuw i32 %i.068, 1
  %24 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %26 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv1, align 4
  %regmap2.i = getelementptr inbounds %struct.ar9331_sw_priv, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap2.i, align 4
  %30 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %dsa_is_cpu_port.exit.thread.i, label %for.body.for.body.i.i.i_crit_edge

for.body.for.body.i.i.i_crit_edge:                ; preds = %for.body
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %33 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %34, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %35 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %i.068)
  %cmp5.i.i.i = icmp eq i32 %36, %i.068
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %37 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_is_cpu_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i

dsa_is_cpu_port.exit.i:                           ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.inc.i.i.i.dsa_is_cpu_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 1
  br i1 %cmp.i.i, label %dsa_is_cpu_port.exit.i.for.body.i.i_crit_edge, label %dsa_is_cpu_port.exit.i.for.body.i.i99.i_crit_edge

dsa_is_cpu_port.exit.i.for.body.i.i99.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.i
  br label %for.body.i.i99.i

dsa_is_cpu_port.exit.i.for.body.i.i_crit_edge:    ; preds = %dsa_is_cpu_port.exit.i
  br label %for.body.i.i

dsa_is_cpu_port.exit.thread.i:                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 24)
  %40 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %do.end35.i.fold.split [
    i32 1, label %dsa_is_cpu_port.exit.thread.i.do.end53.i_crit_edge
    i32 3, label %dsa_is_cpu_port.exit.thread.i.dsa_to_port.exit.i.i_crit_edge
  ]

dsa_is_cpu_port.exit.thread.i.dsa_to_port.exit.i.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_to_port.exit.i.i

dsa_is_cpu_port.exit.thread.i.do.end53.i_crit_edge: ; preds = %dsa_is_cpu_port.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %dsa_is_cpu_port.exit.i.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i.i, %dsa_is_cpu_port.exit.i.for.body.i.i_crit_edge ]
  %mask.021.i.i = phi i32 [ %mask.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %dsa_is_cpu_port.exit.i.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %42 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %43, %ds
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %type.i.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -424
  %44 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i.i.i = icmp eq i32 %45, 3
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %46 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl nuw i32 1, %47
  %or.i.i = or i32 %shl.i.i, %mask.021.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %mask.1.i.i = phi i32 [ %or.i.i, %if.then5.i.i ], [ %mask.021.i.i, %if.then.i.i.for.inc.i.i_crit_edge ], [ %mask.021.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %48 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end53.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end53.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53.i

for.body.i.i99.i:                                 ; preds = %for.inc.i.i105.i.for.body.i.i99.i_crit_edge, %dsa_is_cpu_port.exit.i.for.body.i.i99.i_crit_edge
  %.pn22.i.i96.i = phi ptr [ %.pn.i.i103.i, %for.inc.i.i105.i.for.body.i.i99.i_crit_edge ], [ %.pn20.i.i.i, %dsa_is_cpu_port.exit.i.for.body.i.i99.i_crit_edge ]
  %ds3.i.i97.i = getelementptr i8, ptr %.pn22.i.i96.i, i32 -432
  %49 = ptrtoint ptr %ds3.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ds3.i.i97.i, align 4
  %cmp4.i.i98.i = icmp eq ptr %50, %ds
  br i1 %cmp4.i.i98.i, label %land.lhs.true.i.i102.i, label %for.body.i.i99.i.for.inc.i.i105.i_crit_edge

for.body.i.i99.i.for.inc.i.i105.i_crit_edge:      ; preds = %for.body.i.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i105.i

land.lhs.true.i.i102.i:                           ; preds = %for.body.i.i99.i
  %index.i.i100.i = getelementptr i8, ptr %.pn22.i.i96.i, i32 -428
  %51 = ptrtoint ptr %index.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i.i100.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %i.068)
  %cmp5.i.i101.i = icmp eq i32 %52, %i.068
  br i1 %cmp5.i.i101.i, label %cleanup.split.loop.exit18.i.i107.i, label %land.lhs.true.i.i102.i.for.inc.i.i105.i_crit_edge

land.lhs.true.i.i102.i.for.inc.i.i105.i_crit_edge: ; preds = %land.lhs.true.i.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i105.i

for.inc.i.i105.i:                                 ; preds = %land.lhs.true.i.i102.i.for.inc.i.i105.i_crit_edge, %for.body.i.i99.i.for.inc.i.i105.i_crit_edge
  %53 = ptrtoint ptr %.pn22.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i.i103.i = load ptr, ptr %.pn22.i.i96.i, align 4
  %cmp.not.i.i104.i = icmp eq ptr %.pn.i.i103.i, %ports.i.i.i
  br i1 %cmp.not.i.i104.i, label %for.inc.i.i105.i.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i105.i.for.body.i.i99.i_crit_edge

for.inc.i.i105.i.for.body.i.i99.i_crit_edge:      ; preds = %for.inc.i.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i99.i

for.inc.i.i105.i.dsa_is_user_port.exit.i_crit_edge: ; preds = %for.inc.i.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i107.i:               ; preds = %land.lhs.true.i.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp.0.le.i.i106.i = getelementptr i8, ptr %.pn22.i.i96.i, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i107.i, %for.inc.i.i105.i.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i108.i = phi ptr [ %dp.0.le.i.i106.i, %cleanup.split.loop.exit18.i.i107.i ], [ null, %for.inc.i.i105.i.dsa_is_user_port.exit.i_crit_edge ]
  %type.i109.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i108.i, i32 0, i32 6
  %54 = ptrtoint ptr %type.i109.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type.i109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp.i110.i = icmp eq i32 %55, 3
  br i1 %cmp.i110.i, label %dsa_is_user_port.exit.i.for.body.i.i118.i_crit_edge, label %dsa_is_user_port.exit.i.do.end53.i_crit_edge

dsa_is_user_port.exit.i.do.end53.i_crit_edge:     ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53.i

dsa_is_user_port.exit.i.for.body.i.i118.i_crit_edge: ; preds = %dsa_is_user_port.exit.i
  br label %for.body.i.i118.i

for.body.i.i118.i:                                ; preds = %for.inc.i.i124.i.for.body.i.i118.i_crit_edge, %dsa_is_user_port.exit.i.for.body.i.i118.i_crit_edge
  %.pn22.i.i115.i = phi ptr [ %.pn.i.i122.i, %for.inc.i.i124.i.for.body.i.i118.i_crit_edge ], [ %.pn20.i.i.i, %dsa_is_user_port.exit.i.for.body.i.i118.i_crit_edge ]
  %ds3.i.i116.i = getelementptr i8, ptr %.pn22.i.i115.i, i32 -432
  %56 = ptrtoint ptr %ds3.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ds3.i.i116.i, align 4
  %cmp4.i.i117.i = icmp eq ptr %57, %ds
  br i1 %cmp4.i.i117.i, label %land.lhs.true.i.i121.i, label %for.body.i.i118.i.for.inc.i.i124.i_crit_edge

for.body.i.i118.i.for.inc.i.i124.i_crit_edge:     ; preds = %for.body.i.i118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i124.i

land.lhs.true.i.i121.i:                           ; preds = %for.body.i.i118.i
  %index.i.i119.i = getelementptr i8, ptr %.pn22.i.i115.i, i32 -428
  %58 = ptrtoint ptr %index.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index.i.i119.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %i.068)
  %cmp5.i.i120.i = icmp eq i32 %59, %i.068
  br i1 %cmp5.i.i120.i, label %cleanup.split.loop.exit18.i.i126.i, label %land.lhs.true.i.i121.i.for.inc.i.i124.i_crit_edge

land.lhs.true.i.i121.i.for.inc.i.i124.i_crit_edge: ; preds = %land.lhs.true.i.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i124.i

for.inc.i.i124.i:                                 ; preds = %land.lhs.true.i.i121.i.for.inc.i.i124.i_crit_edge, %for.body.i.i118.i.for.inc.i.i124.i_crit_edge
  %60 = ptrtoint ptr %.pn22.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i.i122.i = load ptr, ptr %.pn22.i.i115.i, align 4
  %cmp.not.i.i123.i = icmp eq ptr %.pn.i.i122.i, %ports.i.i.i
  br i1 %cmp.not.i.i123.i, label %for.inc.i.i124.i.dsa_to_port.exit.i.i_crit_edge, label %for.inc.i.i124.i.for.body.i.i118.i_crit_edge

for.inc.i.i124.i.for.body.i.i118.i_crit_edge:     ; preds = %for.inc.i.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i118.i

for.inc.i.i124.i.dsa_to_port.exit.i.i_crit_edge:  ; preds = %for.inc.i.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_to_port.exit.i.i

cleanup.split.loop.exit18.i.i126.i:               ; preds = %land.lhs.true.i.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp.0.le.i.i125.i = getelementptr i8, ptr %.pn22.i.i115.i, i32 -448
  br label %dsa_to_port.exit.i.i

dsa_to_port.exit.i.i:                             ; preds = %cleanup.split.loop.exit18.i.i126.i, %for.inc.i.i124.i.dsa_to_port.exit.i.i_crit_edge, %dsa_is_cpu_port.exit.thread.i.dsa_to_port.exit.i.i_crit_edge
  %retval.0.i.i127.i = phi ptr [ %dp.0.le.i.i125.i, %cleanup.split.loop.exit18.i.i126.i ], [ null, %dsa_is_cpu_port.exit.thread.i.dsa_to_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i124.i.dsa_to_port.exit.i.i_crit_edge ]
  %cpu_dp1.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i127.i, i32 0, i32 8
  %61 = ptrtoint ptr %cpu_dp1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cpu_dp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge, label %if.end.i.i

dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge: ; preds = %dsa_to_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_upstream_port.exit.i

if.end.i.i:                                       ; preds = %dsa_to_port.exit.i.i
  %ds2.i.i = getelementptr inbounds %struct.dsa_port, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %ds2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ds2.i.i, align 4
  %index.i128.i = getelementptr inbounds %struct.dsa_switch, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %index.i128.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index.i128.i, align 4
  %index3.i.i = getelementptr inbounds %struct.dsa_port, ptr %62, i32 0, i32 5
  %67 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index3.i.i, align 4
  %69 = ptrtoint ptr %index.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index.i10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %66)
  %cmp.i.i129.i = icmp eq i32 %70, %66
  br i1 %cmp.i.i129.i, label %if.end.i.i.dsa_upstream_port.exit.i_crit_edge, label %if.else.i.i.i

if.end.i.i.dsa_upstream_port.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_upstream_port.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  %rtable.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %31, i32 0, i32 10
  %71 = ptrtoint ptr %rtable.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn22.i.i.i.i = load ptr, ptr %rtable.i.i.i.i, align 4
  %cmp.not23.i.i.i.i = icmp eq ptr %.pn22.i.i.i.i, %rtable.i.i.i.i
  br i1 %cmp.not23.i.i.i.i, label %if.else.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge, label %if.else.i.i.i.for.body.i.i.i.i_crit_edge

if.else.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  br label %for.body.i.i.i.i

if.else.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_routing_port.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn24.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn22.i.i.i.i, %if.else.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dl.0.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i, i32 -8
  %72 = ptrtoint ptr %dl.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dl.0.i.i.i.i, align 4
  %ds3.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %75, %ds
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %link_dp.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i, i32 -4
  %76 = ptrtoint ptr %link_dp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %link_dp.i.i.i.i, align 4
  %ds5.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %ds5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ds5.i.i.i.i, align 4
  %index.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %66)
  %cmp6.i.i.i.i = icmp eq i32 %81, %66
  br i1 %cmp6.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index8.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %73, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %82 = ptrtoint ptr %.pn24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i.i.i.i = load ptr, ptr %.pn24.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %rtable.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dsa_routing_port.exit.i.i.i

dsa_routing_port.exit.i.i.i:                      ; preds = %for.inc.i.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge, %if.then.i.i.i.i, %if.else.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge
  %retval.0.in.i.i.i.i = phi ptr [ %index8.i.i.i.i, %if.then.i.i.i.i ], [ %num_ports, %if.else.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge ], [ %num_ports, %for.inc.i.i.i.i.dsa_routing_port.exit.i.i.i_crit_edge ]
  %83 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %retval.0.i.i.i.i = load i32, ptr %retval.0.in.i.i.i.i, align 4
  br label %dsa_upstream_port.exit.i

dsa_upstream_port.exit.i:                         ; preds = %dsa_routing_port.exit.i.i.i, %if.end.i.i.dsa_upstream_port.exit.i_crit_edge, %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %i.068, %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %dsa_routing_port.exit.i.i.i ], [ %68, %if.end.i.i.dsa_upstream_port.exit.i_crit_edge ]
  %shl.i = shl nuw i32 1, %retval.0.i.i
  br label %do.end53.i

do.end35.i.fold.split:                            ; preds = %dsa_is_cpu_port.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53.i

do.end53.i:                                       ; preds = %do.end35.i.fold.split, %dsa_upstream_port.exit.i, %dsa_is_user_port.exit.i.do.end53.i_crit_edge, %for.inc.i.i.do.end53.i_crit_edge, %dsa_is_cpu_port.exit.thread.i.do.end53.i_crit_edge
  %port_mask.0.i = phi i32 [ %shl.i, %dsa_upstream_port.exit.i ], [ 0, %dsa_is_user_port.exit.i.do.end53.i_crit_edge ], [ 0, %dsa_is_cpu_port.exit.thread.i.do.end53.i_crit_edge ], [ 0, %do.end35.i.fold.split ], [ %mask.1.i.i, %for.inc.i.i.do.end53.i_crit_edge ]
  %port_ctrl.0.i = phi i32 [ 4, %dsa_upstream_port.exit.i ], [ 4, %dsa_is_user_port.exit.i.do.end53.i_crit_edge ], [ 2052, %dsa_is_cpu_port.exit.thread.i.do.end53.i_crit_edge ], [ 4, %do.end35.i.fold.split ], [ 2052, %for.inc.i.i.do.end53.i_crit_edge ]
  %shl55.i = shl i32 %port_mask.0.i, 16
  %and56.i = and i32 %shl55.i, 67043328
  %mul.i = shl i32 %i.068, 8
  %add.i = add i32 %mul.i, 264
  %call58.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add.i, i32 noundef %and56.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %do.end53.i.ar9331_sw_setup_port.exit_crit_edge

do.end53.i.ar9331_sw_setup_port.exit_crit_edge:   ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9331_sw_setup_port.exit

if.end61.i:                                       ; preds = %do.end53.i
  %add63.i = add i32 %mul.i, 260
  %call64.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add63.i, i32 noundef %port_ctrl.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %for.cond, label %if.end61.i.ar9331_sw_setup_port.exit_crit_edge

if.end61.i.ar9331_sw_setup_port.exit_crit_edge:   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ar9331_sw_setup_port.exit

ar9331_sw_setup_port.exit:                        ; preds = %if.end61.i.ar9331_sw_setup_port.exit_crit_edge, %do.end53.i.ar9331_sw_setup_port.exit_crit_edge
  %ret.0.i53 = phi i32 [ %call58.i, %do.end53.i.ar9331_sw_setup_port.exit_crit_edge ], [ %call64.i, %if.end61.i.ar9331_sw_setup_port.exit_crit_edge ]
  %84 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %ret.0.i53) #11
  br label %do.body

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %configure_vlan_while_not_filtering = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %86 = ptrtoint ptr %configure_vlan_while_not_filtering to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load = load i16, ptr %configure_vlan_while_not_filtering, align 4
  %bf.clear = and i16 %bf.load, -4097
  store i16 %bf.clear, ptr %configure_vlan_while_not_filtering, align 4
  br label %cleanup

do.body:                                          ; preds = %ar9331_sw_setup_port.exit, %if.end10.do.body_crit_edge, %if.end6.do.body_crit_edge
  %ret.0 = phi i32 [ %call.i50, %if.end6.do.body_crit_edge ], [ %call.i51, %if.end10.do.body_crit_edge ], [ %ret.0.i53, %ar9331_sw_setup_port.exit ]
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_setup._rs, ptr noundef nonnull @__func__.ar9331_sw_setup) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ar9331_sw_setup, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %for.end, %if.end7.i.cleanup_crit_edge, %if.end.i48.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %ret.0, %do.end ], [ %ret.0, %do.body.cleanup_crit_edge ], [ %ret.0.i, %do.end.i ], [ %ret.0.i, %do.body.i.cleanup_crit_edge ], [ %call8.i, %if.end7.i.cleanup_crit_edge ], [ -19, %if.end.i48.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_phylink_validate(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #8
  %0 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %1 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %port, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge42
    i32 3, label %entry.sw.bb2_crit_edge43
    i32 4, label %entry.sw.bb2_crit_edge44
    i32 5, label %entry.sw.bb2_crit_edge45
  ]

entry.sw.bb2_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %sw.bb.unsupported_crit_edge

sw.bb.unsupported_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %unsupported

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %or.i34 = or i32 %5, 48
  store i32 %or.i34, ptr %mask, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge42, %entry.sw.bb2_crit_edge43, %entry.sw.bb2_crit_edge44, %entry.sw.bb2_crit_edge45
  %interface3 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %interface3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4.not = icmp eq i32 %7, 1
  br i1 %cmp4.not, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.unsupported_crit_edge

sw.bb2.unsupported_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %unsupported

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %9 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef %port) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %if.end
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #8
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %or.i40 = or i32 %12, 24591
  store i32 %or.i40, ptr %mask, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #8
  %call.i.i41 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #8
  br label %cleanup

unsupported:                                      ; preds = %sw.bb2.unsupported_crit_edge, %sw.bb.unsupported_crit_edge
  %13 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %14 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds, align 4
  %interface23 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %interface23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interface23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef %17, i32 noundef %port) #11
  br label %cleanup

cleanup:                                          ; preds = %unsupported, %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_phylink_mac_config(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %regmap2 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 4608, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_phylink_mac_config._rs, ptr noundef nonnull @__func__.ar9331_sw_phylink_mac_config) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.if.end9_crit_edge, label %do.end

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ar9331_sw_phylink_mac_config, i32 noundef %call.i) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_phylink_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %regmap3 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap3, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_phylink_mac_link_down._rs, ptr noundef nonnull @__func__.ar9331_sw_phylink_mac_link_down) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ar9331_sw_phylink_mac_link_down, i32 noundef %call.i) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  %mib_read = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 %port, i32 1
  %call11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mib_read) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_phylink_mac_link_up(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr nocapture noundef readnone %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %regmap4 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap4, align 4
  %mib_read = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 %port, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %mib_read, i32 noundef 0) #8
  %5 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %speed, label %entry.cleanup_crit_edge [
    i32 1000, label %entry.sw.epilog_crit_edge
    i32 100, label %sw.bb5
    i32 10, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 12, %sw.bb7 ], [ 13, %sw.bb5 ], [ 14, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %tobool.not = icmp eq i32 %duplex, 0
  %or9 = or i32 %val.0, 64
  %spec.select = select i1 %tobool.not, i32 %val.0, i32 %or9
  %or12 = or i32 %spec.select, 16
  %val.2 = select i1 %tx_pause, i32 %or12, i32 %spec.select
  %or16 = or i32 %val.2, 32
  %val.3 = select i1 %rx_pause, i32 %or16, i32 %val.2
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 127, i32 noundef %val.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_phylink_mac_link_up._rs, ptr noundef nonnull @__func__.ar9331_sw_phylink_mac_link_up) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ar9331_sw_phylink_mac_link_up, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_get_stats64(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %stats_lock = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 %port, i32 3
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #8
  %stats = getelementptr %struct.ar9331_sw_priv, ptr %1, i32 0, i32 10, i32 %port, i32 2
  %2 = call ptr @memcpy(ptr %s, ptr %stats, i32 192)
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9331_sw_port_disable(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %regmap2 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 256
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_port_disable._rs, ptr noundef nonnull @__func__.ar9331_sw_port_disable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.if.end9_crit_edge, label %do.end

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ar9331_sw_port_disable, i32 noundef %call) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_sw_mbus_read(ptr nocapture noundef readonly %mbus, i32 noundef %port, i32 noundef %regnum) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %mbus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regmap2 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !179
  %shl = shl i32 %port, 21
  %and15 = and i32 %shl, 65011712
  %shl38 = shl i32 %regnum, 16
  %and39 = and i32 %shl38, 2031616
  %or = or i32 %and15, %and39
  %or40 = or i32 %or, -939524096
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 152, i32 noundef %or40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool41.not = icmp eq i32 %call, 0
  br i1 %tobool41.not, label %if.end43, label %entry.do.body107_crit_edge

entry.do.body107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

if.end43:                                         ; preds = %entry
  %call44 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call44, 20000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 341) #8
  %call57151 = call i32 @regmap_read(ptr noundef %3, i32 noundef 152, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57151)
  %tobool58.not152 = icmp eq i32 %call57151, 0
  br i1 %tobool58.not152, label %if.end43.lor.lhs.false_crit_edge, label %if.end43.do.body107_crit_edge

if.end43.do.body107_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

if.end43.lor.lhs.false_crit_edge:                 ; preds = %if.end43
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then71.lor.lhs.false_crit_edge, %if.end43.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool60.not = icmp sgt i32 %6, -1
  br i1 %tobool60.not, label %lor.lhs.false.if.end84_crit_edge, label %land.lhs.true

lor.lhs.false.if.end84_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call64 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call64, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call64, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then71

if.then71:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %call57 = call i32 @regmap_read(ptr noundef %3, i32 noundef 152, ptr noundef nonnull %val) #8
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then71.lor.lhs.false_crit_edge, label %if.then71.do.body107_crit_edge

if.then71.do.body107_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

if.then71.lor.lhs.false_crit_edge:                ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call68 = call i32 @regmap_read(ptr noundef %3, i32 noundef 152, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool74.not = icmp eq i32 %call68, 0
  br i1 %tobool74.not, label %lor.rhs, label %for.end.do.body107_crit_edge

for.end.do.body107_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

lor.rhs:                                          ; preds = %for.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool76.not.inv = icmp slt i32 %.pr, 0
  br i1 %tobool76.not.inv, label %lor.rhs.do.body107_crit_edge, label %lor.rhs.if.end84_crit_edge

lor.rhs.if.end84_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

lor.rhs.do.body107_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

if.end84:                                         ; preds = %lor.rhs.if.end84_crit_edge, %lor.lhs.false.if.end84_crit_edge
  %call85 = call i32 @regmap_read(ptr noundef %3, i32 noundef 152, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.end103, label %if.end84.do.body107_crit_edge

if.end84.do.body107_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

do.end103:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and105 = and i32 %9, 131071
  br label %cleanup

do.body107:                                       ; preds = %if.end84.do.body107_crit_edge, %lor.rhs.do.body107_crit_edge, %for.end.do.body107_crit_edge, %if.then71.do.body107_crit_edge, %if.end43.do.body107_crit_edge, %entry.do.body107_crit_edge
  %ret.0 = phi i32 [ %call, %entry.do.body107_crit_edge ], [ %call85, %if.end84.do.body107_crit_edge ], [ %call57151, %if.end43.do.body107_crit_edge ], [ %call68, %for.end.do.body107_crit_edge ], [ -110, %lor.rhs.do.body107_crit_edge ], [ %call57, %if.then71.do.body107_crit_edge ]
  %call108 = call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_mbus_read._rs, ptr noundef nonnull @__func__.ar9331_sw_mbus_read) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %do.body107.cleanup_crit_edge, label %do.end113

do.body107.cleanup_crit_edge:                     ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end113:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %do.body107.cleanup_crit_edge, %do.end103
  %retval.0 = phi i32 [ %and105, %do.end103 ], [ %ret.0, %do.end113 ], [ %ret.0, %do.body107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9331_sw_mbus_write(ptr nocapture noundef readonly %mbus, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %mbus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regmap2 = getelementptr inbounds %struct.ar9331_sw_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !179
  %shl = shl i32 %port, 21
  %and15 = and i32 %shl, 65011712
  %shl38 = shl i32 %regnum, 16
  %and39 = and i32 %shl38, 2031616
  %conv63 = zext i16 %data to i32
  %or = or i32 %and15, %and39
  %or40 = or i32 %or, %conv63
  %or66 = or i32 %or40, -1073741824
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 152, i32 noundef %or66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool67.not = icmp eq i32 %call, 0
  br i1 %tobool67.not, label %if.end69, label %entry.do.body113_crit_edge

entry.do.body113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body113

if.end69:                                         ; preds = %entry
  %call70 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call70, 20000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 312) #8
  %call84157 = call i32 @regmap_read(ptr noundef %3, i32 noundef 152, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84157)
  %tobool85.not158 = icmp eq i32 %call84157, 0
  br i1 %tobool85.not158, label %if.end69.lor.lhs.false_crit_edge, label %if.end69.do.body113_crit_edge

if.end69.do.body113_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body113

if.end69.lor.lhs.false_crit_edge:                 ; preds = %if.end69
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then99.lor.lhs.false_crit_edge, %if.end69.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool87.not = icmp sgt i32 %6, -1
  br i1 %tobool87.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call91 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call91, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call91, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then99

if.then99:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %call84 = call i32 @regmap_read(ptr noundef %3, i32 noundef 152, ptr noundef nonnull %val) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then99.lor.lhs.false_crit_edge, label %if.then99.do.body113_crit_edge

if.then99.do.body113_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body113

if.then99.lor.lhs.false_crit_edge:                ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call96 = call i32 @regmap_read(ptr noundef %3, i32 noundef 152, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool102.not = icmp eq i32 %call96, 0
  br i1 %tobool102.not, label %lor.rhs, label %for.end.do.body113_crit_edge

for.end.do.body113_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body113

lor.rhs:                                          ; preds = %for.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool104.not.inv = icmp slt i32 %.pr, 0
  br i1 %tobool104.not.inv, label %lor.rhs.do.body113_crit_edge, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.do.body113_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body113

do.body113:                                       ; preds = %lor.rhs.do.body113_crit_edge, %for.end.do.body113_crit_edge, %if.then99.do.body113_crit_edge, %if.end69.do.body113_crit_edge, %entry.do.body113_crit_edge
  %ret.0 = phi i32 [ %call, %entry.do.body113_crit_edge ], [ %call84157, %if.end69.do.body113_crit_edge ], [ %call96, %for.end.do.body113_crit_edge ], [ -110, %lor.rhs.do.body113_crit_edge ], [ %call84, %if.then99.do.body113_crit_edge ]
  %call114 = call i32 @___ratelimit(ptr noundef nonnull @ar9331_sw_mbus_write._rs, ptr noundef nonnull @__func__.ar9331_sw_mbus_write) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %do.body113.cleanup_crit_edge, label %do.end119

do.body113.cleanup_crit_edge:                     ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.39, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %do.body113.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end119 ], [ %ret.0, %do.body113.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !117, !119, !121, !122, !123, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_ar9331__570_1128_mdio_module_init6, !1, !"__initcall__kmod_ar9331__570_1128_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1128, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author571, !4, !"__UNIQUE_ID_author571", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1130, i32 1}
!5 = !{ptr @__UNIQUE_ID_description572, !6, !"__UNIQUE_ID_description572", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1131, i32 1}
!7 = !{ptr @__UNIQUE_ID_file573, !8, !"__UNIQUE_ID_file573", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1132, i32 1}
!9 = !{ptr @__UNIQUE_ID_license574, !8, !"__UNIQUE_ID_license574", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1123, i32 11}
!12 = !{ptr @ar9331_sw_mdio_driver, !13, !"ar9331_sw_mdio_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1118, i32 27}
!14 = !{ptr @ar9331_sw_of_match, !15, !"ar9331_sw_of_match", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1113, i32 34}
!16 = !{ptr @ar9331_sw_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1030, i32 17}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1034, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ar9331_sw_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ar9331_sw_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1038, i32 57}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1040, i32 3}
!31 = !{ptr @ar9331_sw_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ar9331_sw_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ar9331_sw_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1063, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ar9331_sw_probe.__key.12, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1064, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ar9331_sw_probe.__key.14, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ar9331_sw_bus, !42, !"ar9331_sw_bus", i1 false, i1 false}
!42 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 1011, i32 26}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 928, i32 2}
!45 = !{ptr @ar9331_mdio_write._rs, !44, !"_rs", i1 false, i1 false}
!46 = !{ptr @__func__.ar9331_mdio_write, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ar9331_mdio_write._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @ar9331_mdio_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ar9331_mdio_read._rs, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 890, i32 2}
!52 = !{ptr @__func__.ar9331_mdio_read, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ar9331_mdio_read._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @ar9331_mdio_read._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ar9331_mdio_regmap_config, !57, !"ar9331_mdio_regmap_config", i1 false, i1 false}
!57 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 995, i32 35}
!58 = !{ptr @ar9331_register_set, !59, !"ar9331_register_set", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 985, i32 41}
!60 = !{ptr @ar9331_valid_regs, !61, !"ar9331_valid_regs", i1 false, i1 false}
!61 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 940, i32 34}
!62 = !{ptr @ar9331_volatile_set, !63, !"ar9331_volatile_set", i1 false, i1 false}
!63 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 990, i32 41}
!64 = !{ptr @ar9331_nonvolatile_regs, !65, !"ar9331_nonvolatile_regs", i1 false, i1 false}
!65 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 967, i32 34}
!66 = !{ptr @ar9331_regmap_range, !67, !"ar9331_regmap_range", i1 false, i1 false}
!67 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 971, i32 38}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 814, i32 3}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ar9331_sw_irq_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ar9331_sw_irq_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @ar9331_sw_irq_init.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 818, i32 2}
!75 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 822, i32 3}
!78 = !{ptr @ar9331_sw_irq_init._entry.22, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ar9331_sw_irq_init._entry_ptr.24, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 829, i32 3}
!82 = !{ptr @ar9331_sw_irq_init._entry.25, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ar9331_sw_irq_init._entry_ptr.27, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 716, i32 3}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ar9331_sw_irq._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ar9331_sw_irq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 732, i32 3}
!91 = !{ptr @ar9331_sw_irq._entry.30, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ar9331_sw_irq._entry_ptr.32, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ar9331_sw_irqdomain_ops, !94, !"ar9331_sw_irqdomain_ops", i1 false, i1 false}
!94 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 800, i32 36}
!95 = !{ptr @ar9331_sw_irq_chip, !96, !"ar9331_sw_irq_chip", i1 false, i1 false}
!96 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 774, i32 24}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 769, i32 3}
!99 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ar9331_sw_irq_bus_sync_unlock._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ar9331_sw_irq_bus_sync_unlock._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @ar9331_sw_ops, !103, !"ar9331_sw_ops", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 696, i32 36}
!104 = !{ptr @ar9331_sw_setup._rs, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 480, i32 2}
!106 = !{ptr @__func__.ar9331_sw_setup, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ar9331_sw_setup._entry, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @ar9331_sw_setup._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ar9331_sw_reset._rs, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 288, i32 2}
!112 = !{ptr @__func__.ar9331_sw_reset, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ar9331_sw_reset._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ar9331_sw_reset._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 370, i32 38}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 377, i32 33}
!119 = !{ptr @ar9331_sw_mbus_read._rs, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 352, i32 2}
!121 = !{ptr @__func__.ar9331_sw_mbus_read, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ar9331_sw_mbus_read._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @ar9331_sw_mbus_read._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @ar9331_sw_mbus_write._rs, !126, !"_rs", i1 false, i1 false}
!126 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 318, i32 2}
!127 = !{ptr @__func__.ar9331_sw_mbus_write, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ar9331_sw_mbus_write._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @ar9331_sw_mbus_write._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 434, i32 2}
!133 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ar9331_sw_setup_port._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @ar9331_sw_setup_port._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 526, i32 3}
!138 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ar9331_sw_phylink_validate._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @ar9331_sw_phylink_validate._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 546, i32 2}
!143 = !{ptr @ar9331_sw_phylink_validate._entry.44, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ar9331_sw_phylink_validate._entry_ptr.46, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @ar9331_sw_phylink_mac_config._rs, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 562, i32 3}
!147 = !{ptr @__func__.ar9331_sw_phylink_mac_config, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @ar9331_sw_phylink_mac_config._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @ar9331_sw_phylink_mac_config._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @ar9331_sw_phylink_mac_link_down._rs, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 577, i32 3}
!152 = !{ptr @__func__.ar9331_sw_phylink_mac_link_down, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ar9331_sw_phylink_mac_link_down._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ar9331_sw_phylink_mac_link_down._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @ar9331_sw_phylink_mac_link_up._rs, !156, !"_rs", i1 false, i1 false}
!156 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 626, i32 3}
!157 = !{ptr @__func__.ar9331_sw_phylink_mac_link_up, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ar9331_sw_phylink_mac_link_up._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @ar9331_sw_phylink_mac_link_up._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @ar9331_sw_port_disable._rs, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 492, i32 3}
!162 = !{ptr @__func__.ar9331_sw_port_disable, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ar9331_sw_port_disable._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @ar9331_sw_port_disable._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @ar9331_read_stats._rs, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../drivers/net/dsa/qca/ar9331.c", i32 640, i32 3}
!167 = !{ptr @__func__.ar9331_read_stats, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ar9331_read_stats._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ar9331_read_stats._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
