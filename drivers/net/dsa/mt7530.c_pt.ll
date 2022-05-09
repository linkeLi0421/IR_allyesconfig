; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mt7530.c_pt.bc'
source_filename = "../drivers/net/dsa/mt7530.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mt753x_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7530_mib_desc = type { i32, i32, ptr }
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
%struct.mt7530_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, [7 x %struct.mt7530_port], %struct.mutex, i32, ptr, i32 }
%struct.mt7530_port = type { i8, i32, i16 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.dsa_port = type { %union.anon.150, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.167, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.167 = type { ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.mt7530_hw_vlan_entry = type { i32, i8, i8 }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.mt7530_fdb = type { i16, i8, i8, [6 x i8], i8 }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.dsa_mall_mirror_tc_entry = type { i8, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mt7530__502_3335_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@mt7530_mdio_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt7530_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @mt7530_probe, ptr @mt7530_remove, ptr @mt7530_shutdown }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author503 = internal constant [49 x i8] c"mt7530.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description504 = internal constant [53 x i8] c"mt7530.description=Driver for Mediatek MT7530 Switch\00", section ".modinfo", align 1
@__UNIQUE_ID_file505 = internal constant [35 x i8] c"mt7530.file=drivers/net/dsa/mt7530\00", section ".modinfo", align 1
@__UNIQUE_ID_license506 = internal constant [19 x i8] c"mt7530.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt7530\00", [25 x i8] zeroinitializer }, align 32
@mt7530_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mt753x_table, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7530\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt753x_table }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7531\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mt753x_table, i64 96) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mt753x_table = internal constant { [3 x %struct.mt753x_info], [48 x i8] } { [3 x %struct.mt753x_info] [%struct.mt753x_info { i32 0, ptr @mt7530_setup, ptr @mt7530_phy_read, ptr @mt7530_phy_write, ptr @mt7530_pad_clk_setup, ptr null, ptr @mt7530_phy_mode_supported, ptr @mt7530_mac_port_validate, ptr @mt7530_phylink_mac_link_state, ptr @mt7530_mac_config, ptr null, ptr null }, %struct.mt753x_info { i32 1, ptr @mt7530_setup, ptr @mt7530_phy_read, ptr @mt7530_phy_write, ptr @mt7530_pad_clk_setup, ptr null, ptr @mt7530_phy_mode_supported, ptr @mt7530_mac_port_validate, ptr @mt7530_phylink_mac_link_state, ptr @mt7530_mac_config, ptr null, ptr null }, %struct.mt753x_info { i32 2, ptr @mt7531_setup, ptr @mt7531_ind_phy_read, ptr @mt7531_ind_phy_write, ptr @mt7531_pad_setup, ptr @mt7531_cpu_port_config, ptr @mt7531_phy_mode_supported, ptr @mt7531_mac_port_validate, ptr @mt7531_phylink_mac_link_state, ptr @mt7531_mac_config, ptr @mt7531_sgmii_restart_an, ptr @mt7531_sgmii_link_up_force }], [48 x i8] zeroinitializer }, align 32
@mt7530_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable core power: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt7530_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/dsa/mt7530.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7530_setup._entry_ptr = internal global ptr @mt7530_setup._entry, section ".printk_index", align 4
@mt7530_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable io pwr: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mt7530_setup._entry_ptr.8 = internal global ptr @mt7530_setup._entry.6, section ".printk_index", align 4
@mt7530_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset timeout\0A\00", [17 x i8] zeroinitializer }, align 32
@mt7530_setup._entry_ptr.11 = internal global ptr @mt7530_setup._entry.9, section ".printk_index", align 4
@mt7530_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"chip %x can't be supported\0A\00", [36 x i8] zeroinitializer }, align 32
@mt7530_setup._entry_ptr.14 = internal global ptr @mt7530_setup._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek,eth-mac\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@mt7530_mii_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read mt7530 register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7530_mii_read\00", [16 x i8] zeroinitializer }, align 32
@mt7530_mii_read._entry_ptr = internal global ptr @mt7530_mii_read._entry, section ".printk_index", align 4
@mt7530_mii_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write mt7530 register\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7530_mii_write\00", [47 x i8] zeroinitializer }, align 32
@mt7530_mii_write._entry_ptr = internal global ptr @mt7530_mii_write._entry, section ".printk_index", align 4
@mt7530_vlan_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7530_vlan_cmd\00", [16 x i8] zeroinitializer }, align 32
@mt7530_vlan_cmd._entry_ptr = internal global ptr @mt7530_vlan_cmd._entry, section ".printk_index", align 4
@mt7530_vlan_cmd._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 1490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read VTCR invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7530_vlan_cmd._entry_ptr.27 = internal global ptr @mt7530_vlan_cmd._entry.25, section ".printk_index", align 4
@of_mdio_parse_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 45, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s has invalid PHY address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_mdio_parse_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/of_mdio.h\00", [40 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr = internal global ptr @of_mdio_parse_addr._entry, section ".printk_index", align 4
@of_mdio_parse_addr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.30, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s PHY address %i is too large\0A\00", [32 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr.33 = internal global ptr @of_mdio_parse_addr._entry.31, section ".printk_index", align 4
@mt7530_setup_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt7530_setup_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt7530_setup_port5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 957, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported p5_intf_sel %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7530_setup_port5\00", [45 x i8] zeroinitializer }, align 32
@mt7530_setup_port5._entry_ptr = internal global ptr @mt7530_setup_port5._entry, section ".printk_index", align 4
@mt7530_setup_port5.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Setup P5, HWTRAP=0x%x, intf_sel=%s, phy-mode=%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PHY P0\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PHY P4\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GMAC5\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GMAC5_SGMII\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@mt7530_fdb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.73, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt7530_fdb_cmd\00", [17 x i8] zeroinitializer }, align 32
@mt7530_fdb_cmd._entry_ptr = internal global ptr @mt7530_fdb_cmd._entry, section ".printk_index", align 4
@mt7530_pad_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: MT7530 with a 20MHz XTAL is not supported!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7530_pad_clk_setup\00", [43 x i8] zeroinitializer }, align 32
@mt7530_pad_clk_setup._entry_ptr = internal global ptr @mt7530_pad_clk_setup._entry, section ".printk_index", align 4
@mt7530_pad_clk_setup._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xMII interface %d not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@mt7530_pad_clk_setup._entry_ptr.78 = internal global ptr @mt7530_pad_clk_setup._entry.76, section ".printk_index", align 4
@core_read_mmd_indirect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read mmd register\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"core_read_mmd_indirect\00", [41 x i8] zeroinitializer }, align 32
@core_read_mmd_indirect._entry_ptr = internal global ptr @core_read_mmd_indirect._entry, section ".printk_index", align 4
@core_write_mmd_indirect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to write mmd register\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"core_write_mmd_indirect\00", [40 x i8] zeroinitializer }, align 32
@core_write_mmd_indirect._entry_ptr = internal global ptr @core_write_mmd_indirect._entry, section ".printk_index", align 4
@mt7530_phy_mode_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 2411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unsupported port: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt7530_phy_mode_supported\00", [38 x i8] zeroinitializer }, align 32
@mt7530_phy_mode_supported._entry_ptr = internal global ptr @mt7530_phy_mode_supported._entry, section ".printk_index", align 4
@mt7531_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.85, ptr @.str.3, i32 2285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt7531_setup\00", [19 x i8] zeroinitializer }, align 32
@mt7531_setup._entry_ptr = internal global ptr @mt7531_setup._entry, section ".printk_index", align 4
@mt7531_setup._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.85, ptr @.str.3, i32 2293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7531_setup._entry_ptr.87 = internal global ptr @mt7531_setup._entry.86, section ".printk_index", align 4
@mt7531_setup.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.3, ptr @.str.88, i8 2, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"P5 support %s interface\0A\00", [39 x i8] zeroinitializer }, align 32
@mt7531_ind_c45_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.89, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt7531_ind_c45_phy_read\00", [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c45_phy_read._entry_ptr = internal global ptr @mt7531_ind_c45_phy_read._entry, section ".printk_index", align 4
@mt7531_ind_c45_phy_read._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.89, ptr @.str.3, i32 641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c45_phy_read._entry_ptr.91 = internal global ptr @mt7531_ind_c45_phy_read._entry.90, section ".printk_index", align 4
@mt7531_ind_c45_phy_read._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.89, ptr @.str.3, i32 652, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c45_phy_read._entry_ptr.93 = internal global ptr @mt7531_ind_c45_phy_read._entry.92, section ".printk_index", align 4
@mt7531_ind_c45_phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.94, ptr @.str.3, i32 679, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt7531_ind_c45_phy_write\00", [39 x i8] zeroinitializer }, align 32
@mt7531_ind_c45_phy_write._entry_ptr = internal global ptr @mt7531_ind_c45_phy_write._entry, section ".printk_index", align 4
@mt7531_ind_c45_phy_write._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.94, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c45_phy_write._entry_ptr.96 = internal global ptr @mt7531_ind_c45_phy_write._entry.95, section ".printk_index", align 4
@mt7531_ind_c45_phy_write._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.94, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c45_phy_write._entry_ptr.98 = internal global ptr @mt7531_ind_c45_phy_write._entry.97, section ".printk_index", align 4
@mt7531_ind_c22_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.99, ptr @.str.3, i32 726, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt7531_ind_c22_phy_read\00", [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c22_phy_read._entry_ptr = internal global ptr @mt7531_ind_c22_phy_read._entry, section ".printk_index", align 4
@mt7531_ind_c22_phy_read._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.99, ptr @.str.3, i32 738, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c22_phy_read._entry_ptr.101 = internal global ptr @mt7531_ind_c22_phy_read._entry.100, section ".printk_index", align 4
@mt7531_ind_c22_phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.102, ptr @.str.3, i32 765, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt7531_ind_c22_phy_write\00", [39 x i8] zeroinitializer }, align 32
@mt7531_ind_c22_phy_write._entry_ptr = internal global ptr @mt7531_ind_c22_phy_write._entry, section ".printk_index", align 4
@mt7531_ind_c22_phy_write._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.102, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7531_ind_c22_phy_write._entry_ptr.104 = internal global ptr @mt7531_ind_c22_phy_write._entry.103, section ".printk_index", align 4
@mt7531_phy_mode_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.105, ptr @.str.3, i32 2445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt7531_phy_mode_supported\00", [38 x i8] zeroinitializer }, align 32
@mt7531_phy_mode_supported._entry_ptr = internal global ptr @mt7531_phy_mode_supported._entry, section ".printk_index", align 4
@mt7531_sgmii_pcs_get_state_an._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 3031, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid sgmii PHY speed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt7531_sgmii_pcs_get_state_an\00", [34 x i8] zeroinitializer }, align 32
@mt7531_sgmii_pcs_get_state_an._entry_ptr = internal global ptr @mt7531_sgmii_pcs_get_state_an._entry, section ".printk_index", align 4
@mt7531_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 2677, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port %d is not a MAC port\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7531_mac_config\00", [46 x i8] zeroinitializer }, align 32
@mt7531_mac_config._entry_ptr = internal global ptr @mt7531_mac_config._entry, section ".printk_index", align 4
@mt7531_rgmii_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 2492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RGMII mode is not available for port %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7531_rgmii_setup\00", [45 x i8] zeroinitializer }, align 32
@mt7531_rgmii_setup._entry_ptr = internal global ptr @mt7531_rgmii_setup._entry, section ".printk_index", align 4
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek,mcm\00", [19 x i8] zeroinitializer }, align 32
@mt7530_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 3223, ptr @.str.115, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MT7530 adapts as multi-chip module\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt7530_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7530_probe._entry_ptr = internal global ptr @mt7530_probe._entry, section ".printk_index", align 4
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mcm\00", [28 x i8] zeroinitializer }, align 32
@mt7530_probe._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.114, ptr @.str.3, i32 3227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@mt7530_probe._entry_ptr.119 = internal global ptr @mt7530_probe._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mt7530_probe._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.114, ptr @.str.3, i32 3270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mt7530_probe._entry_ptr.124 = internal global ptr @mt7530_probe._entry.123, section ".printk_index", align 4
@mt7530_switch_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @mtk_get_tag_protocol, ptr null, ptr null, ptr @mt753x_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt753x_phylink_validate, ptr @mt753x_phylink_mac_link_state, ptr @mt753x_phylink_mac_config, ptr @mt753x_phylink_mac_an_restart, ptr @mt753x_phylink_mac_link_down, ptr @mt753x_phylink_mac_link_up, ptr null, ptr @mt7530_get_strings, ptr @mt7530_get_ethtool_stats, ptr @mt7530_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7530_port_enable, ptr @mt7530_port_disable, ptr @mt753x_set_mac_eee, ptr @mt753x_get_mac_eee, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7530_set_ageing_time, ptr @mt7530_port_bridge_join, ptr @mt7530_port_bridge_leave, ptr @mt7530_stp_state_set, ptr null, ptr @mt7530_port_pre_bridge_flags, ptr @mt7530_port_bridge_flags, ptr @mt7530_port_vlan_filtering, ptr @mt7530_port_vlan_add, ptr @mt7530_port_vlan_del, ptr @mt7530_port_fdb_add, ptr @mt7530_port_fdb_del, ptr @mt7530_port_fdb_dump, ptr @mt7530_port_mdb_add, ptr @mt7530_port_mdb_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt753x_port_mirror_add, ptr @mt753x_port_mirror_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7530_port_change_mtu, ptr @mt7530_port_max_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@mt7530_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->reg_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@mt7530_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 1991, ptr @.str.115, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no interrupt support\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt7530_setup_irq\00", [47 x i8] zeroinitializer }, align 32
@mt7530_setup_irq._entry_ptr = internal global ptr @mt7530_setup_irq._entry, section ".printk_index", align 4
@mt7530_setup_irq._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.3, i32 1997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get parent IRQ: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mt7530_setup_irq._entry_ptr.131 = internal global ptr @mt7530_setup_irq._entry.129, section ".printk_index", align 4
@mt7530_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mt7530_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mt7530_setup_irq._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.3, i32 2004, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@mt7530_setup_irq._entry_ptr.134 = internal global ptr @mt7530_setup_irq._entry.132, section ".printk_index", align 4
@mt7530_setup_irq._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.128, ptr @.str.3, i32 2016, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mt7530_setup_irq._entry_ptr.137 = internal global ptr @mt7530_setup_irq._entry.135, section ".printk_index", align 4
@mt7530_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7530_irq_mask, ptr null, ptr @mt7530_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt7530_irq_bus_lock, ptr @mt7530_irq_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mt7530_setup_mdio.idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt7530-mii\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mt7530-%d\00", [22 x i8] zeroinitializer }, align 32
@mt7530_setup_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.3, i32 2079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register MDIO bus: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7530_setup_mdio\00", [46 x i8] zeroinitializer }, align 32
@mt7530_setup_mdio._entry_ptr = internal global ptr @mt7530_setup_mdio._entry, section ".printk_index", align 4
@mt753x_phylink_mac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.3, i32 2753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unsupported %s port: %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt753x_phylink_mac_config\00", [38 x i8] zeroinitializer }, align 32
@mt753x_phylink_mac_config._entry_ptr = internal global ptr @mt753x_phylink_mac_config._entry, section ".printk_index", align 4
@mt753x_phylink_mac_config._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.3, i32 2760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: in-band negotiation unsupported\0A\00", [59 x i8] zeroinitializer }, align 32
@mt753x_phylink_mac_config._entry_ptr.146 = internal global ptr @mt753x_phylink_mac_config._entry.144, section ".printk_index", align 4
@mt7530_mib = internal constant { [41 x %struct.mt7530_mib_desc], [116 x i8] } { [41 x %struct.mt7530_mib_desc] [%struct.mt7530_mib_desc { i32 1, i32 0, ptr @.str.147 }, %struct.mt7530_mib_desc { i32 1, i32 4, ptr @.str.148 }, %struct.mt7530_mib_desc { i32 1, i32 8, ptr @.str.149 }, %struct.mt7530_mib_desc { i32 1, i32 12, ptr @.str.150 }, %struct.mt7530_mib_desc { i32 1, i32 16, ptr @.str.151 }, %struct.mt7530_mib_desc { i32 1, i32 20, ptr @.str.152 }, %struct.mt7530_mib_desc { i32 1, i32 24, ptr @.str.153 }, %struct.mt7530_mib_desc { i32 1, i32 28, ptr @.str.154 }, %struct.mt7530_mib_desc { i32 1, i32 32, ptr @.str.155 }, %struct.mt7530_mib_desc { i32 1, i32 36, ptr @.str.156 }, %struct.mt7530_mib_desc { i32 1, i32 40, ptr @.str.157 }, %struct.mt7530_mib_desc { i32 1, i32 44, ptr @.str.158 }, %struct.mt7530_mib_desc { i32 1, i32 48, ptr @.str.159 }, %struct.mt7530_mib_desc { i32 1, i32 52, ptr @.str.160 }, %struct.mt7530_mib_desc { i32 1, i32 56, ptr @.str.161 }, %struct.mt7530_mib_desc { i32 1, i32 60, ptr @.str.162 }, %struct.mt7530_mib_desc { i32 1, i32 64, ptr @.str.163 }, %struct.mt7530_mib_desc { i32 1, i32 68, ptr @.str.164 }, %struct.mt7530_mib_desc { i32 2, i32 72, ptr @.str.165 }, %struct.mt7530_mib_desc { i32 1, i32 96, ptr @.str.166 }, %struct.mt7530_mib_desc { i32 1, i32 100, ptr @.str.167 }, %struct.mt7530_mib_desc { i32 1, i32 104, ptr @.str.168 }, %struct.mt7530_mib_desc { i32 1, i32 108, ptr @.str.169 }, %struct.mt7530_mib_desc { i32 1, i32 112, ptr @.str.170 }, %struct.mt7530_mib_desc { i32 1, i32 116, ptr @.str.171 }, %struct.mt7530_mib_desc { i32 1, i32 120, ptr @.str.172 }, %struct.mt7530_mib_desc { i32 1, i32 124, ptr @.str.173 }, %struct.mt7530_mib_desc { i32 1, i32 128, ptr @.str.174 }, %struct.mt7530_mib_desc { i32 1, i32 132, ptr @.str.175 }, %struct.mt7530_mib_desc { i32 1, i32 136, ptr @.str.176 }, %struct.mt7530_mib_desc { i32 1, i32 140, ptr @.str.177 }, %struct.mt7530_mib_desc { i32 1, i32 144, ptr @.str.178 }, %struct.mt7530_mib_desc { i32 1, i32 148, ptr @.str.179 }, %struct.mt7530_mib_desc { i32 1, i32 152, ptr @.str.180 }, %struct.mt7530_mib_desc { i32 1, i32 156, ptr @.str.181 }, %struct.mt7530_mib_desc { i32 1, i32 160, ptr @.str.182 }, %struct.mt7530_mib_desc { i32 1, i32 164, ptr @.str.183 }, %struct.mt7530_mib_desc { i32 2, i32 168, ptr @.str.184 }, %struct.mt7530_mib_desc { i32 1, i32 176, ptr @.str.185 }, %struct.mt7530_mib_desc { i32 1, i32 180, ptr @.str.186 }, %struct.mt7530_mib_desc { i32 1, i32 184, ptr @.str.187 }], [116 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TxDrop\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxCrcErr\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxUnicast\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxMulticast\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxBroadcast\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxCollision\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TxSingleCollision\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TxMultipleCollision\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TxDeferred\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxLateCollision\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TxExcessiveCollistion\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxPause\00", [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxPktSz64\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TxPktSz65To127\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxPktSz128To255\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxPktSz256To511\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxPktSz512To1023\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tx1024ToMax\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxBytes\00", [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RxDrop\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxFiltering\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxUnicast\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxMulticast\00", [20 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxBroadcast\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxAlignErr\00", [21 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxCrcErr\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RxUnderSizeErr\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxFragErr\00", [22 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxOverSzErr\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxJabberErr\00", [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxPause\00", [24 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxPktSz64\00", [22 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RxPktSz65To127\00", [17 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxPktSz128To255\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxPktSz256To511\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RxPktSz512To1023\00", [47 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RxPktSz1024ToMax\00", [47 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RxBytes\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RxCtrlDrop\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxIngressDrop\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxArlDrop\00", [22 x i8] zeroinitializer }, align 32
@mt7530_hw_vlan_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.3, i32 1565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot be deleted due to invalid entry\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt7530_hw_vlan_del\00", [45 x i8] zeroinitializer }, align 32
@mt7530_hw_vlan_del._entry_ptr = internal global ptr @mt7530_hw_vlan_del._entry, section ".printk_index", align 4
@mt7530_fdb_read.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.3, ptr @.str.191, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7530_fdb_read\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(%d) reg[%d]=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mt7530_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.3, i32 3297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable core power: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7530_remove\00", [18 x i8] zeroinitializer }, align 32
@mt7530_remove._entry_ptr = internal global ptr @mt7530_remove._entry, section ".printk_index", align 4
@mt7530_remove._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.3, i32 3302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable io pwr: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mt7530_remove._entry_ptr.196 = internal global ptr @mt7530_remove._entry.194, section ".printk_index", align 4
@switch.table.mt7531_setup = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [44 x i8] zeroinitializer }, align 32
@switch.table.mt7530_setup_port5 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [44 x i8] zeroinitializer }, align 32
@switch.table.mt7530_setup_port5.197 = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.72, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], [40 x i8] zeroinitializer }, align 32
@switch.table.mt753x_phylink_mac_config = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.72, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], [40 x i8] zeroinitializer }, align 32
@switch.table.mt7530_stp_state_set = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 12, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 19]
@__sancov_gen_cov_switch_values.201 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.202 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.204 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 21, i64 22]
@__sancov_gen_cov_switch_values.205 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.207 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.208 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4, i64 9, i64 10, i64 11, i64 12, i64 21, i64 22]
@__sancov_gen_cov_switch_values.209 = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.211 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 21, i64 22]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.215 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 21, i64 22]
@__sancov_gen_cov_switch_values.216 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"mt7530_mdio_driver\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3325, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3330, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"mt7530_of_match\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3191, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant [13 x i8] c"mt753x_table\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3152, i32 33 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2111, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2119, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2143, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2150, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2212, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2215, i32 39 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2219, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2242, i32 48 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 221, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 203, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1484, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1490, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 45, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"../include/linux/of_mdio.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 51, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1879, i32 9 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 956, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 985, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 728, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 730, i32 10 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 732, i32 10 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 734, i32 10 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 736, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant [28 x i8] c"../drivers/net/dsa/mt7530.h\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 738, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 211, i32 10 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 213, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 215, i32 10 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 217, i32 10 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 219, i32 10 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 221, i32 10 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 223, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 225, i32 10 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 227, i32 10 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 229, i32 10 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 231, i32 10 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 233, i32 10 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 235, i32 10 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 237, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 239, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 241, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 243, i32 10 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 245, i32 10 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 247, i32 10 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 249, i32 10 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 251, i32 10 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 253, i32 10 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 255, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 257, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 259, i32 10 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 261, i32 10 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 263, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 265, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 267, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.453, i32 269, i32 10 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 318, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 401, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 429, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 103, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 134, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2410, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2285, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2293, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2313, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 630, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 641, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 652, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 679, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 690, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 701, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 726, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 738, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 765, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 777, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2444, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3031, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2677, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2491, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3221, i32 40 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3223, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3225, i32 54 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3227, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3252, i32 54 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3256, i32 52 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3267, i32 56 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3270, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant [18 x i8] c"mt7530_switch_ops\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3116, i32 36 }
@___asan_gen_.629 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3279, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1990, i32 33 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1991, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1997, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant [22 x i8] c"mt7530_irq_domain_ops\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1962, i32 36 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2004, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2016, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant [16 x i8] c"mt7530_irq_chip\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1942, i32 24 }
@___asan_gen_.671 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2058, i32 13 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2067, i32 14 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2068, i32 37 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2079, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2752, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 2759, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant [11 x i8] c"mt7530_mib\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 28, i32 37 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 29, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 30, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 31, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 32, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 33, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 34, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 35, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 36, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 37, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 38, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 39, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 40, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 41, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 42, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 43, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 44, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 45, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 46, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 47, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 48, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 49, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 50, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 51, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 52, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 53, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 54, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 55, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 56, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 57, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 58, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 59, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 60, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 61, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 62, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 63, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 64, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 65, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 66, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 67, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 68, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 69, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 1564, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 345, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3296, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.858 = private constant [28 x i8] c"../drivers/net/dsa/mt7530.c\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.858, i32 3301, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant [26 x i8] c"switch.table.mt7531_setup\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [32 x i8] c"switch.table.mt7530_setup_port5\00", align 1
@___asan_gen_.862 = private unnamed_addr constant [36 x i8] c"switch.table.mt7530_setup_port5.197\00", align 1
@___asan_gen_.863 = private unnamed_addr constant [39 x i8] c"switch.table.mt753x_phylink_mac_config\00", align 1
@___asan_gen_.864 = private unnamed_addr constant [34 x i8] c"switch.table.mt7530_stp_state_set\00", align 1
@llvm.compiler.used = appending global [272 x ptr] [ptr @__UNIQUE_ID_author503, ptr @__UNIQUE_ID_description504, ptr @__UNIQUE_ID_file505, ptr @__UNIQUE_ID_license506, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_mt7530__502_3335_mdio_module_init6, ptr @core_read_mmd_indirect._entry, ptr @core_read_mmd_indirect._entry_ptr, ptr @core_write_mmd_indirect._entry, ptr @core_write_mmd_indirect._entry_ptr, ptr @mdio_module_exit, ptr @mt7530_fdb_cmd._entry, ptr @mt7530_fdb_cmd._entry_ptr, ptr @mt7530_hw_vlan_del._entry, ptr @mt7530_hw_vlan_del._entry_ptr, ptr @mt7530_mii_read._entry, ptr @mt7530_mii_read._entry_ptr, ptr @mt7530_mii_write._entry, ptr @mt7530_mii_write._entry_ptr, ptr @mt7530_pad_clk_setup._entry, ptr @mt7530_pad_clk_setup._entry.76, ptr @mt7530_pad_clk_setup._entry_ptr, ptr @mt7530_pad_clk_setup._entry_ptr.78, ptr @mt7530_phy_mode_supported._entry, ptr @mt7530_phy_mode_supported._entry_ptr, ptr @mt7530_probe._entry, ptr @mt7530_probe._entry.117, ptr @mt7530_probe._entry.123, ptr @mt7530_probe._entry_ptr, ptr @mt7530_probe._entry_ptr.119, ptr @mt7530_probe._entry_ptr.124, ptr @mt7530_remove._entry, ptr @mt7530_remove._entry.194, ptr @mt7530_remove._entry_ptr, ptr @mt7530_remove._entry_ptr.196, ptr @mt7530_setup._entry, ptr @mt7530_setup._entry.12, ptr @mt7530_setup._entry.6, ptr @mt7530_setup._entry.9, ptr @mt7530_setup._entry_ptr, ptr @mt7530_setup._entry_ptr.11, ptr @mt7530_setup._entry_ptr.14, ptr @mt7530_setup._entry_ptr.8, ptr @mt7530_setup_irq._entry, ptr @mt7530_setup_irq._entry.129, ptr @mt7530_setup_irq._entry.132, ptr @mt7530_setup_irq._entry.135, ptr @mt7530_setup_irq._entry_ptr, ptr @mt7530_setup_irq._entry_ptr.131, ptr @mt7530_setup_irq._entry_ptr.134, ptr @mt7530_setup_irq._entry_ptr.137, ptr @mt7530_setup_mdio._entry, ptr @mt7530_setup_mdio._entry_ptr, ptr @mt7530_setup_port5._entry, ptr @mt7530_setup_port5._entry_ptr, ptr @mt7530_vlan_cmd._entry, ptr @mt7530_vlan_cmd._entry.25, ptr @mt7530_vlan_cmd._entry_ptr, ptr @mt7530_vlan_cmd._entry_ptr.27, ptr @mt7531_ind_c22_phy_read._entry, ptr @mt7531_ind_c22_phy_read._entry.100, ptr @mt7531_ind_c22_phy_read._entry_ptr, ptr @mt7531_ind_c22_phy_read._entry_ptr.101, ptr @mt7531_ind_c22_phy_write._entry, ptr @mt7531_ind_c22_phy_write._entry.103, ptr @mt7531_ind_c22_phy_write._entry_ptr, ptr @mt7531_ind_c22_phy_write._entry_ptr.104, ptr @mt7531_ind_c45_phy_read._entry, ptr @mt7531_ind_c45_phy_read._entry.90, ptr @mt7531_ind_c45_phy_read._entry.92, ptr @mt7531_ind_c45_phy_read._entry_ptr, ptr @mt7531_ind_c45_phy_read._entry_ptr.91, ptr @mt7531_ind_c45_phy_read._entry_ptr.93, ptr @mt7531_ind_c45_phy_write._entry, ptr @mt7531_ind_c45_phy_write._entry.95, ptr @mt7531_ind_c45_phy_write._entry.97, ptr @mt7531_ind_c45_phy_write._entry_ptr, ptr @mt7531_ind_c45_phy_write._entry_ptr.96, ptr @mt7531_ind_c45_phy_write._entry_ptr.98, ptr @mt7531_mac_config._entry, ptr @mt7531_mac_config._entry_ptr, ptr @mt7531_phy_mode_supported._entry, ptr @mt7531_phy_mode_supported._entry_ptr, ptr @mt7531_rgmii_setup._entry, ptr @mt7531_rgmii_setup._entry_ptr, ptr @mt7531_setup._entry, ptr @mt7531_setup._entry.86, ptr @mt7531_setup._entry_ptr, ptr @mt7531_setup._entry_ptr.87, ptr @mt7531_sgmii_pcs_get_state_an._entry, ptr @mt7531_sgmii_pcs_get_state_an._entry_ptr, ptr @mt753x_phylink_mac_config._entry, ptr @mt753x_phylink_mac_config._entry.144, ptr @mt753x_phylink_mac_config._entry_ptr, ptr @mt753x_phylink_mac_config._entry_ptr.146, ptr @of_mdio_parse_addr._entry, ptr @of_mdio_parse_addr._entry.31, ptr @of_mdio_parse_addr._entry_ptr, ptr @of_mdio_parse_addr._entry_ptr.33, ptr @mt7530_mdio_driver, ptr @.str, ptr @mt7530_of_match, ptr @mt753x_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @mt7530_setup_gpio.lock_key, ptr @mt7530_setup_gpio.request_key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.88, ptr @.str.89, ptr @.str.94, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @mt7530_switch_ops, ptr @mt7530_probe.__key, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @mt7530_irq_domain_ops, ptr @.str.133, ptr @.str.136, ptr @mt7530_irq_chip, ptr @mt7530_setup_mdio.idx, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @mt7530_mib, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @switch.table.mt7531_setup, ptr @switch.table.mt7530_setup_port5, ptr @switch.table.mt7530_setup_port5.197, ptr @switch.table.mt753x_phylink_mac_config, ptr @switch.table.mt7530_stp_state_set], section "llvm.metadata"
@0 = internal global [219 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_mdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt753x_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_mii_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_mii_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_vlan_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_vlan_cmd._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_port5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_fdb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_pad_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_pad_clk_setup._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_read_mmd_indirect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_write_mmd_indirect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_phy_mode_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_setup._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c45_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c45_phy_read._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c45_phy_read._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c45_phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c45_phy_write._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c45_phy_write._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c22_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c22_phy_read._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c22_phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_ind_c22_phy_write._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_phy_mode_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_sgmii_pcs_get_state_an._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7531_rgmii_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_probe._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_probe._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_irq._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_irq._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_irq._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_mdio.idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_setup_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt753x_phylink_mac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt753x_phylink_mac_config._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_mib to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_hw_vlan_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7530_remove._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7531_setup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7530_setup_port5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7530_setup_port5.197 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt753x_phylink_mac_config to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt7530_stp_state_set to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @mt7530_mdio_driver) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mdio_driver_unregister(ptr noundef nonnull @mt7530_mdio_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 244, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i164 = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 84, i32 noundef 3520) #13
  %ds = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i164, ptr %ds, align 4
  %tobool5.not = icmp eq ptr %call.i164, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i164 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mdiodev, ptr %call.i164, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %call.i164, i32 0, i32 18
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %num_ports, align 4
  %call.i165 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef null) #13
  %tobool.i = icmp ne ptr %call.i165, null
  %mcm = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 9
  %frombool = zext i1 %tobool.i to i8
  %5 = ptrtoint ptr %mcm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %mcm, align 4
  br i1 %tobool.i, label %do.end, label %if.end7.if.end29_crit_edge

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end:                                           ; preds = %if.end7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdiodev, ptr noundef nonnull @.str.113) #16
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %mdiodev, ptr noundef nonnull @.str.116, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %rstc = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %rstc, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end24, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.118) #16
  %7 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rstc, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end29:                                         ; preds = %do.end.if.end29_crit_edge, %if.end7.if.end29_crit_edge
  %call31 = tail call ptr @of_device_get_match_data(ptr noundef %mdiodev) #13
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call31, ptr %info, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %sw_setup = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 1
  %11 = ptrtoint ptr %sw_setup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw_setup, align 4
  %tobool37.not = icmp eq ptr %12, null
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %lor.lhs.false

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end35
  %pad_setup = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 4
  %13 = ptrtoint ptr %pad_setup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pad_setup, align 4
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false40

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %phy_read = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 2
  %15 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_read, align 4
  %tobool42.not = icmp eq ptr %16, null
  br i1 %tobool42.not, label %lor.lhs.false40.cleanup_crit_edge, label %lor.lhs.false43

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %phy_write = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 3
  %17 = ptrtoint ptr %phy_write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_write, align 4
  %tobool45.not = icmp eq ptr %18, null
  br i1 %tobool45.not, label %lor.lhs.false43.cleanup_crit_edge, label %lor.lhs.false46

lor.lhs.false43.cleanup_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %phy_mode_supported = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 6
  %19 = ptrtoint ptr %phy_mode_supported to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_mode_supported, align 4
  %tobool48.not = icmp eq ptr %20, null
  br i1 %tobool48.not, label %lor.lhs.false46.cleanup_crit_edge, label %lor.lhs.false49

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %mac_port_validate = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 7
  %21 = ptrtoint ptr %mac_port_validate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_port_validate, align 4
  %tobool51.not = icmp eq ptr %22, null
  br i1 %tobool51.not, label %lor.lhs.false49.cleanup_crit_edge, label %lor.lhs.false52

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %mac_port_get_state = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 8
  %23 = ptrtoint ptr %mac_port_get_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac_port_get_state, align 4
  %tobool54.not = icmp eq ptr %24, null
  br i1 %tobool54.not, label %lor.lhs.false52.cleanup_crit_edge, label %lor.lhs.false55

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %mac_port_config = getelementptr inbounds %struct.mt753x_info, ptr %call31, i32 0, i32 9
  %25 = ptrtoint ptr %mac_port_config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_port_config, align 4
  %tobool57.not = icmp eq ptr %26, null
  br i1 %tobool57.not, label %lor.lhs.false55.cleanup_crit_edge, label %if.end59

lor.lhs.false55.cleanup_crit_edge:                ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false55
  %27 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call31, align 4
  %id61 = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %id61 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %id61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then63, label %if.end59.if.end80_crit_edge

if.end59.if.end80_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then63:                                        ; preds = %if.end59
  %call65 = tail call ptr @devm_regulator_get(ptr noundef %mdiodev, ptr noundef nonnull @.str.120) #13
  %core_pwr = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %core_pwr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call65, ptr %core_pwr, align 4
  %cmp.i166 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %call65 to i32
  br label %cleanup

if.end71:                                         ; preds = %if.then63
  %call73 = tail call ptr @devm_regulator_get(ptr noundef %mdiodev, ptr noundef nonnull @.str.121) #13
  %io_pwr = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %io_pwr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call73, ptr %io_pwr, align 4
  %cmp.i167 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then76, label %if.end71.if.end80_crit_edge

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end80:                                         ; preds = %if.end71.if.end80_crit_edge, %if.end59.if.end80_crit_edge
  %34 = ptrtoint ptr %mcm to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mcm, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool82.not = icmp eq i8 %35, 0
  br i1 %tobool82.not, label %if.then83, label %if.end80.if.end96_crit_edge

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then83:                                        ; preds = %if.end80
  %call85 = tail call ptr @devm_gpiod_get_optional(ptr noundef %mdiodev, ptr noundef nonnull @.str.122, i32 noundef 3) #13
  %reset = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call85, ptr %reset, align 4
  %cmp.i168 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %do.end91, label %if.then83.if.end96_crit_edge

if.then83.if.end96_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

do.end91:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.118) #16
  %37 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reset, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %cleanup

if.end96:                                         ; preds = %if.then83.if.end96_crit_edge, %if.end80.if.end96_crit_edge
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdiodev, i32 0, i32 1
  %40 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus, align 8
  %bus97 = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %bus97 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %bus97, align 4
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %mdiodev, ptr %call.i, align 4
  %44 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ds, align 4
  %priv101 = getelementptr inbounds %struct.dsa_switch, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %priv101 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %priv101, align 4
  %47 = load ptr, ptr %ds, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @mt7530_switch_ops, ptr %ops, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %reg_mutex, ptr noundef nonnull @.str.125, ptr noundef nonnull @mt7530_probe.__key) #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %49 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i, align 4
  %50 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ds, align 4
  %call108 = tail call i32 @dsa_register_switch(ptr noundef %51) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end91, %if.then76, %if.then68, %lor.lhs.false55.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge, %lor.lhs.false43.cleanup_crit_edge, %lor.lhs.false40.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end24 ], [ %31, %if.then68 ], [ %33, %if.then76 ], [ %call108, %if.end96 ], [ %39, %do.end91 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ -22, %lor.lhs.false55.cleanup_crit_edge ], [ -22, %lor.lhs.false52.cleanup_crit_edge ], [ -22, %lor.lhs.false49.cleanup_crit_edge ], [ -22, %lor.lhs.false46.cleanup_crit_edge ], [ -22, %lor.lhs.false43.cleanup_crit_edge ], [ -22, %lor.lhs.false40.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_remove(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %core_pwr = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %core_pwr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_pwr, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.192, i32 noundef %call1) #16
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %io_pwr = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %io_pwr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_pwr, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.195, i32 noundef %call5) #16
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end4.if.end12_crit_edge
  %irq = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_free_mdio_irq(ptr noundef nonnull %1) #13
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call.i.i = tail call ptr @free_irq(i32 noundef %13, ptr noundef nonnull %1) #13
  %irq_domain.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %irq_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_domain.i.i, align 4
  tail call void @irq_domain_remove(ptr noundef %15) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %ds = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %17) #13
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_destroy(ptr noundef %reg_mutex) #13
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_shutdown(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ds = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #13
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_setup(ptr noundef %ds) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %interface = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interface) #13
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %interface, align 4, !annotation !432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #13
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
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp5.i = icmp eq i32 %9, 6
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retval.0.i, align 4
  %of_node = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 133, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 16
  %parent = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 4
  %assisted_learning_on_cpu_port = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %17 = ptrtoint ptr %assisted_learning_on_cpu_port to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %assisted_learning_on_cpu_port, align 4
  %bf.set4 = or i16 %bf.load, 1152
  store i16 %bf.set4, ptr %assisted_learning_on_cpu_port, align 4
  %id5 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then, label %dsa_to_port.exit.if.end22_crit_edge

dsa_to_port.exit.if.end22_crit_edge:              ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then:                                          ; preds = %dsa_to_port.exit
  %core_pwr = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %core_pwr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_pwr, align 4
  %call6 = tail call i32 @regulator_set_voltage(ptr noundef %21, i32 noundef 1000000, i32 noundef 1000000) #13
  %22 = ptrtoint ptr %core_pwr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core_pwr, align 4
  %call8 = tail call i32 @regulator_enable(ptr noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef %call8) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %io_pwr = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %io_pwr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_pwr, align 4
  %call12 = tail call i32 @regulator_set_voltage(ptr noundef %27, i32 noundef 3300000, i32 noundef 3300000) #13
  %28 = ptrtoint ptr %io_pwr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_pwr, align 4
  %call14 = tail call i32 @regulator_enable(ptr noundef %29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.7, i32 noundef %call14) #16
  br label %cleanup

if.end22:                                         ; preds = %if.end.if.end22_crit_edge, %dsa_to_port.exit.if.end22_crit_edge
  %mcm = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %mcm to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mcm, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %rstc = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rstc, align 4
  %call24 = tail call i32 @reset_control_assert(ptr noundef %35) #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #13
  %36 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rstc, align 4
  %call26 = tail call i32 @reset_control_deassert(ptr noundef %37) #13
  br label %if.end28

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %reset = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %39, i32 noundef 0) #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #13
  %40 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %41, i32 noundef 1) #13
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23
  %call29 = tail call i64 @ktime_get() #13
  %add.i = add i64 %call29, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2141) #13
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i413 = getelementptr inbounds %struct.mii_bus, ptr %43, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i413, i32 noundef 2) #13
  %44 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus1.i, align 4
  %write.i.i414 = getelementptr inbounds %struct.mii_bus, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %write.i.i414 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i.i414, align 8
  %call.i.i415 = tail call i32 %47(ptr noundef %45, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i415)
  %cmp.i.i416 = icmp slt i32 %call.i.i415, 0
  br i1 %cmp.i.i416, label %if.end28.if.end64.sink.split_crit_edge, label %if.end28._mt7530_read.exit_crit_edge

if.end28._mt7530_read.exit_crit_edge:             ; preds = %if.end28
  br label %_mt7530_read.exit

if.end28.if.end64.sink.split_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.sink.split

_mt7530_read.exit:                                ; preds = %if.then55._mt7530_read.exit_crit_edge, %if.end28._mt7530_read.exit_crit_edge
  %48 = phi ptr [ %62, %if.then55._mt7530_read.exit_crit_edge ], [ %45, %if.end28._mt7530_read.exit_crit_edge ]
  %mdio_lock.i417 = phi ptr [ %mdio_lock.i, %if.then55._mt7530_read.exit_crit_edge ], [ %mdio_lock.i413, %if.end28._mt7530_read.exit_crit_edge ]
  %read.i.i = getelementptr inbounds %struct.mii_bus, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read.i.i, align 4
  %call7.i.i = tail call i32 %50(ptr noundef %48, i32 noundef 31, i32 noundef 0) #13
  %51 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read.i.i, align 4
  %call10.i.i = tail call i32 %52(ptr noundef %48, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i = shl i32 %call10.i.i, 16
  %conv13.i.i = and i32 %call7.i.i, 65535
  %or.i.i = or i32 %shl.i.i, %conv13.i.i
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i417) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp44.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp44.not, label %land.lhs.true, label %_mt7530_read.exit.if.end64_crit_edge

_mt7530_read.exit.if.end64_crit_edge:             ; preds = %_mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.lhs.true:                                    ; preds = %_mt7530_read.exit
  %call48 = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call48, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call48, %add.i
  br i1 %cmp3.i, label %if.then51, label %if.then55

if.then51:                                        ; preds = %land.lhs.true
  %53 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i269 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i269, i32 noundef 2) #13
  %55 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus1.i, align 4
  %write.i.i272 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %write.i.i272 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i272, align 8
  %call.i.i273 = tail call i32 %58(ptr noundef %56, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i273)
  %cmp.i.i274 = icmp slt i32 %call.i.i273, 0
  br i1 %cmp.i.i274, label %if.then51.if.end64.sink.split_crit_edge, label %for.end

if.then51.if.end64.sink.split_crit_edge:          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.sink.split

if.then55:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  %59 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %60, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %61 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus1.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %64(ptr noundef %62, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then55.if.end64.sink.split_crit_edge, label %if.then55._mt7530_read.exit_crit_edge

if.then55._mt7530_read.exit_crit_edge:            ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %_mt7530_read.exit

if.then55.if.end64.sink.split_crit_edge:          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64.sink.split

for.end:                                          ; preds = %if.then51
  %read.i.i278 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 4
  %65 = ptrtoint ptr %read.i.i278 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read.i.i278, align 4
  %call7.i.i279 = tail call i32 %66(ptr noundef %56, i32 noundef 31, i32 noundef 0) #13
  %67 = ptrtoint ptr %read.i.i278 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read.i.i278, align 4
  %call10.i.i280 = tail call i32 %68(ptr noundef %56, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i281 = shl i32 %call10.i.i280, 16
  %conv13.i.i282 = and i32 %call7.i.i279, 65535
  %or.i.i283 = or i32 %shl.i.i281, %conv13.i.i282
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i269) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i283)
  %cmp57.not = icmp eq i32 %or.i.i283, 0
  br i1 %cmp57.not, label %do.end62, label %for.end.if.end64_crit_edge

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

do.end62:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end64.sink.split:                              ; preds = %if.then55.if.end64.sink.split_crit_edge, %if.then51.if.end64.sink.split_crit_edge, %if.end28.if.end64.sink.split_crit_edge
  %.lcssa402.sink = phi ptr [ %45, %if.end28.if.end64.sink.split_crit_edge ], [ %56, %if.then51.if.end64.sink.split_crit_edge ], [ %62, %if.then55.if.end64.sink.split_crit_edge ]
  %mdio_lock.i.lcssa.sink = phi ptr [ %mdio_lock.i413, %if.end28.if.end64.sink.split_crit_edge ], [ %mdio_lock.i269, %if.then51.if.end64.sink.split_crit_edge ], [ %mdio_lock.i, %if.then55.if.end64.sink.split_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %.lcssa402.sink, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19) #16
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.lcssa.sink) #13
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %for.end.if.end64_crit_edge, %_mt7530_read.exit.if.end64_crit_edge
  %71 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %72, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %73 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %76(ptr noundef %74, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 511) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %74, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %74, i32 0, i32 4
  %77 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %78(ptr noundef %74, i32 noundef 31, i32 noundef 15) #13
  %79 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %80(ptr noundef %74, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %shl.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %shr66 = lshr i32 %retval.0.i.i.i, 16
  %81 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %shr66, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %shr66)
  %cmp67.not = icmp eq i32 %shr66, 30000
  br i1 %cmp67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.13, i32 noundef %shr66) #16
  br label %cleanup

if.end73:                                         ; preds = %mt7530_read.exit
  %84 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i289 = getelementptr inbounds %struct.mii_bus, ptr %85, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i289, i32 noundef 2) #13
  %86 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus1.i, align 4
  %write.i.i290 = getelementptr inbounds %struct.mii_bus, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %write.i.i290 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write.i.i290, align 8
  %call.i.i291 = tail call i32 %89(ptr noundef %87, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i291)
  %cmp.i.i292 = icmp slt i32 %call.i.i291, 0
  br i1 %cmp.i.i292, label %if.end73.do.end.i.i295_crit_edge, label %if.end.i.i293

if.end73.do.end.i.i295_crit_edge:                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i295

if.end.i.i293:                                    ; preds = %if.end73
  %90 = ptrtoint ptr %write.i.i290 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write.i.i290, align 8
  %call12.i.i = tail call i32 %91(ptr noundef %87, i32 noundef 31, i32 noundef 0, i16 noundef zeroext 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i293.do.end.i.i295_crit_edge, label %err.i.i

if.end.i.i293.do.end.i.i295_crit_edge:            ; preds = %if.end.i.i293
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i295

err.i.i:                                          ; preds = %if.end.i.i293
  %92 = ptrtoint ptr %write.i.i290 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write.i.i290, align 8
  %call18.i.i = tail call i32 %93(ptr noundef %87, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i295_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i295_crit_edge:                  ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i295

do.end.i.i295:                                    ; preds = %err.i.i.do.end.i.i295_crit_edge, %if.end.i.i293.do.end.i.i295_crit_edge, %if.end73.do.end.i.i295_crit_edge
  %dev.i.i294 = getelementptr inbounds %struct.mii_bus, ptr %87, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i294, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i295, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i289) #13
  %94 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.i297 = getelementptr inbounds %struct.mii_bus, ptr %95, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i297, i32 noundef 2) #13
  %96 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i298 = getelementptr inbounds %struct.mii_bus, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %write.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write.i.i.i298, align 8
  %call.i.i.i299 = tail call i32 %99(ptr noundef %97, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i299)
  %cmp.i.i.i300 = icmp slt i32 %call.i.i.i299, 0
  br i1 %cmp.i.i.i300, label %do.end.i.i.i302, label %if.end.i.i.i309

do.end.i.i.i302:                                  ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i301 = getelementptr inbounds %struct.mii_bus, ptr %97, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i301, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit311

if.end.i.i.i309:                                  ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i303 = getelementptr inbounds %struct.mii_bus, ptr %97, i32 0, i32 4
  %100 = ptrtoint ptr %read.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read.i.i.i303, align 4
  %call7.i.i.i304 = tail call i32 %101(ptr noundef %97, i32 noundef 31, i32 noundef 1) #13
  %102 = ptrtoint ptr %read.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read.i.i.i303, align 4
  %call10.i.i.i305 = tail call i32 %103(ptr noundef %97, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i306 = shl i32 %call10.i.i.i305, 16
  %conv13.i.i.i307 = and i32 %call7.i.i.i304, 65535
  %or.i.i.i308 = or i32 %shl.i.i.i306, %conv13.i.i.i307
  br label %mt7530_read.exit311

mt7530_read.exit311:                              ; preds = %if.end.i.i.i309, %do.end.i.i.i302
  %retval.0.i.i.i310 = phi i32 [ %call.i.i.i299, %do.end.i.i.i302 ], [ %or.i.i.i308, %if.end.i.i.i309 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i297) #13
  %104 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i313 = getelementptr inbounds %struct.mii_bus, ptr %105, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i313, i32 noundef 2) #13
  %106 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus1.i, align 4
  %or = lshr i32 %retval.0.i.i.i310, 16
  %108 = trunc i32 %or to i16
  %conv8.i.i = or i16 %108, 1
  %write.i.i314 = getelementptr inbounds %struct.mii_bus, ptr %107, i32 0, i32 5
  %109 = ptrtoint ptr %write.i.i314 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write.i.i314, align 8
  %call.i.i315 = tail call i32 %110(ptr noundef %107, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i315)
  %cmp.i.i316 = icmp slt i32 %call.i.i315, 0
  br i1 %cmp.i.i316, label %mt7530_read.exit311.do.end.i.i324_crit_edge, label %if.end.i.i319

mt7530_read.exit311.do.end.i.i324_crit_edge:      ; preds = %mt7530_read.exit311
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i324

if.end.i.i319:                                    ; preds = %mt7530_read.exit311
  %111 = trunc i32 %retval.0.i.i.i310 to i16
  %conv6.i.i = and i16 %111, -289
  %112 = ptrtoint ptr %write.i.i314 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write.i.i314, align 8
  %call12.i.i317 = tail call i32 %113(ptr noundef %107, i32 noundef 31, i32 noundef 1, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i317)
  %cmp13.i.i318 = icmp slt i32 %call12.i.i317, 0
  br i1 %cmp13.i.i318, label %if.end.i.i319.do.end.i.i324_crit_edge, label %err.i.i322

if.end.i.i319.do.end.i.i324_crit_edge:            ; preds = %if.end.i.i319
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i324

err.i.i322:                                       ; preds = %if.end.i.i319
  %114 = ptrtoint ptr %write.i.i314 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write.i.i314, align 8
  %call18.i.i320 = tail call i32 %115(ptr noundef %107, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i320)
  %cmp19.i.i321 = icmp slt i32 %call18.i.i320, 0
  br i1 %cmp19.i.i321, label %err.i.i322.do.end.i.i324_crit_edge, label %err.i.i322.mt7530_write.exit325_crit_edge

err.i.i322.mt7530_write.exit325_crit_edge:        ; preds = %err.i.i322
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit325

err.i.i322.do.end.i.i324_crit_edge:               ; preds = %err.i.i322
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i324

do.end.i.i324:                                    ; preds = %err.i.i322.do.end.i.i324_crit_edge, %if.end.i.i319.do.end.i.i324_crit_edge, %mt7530_read.exit311.do.end.i.i324_crit_edge
  %dev.i.i323 = getelementptr inbounds %struct.mii_bus, ptr %107, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i323, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit325

mt7530_write.exit325:                             ; preds = %do.end.i.i324, %err.i.i322.mt7530_write.exit325_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i313) #13
  %p6_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 10
  %116 = ptrtoint ptr %p6_interface to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %p6_interface, align 4
  tail call fastcc void @mt7530_mib_reset(ptr noundef %ds)
  br label %for.body

for.body:                                         ; preds = %if.end89.for.body_crit_edge, %mt7530_write.exit325
  %i.0419 = phi i32 [ 0, %mt7530_write.exit325 ], [ %inc, %if.end89.for.body_crit_edge ]
  %mul = shl i32 %i.0419, 8
  %add77 = add nuw nsw i32 %mul, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add77, i32 noundef 16711680, i32 noundef 0)
  %add79 = add nuw nsw i32 %mul, 8204
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add79, i32 noundef 0, i32 noundef 16) #13
  %117 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dst1.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_cpu_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_cpu_port.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %120 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %121, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %122 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %i.0419)
  %cmp5.i.i = icmp eq i32 %123, %i.0419
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %124 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %for.body.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i326 = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i326, i32 0, i32 6
  %125 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp.i327 = icmp eq i32 %126, 1
  br i1 %cmp.i327, label %if.then81, label %if.else86

if.then81:                                        ; preds = %dsa_is_cpu_port.exit
  %call82 = tail call fastcc i32 @mt753x_cpu_port_enable(ptr noundef %ds, i32 noundef %i.0419)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then81.if.end89_crit_edge, label %if.then81.cleanup_crit_edge

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then81.if.end89_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.else86:                                        ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %priv1, align 4
  %reg_mutex.i = getelementptr inbounds %struct.mt7530_priv, ptr %128, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #13
  %arrayidx.i = getelementptr %struct.mt7530_priv, ptr %128, i32 0, i32 15, i32 %i.0419
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx.i, align 4
  tail call fastcc void @mt7530_rmw(ptr noundef %128, i32 noundef %add77, i32 noundef 16711680, i32 noundef 0) #13
  %add3.i = add nuw nsw i32 %mul, 12288
  tail call fastcc void @mt7530_rmw(ptr noundef %128, i32 noundef %add3.i, i32 noundef 24831, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i) #13
  %add88 = add nuw nsw i32 %mul, 8212
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add88, i32 noundef 4095, i32 noundef 0)
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then81.if.end89_crit_edge
  %add91 = add nuw nsw i32 %mul, 8208
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add91, i32 noundef 1792, i32 noundef 256)
  %inc = add nuw nsw i32 %i.0419, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end92, label %if.end89.for.body_crit_edge

if.end89.for.body_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end92:                                        ; preds = %if.end89
  %call93 = tail call fastcc i32 @mt7530_setup_vlan0(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %for.end92.cleanup_crit_edge

for.end92.cleanup_crit_edge:                      ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end96:                                         ; preds = %for.end92
  %p5_intf_sel = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  %130 = ptrtoint ptr %p5_intf_sel to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %p5_intf_sel, align 4
  %131 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %interface, align 4
  %132 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dst1.i, align 4
  %ports.i.i330 = getelementptr inbounds %struct.dsa_switch_tree, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %ports.i.i330 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn20.i.i331 = load ptr, ptr %ports.i.i330, align 4
  %cmp.not21.i.i332 = icmp eq ptr %.pn20.i.i331, %ports.i.i330
  br i1 %cmp.not21.i.i332, label %if.end96.dsa_is_unused_port.exit_crit_edge, label %if.end96.for.body.i.i336_crit_edge

if.end96.for.body.i.i336_crit_edge:               ; preds = %if.end96
  br label %for.body.i.i336

if.end96.dsa_is_unused_port.exit_crit_edge:       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_unused_port.exit

for.body.i.i336:                                  ; preds = %for.inc.i.i342.for.body.i.i336_crit_edge, %if.end96.for.body.i.i336_crit_edge
  %.pn22.i.i333 = phi ptr [ %.pn.i.i340, %for.inc.i.i342.for.body.i.i336_crit_edge ], [ %.pn20.i.i331, %if.end96.for.body.i.i336_crit_edge ]
  %ds3.i.i334 = getelementptr i8, ptr %.pn22.i.i333, i32 -432
  %135 = ptrtoint ptr %ds3.i.i334 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ds3.i.i334, align 4
  %cmp4.i.i335 = icmp eq ptr %136, %ds
  br i1 %cmp4.i.i335, label %land.lhs.true.i.i339, label %for.body.i.i336.for.inc.i.i342_crit_edge

for.body.i.i336.for.inc.i.i342_crit_edge:         ; preds = %for.body.i.i336
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i342

land.lhs.true.i.i339:                             ; preds = %for.body.i.i336
  %index.i.i337 = getelementptr i8, ptr %.pn22.i.i333, i32 -428
  %137 = ptrtoint ptr %index.i.i337 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %index.i.i337, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %138)
  %cmp5.i.i338 = icmp eq i32 %138, 5
  br i1 %cmp5.i.i338, label %cleanup.split.loop.exit18.i.i344, label %land.lhs.true.i.i339.for.inc.i.i342_crit_edge

land.lhs.true.i.i339.for.inc.i.i342_crit_edge:    ; preds = %land.lhs.true.i.i339
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i342

for.inc.i.i342:                                   ; preds = %land.lhs.true.i.i339.for.inc.i.i342_crit_edge, %for.body.i.i336.for.inc.i.i342_crit_edge
  %139 = ptrtoint ptr %.pn22.i.i333 to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pn.i.i340 = load ptr, ptr %.pn22.i.i333, align 4
  %cmp.not.i.i341 = icmp eq ptr %.pn.i.i340, %ports.i.i330
  br i1 %cmp.not.i.i341, label %for.inc.i.i342.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i342.for.body.i.i336_crit_edge

for.inc.i.i342.for.body.i.i336_crit_edge:         ; preds = %for.inc.i.i342
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i336

for.inc.i.i342.dsa_is_unused_port.exit_crit_edge: ; preds = %for.inc.i.i342
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i344:                 ; preds = %land.lhs.true.i.i339
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i343 = getelementptr i8, ptr %.pn22.i.i333, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i344, %for.inc.i.i342.dsa_is_unused_port.exit_crit_edge, %if.end96.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i345 = phi ptr [ %dp.0.le.i.i343, %cleanup.split.loop.exit18.i.i344 ], [ null, %if.end96.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i342.dsa_is_unused_port.exit_crit_edge ]
  %type.i346 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i345, i32 0, i32 6
  %140 = ptrtoint ptr %type.i346 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %type.i346, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp.i347 = icmp eq i32 %141, 0
  br i1 %cmp.i347, label %if.else108, label %if.then98

if.then98:                                        ; preds = %dsa_is_unused_port.exit
  %142 = ptrtoint ptr %p5_intf_sel to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 3, ptr %p5_intf_sel, align 4
  %143 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dst1.i, align 4
  %ports.i349 = getelementptr inbounds %struct.dsa_switch_tree, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %ports.i349 to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pn20.i350 = load ptr, ptr %ports.i349, align 4
  %cmp.not21.i351 = icmp eq ptr %.pn20.i350, %ports.i349
  br i1 %cmp.not21.i351, label %if.then98.dsa_to_port.exit365_crit_edge, label %if.then98.for.body.i355_crit_edge

if.then98.for.body.i355_crit_edge:                ; preds = %if.then98
  br label %for.body.i355

if.then98.dsa_to_port.exit365_crit_edge:          ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit365

for.body.i355:                                    ; preds = %for.inc.i361.for.body.i355_crit_edge, %if.then98.for.body.i355_crit_edge
  %.pn22.i352 = phi ptr [ %.pn.i359, %for.inc.i361.for.body.i355_crit_edge ], [ %.pn20.i350, %if.then98.for.body.i355_crit_edge ]
  %ds3.i353 = getelementptr i8, ptr %.pn22.i352, i32 -432
  %146 = ptrtoint ptr %ds3.i353 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ds3.i353, align 4
  %cmp4.i354 = icmp eq ptr %147, %ds
  br i1 %cmp4.i354, label %land.lhs.true.i358, label %for.body.i355.for.inc.i361_crit_edge

for.body.i355.for.inc.i361_crit_edge:             ; preds = %for.body.i355
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i361

land.lhs.true.i358:                               ; preds = %for.body.i355
  %index.i356 = getelementptr i8, ptr %.pn22.i352, i32 -428
  %148 = ptrtoint ptr %index.i356 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %index.i356, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %149)
  %cmp5.i357 = icmp eq i32 %149, 5
  br i1 %cmp5.i357, label %cleanup.split.loop.exit18.i363, label %land.lhs.true.i358.for.inc.i361_crit_edge

land.lhs.true.i358.for.inc.i361_crit_edge:        ; preds = %land.lhs.true.i358
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i361

for.inc.i361:                                     ; preds = %land.lhs.true.i358.for.inc.i361_crit_edge, %for.body.i355.for.inc.i361_crit_edge
  %150 = ptrtoint ptr %.pn22.i352 to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pn.i359 = load ptr, ptr %.pn22.i352, align 4
  %cmp.not.i360 = icmp eq ptr %.pn.i359, %ports.i349
  br i1 %cmp.not.i360, label %for.inc.i361.dsa_to_port.exit365_crit_edge, label %for.inc.i361.for.body.i355_crit_edge

for.inc.i361.for.body.i355_crit_edge:             ; preds = %for.inc.i361
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i355

for.inc.i361.dsa_to_port.exit365_crit_edge:       ; preds = %for.inc.i361
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit365

cleanup.split.loop.exit18.i363:                   ; preds = %land.lhs.true.i358
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i362 = getelementptr i8, ptr %.pn22.i352, i32 -448
  br label %dsa_to_port.exit365

dsa_to_port.exit365:                              ; preds = %cleanup.split.loop.exit18.i363, %for.inc.i361.dsa_to_port.exit365_crit_edge, %if.then98.dsa_to_port.exit365_crit_edge
  %retval.0.i364 = phi ptr [ %dp.0.le.i362, %cleanup.split.loop.exit18.i363 ], [ null, %if.then98.dsa_to_port.exit365_crit_edge ], [ null, %for.inc.i361.dsa_to_port.exit365_crit_edge ]
  %dn101 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i364, i32 0, i32 12
  %151 = ptrtoint ptr %dn101 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dn101, align 4
  %call102 = call i32 @of_get_phy_mode(ptr noundef %152, ptr noundef nonnull %interface) #13
  %153 = zext i32 %call102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call102, label %dsa_to_port.exit365.cleanup_crit_edge [
    i32 0, label %dsa_to_port.exit365.if.end152_crit_edge
    i32 -19, label %dsa_to_port.exit365.if.end152_crit_edge456
  ]

dsa_to_port.exit365.if.end152_crit_edge456:       ; preds = %dsa_to_port.exit365
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

dsa_to_port.exit365.if.end152_crit_edge:          ; preds = %dsa_to_port.exit365
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

dsa_to_port.exit365.cleanup_crit_edge:            ; preds = %dsa_to_port.exit365
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else108:                                       ; preds = %dsa_is_unused_port.exit
  %call109 = tail call ptr @of_get_next_child(ptr noundef %16, ptr noundef null) #13
  %cmp111.not421 = icmp eq ptr %call109, null
  br i1 %cmp111.not421, label %if.else108.if.end152_crit_edge, label %if.else108.for.body112_crit_edge

if.else108.for.body112_crit_edge:                 ; preds = %if.else108
  br label %for.body112

if.else108.if.end152_crit_edge:                   ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

for.body112:                                      ; preds = %for.inc149.for.body112_crit_edge, %if.else108.for.body112_crit_edge
  %mac_np.0422 = phi ptr [ %call150, %for.inc149.for.body112_crit_edge ], [ %call109, %if.else108.for.body112_crit_edge ]
  %call113 = call i32 @of_device_is_compatible(ptr noundef nonnull %mac_np.0422, ptr noundef nonnull @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %for.body112.for.inc149_crit_edge, label %if.end116

for.body112.for.inc149_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc149

if.end116:                                        ; preds = %for.body112
  %call.i.i366 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %mac_np.0422, ptr noundef nonnull @.str.16, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i366)
  %cmp118 = icmp slt i32 %call.i.i366, 0
  br i1 %cmp118, label %if.end116.for.inc149_crit_edge, label %lor.lhs.false

if.end116.for.inc149_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc149

lor.lhs.false:                                    ; preds = %if.end116
  %154 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp119.not = icmp eq i32 %155, 1
  br i1 %cmp119.not, label %if.end121, label %lor.lhs.false.for.inc149_crit_edge

lor.lhs.false.for.inc149_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc149

if.end121:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #13
  %156 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %mac_np.0422, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #13
  br label %for.inc149

of_parse_phandle.exit:                            ; preds = %if.end121
  %157 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #13
  %tobool123.not = icmp eq ptr %158, null
  br i1 %tobool123.not, label %of_parse_phandle.exit.for.inc149_crit_edge, label %if.end125

of_parse_phandle.exit.for.inc149_crit_edge:       ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc149

if.end125:                                        ; preds = %of_parse_phandle.exit
  %parent126 = getelementptr inbounds %struct.device_node, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %parent126 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %parent126, align 4
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  %of_node128 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 27
  %163 = ptrtoint ptr %of_node128 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %of_node128, align 8
  %parent129 = getelementptr inbounds %struct.device_node, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %parent129 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %parent129, align 4
  %cmp130 = icmp eq ptr %160, %166
  br i1 %cmp130, label %if.then131, label %if.end125.if.end148_crit_edge

if.end125.if.end148_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end148

if.then131:                                       ; preds = %if.end125
  %call132 = call i32 @of_get_phy_mode(ptr noundef nonnull %mac_np.0422, ptr noundef nonnull %interface) #13
  %167 = zext i32 %call132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %call132, label %if.then136 [
    i32 0, label %if.then131.if.end137_crit_edge
    i32 -19, label %if.then131.if.end137_crit_edge457
  ]

if.then131.if.end137_crit_edge457:                ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then131.if.end137_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then136:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  call void @of_node_put(ptr noundef nonnull %mac_np.0422) #13
  br label %cleanup

if.end137:                                        ; preds = %if.then131.if.end137_crit_edge, %if.then131.if.end137_crit_edge457
  %168 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ds, align 4
  %call139 = call fastcc i32 @of_mdio_parse_addr(ptr noundef %169, ptr noundef nonnull %158)
  %170 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %call139, ptr %id, align 4
  %171 = zext i32 %call139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %call139, label %if.end137.if.end148_crit_edge [
    i32 0, label %if.end137.if.end148.sink.split_crit_edge
    i32 4, label %if.then145
  ]

if.end137.if.end148.sink.split_crit_edge:         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end148.sink.split

if.end137.if.end148_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end148

if.then145:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end148.sink.split

if.end148.sink.split:                             ; preds = %if.then145, %if.end137.if.end148.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then145 ], [ 1, %if.end137.if.end148.sink.split_crit_edge ]
  %172 = ptrtoint ptr %p5_intf_sel to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %.sink, ptr %p5_intf_sel, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.end148.sink.split, %if.end137.if.end148_crit_edge, %if.end125.if.end148_crit_edge
  call void @of_node_put(ptr noundef nonnull %mac_np.0422) #13
  call void @of_node_put(ptr noundef nonnull %158) #13
  br label %if.end152

for.inc149:                                       ; preds = %of_parse_phandle.exit.for.inc149_crit_edge, %of_parse_phandle.exit.thread, %lor.lhs.false.for.inc149_crit_edge, %if.end116.for.inc149_crit_edge, %for.body112.for.inc149_crit_edge
  %call150 = call ptr @of_get_next_child(ptr noundef %16, ptr noundef nonnull %mac_np.0422) #13
  %cmp111.not = icmp eq ptr %call150, null
  br i1 %cmp111.not, label %for.inc149.if.end152_crit_edge, label %for.inc149.for.body112_crit_edge

for.inc149.for.body112_crit_edge:                 ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body112

for.inc149.if.end152_crit_edge:                   ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.end152:                                        ; preds = %for.inc149.if.end152_crit_edge, %if.end148, %if.else108.if.end152_crit_edge, %dsa_to_port.exit365.if.end152_crit_edge, %dsa_to_port.exit365.if.end152_crit_edge456
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %of_node154 = getelementptr inbounds %struct.device, ptr %174, i32 0, i32 27
  %175 = ptrtoint ptr %of_node154 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %of_node154, align 8
  %call.i368 = call ptr @of_find_property(ptr noundef %176, ptr noundef nonnull @.str.18, ptr noundef null) #13
  %tobool.i.not = icmp eq ptr %call.i368, null
  br i1 %tobool.i.not, label %if.end152.if.end161_crit_edge, label %if.then156

if.end152.if.end161_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.then156:                                       ; preds = %if.end152
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  %call.i.i369 = call noalias ptr @devm_kmalloc(ptr noundef %178, i32 noundef 348, i32 noundef 3520) #13
  %tobool.not.i370 = icmp eq ptr %call.i.i369, null
  br i1 %tobool.not.i370, label %if.then156.cleanup_crit_edge, label %if.end.i376

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i376:                                      ; preds = %if.then156
  %179 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.i372 = getelementptr inbounds %struct.mii_bus, ptr %180, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i372, i32 noundef 2) #13
  %181 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i373 = getelementptr inbounds %struct.mii_bus, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %write.i.i.i373 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write.i.i.i373, align 8
  %call.i.i.i374 = call i32 %184(ptr noundef %182, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i374)
  %cmp.i.i.i375 = icmp slt i32 %call.i.i.i374, 0
  br i1 %cmp.i.i.i375, label %if.end.i376.do.end.i.i.i379_crit_edge, label %if.end.i.i.i377

if.end.i376.do.end.i.i.i379_crit_edge:            ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i379

if.end.i.i.i377:                                  ; preds = %if.end.i376
  %185 = ptrtoint ptr %write.i.i.i373 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write.i.i.i373, align 8
  %call12.i.i.i = call i32 %186(ptr noundef %182, i32 noundef 31, i32 noundef 5, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call12.i.i.i, 0
  br i1 %cmp13.i.i.i, label %if.end.i.i.i377.do.end.i.i.i379_crit_edge, label %err.i.i.i

if.end.i.i.i377.do.end.i.i.i379_crit_edge:        ; preds = %if.end.i.i.i377
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i379

err.i.i.i:                                        ; preds = %if.end.i.i.i377
  %187 = ptrtoint ptr %write.i.i.i373 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write.i.i.i373, align 8
  %call18.i.i.i = call i32 %188(ptr noundef %182, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %cmp19.i.i.i = icmp slt i32 %call18.i.i.i, 0
  br i1 %cmp19.i.i.i, label %err.i.i.i.do.end.i.i.i379_crit_edge, label %err.i.i.i.mt7530_write.exit.i_crit_edge

err.i.i.i.mt7530_write.exit.i_crit_edge:          ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit.i

err.i.i.i.do.end.i.i.i379_crit_edge:              ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i379

do.end.i.i.i379:                                  ; preds = %err.i.i.i.do.end.i.i.i379_crit_edge, %if.end.i.i.i377.do.end.i.i.i379_crit_edge, %if.end.i376.do.end.i.i.i379_crit_edge
  %dev.i.i.i378 = getelementptr inbounds %struct.mii_bus, ptr %182, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i378, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit.i

mt7530_write.exit.i:                              ; preds = %do.end.i.i.i379, %err.i.i.i.mt7530_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mdio_lock.i.i372) #13
  %189 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i23.i = getelementptr inbounds %struct.mii_bus, ptr %190, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %mdio_lock.i23.i, i32 noundef 2) #13
  %191 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bus1.i, align 4
  %write.i.i24.i = getelementptr inbounds %struct.mii_bus, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %write.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write.i.i24.i, align 8
  %call.i.i25.i = call i32 %194(ptr noundef %192, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %cmp.i.i26.i = icmp slt i32 %call.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %mt7530_write.exit.i.do.end.i.i34.i_crit_edge, label %if.end.i.i29.i

mt7530_write.exit.i.do.end.i.i34.i_crit_edge:     ; preds = %mt7530_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i34.i

if.end.i.i29.i:                                   ; preds = %mt7530_write.exit.i
  %195 = ptrtoint ptr %write.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write.i.i24.i, align 8
  %call12.i.i27.i = call i32 %196(ptr noundef %192, i32 noundef 31, i32 noundef 4, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i27.i)
  %cmp13.i.i28.i = icmp slt i32 %call12.i.i27.i, 0
  br i1 %cmp13.i.i28.i, label %if.end.i.i29.i.do.end.i.i34.i_crit_edge, label %err.i.i32.i

if.end.i.i29.i.do.end.i.i34.i_crit_edge:          ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i34.i

err.i.i32.i:                                      ; preds = %if.end.i.i29.i
  %197 = ptrtoint ptr %write.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %write.i.i24.i, align 8
  %call18.i.i30.i = call i32 %198(ptr noundef %192, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i30.i)
  %cmp19.i.i31.i = icmp slt i32 %call18.i.i30.i, 0
  br i1 %cmp19.i.i31.i, label %err.i.i32.i.do.end.i.i34.i_crit_edge, label %err.i.i32.i.mt7530_write.exit35.i_crit_edge

err.i.i32.i.mt7530_write.exit35.i_crit_edge:      ; preds = %err.i.i32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit35.i

err.i.i32.i.do.end.i.i34.i_crit_edge:             ; preds = %err.i.i32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i34.i

do.end.i.i34.i:                                   ; preds = %err.i.i32.i.do.end.i.i34.i_crit_edge, %if.end.i.i29.i.do.end.i.i34.i_crit_edge, %mt7530_write.exit.i.do.end.i.i34.i_crit_edge
  %dev.i.i33.i = getelementptr inbounds %struct.mii_bus, ptr %192, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i33.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit35.i

mt7530_write.exit35.i:                            ; preds = %do.end.i.i34.i, %err.i.i32.i.mt7530_write.exit35.i_crit_edge
  call void @mutex_unlock(ptr noundef %mdio_lock.i23.i) #13
  %199 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i37.i = getelementptr inbounds %struct.mii_bus, ptr %200, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %mdio_lock.i37.i, i32 noundef 2) #13
  %201 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bus1.i, align 4
  %write.i.i38.i = getelementptr inbounds %struct.mii_bus, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %write.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write.i.i38.i, align 8
  %call.i.i39.i = call i32 %204(ptr noundef %202, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %cmp.i.i40.i = icmp slt i32 %call.i.i39.i, 0
  br i1 %cmp.i.i40.i, label %mt7530_write.exit35.i.do.end.i.i48.i_crit_edge, label %if.end.i.i43.i

mt7530_write.exit35.i.do.end.i.i48.i_crit_edge:   ; preds = %mt7530_write.exit35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i48.i

if.end.i.i43.i:                                   ; preds = %mt7530_write.exit35.i
  %205 = ptrtoint ptr %write.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write.i.i38.i, align 8
  %call12.i.i41.i = call i32 %206(ptr noundef %202, i32 noundef 31, i32 noundef 1, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i41.i)
  %cmp13.i.i42.i = icmp slt i32 %call12.i.i41.i, 0
  br i1 %cmp13.i.i42.i, label %if.end.i.i43.i.do.end.i.i48.i_crit_edge, label %err.i.i46.i

if.end.i.i43.i.do.end.i.i48.i_crit_edge:          ; preds = %if.end.i.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i48.i

err.i.i46.i:                                      ; preds = %if.end.i.i43.i
  %207 = ptrtoint ptr %write.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write.i.i38.i, align 8
  %call18.i.i44.i = call i32 %208(ptr noundef %202, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i44.i)
  %cmp19.i.i45.i = icmp slt i32 %call18.i.i44.i, 0
  br i1 %cmp19.i.i45.i, label %err.i.i46.i.do.end.i.i48.i_crit_edge, label %err.i.i46.i.mt7530_setup_gpio.exit_crit_edge

err.i.i46.i.mt7530_setup_gpio.exit_crit_edge:     ; preds = %err.i.i46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_setup_gpio.exit

err.i.i46.i.do.end.i.i48.i_crit_edge:             ; preds = %err.i.i46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i48.i

do.end.i.i48.i:                                   ; preds = %err.i.i46.i.do.end.i.i48.i_crit_edge, %if.end.i.i43.i.do.end.i.i48.i_crit_edge, %mt7530_write.exit35.i.do.end.i.i48.i_crit_edge
  %dev.i.i47.i = getelementptr inbounds %struct.mii_bus, ptr %202, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i47.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_setup_gpio.exit

mt7530_setup_gpio.exit:                           ; preds = %do.end.i.i48.i, %err.i.i46.i.mt7530_setup_gpio.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mdio_lock.i37.i) #13
  %209 = ptrtoint ptr %call.i.i369 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr @.str, ptr %call.i.i369, align 4
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 2
  %210 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %178, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 4
  %211 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %owner.i, align 4
  %get_direction.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 7
  %212 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr @mt7530_gpio_get_direction, ptr %get_direction.i, align 4
  %direction_input.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 8
  %213 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @mt7530_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 9
  %214 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @mt7530_gpio_direction_output, ptr %direction_output.i, align 4
  %get.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 10
  %215 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @mt7530_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 12
  %216 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @mt7530_gpio_set, ptr %set.i, align 4
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 19
  %217 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1, ptr %base.i, align 4
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 20
  %218 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 15, ptr %ngpio.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i.i369, i32 0, i32 23
  %219 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 1, ptr %can_sleep.i, align 4
  %call2.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %178, ptr noundef nonnull %call.i.i369, ptr noundef %1, ptr noundef nonnull @mt7530_setup_gpio.lock_key, ptr noundef nonnull @mt7530_setup_gpio.request_key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool158.not = icmp eq i32 %call2.i, 0
  br i1 %tobool158.not, label %mt7530_setup_gpio.exit.if.end161_crit_edge, label %mt7530_setup_gpio.exit.cleanup_crit_edge

mt7530_setup_gpio.exit.cleanup_crit_edge:         ; preds = %mt7530_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mt7530_setup_gpio.exit.if.end161_crit_edge:       ; preds = %mt7530_setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.end161:                                        ; preds = %mt7530_setup_gpio.exit.if.end161_crit_edge, %if.end152.if.end161_crit_edge
  %220 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %interface, align 4
  call fastcc void @mt7530_setup_port5(ptr noundef %ds, i32 noundef %221)
  %call162 = call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 2, ptr noundef null)
  %222 = call i32 @llvm.smin.i32(i32 %call162, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %mt7530_setup_gpio.exit.cleanup_crit_edge, %if.then156.cleanup_crit_edge, %if.then136, %dsa_to_port.exit365.cleanup_crit_edge, %for.end92.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %do.end71, %do.end62, %do.end19, %do.end
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call14, %do.end19 ], [ -110, %do.end62 ], [ -19, %do.end71 ], [ %call132, %if.then136 ], [ %call93, %for.end92.cleanup_crit_edge ], [ %call102, %dsa_to_port.exit365.cleanup_crit_edge ], [ %call2.i, %mt7530_setup_gpio.exit.cleanup_crit_edge ], [ %222, %if.end161 ], [ -12, %if.then156.cleanup_crit_edge ], [ %call82, %if.then81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_phy_read(ptr nocapture noundef readonly %priv, i32 noundef %port, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %call = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef %port, i32 noundef %regnum) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_phy_write(ptr nocapture noundef readonly %priv, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %val) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_pad_clk_setup(ptr nocapture noundef readonly %ds, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %7(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %9(ptr noundef %5, i32 noundef 31, i32 noundef 1) #13
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %11(ptr noundef %5, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv13.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %and = and i32 %retval.0.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and)
  %cmp = icmp eq i32 %and, 512
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #16
  br label %cleanup

if.end:                                           ; preds = %mt7530_read.exit
  %14 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %interface, label %do.end20 [
    i32 9, label %if.end.sw.epilog_crit_edge
    i32 19, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %id = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp3 = icmp eq i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp5 = icmp eq i32 %and, 1024
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select = select i1 %cmp5, i32 1920, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and)
  %cmp8 = icmp eq i32 %and, 1536
  %spec.select78 = select i1 %cmp8, i32 2560, i32 %spec.select
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select77 = select i1 %cmp5, i32 3200, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and)
  %cmp14 = icmp eq i32 %and, 1536
  %spec.select79 = select i1 %cmp14, i32 5120, i32 %spec.select77
  br label %sw.epilog

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.77, i32 noundef %interface) #16
  br label %cleanup

sw.epilog:                                        ; preds = %if.else, %if.then4, %if.end.sw.epilog_crit_edge
  %ncpo1.2 = phi i32 [ 3200, %if.end.sw.epilog_crit_edge ], [ %spec.select78, %if.then4 ], [ %spec.select79, %if.else ]
  %tobool.not = phi i1 [ true, %if.end.sw.epilog_crit_edge ], [ false, %if.then4 ], [ false, %if.else ]
  %trgint.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 1, %if.then4 ], [ 1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %and)
  %cmp22 = icmp eq i32 %and, 1536
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 30768, i32 noundef 3, i32 noundef %trgint.0)
  br label %for.body

for.body:                                         ; preds = %mt7530_write.exit.for.body_crit_edge, %sw.epilog
  %i.080 = phi i32 [ 0, %sw.epilog ], [ %inc, %mt7530_write.exit.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.080, 3
  %add = add nuw nsw i32 %mul, 31316
  %19 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %21 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus1.i.i, align 4
  %23 = trunc i32 %add to i16
  %24 = lshr i16 %23, 6
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %26(ptr noundef %22, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.do.end.i.i_crit_edge, label %if.end.i.i

for.body.do.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %for.body
  %27 = lshr exact i32 %add, 2
  %conv4.i.i = and i32 %27, 15
  %28 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %29(ptr noundef %22, i32 noundef 31, i32 noundef %conv4.i.i, i16 noundef zeroext 136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %30 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %31(ptr noundef %22, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %for.body.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %mt7530_write.exit.for.body_crit_edge

mt7530_write.exit.for.body_crit_edge:             ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %mt7530_write.exit
  %. = select i1 %cmp22, i32 87, i32 135
  tail call fastcc void @core_rmw(ptr noundef %1, i32 noundef 3, i32 noundef 0) #13
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1037, i32 noundef 0)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1038, i32 noundef 281)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1037, i32 noundef 10272)
  %and28 = and i32 %ncpo1.2, 65535
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1028, i32 noundef %and28)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1029, i32 noundef 0)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1033, i32 noundef %.)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1034, i32 noundef %.)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1027, i32 noundef 7168)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1025, i32 noundef 49184)
  tail call fastcc void @core_write(ptr noundef %1, i32 noundef 1030, i32 noundef 41016)
  tail call fastcc void @core_rmw(ptr noundef %1, i32 noundef 0, i32 noundef 3) #13
  br i1 %tobool.not, label %for.body34.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body34.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31248, i32 noundef 127, i32 noundef 16)
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31256, i32 noundef 127, i32 noundef 16)
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31264, i32 noundef 127, i32 noundef 16)
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31272, i32 noundef 127, i32 noundef 16)
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31280, i32 noundef 127, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %for.body34.preheader, %for.end.cleanup_crit_edge, %do.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end20 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.body34.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mt7530_phy_mode_supported(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %port, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge26
    i32 2, label %entry.sw.bb_crit_edge27
    i32 3, label %entry.sw.bb_crit_edge28
    i32 4, label %entry.sw.bb_crit_edge29
    i32 5, label %sw.bb2
    i32 6, label %sw.bb11
  ]

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28, %entry.sw.bb_crit_edge29
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp.not = icmp eq i32 %2, 3
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %interface3 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %interface3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface3, align 4
  %switch.tableidx = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 11
  br i1 %5, label %switch.lookup, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %interface12 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %interface12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %switch.selectcmp.case1 = icmp eq i32 %7, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %7)
  %switch.selectcmp.case2 = icmp eq i32 %7, 19
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %port) #16
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %switch.cast = trunc i32 %switch.tableidx to i11
  %switch.downshift = lshr i11 -125, %switch.cast
  %12 = and i11 %switch.downshift, 1
  %13 = sext i11 %12 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %switch.masked = icmp ne i11 %12, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %sw.bb11, %sw.bb2.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i1 [ false, %do.end ], [ %switch.selectcmp, %sw.bb11 ], [ false, %sw.bb2.cleanup_crit_edge ], [ %switch.masked, %switch.lookup ], [ %cmp.not, %sw.bb ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7530_mac_port_validate(ptr nocapture noundef readnone %ds, i32 noundef %port, ptr nocapture noundef %supported) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp = icmp eq i32 %port, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i32, ptr %supported, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %1, 512
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_phylink_mac_link_state(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %port)
  %0 = icmp ugt i32 %port, 6
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %5 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus1.i.i, align 4
  %port.tr = trunc i32 %port to i16
  %7 = shl nuw nsw i16 %port.tr, 8
  %8 = add nuw nsw i16 %7, 12296
  %9 = lshr i16 %8, 6
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 5
  %10 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %11(ptr noundef %6, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %13(ptr noundef %6, i32 noundef 31, i32 noundef 2) #13
  %14 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %15(ptr noundef %6, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv13.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %16 = trunc i32 %retval.0.i.i.i to i8
  %17 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %link, align 4
  %bf.shl = shl i8 %16, 7
  %bf.clear = and i8 %bf.load, 95
  %bf.set = or i8 %bf.clear, %bf.shl
  %bf.lshr = shl i8 %16, 5
  %bf.shl7 = and i8 %bf.lshr, 32
  %bf.set9 = or i8 %bf.set, %bf.shl7
  store i8 %bf.set9, ptr %link, align 4
  %and11 = lshr i32 %retval.0.i.i.i, 1
  %and11.lobit = and i32 %and11, 1
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and11.lobit, ptr %duplex, align 4
  %and13 = and i32 %retval.0.i.i.i, 12
  %19 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %and13, label %sw.default [
    i32 0, label %mt7530_read.exit.sw.epilog_crit_edge
    i32 4, label %sw.bb14
    i32 8, label %sw.bb16
  ]

mt7530_read.exit.sw.epilog_crit_edge:             ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb14:                                          ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb16:                                          ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb14, %mt7530_read.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ -1, %sw.default ], [ 1000, %sw.bb16 ], [ 100, %sw.bb14 ], [ 10, %mt7530_read.exit.sw.epilog_crit_edge ]
  %speed18 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %speed18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %speed18, align 4
  %pause = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %21 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pause, align 4
  %and19 = and i32 %22, -4
  %and20 = lshr i32 %retval.0.i.i.i, 5
  %23 = and i32 %and20, 1
  %24 = or i32 %and19, %23
  store i32 %24, ptr %pause, align 4
  %and25 = and i32 %retval.0.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %sw.epilog.cleanup_crit_edge, label %if.then27

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %or29 = or i32 %24, 2
  %25 = ptrtoint ptr %pause to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or29, ptr %pause, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then27 ], [ 1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_mac_config(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp.not = icmp eq i32 %port, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %ds2 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ds2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds2, align 4
  tail call fastcc void @mt7530_setup_port5(ptr noundef %3, i32 noundef %interface)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7531_setup(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mcm = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mcm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcm, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rstc = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstc, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %5) #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #13
  %6 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rstc, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %7) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %reset = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #13
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = tail call i64 @ktime_get() #13
  %add.i = add i64 %call5, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2283) #13
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i219 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i219, i32 noundef 2) #13
  %14 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus1.i, align 4
  %write.i.i220 = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write.i.i220 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i220, align 8
  %call.i.i221 = tail call i32 %17(ptr noundef %15, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i221)
  %cmp.i.i222 = icmp slt i32 %call.i.i221, 0
  br i1 %cmp.i.i222, label %if.end.if.end35.sink.split_crit_edge, label %if.end._mt7530_read.exit_crit_edge

if.end._mt7530_read.exit_crit_edge:               ; preds = %if.end
  br label %_mt7530_read.exit

if.end.if.end35.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.sink.split

_mt7530_read.exit:                                ; preds = %if.then27._mt7530_read.exit_crit_edge, %if.end._mt7530_read.exit_crit_edge
  %18 = phi ptr [ %32, %if.then27._mt7530_read.exit_crit_edge ], [ %15, %if.end._mt7530_read.exit_crit_edge ]
  %mdio_lock.i223 = phi ptr [ %mdio_lock.i, %if.then27._mt7530_read.exit_crit_edge ], [ %mdio_lock.i219, %if.end._mt7530_read.exit_crit_edge ]
  %read.i.i = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i.i, align 4
  %call7.i.i = tail call i32 %20(ptr noundef %18, i32 noundef 31, i32 noundef 0) #13
  %21 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read.i.i, align 4
  %call10.i.i = tail call i32 %22(ptr noundef %18, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i = shl i32 %call10.i.i, 16
  %conv13.i.i = and i32 %call7.i.i, 65535
  %or.i.i = or i32 %shl.i.i, %conv13.i.i
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i223) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp16.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp16.not, label %land.lhs.true, label %_mt7530_read.exit.if.end35_crit_edge

_mt7530_read.exit.if.end35_crit_edge:             ; preds = %_mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %_mt7530_read.exit
  %call20 = tail call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %if.then23, label %if.then27

if.then23:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i165 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i165, i32 noundef 2) #13
  %25 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus1.i, align 4
  %write.i.i168 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %write.i.i168 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i168, align 8
  %call.i.i169 = tail call i32 %28(ptr noundef %26, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %cmp.i.i170 = icmp slt i32 %call.i.i169, 0
  br i1 %cmp.i.i170, label %if.then23.if.end35.sink.split_crit_edge, label %for.end

if.then23.if.end35.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.sink.split

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  %29 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %31 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus1.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %34(ptr noundef %32, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then27.if.end35.sink.split_crit_edge, label %if.then27._mt7530_read.exit_crit_edge

if.then27._mt7530_read.exit_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %_mt7530_read.exit

if.then27.if.end35.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.sink.split

for.end:                                          ; preds = %if.then23
  %read.i.i174 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 4
  %35 = ptrtoint ptr %read.i.i174 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read.i.i174, align 4
  %call7.i.i175 = tail call i32 %36(ptr noundef %26, i32 noundef 31, i32 noundef 0) #13
  %37 = ptrtoint ptr %read.i.i174 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read.i.i174, align 4
  %call10.i.i176 = tail call i32 %38(ptr noundef %26, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i177 = shl i32 %call10.i.i176, 16
  %conv13.i.i178 = and i32 %call7.i.i175, 65535
  %or.i.i179 = or i32 %shl.i.i177, %conv13.i.i178
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i165) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i179)
  %cmp29.not = icmp eq i32 %or.i.i179, 0
  br i1 %cmp29.not, label %do.end34, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end35.sink.split:                              ; preds = %if.then27.if.end35.sink.split_crit_edge, %if.then23.if.end35.sink.split_crit_edge, %if.end.if.end35.sink.split_crit_edge
  %.lcssa.sink = phi ptr [ %15, %if.end.if.end35.sink.split_crit_edge ], [ %26, %if.then23.if.end35.sink.split_crit_edge ], [ %32, %if.then27.if.end35.sink.split_crit_edge ]
  %mdio_lock.i.lcssa.sink = phi ptr [ %mdio_lock.i219, %if.end.if.end35.sink.split_crit_edge ], [ %mdio_lock.i165, %if.then23.if.end35.sink.split_crit_edge ], [ %mdio_lock.i, %if.then27.if.end35.sink.split_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %.lcssa.sink, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19) #16
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.lcssa.sink) #13
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %for.end.if.end35_crit_edge, %_mt7530_read.exit.if.end35_crit_edge
  %41 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %43 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %46(ptr noundef %44, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %48(ptr noundef %44, i32 noundef 31, i32 noundef 7) #13
  %49 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %50(ptr noundef %44, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %shl.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %shr37 = lshr i32 %retval.0.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 30001, i32 %shr37)
  %cmp38.not = icmp eq i32 %shr37, 30001
  br i1 %cmp38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.13, i32 noundef %shr37) #16
  br label %cleanup

if.end44:                                         ; preds = %mt7530_read.exit
  %53 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i185 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i185, i32 noundef 2) #13
  %55 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus1.i, align 4
  %write.i.i186 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %write.i.i186 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i186, align 8
  %call.i.i187 = tail call i32 %58(ptr noundef %56, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %cmp.i.i188 = icmp slt i32 %call.i.i187, 0
  br i1 %cmp.i.i188, label %if.end44.do.end.i.i191_crit_edge, label %if.end.i.i189

if.end44.do.end.i.i191_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i191

if.end.i.i189:                                    ; preds = %if.end44
  %59 = ptrtoint ptr %write.i.i186 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i.i186, align 8
  %call12.i.i = tail call i32 %60(ptr noundef %56, i32 noundef 31, i32 noundef 0, i16 noundef zeroext 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i189.do.end.i.i191_crit_edge, label %err.i.i

if.end.i.i189.do.end.i.i191_crit_edge:            ; preds = %if.end.i.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i191

err.i.i:                                          ; preds = %if.end.i.i189
  %61 = ptrtoint ptr %write.i.i186 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write.i.i186, align 8
  %call18.i.i = tail call i32 %62(ptr noundef %56, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i191_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i191_crit_edge:                  ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i191

do.end.i.i191:                                    ; preds = %err.i.i.do.end.i.i191_crit_edge, %if.end.i.i189.do.end.i.i191_crit_edge, %if.end44.do.end.i.i191_crit_edge
  %dev.i.i190 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i190, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i191, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i185) #13
  %63 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %64, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i.i, i32 noundef 2) #13
  %65 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 %68(ptr noundef %66, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %66, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7531_dual_sgmii_supported.exit

if.end.i.i.i.i:                                   ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %66, i32 0, i32 4
  %69 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read.i.i.i.i, align 4
  %call7.i.i.i.i = tail call i32 %70(ptr noundef %66, i32 noundef 31, i32 noundef 3) #13
  %71 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read.i.i.i.i, align 4
  %call10.i.i.i.i = tail call i32 %72(ptr noundef %66, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i.i = and i32 %call7.i.i.i.i, 65535
  br label %mt7531_dual_sgmii_supported.exit

mt7531_dual_sgmii_supported.exit:                 ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %do.end.i.i.i.i ], [ %conv13.i.i.i.i, %if.end.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i.i) #13
  %and.i = and i32 %retval.0.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i192.not = icmp eq i32 %and.i, 0
  %p5_intf_sel48 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  br i1 %cmp.i192.not, label %if.else47, label %if.then46

if.then46:                                        ; preds = %mt7531_dual_sgmii_supported.exit
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %p5_intf_sel48 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %p5_intf_sel48, align 4
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31760, i32 noundef 61440, i32 noundef 8192)
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31760, i32 noundef 983040, i32 noundef 131072)
  br label %do.body50

if.else47:                                        ; preds = %mt7531_dual_sgmii_supported.exit
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %p5_intf_sel48 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %p5_intf_sel48, align 4
  br label %do.body50

do.body50:                                        ; preds = %if.else47, %if.then46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7531_setup.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7531_setup, %if.then56)) #13
          to label %do.end62 [label %if.then56], !srcloc !433

if.then56:                                        ; preds = %do.body50
  %75 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ds, align 4
  %p5_intf_sel58 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  %77 = ptrtoint ptr %p5_intf_sel58 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %p5_intf_sel58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %78)
  %79 = icmp ult i32 %78, 5
  br i1 %79, label %switch.lookup, label %if.then56.p5_intf_modes.exit_crit_edge

if.then56.p5_intf_modes.exit_crit_edge:           ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %p5_intf_modes.exit

switch.lookup:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mt7531_setup, i32 0, i32 %78
  %80 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %p5_intf_modes.exit

p5_intf_modes.exit:                               ; preds = %switch.lookup, %if.then56.p5_intf_modes.exit_crit_edge
  %retval.0.i193 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.42, %if.then56.p5_intf_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7531_setup.__UNIQUE_ID_ddebug501, ptr noundef %76, ptr noundef nonnull @.str.88, ptr noundef nonnull %retval.0.i193) #13
  br label %do.end62

do.end62:                                         ; preds = %p5_intf_modes.exit, %do.body50
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 31756, i32 noundef 15, i32 noundef 1)
  %p5_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 11
  %81 = ptrtoint ptr %p5_interface to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %p5_interface, align 4
  %p6_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 10
  %82 = ptrtoint ptr %p6_interface to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %p6_interface, align 4
  %call63 = tail call fastcc i32 @mt7531_ind_c45_phy_read(ptr noundef %1, i32 noundef 0, i32 noundef 31, i32 noundef 1027)
  %or = and i32 %call63, -49
  %and = or i32 %or, 16
  %call64 = tail call fastcc i32 @mt7531_ind_c45_phy_write(ptr noundef %1, i32 noundef 0, i32 noundef 31, i32 noundef 1027, i32 noundef %and)
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 4, i32 noundef 255, i32 noundef 64)
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 36, i32 noundef 7, i32 noundef 6)
  tail call fastcc void @mt7530_mib_reset(ptr noundef %ds)
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end81.for.body_crit_edge, %do.end62
  %i.0225 = phi i32 [ 0, %do.end62 ], [ %inc, %if.end81.for.body_crit_edge ]
  %mul = shl i32 %i.0225, 8
  %add67 = add nuw nsw i32 %mul, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add67, i32 noundef 16711680, i32 noundef 0)
  %add69 = add nuw nsw i32 %mul, 8204
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add69, i32 noundef 0, i32 noundef 16) #13
  %add71 = add nuw nsw i32 %mul, 12312
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add71, i32 noundef 0, i32 noundef -2147483648) #13
  %83 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_cpu_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_cpu_port.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %86 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %87, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %88 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %i.0225)
  %cmp5.i.i = icmp eq i32 %89, %i.0225
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %90 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %for.body.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i194 = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i194, i32 0, i32 6
  %91 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp.i195 = icmp eq i32 %92, 1
  br i1 %cmp.i195, label %if.then73, label %if.else78

if.then73:                                        ; preds = %dsa_is_cpu_port.exit
  %call74 = tail call fastcc i32 @mt753x_cpu_port_enable(ptr noundef %ds, i32 noundef %i.0225)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end81_crit_edge, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.else78:                                        ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv1, align 4
  %reg_mutex.i = getelementptr inbounds %struct.mt7530_priv, ptr %94, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #13
  %arrayidx.i = getelementptr %struct.mt7530_priv, ptr %94, i32 0, i32 15, i32 %i.0225
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx.i, align 4
  tail call fastcc void @mt7530_rmw(ptr noundef %94, i32 noundef %add67, i32 noundef 16711680, i32 noundef 0) #13
  %add3.i = add nuw nsw i32 %mul, 12288
  tail call fastcc void @mt7530_rmw(ptr noundef %94, i32 noundef %add3.i, i32 noundef 24831, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i) #13
  %add80 = add nuw nsw i32 %mul, 8212
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add80, i32 noundef 4095, i32 noundef 0)
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then73.if.end81_crit_edge
  %add83 = add nuw nsw i32 %mul, 8208
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add83, i32 noundef 1792, i32 noundef 256)
  %inc = add nuw nsw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end84, label %if.end81.for.body_crit_edge

if.end81.for.body_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end84:                                        ; preds = %if.end81
  %call85 = tail call fastcc i32 @mt7530_setup_vlan0(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %for.end84.cleanup_crit_edge

for.end84.cleanup_crit_edge:                      ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end88:                                         ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #15
  %assisted_learning_on_cpu_port = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %96 = ptrtoint ptr %assisted_learning_on_cpu_port to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load = load i16, ptr %assisted_learning_on_cpu_port, align 4
  %bf.set91 = or i16 %bf.load, 1152
  store i16 %bf.set91, ptr %assisted_learning_on_cpu_port, align 4
  %call92 = tail call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 2, ptr noundef null)
  %97 = tail call i32 @llvm.smin.i32(i32 %call92, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %for.end84.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %do.end42, %do.end34
  %retval.0 = phi i32 [ -110, %do.end34 ], [ -19, %do.end42 ], [ %call85, %for.end84.cleanup_crit_edge ], [ %97, %if.end88 ], [ %call74, %if.then73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7531_ind_phy_read(ptr noundef %priv, i32 noundef %port, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = lshr i32 %regnum, 16
  %and1 = and i32 %0, 31
  %and2 = and i32 %regnum, 65535
  %call = tail call fastcc i32 @mt7531_ind_c45_phy_read(ptr noundef %priv, i32 noundef %port, i32 noundef %and1, i32 noundef %and2)
  br label %if.end

if.else:                                          ; preds = %entry
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %2, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %call.i = tail call i64 @ktime_get() #13
  %add.i.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 724) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then20.i, %if.else
  %3 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %6(ptr noundef %4, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %_mt7530_unlocked_read.exit.thread.i, label %_mt7530_unlocked_read.exit.i

_mt7530_unlocked_read.exit.thread.i:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true.i

_mt7530_unlocked_read.exit.i:                     ; preds = %for.cond.i
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %8(ptr noundef %4, i32 noundef 31, i32 noundef 7) #13
  %9 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %10(ptr noundef %4, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.mask.i = and i32 %call10.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.mask.i)
  %tobool.not.i = icmp eq i32 %shl.i.i.mask.i, 0
  br i1 %tobool.not.i, label %_mt7530_unlocked_read.exit.i.if.end29.i_crit_edge, label %_mt7530_unlocked_read.exit.i.land.lhs.true.i_crit_edge

_mt7530_unlocked_read.exit.i.land.lhs.true.i_crit_edge: ; preds = %_mt7530_unlocked_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

_mt7530_unlocked_read.exit.i.if.end29.i_crit_edge: ; preds = %_mt7530_unlocked_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %_mt7530_unlocked_read.exit.i.land.lhs.true.i_crit_edge, %_mt7530_unlocked_read.exit.thread.i
  %call13.i = tail call i64 @ktime_get() #13
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then20.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus1.i, align 4
  %write.i.i109.i = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %write.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i109.i, align 8
  %call.i.i110.i = tail call i32 %14(ptr noundef %12, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110.i)
  %cmp.i.i111.i = icmp slt i32 %call.i.i110.i, 0
  br i1 %cmp.i.i111.i, label %for.end.thread174.i, label %for.end.i

for.end.thread174.i:                              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i112.i = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i112.i, ptr noundef nonnull @.str.19) #16
  br label %do.end28.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then16.i
  %read.i.i115.i = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %read.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i.i115.i, align 4
  %call7.i.i116.i = tail call i32 %16(ptr noundef %12, i32 noundef 31, i32 noundef 7) #13
  %17 = ptrtoint ptr %read.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i.i115.i, align 4
  %call10.i.i117.i = tail call i32 %18(ptr noundef %12, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i118.mask.i = and i32 %call10.i.i117.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i118.mask.i)
  %tobool23.not.i = icmp eq i32 %shl.i.i118.mask.i, 0
  br i1 %tobool23.not.i, label %for.end.i.if.end29.i_crit_edge, label %for.end.i.do.end28.i_crit_edge

for.end.i.do.end28.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28.i

for.end.i.if.end29.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

do.end28.i:                                       ; preds = %for.end.i.do.end28.i_crit_edge, %for.end.thread174.i
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.23) #16
  br label %mt7531_ind_c22_phy_read.exit

if.end29.i:                                       ; preds = %for.end.i.if.end29.i_crit_edge, %_mt7530_unlocked_read.exit.i.if.end29.i_crit_edge
  %and30.i = shl i32 %port, 20
  %shl.i = and i32 %and30.i, 32505856
  %and31.i = shl i32 %regnum, 25
  %shl32.i = and i32 %and31.i, 1040187392
  %or.i = or i32 %shl32.i, %shl.i
  %21 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus1.i, align 4
  %or34.i = lshr exact i32 %or.i, 16
  %23 = trunc i32 %or34.i to i16
  %conv8.i.i = or i16 %23, -32759
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 5
  %24 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %25(ptr noundef %22, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i124.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i124.i, label %if.end29.i.do.end.i.i_crit_edge, label %if.end.i.i

if.end29.i.do.end.i.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end29.i
  %26 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %27(ptr noundef %22, i32 noundef 31, i32 noundef 7, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %28 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %29(ptr noundef %22, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_mii_write.exit.i_crit_edge

err.i.i.mt7530_mii_write.exit.i_crit_edge:        ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit.i

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.end29.i.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit.i

mt7530_mii_write.exit.i:                          ; preds = %do.end.i.i, %err.i.i.mt7530_mii_write.exit.i_crit_edge
  %call39.i = tail call i64 @ktime_get() #13
  %add.i125.i = add i64 %call39.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 736) #13
  br label %for.cond53.i

for.cond53.i:                                     ; preds = %if.then68.i, %mt7530_mii_write.exit.i
  %30 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus1.i, align 4
  %write.i.i128.i = getelementptr inbounds %struct.mii_bus, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i.i128.i, align 8
  %call.i.i129.i = tail call i32 %33(ptr noundef %31, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129.i)
  %cmp.i.i130.i = icmp slt i32 %call.i.i129.i, 0
  br i1 %cmp.i.i130.i, label %_mt7530_unlocked_read.exit142.thread.i, label %_mt7530_unlocked_read.exit142.i

_mt7530_unlocked_read.exit142.thread.i:           ; preds = %for.cond53.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i131.i = getelementptr inbounds %struct.mii_bus, ptr %31, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i131.i, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true60.i

_mt7530_unlocked_read.exit142.i:                  ; preds = %for.cond53.i
  %read.i.i134.i = getelementptr inbounds %struct.mii_bus, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %read.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i.i134.i, align 4
  %call7.i.i135.i = tail call i32 %35(ptr noundef %31, i32 noundef 31, i32 noundef 7) #13
  %36 = ptrtoint ptr %read.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i.i134.i, align 4
  %call10.i.i136.i = tail call i32 %37(ptr noundef %31, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i137.i = shl i32 %call10.i.i136.i, 16
  %conv13.i.i138.i = and i32 %call7.i.i135.i, 65535
  %or.i.i139.i = or i32 %shl.i.i137.i, %conv13.i.i138.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i.i139.i)
  %tobool56.not.i = icmp sgt i32 %or.i.i139.i, -1
  br i1 %tobool56.not.i, label %_mt7530_unlocked_read.exit142.i.if.end84.i_crit_edge, label %_mt7530_unlocked_read.exit142.i.land.lhs.true60.i_crit_edge

_mt7530_unlocked_read.exit142.i.land.lhs.true60.i_crit_edge: ; preds = %_mt7530_unlocked_read.exit142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true60.i

_mt7530_unlocked_read.exit142.i.if.end84.i_crit_edge: ; preds = %_mt7530_unlocked_read.exit142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

land.lhs.true60.i:                                ; preds = %_mt7530_unlocked_read.exit142.i.land.lhs.true60.i_crit_edge, %_mt7530_unlocked_read.exit142.thread.i
  %call61.i = tail call i64 @ktime_get() #13
  %cmp3.i144.i = icmp sgt i64 %call61.i, %add.i125.i
  br i1 %cmp3.i144.i, label %if.then64.i, label %if.then68.i

if.then64.i:                                      ; preds = %land.lhs.true60.i
  %38 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus1.i, align 4
  %write.i.i149.i = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %write.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i.i149.i, align 8
  %call.i.i150.i = tail call i32 %41(ptr noundef %39, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150.i)
  %cmp.i.i151.i = icmp slt i32 %call.i.i150.i, 0
  br i1 %cmp.i.i151.i, label %for.end72.thread182.i, label %for.end72.i

for.end72.thread182.i:                            ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i152.i = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i152.i, ptr noundef nonnull @.str.19) #16
  br label %do.end82.i

if.then68.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond53.i

for.end72.i:                                      ; preds = %if.then64.i
  %read.i.i155.i = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 4
  %42 = ptrtoint ptr %read.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i.i155.i, align 4
  %call7.i.i156.i = tail call i32 %43(ptr noundef %39, i32 noundef 31, i32 noundef 7) #13
  %44 = ptrtoint ptr %read.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i.i155.i, align 4
  %call10.i.i157.i = tail call i32 %45(ptr noundef %39, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i158.i = shl i32 %call10.i.i157.i, 16
  %conv13.i.i159.i = and i32 %call7.i.i156.i, 65535
  %or.i.i160.i = or i32 %shl.i.i158.i, %conv13.i.i159.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i.i160.i)
  %tobool75.not.i = icmp sgt i32 %or.i.i160.i, -1
  br i1 %tobool75.not.i, label %for.end72.i.if.end84.i_crit_edge, label %for.end72.i.do.end82.i_crit_edge

for.end72.i.do.end82.i_crit_edge:                 ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end82.i

for.end72.i.if.end84.i_crit_edge:                 ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

do.end82.i:                                       ; preds = %for.end72.i.do.end82.i_crit_edge, %for.end72.thread182.i
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.23) #16
  br label %mt7531_ind_c22_phy_read.exit

if.end84.i:                                       ; preds = %for.end72.i.if.end84.i_crit_edge, %_mt7530_unlocked_read.exit142.i.if.end84.i_crit_edge
  %val.1181.i = phi i32 [ %or.i.i160.i, %for.end72.i.if.end84.i_crit_edge ], [ %or.i.i139.i, %_mt7530_unlocked_read.exit142.i.if.end84.i_crit_edge ]
  %and85.i = and i32 %val.1181.i, 65535
  br label %mt7531_ind_c22_phy_read.exit

mt7531_ind_c22_phy_read.exit:                     ; preds = %if.end84.i, %do.end82.i, %do.end28.i
  %ret.0.i = phi i32 [ -110, %do.end28.i ], [ -110, %do.end82.i ], [ %and85.i, %if.end84.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %mt7531_ind_c22_phy_read.exit, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %ret.0.i, %mt7531_ind_c22_phy_read.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7531_ind_phy_write(ptr noundef %priv, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = lshr i32 %regnum, 16
  %and1 = and i32 %0, 31
  %and2 = and i32 %regnum, 65535
  %conv = zext i16 %data to i32
  %call = tail call fastcc i32 @mt7531_ind_c45_phy_write(ptr noundef %priv, i32 noundef %port, i32 noundef %and1, i32 noundef %and2, i32 noundef %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %2, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %call.i = tail call i64 @ktime_get() #13
  %add.i.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 763) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then20.i, %if.else
  %3 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %6(ptr noundef %4, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %_mt7530_unlocked_read.exit.thread.i, label %_mt7530_unlocked_read.exit.i

_mt7530_unlocked_read.exit.thread.i:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true.i

_mt7530_unlocked_read.exit.i:                     ; preds = %for.cond.i
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %8(ptr noundef %4, i32 noundef 31, i32 noundef 7) #13
  %9 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %10(ptr noundef %4, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.mask.i = and i32 %call10.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.mask.i)
  %tobool.not.i = icmp eq i32 %shl.i.i.mask.i, 0
  br i1 %tobool.not.i, label %_mt7530_unlocked_read.exit.i.if.end29.i_crit_edge, label %_mt7530_unlocked_read.exit.i.land.lhs.true.i_crit_edge

_mt7530_unlocked_read.exit.i.land.lhs.true.i_crit_edge: ; preds = %_mt7530_unlocked_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

_mt7530_unlocked_read.exit.i.if.end29.i_crit_edge: ; preds = %_mt7530_unlocked_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %_mt7530_unlocked_read.exit.i.land.lhs.true.i_crit_edge, %_mt7530_unlocked_read.exit.thread.i
  %call13.i = tail call i64 @ktime_get() #13
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then20.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus1.i, align 4
  %write.i.i111.i = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %write.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i111.i, align 8
  %call.i.i112.i = tail call i32 %14(ptr noundef %12, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i112.i)
  %cmp.i.i113.i = icmp slt i32 %call.i.i112.i, 0
  br i1 %cmp.i.i113.i, label %if.then16.i.out.sink.split.sink.split.i_crit_edge, label %for.end.i

if.then16.i.out.sink.split.sink.split.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond.i

for.end.i:                                        ; preds = %if.then16.i
  %read.i.i117.i = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %read.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i.i117.i, align 4
  %call7.i.i118.i = tail call i32 %16(ptr noundef %12, i32 noundef 31, i32 noundef 7) #13
  %17 = ptrtoint ptr %read.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i.i117.i, align 4
  %call10.i.i119.i = tail call i32 %18(ptr noundef %12, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i120.mask.i = and i32 %call10.i.i119.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i120.mask.i)
  %tobool23.not.i = icmp eq i32 %shl.i.i120.mask.i, 0
  br i1 %tobool23.not.i, label %for.end.i.if.end29.i_crit_edge, label %for.end.i.out.sink.split.i_crit_edge

for.end.i.out.sink.split.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.i

for.end.i.if.end29.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %for.end.i.if.end29.i_crit_edge, %_mt7530_unlocked_read.exit.i.if.end29.i_crit_edge
  %and30.i = shl i32 %port, 20
  %shl.i = and i32 %and30.i, 32505856
  %and31.i = shl i32 %regnum, 25
  %shl32.i = and i32 %and31.i, 1040187392
  %or.i = or i32 %shl32.i, %shl.i
  %19 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus1.i, align 4
  %or35.i = lshr exact i32 %or.i, 16
  %21 = trunc i32 %or35.i to i16
  %conv8.i.i = or i16 %21, -32763
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 5
  %22 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %23(ptr noundef %20, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i126.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i126.i, label %if.end29.i.do.end.i.i_crit_edge, label %if.end.i.i

if.end29.i.do.end.i.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end29.i
  %24 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %25(ptr noundef %20, i32 noundef 31, i32 noundef 7, i16 noundef zeroext %data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %26 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %27(ptr noundef %20, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_mii_write.exit.i_crit_edge

err.i.i.mt7530_mii_write.exit.i_crit_edge:        ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit.i

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.end29.i.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit.i

mt7530_mii_write.exit.i:                          ; preds = %do.end.i.i, %err.i.i.mt7530_mii_write.exit.i_crit_edge
  %call40.i = tail call i64 @ktime_get() #13
  %add.i127.i = add i64 %call40.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 775) #13
  br label %for.cond55.i

for.cond55.i:                                     ; preds = %if.then71.i, %mt7530_mii_write.exit.i
  %28 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus1.i, align 4
  %write.i.i130.i = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i.i130.i, align 8
  %call.i.i131.i = tail call i32 %31(ptr noundef %29, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i131.i)
  %cmp.i.i132.i = icmp slt i32 %call.i.i131.i, 0
  br i1 %cmp.i.i132.i, label %_mt7530_unlocked_read.exit144.thread.i, label %_mt7530_unlocked_read.exit144.i

_mt7530_unlocked_read.exit144.thread.i:           ; preds = %for.cond55.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i133.i = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i133.i, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true62.i

_mt7530_unlocked_read.exit144.i:                  ; preds = %for.cond55.i
  %read.i.i136.i = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 4
  %32 = ptrtoint ptr %read.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i.i136.i, align 4
  %call7.i.i137.i = tail call i32 %33(ptr noundef %29, i32 noundef 31, i32 noundef 7) #13
  %34 = ptrtoint ptr %read.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i.i136.i, align 4
  %call10.i.i138.i = tail call i32 %35(ptr noundef %29, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i139.mask.i = and i32 %call10.i.i138.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i139.mask.i)
  %tobool58.not.i = icmp eq i32 %shl.i.i139.mask.i, 0
  br i1 %tobool58.not.i, label %_mt7530_unlocked_read.exit144.i.mt7531_ind_c22_phy_write.exit_crit_edge, label %_mt7530_unlocked_read.exit144.i.land.lhs.true62.i_crit_edge

_mt7530_unlocked_read.exit144.i.land.lhs.true62.i_crit_edge: ; preds = %_mt7530_unlocked_read.exit144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true62.i

_mt7530_unlocked_read.exit144.i.mt7531_ind_c22_phy_write.exit_crit_edge: ; preds = %_mt7530_unlocked_read.exit144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7531_ind_c22_phy_write.exit

land.lhs.true62.i:                                ; preds = %_mt7530_unlocked_read.exit144.i.land.lhs.true62.i_crit_edge, %_mt7530_unlocked_read.exit144.thread.i
  %call63.i = tail call i64 @ktime_get() #13
  %cmp3.i146.i = icmp sgt i64 %call63.i, %add.i127.i
  br i1 %cmp3.i146.i, label %if.then67.i, label %if.then71.i

if.then67.i:                                      ; preds = %land.lhs.true62.i
  %36 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus1.i, align 4
  %write.i.i151.i = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %write.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i.i151.i, align 8
  %call.i.i152.i = tail call i32 %39(ptr noundef %37, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152.i)
  %cmp.i.i153.i = icmp slt i32 %call.i.i152.i, 0
  br i1 %cmp.i.i153.i, label %if.then67.i.out.sink.split.sink.split.i_crit_edge, label %for.end75.i

if.then67.i.out.sink.split.sink.split.i_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split.i

if.then71.i:                                      ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond55.i

for.end75.i:                                      ; preds = %if.then67.i
  %read.i.i157.i = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %read.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read.i.i157.i, align 4
  %call7.i.i158.i = tail call i32 %41(ptr noundef %37, i32 noundef 31, i32 noundef 7) #13
  %42 = ptrtoint ptr %read.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i.i157.i, align 4
  %call10.i.i159.i = tail call i32 %43(ptr noundef %37, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i160.mask.i = and i32 %call10.i.i159.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i160.mask.i)
  %tobool78.not.i = icmp eq i32 %shl.i.i160.mask.i, 0
  br i1 %tobool78.not.i, label %for.end75.i.mt7531_ind_c22_phy_write.exit_crit_edge, label %for.end75.i.out.sink.split.i_crit_edge

for.end75.i.out.sink.split.i_crit_edge:           ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.i

for.end75.i.mt7531_ind_c22_phy_write.exit_crit_edge: ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7531_ind_c22_phy_write.exit

out.sink.split.sink.split.i:                      ; preds = %if.then67.i.out.sink.split.sink.split.i_crit_edge, %if.then16.i.out.sink.split.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %12, %if.then16.i.out.sink.split.sink.split.i_crit_edge ], [ %37, %if.then67.i.out.sink.split.sink.split.i_crit_edge ]
  %dev.i.i154.i = getelementptr inbounds %struct.mii_bus, ptr %.sink.i, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i154.i, ptr noundef nonnull @.str.19) #16
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %out.sink.split.sink.split.i, %for.end75.i.out.sink.split.i_crit_edge, %for.end.i.out.sink.split.i_crit_edge
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.23) #16
  br label %mt7531_ind_c22_phy_write.exit

mt7531_ind_c22_phy_write.exit:                    ; preds = %out.sink.split.i, %for.end75.i.mt7531_ind_c22_phy_write.exit_crit_edge, %_mt7530_unlocked_read.exit144.i.mt7531_ind_c22_phy_write.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %for.end75.i.mt7531_ind_c22_phy_write.exit_crit_edge ], [ -110, %out.sink.split.i ], [ 0, %_mt7530_unlocked_read.exit144.i.mt7531_ind_c22_phy_write.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %mt7531_ind_c22_phy_write.exit, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %ret.0.i, %mt7531_ind_c22_phy_write.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7531_pad_setup(ptr nocapture noundef readonly %ds, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus1.i.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 %7(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7531_dual_sgmii_supported.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i.i.i, align 4
  %call7.i.i.i.i = tail call i32 %9(ptr noundef %5, i32 noundef 31, i32 noundef 3) #13
  %10 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i.i, align 4
  %call10.i.i.i.i = tail call i32 %11(ptr noundef %5, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i.i = and i32 %call7.i.i.i.i, 65535
  br label %mt7531_dual_sgmii_supported.exit

mt7531_dual_sgmii_supported.exit:                 ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %do.end.i.i.i.i ], [ %conv13.i.i.i.i, %if.end.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i.i) #13
  %and.i = and i32 %retval.0.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end, label %mt7531_dual_sgmii_supported.exit.cleanup_crit_edge

mt7531_dual_sgmii_supported.exit.cleanup_crit_edge: ; preds = %mt7531_dual_sgmii_supported.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %mt7531_dual_sgmii_supported.exit
  %12 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %14 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %17(ptr noundef %15, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %19(ptr noundef %15, i32 noundef 31, i32 noundef 7) #13
  %20 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %21(ptr noundef %15, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv13.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %22 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i92 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i92, i32 noundef 2) #13
  %24 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i93 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %write.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i.i.i93, align 8
  %call.i.i.i94 = tail call i32 %27(ptr noundef %25, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i94)
  %cmp.i.i.i95 = icmp slt i32 %call.i.i.i94, 0
  br i1 %cmp.i.i.i95, label %do.end.i.i.i97, label %if.end.i.i.i104

do.end.i.i.i97:                                   ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i96 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i96, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit106

if.end.i.i.i104:                                  ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i98 = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %read.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read.i.i.i98, align 4
  %call7.i.i.i99 = tail call i32 %29(ptr noundef %25, i32 noundef 31, i32 noundef 3) #13
  %30 = ptrtoint ptr %read.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i.i.i98, align 4
  %call10.i.i.i100 = tail call i32 %31(ptr noundef %25, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i102 = and i32 %call7.i.i.i99, 65535
  br label %mt7530_read.exit106

mt7530_read.exit106:                              ; preds = %if.end.i.i.i104, %do.end.i.i.i97
  %retval.0.i.i.i105 = phi i32 [ %call.i.i.i94, %do.end.i.i.i97 ], [ %conv13.i.i.i102, %if.end.i.i.i104 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i92) #13
  %32 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i108 = getelementptr inbounds %struct.mii_bus, ptr %33, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i108, i32 noundef 2) #13
  %34 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i109 = getelementptr inbounds %struct.mii_bus, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %write.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write.i.i.i109, align 8
  %call.i.i.i110 = tail call i32 %37(ptr noundef %35, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i110)
  %cmp.i.i.i111 = icmp slt i32 %call.i.i.i110, 0
  br i1 %cmp.i.i.i111, label %do.end.i.i.i113, label %if.end.i.i.i120

do.end.i.i.i113:                                  ; preds = %mt7530_read.exit106
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i112 = getelementptr inbounds %struct.mii_bus, ptr %35, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i112, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit122

if.end.i.i.i120:                                  ; preds = %mt7530_read.exit106
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i114 = getelementptr inbounds %struct.mii_bus, ptr %35, i32 0, i32 4
  %38 = ptrtoint ptr %read.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read.i.i.i114, align 4
  %call7.i.i.i115 = tail call i32 %39(ptr noundef %35, i32 noundef 31, i32 noundef 0) #13
  %40 = ptrtoint ptr %read.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read.i.i.i114, align 4
  %call10.i.i.i116 = tail call i32 %41(ptr noundef %35, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i118 = and i32 %call7.i.i.i115, 65535
  br label %mt7530_read.exit122

mt7530_read.exit122:                              ; preds = %if.end.i.i.i120, %do.end.i.i.i113
  %retval.0.i.i.i121 = phi i32 [ %call.i.i.i110, %do.end.i.i.i113 ], [ %conv13.i.i.i118, %if.end.i.i.i120 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i108) #13
  %and = and i32 %retval.0.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %and6 = shl i32 %retval.0.i.i.i105, 7
  %42 = xor i32 %and6, 128
  %and7 = and i32 %retval.0.i.i.i121, 128
  %xtal.0 = select i1 %cmp.not, i32 %and7, i32 %42
  %43 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i124 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i124, i32 noundef 2) #13
  %45 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i125 = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write.i.i.i125, align 8
  %call.i.i.i126 = tail call i32 %48(ptr noundef %46, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i126)
  %cmp.i.i.i127 = icmp slt i32 %call.i.i.i126, 0
  br i1 %cmp.i.i.i127, label %do.end.i.i.i129, label %if.end.i.i.i136

do.end.i.i.i129:                                  ; preds = %mt7530_read.exit122
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i128 = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i128, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit138

if.end.i.i.i136:                                  ; preds = %mt7530_read.exit122
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i130 = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 4
  %49 = ptrtoint ptr %read.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read.i.i.i130, align 4
  %call7.i.i.i131 = tail call i32 %50(ptr noundef %46, i32 noundef 31, i32 noundef 8) #13
  %51 = ptrtoint ptr %read.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read.i.i.i130, align 4
  %call10.i.i.i132 = tail call i32 %52(ptr noundef %46, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i133 = shl i32 %call10.i.i.i132, 16
  %conv13.i.i.i134 = and i32 %call7.i.i.i131, 65535
  %or.i.i.i135 = or i32 %shl.i.i.i133, %conv13.i.i.i134
  br label %mt7530_read.exit138

mt7530_read.exit138:                              ; preds = %if.end.i.i.i136, %do.end.i.i.i129
  %retval.0.i.i.i137 = phi i32 [ %call.i.i.i126, %do.end.i.i.i129 ], [ %or.i.i.i135, %if.end.i.i.i136 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i124) #13
  %53 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %55 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus1.i.i.i, align 4
  %shr7.i.i = lshr i32 %retval.0.i.i.i137, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %58(ptr noundef %56, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %mt7530_read.exit138.do.end.i.i_crit_edge, label %if.end.i.i

mt7530_read.exit138.do.end.i.i_crit_edge:         ; preds = %mt7530_read.exit138
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %mt7530_read.exit138
  %59 = trunc i32 %retval.0.i.i.i137 to i16
  %conv6.i.i = and i16 %59, -5
  %60 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %61(ptr noundef %56, i32 noundef 31, i32 noundef 8, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %62 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %63(ptr noundef %56, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %mt7530_read.exit138.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %64 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i140 = getelementptr inbounds %struct.mii_bus, ptr %65, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i140, i32 noundef 2) #13
  %66 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i141 = getelementptr inbounds %struct.mii_bus, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %write.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write.i.i.i141, align 8
  %call.i.i.i142 = tail call i32 %69(ptr noundef %67, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i142)
  %cmp.i.i.i143 = icmp slt i32 %call.i.i.i142, 0
  br i1 %cmp.i.i.i143, label %do.end.i.i.i145, label %if.end.i.i.i152

do.end.i.i.i145:                                  ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i144 = getelementptr inbounds %struct.mii_bus, ptr %67, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i144, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit154

if.end.i.i.i152:                                  ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i146 = getelementptr inbounds %struct.mii_bus, ptr %67, i32 0, i32 4
  %70 = ptrtoint ptr %read.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read.i.i.i146, align 4
  %call7.i.i.i147 = tail call i32 %71(ptr noundef %67, i32 noundef 31, i32 noundef 8) #13
  %72 = ptrtoint ptr %read.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read.i.i.i146, align 4
  %call10.i.i.i148 = tail call i32 %73(ptr noundef %67, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i149 = shl i32 %call10.i.i.i148, 16
  %conv13.i.i.i150 = and i32 %call7.i.i.i147, 65535
  %or.i.i.i151 = or i32 %shl.i.i.i149, %conv13.i.i.i150
  br label %mt7530_read.exit154

mt7530_read.exit154:                              ; preds = %if.end.i.i.i152, %do.end.i.i.i145
  %retval.0.i.i.i153 = phi i32 [ %call.i.i.i142, %do.end.i.i.i145 ], [ %or.i.i.i151, %if.end.i.i.i152 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i140) #13
  %74 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i156 = getelementptr inbounds %struct.mii_bus, ptr %75, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i156, i32 noundef 2) #13
  %76 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus1.i.i.i, align 4
  %shr7.i.i157 = lshr i32 %retval.0.i.i.i153, 16
  %conv8.i.i158 = trunc i32 %shr7.i.i157 to i16
  %write.i.i159 = getelementptr inbounds %struct.mii_bus, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %write.i.i159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i.i159, align 8
  %call.i.i160 = tail call i32 %79(ptr noundef %77, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp.i.i161 = icmp slt i32 %call.i.i160, 0
  br i1 %cmp.i.i161, label %mt7530_read.exit154.do.end.i.i170_crit_edge, label %if.end.i.i165

mt7530_read.exit154.do.end.i.i170_crit_edge:      ; preds = %mt7530_read.exit154
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i170

if.end.i.i165:                                    ; preds = %mt7530_read.exit154
  %80 = trunc i32 %retval.0.i.i.i153 to i16
  %conv6.i.i162 = or i16 %80, 2
  %81 = ptrtoint ptr %write.i.i159 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write.i.i159, align 8
  %call12.i.i163 = tail call i32 %82(ptr noundef %77, i32 noundef 31, i32 noundef 8, i16 noundef zeroext %conv6.i.i162) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i163)
  %cmp13.i.i164 = icmp slt i32 %call12.i.i163, 0
  br i1 %cmp13.i.i164, label %if.end.i.i165.do.end.i.i170_crit_edge, label %err.i.i168

if.end.i.i165.do.end.i.i170_crit_edge:            ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i170

err.i.i168:                                       ; preds = %if.end.i.i165
  %83 = ptrtoint ptr %write.i.i159 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write.i.i159, align 8
  %call18.i.i166 = tail call i32 %84(ptr noundef %77, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i158) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i166)
  %cmp19.i.i167 = icmp slt i32 %call18.i.i166, 0
  br i1 %cmp19.i.i167, label %err.i.i168.do.end.i.i170_crit_edge, label %err.i.i168.mt7530_write.exit171_crit_edge

err.i.i168.mt7530_write.exit171_crit_edge:        ; preds = %err.i.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit171

err.i.i168.do.end.i.i170_crit_edge:               ; preds = %err.i.i168
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i170

do.end.i.i170:                                    ; preds = %err.i.i168.do.end.i.i170_crit_edge, %if.end.i.i165.do.end.i.i170_crit_edge, %mt7530_read.exit154.do.end.i.i170_crit_edge
  %dev.i.i169 = getelementptr inbounds %struct.mii_bus, ptr %77, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i169, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit171

mt7530_write.exit171:                             ; preds = %do.end.i.i170, %err.i.i168.mt7530_write.exit171_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i156) #13
  %85 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i173 = getelementptr inbounds %struct.mii_bus, ptr %86, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i173, i32 noundef 2) #13
  %87 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i174 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %write.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write.i.i.i174, align 8
  %call.i.i.i175 = tail call i32 %90(ptr noundef %88, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i175)
  %cmp.i.i.i176 = icmp slt i32 %call.i.i.i175, 0
  br i1 %cmp.i.i.i176, label %do.end.i.i.i178, label %if.end.i.i.i185

do.end.i.i.i178:                                  ; preds = %mt7530_write.exit171
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i177 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i177, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit187

if.end.i.i.i185:                                  ; preds = %mt7530_write.exit171
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i179 = getelementptr inbounds %struct.mii_bus, ptr %88, i32 0, i32 4
  %91 = ptrtoint ptr %read.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read.i.i.i179, align 4
  %call7.i.i.i180 = tail call i32 %92(ptr noundef %88, i32 noundef 31, i32 noundef 10) #13
  %93 = ptrtoint ptr %read.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read.i.i.i179, align 4
  %call10.i.i.i181 = tail call i32 %94(ptr noundef %88, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i182 = shl i32 %call10.i.i.i181, 16
  %conv13.i.i.i183 = and i32 %call7.i.i.i180, 65535
  %or.i.i.i184 = or i32 %shl.i.i.i182, %conv13.i.i.i183
  br label %mt7530_read.exit187

mt7530_read.exit187:                              ; preds = %if.end.i.i.i185, %do.end.i.i.i178
  %retval.0.i.i.i186 = phi i32 [ %call.i.i.i175, %do.end.i.i.i178 ], [ %or.i.i.i184, %if.end.i.i.i185 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i173) #13
  %95 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i189 = getelementptr inbounds %struct.mii_bus, ptr %96, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i189, i32 noundef 2) #13
  %97 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus1.i.i.i, align 4
  %and13 = lshr i32 %retval.0.i.i.i186, 16
  %99 = trunc i32 %and13 to i16
  %conv8.i.i191 = and i16 %99, -65
  %write.i.i192 = getelementptr inbounds %struct.mii_bus, ptr %98, i32 0, i32 5
  %100 = ptrtoint ptr %write.i.i192 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write.i.i192, align 8
  %call.i.i193 = tail call i32 %101(ptr noundef %98, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %cmp.i.i194 = icmp slt i32 %call.i.i193, 0
  br i1 %cmp.i.i194, label %mt7530_read.exit187.do.end.i.i203_crit_edge, label %if.end.i.i198

mt7530_read.exit187.do.end.i.i203_crit_edge:      ; preds = %mt7530_read.exit187
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i203

if.end.i.i198:                                    ; preds = %mt7530_read.exit187
  %conv6.i.i195 = trunc i32 %retval.0.i.i.i186 to i16
  %102 = ptrtoint ptr %write.i.i192 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write.i.i192, align 8
  %call12.i.i196 = tail call i32 %103(ptr noundef %98, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i195) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i196)
  %cmp13.i.i197 = icmp slt i32 %call12.i.i196, 0
  br i1 %cmp13.i.i197, label %if.end.i.i198.do.end.i.i203_crit_edge, label %err.i.i201

if.end.i.i198.do.end.i.i203_crit_edge:            ; preds = %if.end.i.i198
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i203

err.i.i201:                                       ; preds = %if.end.i.i198
  %104 = ptrtoint ptr %write.i.i192 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write.i.i192, align 8
  %call18.i.i199 = tail call i32 %105(ptr noundef %98, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i191) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i199)
  %cmp19.i.i200 = icmp slt i32 %call18.i.i199, 0
  br i1 %cmp19.i.i200, label %err.i.i201.do.end.i.i203_crit_edge, label %err.i.i201.mt7530_write.exit204_crit_edge

err.i.i201.mt7530_write.exit204_crit_edge:        ; preds = %err.i.i201
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit204

err.i.i201.do.end.i.i203_crit_edge:               ; preds = %err.i.i201
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i203

do.end.i.i203:                                    ; preds = %err.i.i201.do.end.i.i203_crit_edge, %if.end.i.i198.do.end.i.i203_crit_edge, %mt7530_read.exit187.do.end.i.i203_crit_edge
  %dev.i.i202 = getelementptr inbounds %struct.mii_bus, ptr %98, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i202, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit204

mt7530_write.exit204:                             ; preds = %do.end.i.i203, %err.i.i201.mt7530_write.exit204_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i189) #13
  %106 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i206 = getelementptr inbounds %struct.mii_bus, ptr %107, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i206, i32 noundef 2) #13
  %108 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i207 = getelementptr inbounds %struct.mii_bus, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %write.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write.i.i.i207, align 8
  %call.i.i.i208 = tail call i32 %111(ptr noundef %109, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i208)
  %cmp.i.i.i209 = icmp slt i32 %call.i.i.i208, 0
  br i1 %cmp.i.i.i209, label %do.end.i.i.i211, label %if.end.i.i.i218

do.end.i.i.i211:                                  ; preds = %mt7530_write.exit204
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i210 = getelementptr inbounds %struct.mii_bus, ptr %109, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i210, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit220

if.end.i.i.i218:                                  ; preds = %mt7530_write.exit204
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i212 = getelementptr inbounds %struct.mii_bus, ptr %109, i32 0, i32 4
  %112 = ptrtoint ptr %read.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read.i.i.i212, align 4
  %call7.i.i.i213 = tail call i32 %113(ptr noundef %109, i32 noundef 31, i32 noundef 8) #13
  %114 = ptrtoint ptr %read.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read.i.i.i212, align 4
  %call10.i.i.i214 = tail call i32 %115(ptr noundef %109, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i215 = shl i32 %call10.i.i.i214, 16
  %conv13.i.i.i216 = and i32 %call7.i.i.i213, 65535
  %or.i.i.i217 = or i32 %shl.i.i.i215, %conv13.i.i.i216
  br label %mt7530_read.exit220

mt7530_read.exit220:                              ; preds = %if.end.i.i.i218, %do.end.i.i.i211
  %retval.0.i.i.i219 = phi i32 [ %call.i.i.i208, %do.end.i.i.i211 ], [ %or.i.i.i217, %if.end.i.i.i218 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i206) #13
  %116 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i222 = getelementptr inbounds %struct.mii_bus, ptr %117, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i222, i32 noundef 2) #13
  %118 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus1.i.i.i, align 4
  %shr7.i.i223 = lshr i32 %retval.0.i.i.i219, 16
  %conv8.i.i224 = trunc i32 %shr7.i.i223 to i16
  %write.i.i225 = getelementptr inbounds %struct.mii_bus, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %write.i.i225 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write.i.i225, align 8
  %call.i.i226 = tail call i32 %121(ptr noundef %119, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i226)
  %cmp.i.i227 = icmp slt i32 %call.i.i226, 0
  br i1 %cmp.i.i227, label %mt7530_read.exit220.do.end.i.i236_crit_edge, label %if.end.i.i231

mt7530_read.exit220.do.end.i.i236_crit_edge:      ; preds = %mt7530_read.exit220
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i236

if.end.i.i231:                                    ; preds = %mt7530_read.exit220
  %122 = trunc i32 %retval.0.i.i.i219 to i16
  %conv6.i.i228 = or i16 %122, 1
  %123 = ptrtoint ptr %write.i.i225 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write.i.i225, align 8
  %call12.i.i229 = tail call i32 %124(ptr noundef %119, i32 noundef 31, i32 noundef 8, i16 noundef zeroext %conv6.i.i228) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i229)
  %cmp13.i.i230 = icmp slt i32 %call12.i.i229, 0
  br i1 %cmp13.i.i230, label %if.end.i.i231.do.end.i.i236_crit_edge, label %err.i.i234

if.end.i.i231.do.end.i.i236_crit_edge:            ; preds = %if.end.i.i231
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i236

err.i.i234:                                       ; preds = %if.end.i.i231
  %125 = ptrtoint ptr %write.i.i225 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write.i.i225, align 8
  %call18.i.i232 = tail call i32 %126(ptr noundef %119, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i224) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i232)
  %cmp19.i.i233 = icmp slt i32 %call18.i.i232, 0
  br i1 %cmp19.i.i233, label %err.i.i234.do.end.i.i236_crit_edge, label %err.i.i234.mt7530_write.exit237_crit_edge

err.i.i234.mt7530_write.exit237_crit_edge:        ; preds = %err.i.i234
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit237

err.i.i234.do.end.i.i236_crit_edge:               ; preds = %err.i.i234
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i236

do.end.i.i236:                                    ; preds = %err.i.i234.do.end.i.i236_crit_edge, %if.end.i.i231.do.end.i.i236_crit_edge, %mt7530_read.exit220.do.end.i.i236_crit_edge
  %dev.i.i235 = getelementptr inbounds %struct.mii_bus, ptr %119, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i235, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit237

mt7530_write.exit237:                             ; preds = %do.end.i.i236, %err.i.i234.mt7530_write.exit237_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i222) #13
  %127 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i239 = getelementptr inbounds %struct.mii_bus, ptr %128, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i239, i32 noundef 2) #13
  %129 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i240 = getelementptr inbounds %struct.mii_bus, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %write.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write.i.i.i240, align 8
  %call.i.i.i241 = tail call i32 %132(ptr noundef %130, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i241)
  %cmp.i.i.i242 = icmp slt i32 %call.i.i.i241, 0
  br i1 %cmp.i.i.i242, label %do.end.i.i.i244, label %if.end.i.i.i251

do.end.i.i.i244:                                  ; preds = %mt7530_write.exit237
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i243 = getelementptr inbounds %struct.mii_bus, ptr %130, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i243, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit253

if.end.i.i.i251:                                  ; preds = %mt7530_write.exit237
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i245 = getelementptr inbounds %struct.mii_bus, ptr %130, i32 0, i32 4
  %133 = ptrtoint ptr %read.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read.i.i.i245, align 4
  %call7.i.i.i246 = tail call i32 %134(ptr noundef %130, i32 noundef 31, i32 noundef 10) #13
  %135 = ptrtoint ptr %read.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read.i.i.i245, align 4
  %call10.i.i.i247 = tail call i32 %136(ptr noundef %130, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i248 = shl i32 %call10.i.i.i247, 16
  %conv13.i.i.i249 = and i32 %call7.i.i.i246, 65535
  %or.i.i.i250 = or i32 %shl.i.i.i248, %conv13.i.i.i249
  br label %mt7530_read.exit253

mt7530_read.exit253:                              ; preds = %if.end.i.i.i251, %do.end.i.i.i244
  %retval.0.i.i.i252 = phi i32 [ %call.i.i.i241, %do.end.i.i.i244 ], [ %or.i.i.i250, %if.end.i.i.i251 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i239) #13
  %137 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i255 = getelementptr inbounds %struct.mii_bus, ptr %138, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i255, i32 noundef 2) #13
  %139 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bus1.i.i.i, align 4
  %and17 = lshr i32 %retval.0.i.i.i252, 16
  %141 = trunc i32 %and17 to i16
  %142 = and i16 %141, -897
  %conv8.i.i257 = or i16 %142, 256
  %write.i.i258 = getelementptr inbounds %struct.mii_bus, ptr %140, i32 0, i32 5
  %143 = ptrtoint ptr %write.i.i258 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write.i.i258, align 8
  %call.i.i259 = tail call i32 %144(ptr noundef %140, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i259)
  %cmp.i.i260 = icmp slt i32 %call.i.i259, 0
  br i1 %cmp.i.i260, label %mt7530_read.exit253.do.end.i.i269_crit_edge, label %if.end.i.i264

mt7530_read.exit253.do.end.i.i269_crit_edge:      ; preds = %mt7530_read.exit253
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i269

if.end.i.i264:                                    ; preds = %mt7530_read.exit253
  %conv6.i.i261 = trunc i32 %retval.0.i.i.i252 to i16
  %145 = ptrtoint ptr %write.i.i258 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write.i.i258, align 8
  %call12.i.i262 = tail call i32 %146(ptr noundef %140, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i261) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i262)
  %cmp13.i.i263 = icmp slt i32 %call12.i.i262, 0
  br i1 %cmp13.i.i263, label %if.end.i.i264.do.end.i.i269_crit_edge, label %err.i.i267

if.end.i.i264.do.end.i.i269_crit_edge:            ; preds = %if.end.i.i264
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i269

err.i.i267:                                       ; preds = %if.end.i.i264
  %147 = ptrtoint ptr %write.i.i258 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write.i.i258, align 8
  %call18.i.i265 = tail call i32 %148(ptr noundef %140, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i257) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i265)
  %cmp19.i.i266 = icmp slt i32 %call18.i.i265, 0
  br i1 %cmp19.i.i266, label %err.i.i267.do.end.i.i269_crit_edge, label %err.i.i267.mt7530_write.exit270_crit_edge

err.i.i267.mt7530_write.exit270_crit_edge:        ; preds = %err.i.i267
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit270

err.i.i267.do.end.i.i269_crit_edge:               ; preds = %err.i.i267
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i269

do.end.i.i269:                                    ; preds = %err.i.i267.do.end.i.i269_crit_edge, %if.end.i.i264.do.end.i.i269_crit_edge, %mt7530_read.exit253.do.end.i.i269_crit_edge
  %dev.i.i268 = getelementptr inbounds %struct.mii_bus, ptr %140, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i268, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit270

mt7530_write.exit270:                             ; preds = %do.end.i.i269, %err.i.i267.mt7530_write.exit270_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i255) #13
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 35, i32 noundef 2) #13
  %trunc = trunc i32 %xtal.0 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %trunc)
  %switch = icmp eq i8 %trunc, -128
  %149 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i272 = getelementptr inbounds %struct.mii_bus, ptr %150, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i272, i32 noundef 2) #13
  %151 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i273 = getelementptr inbounds %struct.mii_bus, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %write.i.i.i273 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write.i.i.i273, align 8
  %call.i.i.i274 = tail call i32 %154(ptr noundef %152, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i274)
  %cmp.i.i.i275 = icmp slt i32 %call.i.i.i274, 0
  br i1 %switch, label %sw.bb, label %sw.bb22

sw.bb:                                            ; preds = %mt7530_write.exit270
  br i1 %cmp.i.i.i275, label %do.end.i.i.i277, label %if.end.i.i.i284

do.end.i.i.i277:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i276 = getelementptr inbounds %struct.mii_bus, ptr %152, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i276, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit286

if.end.i.i.i284:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i278 = getelementptr inbounds %struct.mii_bus, ptr %152, i32 0, i32 4
  %155 = ptrtoint ptr %read.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read.i.i.i278, align 4
  %call7.i.i.i279 = tail call i32 %156(ptr noundef %152, i32 noundef 31, i32 noundef 10) #13
  %157 = ptrtoint ptr %read.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read.i.i.i278, align 4
  %call10.i.i.i280 = tail call i32 %158(ptr noundef %152, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i281 = shl i32 %call10.i.i.i280, 16
  %conv13.i.i.i282 = and i32 %call7.i.i.i279, 65535
  %or.i.i.i283 = or i32 %shl.i.i.i281, %conv13.i.i.i282
  br label %mt7530_read.exit286

mt7530_read.exit286:                              ; preds = %if.end.i.i.i284, %do.end.i.i.i277
  %retval.0.i.i.i285 = phi i32 [ %call.i.i.i274, %do.end.i.i.i277 ], [ %or.i.i.i283, %if.end.i.i.i284 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i272) #13
  %and20 = and i32 %retval.0.i.i.i285, -4194303
  %159 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i288 = getelementptr inbounds %struct.mii_bus, ptr %160, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i288, i32 noundef 2) #13
  %161 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bus1.i.i.i, align 4
  %or21 = lshr i32 %and20, 16
  %163 = trunc i32 %or21 to i16
  %conv8.i.i290 = or i16 %163, 40
  %write.i.i291 = getelementptr inbounds %struct.mii_bus, ptr %162, i32 0, i32 5
  %164 = ptrtoint ptr %write.i.i291 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write.i.i291, align 8
  %call.i.i292 = tail call i32 %165(ptr noundef %162, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i292)
  %cmp.i.i293 = icmp slt i32 %call.i.i292, 0
  br i1 %cmp.i.i293, label %mt7530_read.exit286.sw.epilog.sink.split_crit_edge, label %if.end.i.i297

mt7530_read.exit286.sw.epilog.sink.split_crit_edge: ; preds = %mt7530_read.exit286
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.end.i.i297:                                    ; preds = %mt7530_read.exit286
  %conv6.i.i294 = trunc i32 %and20 to i16
  %166 = ptrtoint ptr %write.i.i291 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write.i.i291, align 8
  %call12.i.i295 = tail call i32 %167(ptr noundef %162, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i294) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i295)
  %cmp13.i.i296 = icmp slt i32 %call12.i.i295, 0
  br i1 %cmp13.i.i296, label %if.end.i.i297.sw.epilog.sink.split_crit_edge, label %err.i.i300

if.end.i.i297.sw.epilog.sink.split_crit_edge:     ; preds = %if.end.i.i297
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

err.i.i300:                                       ; preds = %if.end.i.i297
  %168 = ptrtoint ptr %write.i.i291 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write.i.i291, align 8
  %call18.i.i298 = tail call i32 %169(ptr noundef %162, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i290) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i298)
  %cmp19.i.i299 = icmp slt i32 %call18.i.i298, 0
  br i1 %cmp19.i.i299, label %err.i.i300.sw.epilog.sink.split_crit_edge, label %err.i.i300.sw.epilog_crit_edge

err.i.i300.sw.epilog_crit_edge:                   ; preds = %err.i.i300
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

err.i.i300.sw.epilog.sink.split_crit_edge:        ; preds = %err.i.i300
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %mt7530_write.exit270
  br i1 %cmp.i.i.i275, label %do.end.i.i.i310, label %if.end.i.i.i317

do.end.i.i.i310:                                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i309 = getelementptr inbounds %struct.mii_bus, ptr %152, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i309, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit319

if.end.i.i.i317:                                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i311 = getelementptr inbounds %struct.mii_bus, ptr %152, i32 0, i32 4
  %170 = ptrtoint ptr %read.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read.i.i.i311, align 4
  %call7.i.i.i312 = tail call i32 %171(ptr noundef %152, i32 noundef 31, i32 noundef 10) #13
  %172 = ptrtoint ptr %read.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %read.i.i.i311, align 4
  %call10.i.i.i313 = tail call i32 %173(ptr noundef %152, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i314 = shl i32 %call10.i.i.i313, 16
  %conv13.i.i.i315 = and i32 %call7.i.i.i312, 65535
  %or.i.i.i316 = or i32 %shl.i.i.i314, %conv13.i.i.i315
  br label %mt7530_read.exit319

mt7530_read.exit319:                              ; preds = %if.end.i.i.i317, %do.end.i.i.i310
  %retval.0.i.i.i318 = phi i32 [ %call.i.i.i274, %do.end.i.i.i310 ], [ %or.i.i.i316, %if.end.i.i.i317 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i272) #13
  %and24 = and i32 %retval.0.i.i.i318, -4194303
  %174 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i321 = getelementptr inbounds %struct.mii_bus, ptr %175, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i321, i32 noundef 2) #13
  %176 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bus1.i.i.i, align 4
  %or25 = lshr i32 %and24, 16
  %178 = trunc i32 %or25 to i16
  %conv8.i.i323 = or i16 %178, 50
  %write.i.i324 = getelementptr inbounds %struct.mii_bus, ptr %177, i32 0, i32 5
  %179 = ptrtoint ptr %write.i.i324 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write.i.i324, align 8
  %call.i.i325 = tail call i32 %180(ptr noundef %177, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i325)
  %cmp.i.i326 = icmp slt i32 %call.i.i325, 0
  br i1 %cmp.i.i326, label %mt7530_read.exit319.sw.epilog.sink.split_crit_edge, label %if.end.i.i330

mt7530_read.exit319.sw.epilog.sink.split_crit_edge: ; preds = %mt7530_read.exit319
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.end.i.i330:                                    ; preds = %mt7530_read.exit319
  %conv6.i.i327 = trunc i32 %and24 to i16
  %181 = ptrtoint ptr %write.i.i324 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write.i.i324, align 8
  %call12.i.i328 = tail call i32 %182(ptr noundef %177, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i327) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i328)
  %cmp13.i.i329 = icmp slt i32 %call12.i.i328, 0
  br i1 %cmp13.i.i329, label %if.end.i.i330.sw.epilog.sink.split_crit_edge, label %err.i.i333

if.end.i.i330.sw.epilog.sink.split_crit_edge:     ; preds = %if.end.i.i330
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

err.i.i333:                                       ; preds = %if.end.i.i330
  %183 = ptrtoint ptr %write.i.i324 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write.i.i324, align 8
  %call18.i.i331 = tail call i32 %184(ptr noundef %177, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i323) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i331)
  %cmp19.i.i332 = icmp slt i32 %call18.i.i331, 0
  br i1 %cmp19.i.i332, label %err.i.i333.sw.epilog.sink.split_crit_edge, label %err.i.i333.sw.epilog_crit_edge

err.i.i333.sw.epilog_crit_edge:                   ; preds = %err.i.i333
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

err.i.i333.sw.epilog.sink.split_crit_edge:        ; preds = %err.i.i333
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %err.i.i333.sw.epilog.sink.split_crit_edge, %if.end.i.i330.sw.epilog.sink.split_crit_edge, %mt7530_read.exit319.sw.epilog.sink.split_crit_edge, %err.i.i300.sw.epilog.sink.split_crit_edge, %if.end.i.i297.sw.epilog.sink.split_crit_edge, %mt7530_read.exit286.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %162, %err.i.i300.sw.epilog.sink.split_crit_edge ], [ %162, %if.end.i.i297.sw.epilog.sink.split_crit_edge ], [ %162, %mt7530_read.exit286.sw.epilog.sink.split_crit_edge ], [ %177, %err.i.i333.sw.epilog.sink.split_crit_edge ], [ %177, %if.end.i.i330.sw.epilog.sink.split_crit_edge ], [ %177, %mt7530_read.exit319.sw.epilog.sink.split_crit_edge ]
  %mdio_lock.i321.sink.ph = phi ptr [ %mdio_lock.i288, %err.i.i300.sw.epilog.sink.split_crit_edge ], [ %mdio_lock.i288, %if.end.i.i297.sw.epilog.sink.split_crit_edge ], [ %mdio_lock.i288, %mt7530_read.exit286.sw.epilog.sink.split_crit_edge ], [ %mdio_lock.i321, %err.i.i333.sw.epilog.sink.split_crit_edge ], [ %mdio_lock.i321, %if.end.i.i330.sw.epilog.sink.split_crit_edge ], [ %mdio_lock.i321, %mt7530_read.exit319.sw.epilog.sink.split_crit_edge ]
  %dev.i.i334 = getelementptr inbounds %struct.mii_bus, ptr %.sink, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i334, ptr noundef nonnull @.str.21) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %err.i.i333.sw.epilog_crit_edge, %err.i.i300.sw.epilog_crit_edge
  %mdio_lock.i321.sink = phi ptr [ %mdio_lock.i288, %err.i.i300.sw.epilog_crit_edge ], [ %mdio_lock.i321, %err.i.i333.sw.epilog_crit_edge ], [ %mdio_lock.i321.sink.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i321.sink) #13
  %185 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i338 = getelementptr inbounds %struct.mii_bus, ptr %186, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i338, i32 noundef 2) #13
  %187 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i339 = getelementptr inbounds %struct.mii_bus, ptr %188, i32 0, i32 5
  %189 = ptrtoint ptr %write.i.i.i339 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write.i.i.i339, align 8
  %call.i.i.i340 = tail call i32 %190(ptr noundef %188, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i340)
  %cmp.i.i.i341 = icmp slt i32 %call.i.i.i340, 0
  br i1 %cmp.i.i.i341, label %do.end.i.i.i343, label %if.end.i.i.i350

do.end.i.i.i343:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i342 = getelementptr inbounds %struct.mii_bus, ptr %188, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i342, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit352

if.end.i.i.i350:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i344 = getelementptr inbounds %struct.mii_bus, ptr %188, i32 0, i32 4
  %191 = ptrtoint ptr %read.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read.i.i.i344, align 4
  %call7.i.i.i345 = tail call i32 %192(ptr noundef %188, i32 noundef 31, i32 noundef 10) #13
  %193 = ptrtoint ptr %read.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %read.i.i.i344, align 4
  %call10.i.i.i346 = tail call i32 %194(ptr noundef %188, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i347 = shl i32 %call10.i.i.i346, 16
  %conv13.i.i.i348 = and i32 %call7.i.i.i345, 65535
  %or.i.i.i349 = or i32 %shl.i.i.i347, %conv13.i.i.i348
  br label %mt7530_read.exit352

mt7530_read.exit352:                              ; preds = %if.end.i.i.i350, %do.end.i.i.i343
  %retval.0.i.i.i351 = phi i32 [ %call.i.i.i340, %do.end.i.i.i343 ], [ %or.i.i.i349, %if.end.i.i.i350 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i338) #13
  %195 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i354 = getelementptr inbounds %struct.mii_bus, ptr %196, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i354, i32 noundef 2) #13
  %197 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %bus1.i.i.i, align 4
  %shr7.i.i355 = lshr i32 %retval.0.i.i.i351, 16
  %conv8.i.i356 = trunc i32 %shr7.i.i355 to i16
  %write.i.i357 = getelementptr inbounds %struct.mii_bus, ptr %198, i32 0, i32 5
  %199 = ptrtoint ptr %write.i.i357 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write.i.i357, align 8
  %call.i.i358 = tail call i32 %200(ptr noundef %198, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i358)
  %cmp.i.i359 = icmp slt i32 %call.i.i358, 0
  br i1 %cmp.i.i359, label %mt7530_read.exit352.do.end.i.i368_crit_edge, label %if.end.i.i363

mt7530_read.exit352.do.end.i.i368_crit_edge:      ; preds = %mt7530_read.exit352
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i368

if.end.i.i363:                                    ; preds = %mt7530_read.exit352
  %201 = trunc i32 %retval.0.i.i.i351 to i16
  %conv6.i.i360 = or i16 %201, 1
  %202 = ptrtoint ptr %write.i.i357 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write.i.i357, align 8
  %call12.i.i361 = tail call i32 %203(ptr noundef %198, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i360) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i361)
  %cmp13.i.i362 = icmp slt i32 %call12.i.i361, 0
  br i1 %cmp13.i.i362, label %if.end.i.i363.do.end.i.i368_crit_edge, label %err.i.i366

if.end.i.i363.do.end.i.i368_crit_edge:            ; preds = %if.end.i.i363
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i368

err.i.i366:                                       ; preds = %if.end.i.i363
  %204 = ptrtoint ptr %write.i.i357 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write.i.i357, align 8
  %call18.i.i364 = tail call i32 %205(ptr noundef %198, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i356) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i364)
  %cmp19.i.i365 = icmp slt i32 %call18.i.i364, 0
  br i1 %cmp19.i.i365, label %err.i.i366.do.end.i.i368_crit_edge, label %err.i.i366.mt7530_write.exit369_crit_edge

err.i.i366.mt7530_write.exit369_crit_edge:        ; preds = %err.i.i366
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit369

err.i.i366.do.end.i.i368_crit_edge:               ; preds = %err.i.i366
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i368

do.end.i.i368:                                    ; preds = %err.i.i366.do.end.i.i368_crit_edge, %if.end.i.i363.do.end.i.i368_crit_edge, %mt7530_read.exit352.do.end.i.i368_crit_edge
  %dev.i.i367 = getelementptr inbounds %struct.mii_bus, ptr %198, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i367, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit369

mt7530_write.exit369:                             ; preds = %do.end.i.i368, %err.i.i366.mt7530_write.exit369_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i354) #13
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #13
  %206 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i371 = getelementptr inbounds %struct.mii_bus, ptr %207, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i371, i32 noundef 2) #13
  %208 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i372 = getelementptr inbounds %struct.mii_bus, ptr %209, i32 0, i32 5
  %210 = ptrtoint ptr %write.i.i.i372 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write.i.i.i372, align 8
  %call.i.i.i373 = tail call i32 %211(ptr noundef %209, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i373)
  %cmp.i.i.i374 = icmp slt i32 %call.i.i.i373, 0
  br i1 %cmp.i.i.i374, label %do.end.i.i.i376, label %if.end.i.i.i383

do.end.i.i.i376:                                  ; preds = %mt7530_write.exit369
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i375 = getelementptr inbounds %struct.mii_bus, ptr %209, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i375, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit385

if.end.i.i.i383:                                  ; preds = %mt7530_write.exit369
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i377 = getelementptr inbounds %struct.mii_bus, ptr %209, i32 0, i32 4
  %212 = ptrtoint ptr %read.i.i.i377 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %read.i.i.i377, align 4
  %call7.i.i.i378 = tail call i32 %213(ptr noundef %209, i32 noundef 31, i32 noundef 10) #13
  %214 = ptrtoint ptr %read.i.i.i377 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %read.i.i.i377, align 4
  %call10.i.i.i379 = tail call i32 %215(ptr noundef %209, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i380 = shl i32 %call10.i.i.i379, 16
  %conv13.i.i.i381 = and i32 %call7.i.i.i378, 65535
  %or.i.i.i382 = or i32 %shl.i.i.i380, %conv13.i.i.i381
  br label %mt7530_read.exit385

mt7530_read.exit385:                              ; preds = %if.end.i.i.i383, %do.end.i.i.i376
  %retval.0.i.i.i384 = phi i32 [ %call.i.i.i373, %do.end.i.i.i376 ], [ %or.i.i.i382, %if.end.i.i.i383 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i371) #13
  %216 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i387 = getelementptr inbounds %struct.mii_bus, ptr %217, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i387, i32 noundef 2) #13
  %218 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %bus1.i.i.i, align 4
  %shr7.i.i388 = lshr i32 %retval.0.i.i.i384, 16
  %conv8.i.i389 = trunc i32 %shr7.i.i388 to i16
  %write.i.i390 = getelementptr inbounds %struct.mii_bus, ptr %219, i32 0, i32 5
  %220 = ptrtoint ptr %write.i.i390 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write.i.i390, align 8
  %call.i.i391 = tail call i32 %221(ptr noundef %219, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i391)
  %cmp.i.i392 = icmp slt i32 %call.i.i391, 0
  br i1 %cmp.i.i392, label %mt7530_read.exit385.do.end.i.i401_crit_edge, label %if.end.i.i396

mt7530_read.exit385.do.end.i.i401_crit_edge:      ; preds = %mt7530_read.exit385
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i401

if.end.i.i396:                                    ; preds = %mt7530_read.exit385
  %222 = trunc i32 %retval.0.i.i.i384 to i16
  %conv6.i.i393 = and i16 %222, -2
  %223 = ptrtoint ptr %write.i.i390 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %write.i.i390, align 8
  %call12.i.i394 = tail call i32 %224(ptr noundef %219, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i393) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i394)
  %cmp13.i.i395 = icmp slt i32 %call12.i.i394, 0
  br i1 %cmp13.i.i395, label %if.end.i.i396.do.end.i.i401_crit_edge, label %err.i.i399

if.end.i.i396.do.end.i.i401_crit_edge:            ; preds = %if.end.i.i396
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i401

err.i.i399:                                       ; preds = %if.end.i.i396
  %225 = ptrtoint ptr %write.i.i390 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %write.i.i390, align 8
  %call18.i.i397 = tail call i32 %226(ptr noundef %219, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i389) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i397)
  %cmp19.i.i398 = icmp slt i32 %call18.i.i397, 0
  br i1 %cmp19.i.i398, label %err.i.i399.do.end.i.i401_crit_edge, label %err.i.i399.mt7530_write.exit402_crit_edge

err.i.i399.mt7530_write.exit402_crit_edge:        ; preds = %err.i.i399
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit402

err.i.i399.do.end.i.i401_crit_edge:               ; preds = %err.i.i399
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i401

do.end.i.i401:                                    ; preds = %err.i.i399.do.end.i.i401_crit_edge, %if.end.i.i396.do.end.i.i401_crit_edge, %mt7530_read.exit385.do.end.i.i401_crit_edge
  %dev.i.i400 = getelementptr inbounds %struct.mii_bus, ptr %219, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i400, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit402

mt7530_write.exit402:                             ; preds = %do.end.i.i401, %err.i.i399.mt7530_write.exit402_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i387) #13
  %227 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i404 = getelementptr inbounds %struct.mii_bus, ptr %228, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i404, i32 noundef 2) #13
  %229 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i405 = getelementptr inbounds %struct.mii_bus, ptr %230, i32 0, i32 5
  %231 = ptrtoint ptr %write.i.i405 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write.i.i405, align 8
  %call.i.i406 = tail call i32 %232(ptr noundef %230, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i406)
  %cmp.i.i407 = icmp slt i32 %call.i.i406, 0
  br i1 %cmp.i.i407, label %mt7530_write.exit402.do.end.i.i415_crit_edge, label %if.end.i.i410

mt7530_write.exit402.do.end.i.i415_crit_edge:     ; preds = %mt7530_write.exit402
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i415

if.end.i.i410:                                    ; preds = %mt7530_write.exit402
  %233 = ptrtoint ptr %write.i.i405 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %write.i.i405, align 8
  %call12.i.i408 = tail call i32 %234(ptr noundef %230, i32 noundef 31, i32 noundef 15, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i408)
  %cmp13.i.i409 = icmp slt i32 %call12.i.i408, 0
  br i1 %cmp13.i.i409, label %if.end.i.i410.do.end.i.i415_crit_edge, label %err.i.i413

if.end.i.i410.do.end.i.i415_crit_edge:            ; preds = %if.end.i.i410
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i415

err.i.i413:                                       ; preds = %if.end.i.i410
  %235 = ptrtoint ptr %write.i.i405 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write.i.i405, align 8
  %call18.i.i411 = tail call i32 %236(ptr noundef %230, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 173) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i411)
  %cmp19.i.i412 = icmp slt i32 %call18.i.i411, 0
  br i1 %cmp19.i.i412, label %err.i.i413.do.end.i.i415_crit_edge, label %err.i.i413.mt7530_write.exit416_crit_edge

err.i.i413.mt7530_write.exit416_crit_edge:        ; preds = %err.i.i413
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit416

err.i.i413.do.end.i.i415_crit_edge:               ; preds = %err.i.i413
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i415

do.end.i.i415:                                    ; preds = %err.i.i413.do.end.i.i415_crit_edge, %if.end.i.i410.do.end.i.i415_crit_edge, %mt7530_write.exit402.do.end.i.i415_crit_edge
  %dev.i.i414 = getelementptr inbounds %struct.mii_bus, ptr %230, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i414, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit416

mt7530_write.exit416:                             ; preds = %do.end.i.i415, %err.i.i413.mt7530_write.exit416_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i404) #13
  %237 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i418 = getelementptr inbounds %struct.mii_bus, ptr %238, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i418, i32 noundef 2) #13
  %239 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i419 = getelementptr inbounds %struct.mii_bus, ptr %240, i32 0, i32 5
  %241 = ptrtoint ptr %write.i.i419 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write.i.i419, align 8
  %call.i.i420 = tail call i32 %242(ptr noundef %240, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i420)
  %cmp.i.i421 = icmp slt i32 %call.i.i420, 0
  br i1 %cmp.i.i421, label %mt7530_write.exit416.do.end.i.i429_crit_edge, label %if.end.i.i424

mt7530_write.exit416.do.end.i.i429_crit_edge:     ; preds = %mt7530_write.exit416
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i429

if.end.i.i424:                                    ; preds = %mt7530_write.exit416
  %243 = ptrtoint ptr %write.i.i419 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write.i.i419, align 8
  %call12.i.i422 = tail call i32 %244(ptr noundef %240, i32 noundef 31, i32 noundef 12, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i422)
  %cmp13.i.i423 = icmp slt i32 %call12.i.i422, 0
  br i1 %cmp13.i.i423, label %if.end.i.i424.do.end.i.i429_crit_edge, label %err.i.i427

if.end.i.i424.do.end.i.i429_crit_edge:            ; preds = %if.end.i.i424
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i429

err.i.i427:                                       ; preds = %if.end.i.i424
  %245 = ptrtoint ptr %write.i.i419 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %write.i.i419, align 8
  %call18.i.i425 = tail call i32 %246(ptr noundef %240, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 1268) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i425)
  %cmp19.i.i426 = icmp slt i32 %call18.i.i425, 0
  br i1 %cmp19.i.i426, label %err.i.i427.do.end.i.i429_crit_edge, label %err.i.i427.mt7530_write.exit430_crit_edge

err.i.i427.mt7530_write.exit430_crit_edge:        ; preds = %err.i.i427
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit430

err.i.i427.do.end.i.i429_crit_edge:               ; preds = %err.i.i427
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i429

do.end.i.i429:                                    ; preds = %err.i.i427.do.end.i.i429_crit_edge, %if.end.i.i424.do.end.i.i429_crit_edge, %mt7530_write.exit416.do.end.i.i429_crit_edge
  %dev.i.i428 = getelementptr inbounds %struct.mii_bus, ptr %240, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i428, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit430

mt7530_write.exit430:                             ; preds = %do.end.i.i429, %err.i.i427.mt7530_write.exit430_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i418) #13
  %247 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i432 = getelementptr inbounds %struct.mii_bus, ptr %248, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i432, i32 noundef 2) #13
  %249 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i433 = getelementptr inbounds %struct.mii_bus, ptr %250, i32 0, i32 5
  %251 = ptrtoint ptr %write.i.i.i433 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write.i.i.i433, align 8
  %call.i.i.i434 = tail call i32 %252(ptr noundef %250, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i434)
  %cmp.i.i.i435 = icmp slt i32 %call.i.i.i434, 0
  br i1 %cmp.i.i.i435, label %do.end.i.i.i437, label %if.end.i.i.i444

do.end.i.i.i437:                                  ; preds = %mt7530_write.exit430
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i436 = getelementptr inbounds %struct.mii_bus, ptr %250, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i436, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit446

if.end.i.i.i444:                                  ; preds = %mt7530_write.exit430
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i438 = getelementptr inbounds %struct.mii_bus, ptr %250, i32 0, i32 4
  %253 = ptrtoint ptr %read.i.i.i438 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %read.i.i.i438, align 4
  %call7.i.i.i439 = tail call i32 %254(ptr noundef %250, i32 noundef 31, i32 noundef 10) #13
  %255 = ptrtoint ptr %read.i.i.i438 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read.i.i.i438, align 4
  %call10.i.i.i440 = tail call i32 %256(ptr noundef %250, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i441 = shl i32 %call10.i.i.i440, 16
  %conv13.i.i.i442 = and i32 %call7.i.i.i439, 65535
  %or.i.i.i443 = or i32 %shl.i.i.i441, %conv13.i.i.i442
  br label %mt7530_read.exit446

mt7530_read.exit446:                              ; preds = %if.end.i.i.i444, %do.end.i.i.i437
  %retval.0.i.i.i445 = phi i32 [ %call.i.i.i434, %do.end.i.i.i437 ], [ %or.i.i.i443, %if.end.i.i.i444 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i432) #13
  %257 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i448 = getelementptr inbounds %struct.mii_bus, ptr %258, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i448, i32 noundef 2) #13
  %259 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %bus1.i.i.i, align 4
  %or31 = lshr i32 %retval.0.i.i.i445, 16
  %261 = trunc i32 %or31 to i16
  %conv8.i.i450 = or i16 %261, 64
  %write.i.i451 = getelementptr inbounds %struct.mii_bus, ptr %260, i32 0, i32 5
  %262 = ptrtoint ptr %write.i.i451 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write.i.i451, align 8
  %call.i.i452 = tail call i32 %263(ptr noundef %260, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 482) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i452)
  %cmp.i.i453 = icmp slt i32 %call.i.i452, 0
  br i1 %cmp.i.i453, label %mt7530_read.exit446.do.end.i.i462_crit_edge, label %if.end.i.i457

mt7530_read.exit446.do.end.i.i462_crit_edge:      ; preds = %mt7530_read.exit446
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i462

if.end.i.i457:                                    ; preds = %mt7530_read.exit446
  %conv6.i.i454 = trunc i32 %retval.0.i.i.i445 to i16
  %264 = ptrtoint ptr %write.i.i451 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write.i.i451, align 8
  %call12.i.i455 = tail call i32 %265(ptr noundef %260, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i454) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i455)
  %cmp13.i.i456 = icmp slt i32 %call12.i.i455, 0
  br i1 %cmp13.i.i456, label %if.end.i.i457.do.end.i.i462_crit_edge, label %err.i.i460

if.end.i.i457.do.end.i.i462_crit_edge:            ; preds = %if.end.i.i457
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i462

err.i.i460:                                       ; preds = %if.end.i.i457
  %266 = ptrtoint ptr %write.i.i451 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write.i.i451, align 8
  %call18.i.i458 = tail call i32 %267(ptr noundef %260, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i450) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i458)
  %cmp19.i.i459 = icmp slt i32 %call18.i.i458, 0
  br i1 %cmp19.i.i459, label %err.i.i460.do.end.i.i462_crit_edge, label %err.i.i460.mt7530_write.exit463_crit_edge

err.i.i460.mt7530_write.exit463_crit_edge:        ; preds = %err.i.i460
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit463

err.i.i460.do.end.i.i462_crit_edge:               ; preds = %err.i.i460
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i462

do.end.i.i462:                                    ; preds = %err.i.i460.do.end.i.i462_crit_edge, %if.end.i.i457.do.end.i.i462_crit_edge, %mt7530_read.exit446.do.end.i.i462_crit_edge
  %dev.i.i461 = getelementptr inbounds %struct.mii_bus, ptr %260, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i461, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit463

mt7530_write.exit463:                             ; preds = %do.end.i.i462, %err.i.i460.mt7530_write.exit463_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i448) #13
  %268 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i465 = getelementptr inbounds %struct.mii_bus, ptr %269, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i465, i32 noundef 2) #13
  %270 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i466 = getelementptr inbounds %struct.mii_bus, ptr %271, i32 0, i32 5
  %272 = ptrtoint ptr %write.i.i.i466 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write.i.i.i466, align 8
  %call.i.i.i467 = tail call i32 %273(ptr noundef %271, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i467)
  %cmp.i.i.i468 = icmp slt i32 %call.i.i.i467, 0
  br i1 %cmp.i.i.i468, label %do.end.i.i.i470, label %if.end.i.i.i477

do.end.i.i.i470:                                  ; preds = %mt7530_write.exit463
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i469 = getelementptr inbounds %struct.mii_bus, ptr %271, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i469, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit479

if.end.i.i.i477:                                  ; preds = %mt7530_write.exit463
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i471 = getelementptr inbounds %struct.mii_bus, ptr %271, i32 0, i32 4
  %274 = ptrtoint ptr %read.i.i.i471 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %read.i.i.i471, align 4
  %call7.i.i.i472 = tail call i32 %275(ptr noundef %271, i32 noundef 31, i32 noundef 8) #13
  %276 = ptrtoint ptr %read.i.i.i471 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %read.i.i.i471, align 4
  %call10.i.i.i473 = tail call i32 %277(ptr noundef %271, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i474 = shl i32 %call10.i.i.i473, 16
  %conv13.i.i.i475 = and i32 %call7.i.i.i472, 65535
  %or.i.i.i476 = or i32 %shl.i.i.i474, %conv13.i.i.i475
  br label %mt7530_read.exit479

mt7530_read.exit479:                              ; preds = %if.end.i.i.i477, %do.end.i.i.i470
  %retval.0.i.i.i478 = phi i32 [ %call.i.i.i467, %do.end.i.i.i470 ], [ %or.i.i.i476, %if.end.i.i.i477 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i465) #13
  %278 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i481 = getelementptr inbounds %struct.mii_bus, ptr %279, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i481, i32 noundef 2) #13
  %280 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %bus1.i.i.i, align 4
  %shr7.i.i482 = lshr i32 %retval.0.i.i.i478, 16
  %conv8.i.i483 = trunc i32 %shr7.i.i482 to i16
  %write.i.i484 = getelementptr inbounds %struct.mii_bus, ptr %281, i32 0, i32 5
  %282 = ptrtoint ptr %write.i.i484 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %write.i.i484, align 8
  %call.i.i485 = tail call i32 %283(ptr noundef %281, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i485)
  %cmp.i.i486 = icmp slt i32 %call.i.i485, 0
  br i1 %cmp.i.i486, label %mt7530_read.exit479.do.end.i.i495_crit_edge, label %if.end.i.i490

mt7530_read.exit479.do.end.i.i495_crit_edge:      ; preds = %mt7530_read.exit479
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i495

if.end.i.i490:                                    ; preds = %mt7530_read.exit479
  %284 = trunc i32 %retval.0.i.i.i478 to i16
  %conv6.i.i487 = or i16 %284, 4
  %285 = ptrtoint ptr %write.i.i484 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %write.i.i484, align 8
  %call12.i.i488 = tail call i32 %286(ptr noundef %281, i32 noundef 31, i32 noundef 8, i16 noundef zeroext %conv6.i.i487) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i488)
  %cmp13.i.i489 = icmp slt i32 %call12.i.i488, 0
  br i1 %cmp13.i.i489, label %if.end.i.i490.do.end.i.i495_crit_edge, label %err.i.i493

if.end.i.i490.do.end.i.i495_crit_edge:            ; preds = %if.end.i.i490
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i495

err.i.i493:                                       ; preds = %if.end.i.i490
  %287 = ptrtoint ptr %write.i.i484 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %write.i.i484, align 8
  %call18.i.i491 = tail call i32 %288(ptr noundef %281, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i483) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i491)
  %cmp19.i.i492 = icmp slt i32 %call18.i.i491, 0
  br i1 %cmp19.i.i492, label %err.i.i493.do.end.i.i495_crit_edge, label %err.i.i493.mt7530_write.exit496_crit_edge

err.i.i493.mt7530_write.exit496_crit_edge:        ; preds = %err.i.i493
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit496

err.i.i493.do.end.i.i495_crit_edge:               ; preds = %err.i.i493
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i495

do.end.i.i495:                                    ; preds = %err.i.i493.do.end.i.i495_crit_edge, %if.end.i.i490.do.end.i.i495_crit_edge, %mt7530_read.exit479.do.end.i.i495_crit_edge
  %dev.i.i494 = getelementptr inbounds %struct.mii_bus, ptr %281, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i494, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit496

mt7530_write.exit496:                             ; preds = %do.end.i.i495, %err.i.i493.mt7530_write.exit496_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i481) #13
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 35, i32 noundef 2) #13
  br label %cleanup

cleanup:                                          ; preds = %mt7530_write.exit496, %mt7531_dual_sgmii_supported.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7531_cpu_port_config(ptr noundef %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %port, label %entry.cleanup_crit_edge [
    i32 5, label %sw.epilog
    i32 6, label %sw.epilog.thread
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @mt7531_pad_setup(ptr noundef %ds, i32 noundef 22)
  %p6_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %p6_interface to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 22, ptr %p6_interface, align 4
  br label %7

sw.epilog:                                        ; preds = %entry
  %p5_intf_sel.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %p5_intf_sel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p5_intf_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1.i.not = icmp eq i32 %5, 4
  %. = select i1 %cmp1.i.not, i32 22, i32 9
  %p5_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %p5_interface to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %p5_interface, align 4
  br i1 %cmp1.i.not, label %sw.epilog._crit_edge, label %sw.epilog._crit_edge49

sw.epilog._crit_edge49:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %8

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %7

7:                                                ; preds = %sw.epilog._crit_edge, %sw.epilog.thread
  br label %8

8:                                                ; preds = %7, %sw.epilog._crit_edge49
  %interface.145 = phi i32 [ 22, %7 ], [ 9, %sw.epilog._crit_edge49 ]
  %cond = phi i32 [ 24627, %7 ], [ 24635, %sw.epilog._crit_edge49 ]
  %9 = phi i32 [ 2500, %7 ], [ 1000, %sw.epilog._crit_edge49 ]
  %call7 = tail call i32 @mt7531_mac_config(ptr noundef %ds, i32 noundef %port, i32 noundef 1, i32 noundef %interface.145)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %.cleanup_crit_edge

.cleanup_crit_edge:                               ; preds = %8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %8
  %mul = shl nuw nsw i32 %port, 8
  %add = add nuw nsw i32 %mul, 12288
  %id = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp10 = icmp eq i32 %11, 2
  %or20 = select i1 %cmp10, i32 -133864645, i32 385851
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %14 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus1.i, align 4
  %16 = trunc i32 %add to i16
  %17 = lshr exact i16 %16, 6
  %shr7.i.i = lshr i32 %or20, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %19(ptr noundef %15, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end9.do.end.i.i_crit_edge, label %if.end.i.i

if.end9.do.end.i.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end9
  %conv6.i.i = trunc i32 %or20 to i16
  %20 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %21(ptr noundef %15, i32 noundef 31, i32 noundef 0, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %22 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %23(ptr noundef %15, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.end9.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 4
  %info.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info.i.i, align 4
  %mac_pcs_link_up.i.i = getelementptr inbounds %struct.mt753x_info, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %mac_pcs_link_up.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_pcs_link_up.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %mt7530_write.exit.mt753x_mac_pcs_link_up.exit.i_crit_edge, label %if.end.i.i42

mt7530_write.exit.mt753x_mac_pcs_link_up.exit.i_crit_edge: ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt753x_mac_pcs_link_up.exit.i

if.end.i.i42:                                     ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %29(ptr noundef %ds, i32 noundef %port, i32 noundef 1, i32 noundef %interface.145, i32 noundef %9, i32 noundef 1) #13
  br label %mt753x_mac_pcs_link_up.exit.i

mt753x_mac_pcs_link_up.exit.i:                    ; preds = %if.end.i.i42, %mt7530_write.exit.mt753x_mac_pcs_link_up.exit.i_crit_edge
  %30 = zext i32 %interface.145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %interface.145, label %if.end.i [
    i32 22, label %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge
    i32 21, label %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge50
    i32 19, label %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge51
  ]

mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge51: ; preds = %mt753x_mac_pcs_link_up.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt753x_phylink_mac_link_up.exit

mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge50: ; preds = %mt753x_mac_pcs_link_up.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt753x_phylink_mac_link_up.exit

mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge: ; preds = %mt753x_mac_pcs_link_up.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt753x_phylink_mac_link_up.exit

if.end.i:                                         ; preds = %mt753x_mac_pcs_link_up.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt753x_phylink_mac_link_up.exit

mt753x_phylink_mac_link_up.exit:                  ; preds = %if.end.i, %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge, %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge50, %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge51
  %31 = phi i32 [ 24635, %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge ], [ 24635, %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge50 ], [ 24635, %mt753x_mac_pcs_link_up.exit.i.mt753x_phylink_mac_link_up.exit_crit_edge51 ], [ %cond, %if.end.i ]
  tail call fastcc void @mt7530_rmw(ptr noundef %25, i32 noundef %add, i32 noundef 0, i32 noundef %31) #13
  br label %cleanup

cleanup:                                          ; preds = %mt753x_phylink_mac_link_up.exit, %.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt753x_phylink_mac_link_up.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call7, %.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mt7531_phy_mode_supported(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %port, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge21
    i32 2, label %entry.sw.bb_crit_edge22
    i32 3, label %entry.sw.bb_crit_edge23
    i32 4, label %entry.sw.bb_crit_edge24
    i32 5, label %sw.bb2
    i32 6, label %entry.sw.bb7_crit_edge
  ]

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %p5_intf_sel.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %p5_intf_sel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p5_intf_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp1.i.not = icmp eq i32 %6, 4
  br i1 %cmp1.i.not, label %sw.bb2.sw.bb7_crit_edge, label %if.then3

sw.bb2.sw.bb7_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.then3:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %interface4 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %interface4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface4, align 4
  %9 = add i32 %8, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb2.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge
  %interface8 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %11 = ptrtoint ptr %interface8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interface8, align 4
  %switch.tableidx = add i32 %12, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 19
  br i1 %13, label %switch.lookup, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.105, i32 noundef %port) #16
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  %switch.cast = trunc i32 %switch.tableidx to i19
  %switch.downshift = lshr i19 -131071, %switch.cast
  %16 = and i19 %switch.downshift, 1
  %switch.masked = icmp ne i19 %16, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %sw.bb7.cleanup_crit_edge, %if.then3, %sw.bb
  %retval.0 = phi i1 [ false, %do.end ], [ %10, %if.then3 ], [ false, %sw.bb7.cleanup_crit_edge ], [ %switch.masked, %switch.lookup ], [ %cmp.not, %sw.bb ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7531_mac_port_validate(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %supported) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %port, label %entry.mt7531_sgmii_validate.exit_crit_edge [
    i32 5, label %sw.bb.i
    i32 6, label %entry.sw.bb1.i_crit_edge
  ]

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

entry.mt7531_sgmii_validate.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7531_sgmii_validate.exit

sw.bb.i:                                          ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %p5_intf_sel.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %p5_intf_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p5_intf_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp1.i.not.i = icmp eq i32 %4, 4
  br i1 %cmp1.i.not.i, label %sw.bb.i.sw.bb1.i_crit_edge, label %sw.bb.i.mt7531_sgmii_validate.exit_crit_edge

sw.bb.i.mt7531_sgmii_validate.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7531_sgmii_validate.exit

sw.bb.i.sw.bb1.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge
  %add.ptr.i.i = getelementptr i32, ptr %supported, i32 1
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported, align 4
  %or.i5.i = or i32 %8, 32768
  store i32 %or.i5.i, ptr %supported, align 4
  %or.i7.i = or i32 %6, 33280
  store i32 %or.i7.i, ptr %add.ptr.i.i, align 4
  br label %mt7531_sgmii_validate.exit

mt7531_sgmii_validate.exit:                       ; preds = %sw.bb1.i, %sw.bb.i.mt7531_sgmii_validate.exit_crit_edge, %entry.mt7531_sgmii_validate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7531_phylink_mac_link_state(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %bus1.i.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i.i, i32 noundef 2) #13
  %6 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i.i.i, align 4
  %port.tr.i = trunc i32 %port to i16
  %8 = shl i16 %port.tr.i, 6
  %9 = and i16 %8, 960
  %write.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 %11(ptr noundef %7, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i.i.i, align 4
  %call7.i.i.i.i = tail call i32 %13(ptr noundef %7, i32 noundef 31, i32 noundef 0) #13
  %14 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i.i.i.i, align 4
  %call10.i.i.i.i = tail call i32 %15(ptr noundef %7, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i.i = shl i32 %call10.i.i.i.i, 16
  %conv13.i.i.i.i = and i32 %call7.i.i.i.i, 65535
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %conv13.i.i.i.i
  br label %mt7530_read.exit.i

mt7530_read.exit.i:                               ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %do.end.i.i.i.i ], [ %or.i.i.i.i, %if.end.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i.i) #13
  %link.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %16 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %link.i, align 4
  %sh.diff.i = lshr i32 %retval.0.i.i.i.i, 11
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %bf.shl.i = and i8 %tr.sh.diff.i, -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %link.i, align 4
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i = icmp ne i32 %18, 4
  %and3.i = and i32 %retval.0.i.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %mt7530_read.exit.i.cleanup_crit_edge, label %if.then.i

mt7530_read.exit.i.cleanup_crit_edge:             ; preds = %mt7530_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %mt7530_read.exit.i
  %19 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i41.i = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i41.i, i32 noundef 2) #13
  %21 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i42.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i.i42.i, align 8
  %call.i.i.i43.i = tail call i32 %24(ptr noundef %22, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43.i)
  %cmp.i.i.i44.i = icmp slt i32 %call.i.i.i43.i, 0
  br i1 %cmp.i.i.i44.i, label %do.end.i.i.i46.i, label %if.end.i.i.i54.i

do.end.i.i.i46.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i45.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i45.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit56.i

if.end.i.i.i54.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i48.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %read.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i.i.i48.i, align 4
  %call7.i.i.i49.i = tail call i32 %26(ptr noundef %22, i32 noundef 31, i32 noundef 2) #13
  %27 = ptrtoint ptr %read.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read.i.i.i48.i, align 4
  %call10.i.i.i50.i = tail call i32 %28(ptr noundef %22, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i51.i = shl i32 %call10.i.i.i50.i, 16
  br label %mt7530_read.exit56.i

mt7530_read.exit56.i:                             ; preds = %if.end.i.i.i54.i, %do.end.i.i.i46.i
  %retval.0.i.i.i55.i = phi i32 [ %call.i.i.i43.i, %do.end.i.i.i46.i ], [ %shl.i.i.i51.i, %if.end.i.i.i54.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i41.i) #13
  %shr.i = lshr i32 %retval.0.i.i.i55.i, 16
  %and11.i = and i32 %shr.i, 3072
  %29 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %and11.i, label %do.end.i [
    i32 2048, label %mt7530_read.exit56.i.sw.epilog.i_crit_edge
    i32 1024, label %sw.bb12.i
    i32 0, label %sw.bb14.i
  ]

mt7530_read.exit56.i.sw.epilog.i_crit_edge:       ; preds = %mt7530_read.exit56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %mt7530_read.exit56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %mt7530_read.exit56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

do.end.i:                                         ; preds = %mt7530_read.exit56.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.106) #16
  %32 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load17.i = load i8, ptr %link.i, align 4
  %bf.clear18.i = and i8 %bf.load17.i, 127
  store i8 %bf.clear18.i, ptr %link.i, align 4
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb14.i, %sw.bb12.i, %mt7530_read.exit56.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 10, %sw.bb14.i ], [ 100, %sw.bb12.i ], [ 1000, %mt7530_read.exit56.i.sw.epilog.i_crit_edge ]
  %speed15.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %33 = ptrtoint ptr %speed15.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %speed15.i, align 4
  %34 = and i32 %retval.0.i.i.i55.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool22.not.i = icmp eq i32 %34, 0
  %duplex24.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  br i1 %tobool22.not.i, label %if.else.i, label %if.then23.i

if.then23.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %duplex24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %duplex24.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %duplex24.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %duplex24.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then23.i, %do.end.i, %mt7530_read.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %if.then23.i ], [ 0, %if.else.i ], [ 0, %mt7530_read.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7531_mac_config(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = add i32 %port, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.108, i32 noundef %port) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %interface, label %if.end.cleanup_crit_edge [
    i32 9, label %if.end.sw.bb_crit_edge
    i32 10, label %if.end.sw.bb_crit_edge86
    i32 11, label %if.end.sw.bb_crit_edge87
    i32 12, label %if.end.sw.bb_crit_edge88
    i32 4, label %if.end.i31
    i32 0, label %if.end.sw.bb7_crit_edge
    i32 21, label %if.end.sw.bb7_crit_edge89
    i32 22, label %if.end.sw.bb7_crit_edge90
  ]

if.end.sw.bb7_crit_edge90:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.end.sw.bb7_crit_edge89:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb7

if.end.sw.bb_crit_edge88:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge87:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge86:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge86, %if.end.sw.bb_crit_edge87, %if.end.sw.bb_crit_edge88
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %7 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %sw.bb.dsa_to_port.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.dsa_to_port.exit_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %sw.bb.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %10 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %11, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %port)
  %cmp5.i = icmp eq i32 %13, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %sw.bb.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %sw.bb.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i, align 4
  %phydev3 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 145
  %17 = ptrtoint ptr %phydev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phydev3, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp.i.i = icmp eq i32 %port, 5
  br i1 %cmp.i.i, label %mt7531_is_rgmii_port.exit.i, label %dsa_to_port.exit.do.end.i_crit_edge

dsa_to_port.exit.do.end.i_crit_edge:              ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

mt7531_is_rgmii_port.exit.i:                      ; preds = %dsa_to_port.exit
  %p5_intf_sel.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %p5_intf_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p5_intf_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp1.i.not.i = icmp eq i32 %20, 4
  br i1 %cmp1.i.not.i, label %mt7531_is_rgmii_port.exit.i.do.end.i_crit_edge, label %if.end.i

mt7531_is_rgmii_port.exit.i.do.end.i_crit_edge:   ; preds = %mt7531_is_rgmii_port.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %mt7531_is_rgmii_port.exit.i.do.end.i_crit_edge, %dsa_to_port.exit.do.end.i_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.110, i32 noundef %port) #16
  br label %cleanup

if.end.i:                                         ; preds = %mt7531_is_rgmii_port.exit.i
  %bus1.i.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i.i, i32 noundef 2) #13
  %25 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus1.i.i.i, align 4
  %write.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i.i.i, align 8
  %call.i.i.i.i = tail call i32 %28(ptr noundef %26, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 468) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i.i.i.i, align 4
  %call7.i.i.i.i = tail call i32 %30(ptr noundef %26, i32 noundef 31, i32 noundef 0) #13
  %31 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read.i.i.i.i, align 4
  %call10.i.i.i.i = tail call i32 %32(ptr noundef %26, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i.i = shl i32 %call10.i.i.i.i, 16
  %conv13.i.i.i.i = and i32 %call7.i.i.i.i, 65535
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %conv13.i.i.i.i
  br label %mt7530_read.exit.i

mt7530_read.exit.i:                               ; preds = %if.end.i.i.i.i, %do.end.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call.i.i.i.i, %do.end.i.i.i.i ], [ %or.i.i.i.i, %if.end.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i.i) #13
  %or.i = and i32 %retval.0.i.i.i.i, -1016
  %or7.i = or i32 %or.i, 49
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %mt7530_read.exit.i.if.then9.i_crit_edge, label %lor.lhs.false.i

mt7530_read.exit.i.if.then9.i_crit_edge:          ; preds = %mt7530_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %mt7530_read.exit.i
  %call8.i = tail call zeroext i1 @phy_driver_is_genphy(ptr noundef nonnull %18) #13
  br i1 %call8.i, label %lor.lhs.false.i.if.then9.i_crit_edge, label %lor.lhs.false.i.if.end17.i_crit_edge

lor.lhs.false.i.if.end17.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %mt7530_read.exit.i.if.then9.i_crit_edge
  %and10.i = or i32 %or.i, 1
  %33 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %interface, label %if.then9.i.cleanup_crit_edge [
    i32 9, label %sw.bb.i
    i32 11, label %sw.bb13.i
    i32 12, label %sw.bb15.i
    i32 10, label %if.then9.i.if.end17.i_crit_edge
  ]

if.then9.i.if.end17.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

sw.bb13.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %or14.i = or i32 %or.i, 17
  br label %if.end17.i

sw.bb15.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %or16.i = or i32 %or.i, 33
  br label %if.end17.i

if.end17.i:                                       ; preds = %sw.bb15.i, %sw.bb13.i, %sw.bb.i, %if.then9.i.if.end17.i_crit_edge, %lor.lhs.false.i.if.end17.i_crit_edge
  %val.0.i = phi i32 [ %and10.i, %if.then9.i.if.end17.i_crit_edge ], [ %or16.i, %sw.bb15.i ], [ %or14.i, %sw.bb13.i ], [ %or7.i, %sw.bb.i ], [ %or7.i, %lor.lhs.false.i.if.end17.i_crit_edge ]
  %34 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus1.i.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %35, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %36 = ptrtoint ptr %bus1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus1.i.i.i, align 4
  %shr7.i.i.i = lshr i32 %val.0.i, 16
  %conv8.i.i.i = trunc i32 %shr7.i.i.i to i16
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %39(ptr noundef %37, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 468) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end17.i.do.end.i.i.i_crit_edge, label %if.end.i.i.i

if.end17.i.do.end.i.i.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end17.i
  %conv6.i.i.i = trunc i32 %val.0.i to i16
  %40 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i.i.i, align 8
  %call12.i.i.i = tail call i32 %41(ptr noundef %37, i32 noundef 31, i32 noundef 0, i16 noundef zeroext %conv6.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call12.i.i.i, 0
  br i1 %cmp13.i.i.i, label %if.end.i.i.i.do.end.i.i.i_crit_edge, label %err.i.i.i

if.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

err.i.i.i:                                        ; preds = %if.end.i.i.i
  %42 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i.i.i, align 8
  %call18.i.i.i = tail call i32 %43(ptr noundef %37, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %cmp19.i.i.i = icmp slt i32 %call18.i.i.i, 0
  br i1 %cmp19.i.i.i, label %err.i.i.i.do.end.i.i.i_crit_edge, label %err.i.i.i.mt7530_write.exit.i_crit_edge

err.i.i.i.mt7530_write.exit.i_crit_edge:          ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit.i

err.i.i.i.do.end.i.i.i_crit_edge:                 ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %err.i.i.i.do.end.i.i.i_crit_edge, %if.end.i.i.i.do.end.i.i.i_crit_edge, %if.end17.i.do.end.i.i.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit.i

mt7530_write.exit.i:                              ; preds = %do.end.i.i.i, %err.i.i.i.mt7530_write.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  br label %cleanup

if.end.i31:                                       ; preds = %if.end
  %sub.i = shl nuw nsw i32 %port, 12
  %add1.i = or i32 %sub.i, 232
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add1.i, i32 noundef 0, i32 noundef 16) #13
  %add5.i = or i32 %sub.i, 296
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add5.i, i32 noundef 12, i32 noundef 0) #13
  %add9.i = or i32 %sub.i, 32
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add9.i, i32 noundef 0, i32 noundef 258) #13
  %add13.i = or i32 %sub.i, 8
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add13.i, i32 noundef 65535, i32 noundef 1) #13
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %sub.i, i32 noundef 0, i32 noundef 4096) #13
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %sub.i, i32 noundef 0, i32 noundef 512) #13
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i27 = getelementptr inbounds %struct.mii_bus, ptr %45, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i27, i32 noundef 2) #13
  %46 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus1.i.i, align 4
  %48 = trunc i32 %add1.i to i16
  %49 = lshr i16 %48, 6
  %write.i.i.i28 = getelementptr inbounds %struct.mii_bus, ptr %47, i32 0, i32 5
  %50 = ptrtoint ptr %write.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i.i.i28, align 8
  %call.i.i.i29 = tail call i32 %51(ptr noundef %47, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %49) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i29)
  %cmp.i.i.i30 = icmp slt i32 %call.i.i.i29, 0
  br i1 %cmp.i.i.i30, label %if.end.i31.do.end.i.i.i39_crit_edge, label %if.end.i.i.i34

if.end.i31.do.end.i.i.i39_crit_edge:              ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i39

if.end.i.i.i34:                                   ; preds = %if.end.i31
  %52 = ptrtoint ptr %write.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write.i.i.i28, align 8
  %call12.i.i.i32 = tail call i32 %53(ptr noundef %47, i32 noundef 31, i32 noundef 10, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i32)
  %cmp13.i.i.i33 = icmp slt i32 %call12.i.i.i32, 0
  br i1 %cmp13.i.i.i33, label %if.end.i.i.i34.do.end.i.i.i39_crit_edge, label %err.i.i.i37

if.end.i.i.i34.do.end.i.i.i39_crit_edge:          ; preds = %if.end.i.i.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i39

err.i.i.i37:                                      ; preds = %if.end.i.i.i34
  %54 = ptrtoint ptr %write.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i.i.i28, align 8
  %call18.i.i.i35 = tail call i32 %55(ptr noundef %47, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i35)
  %cmp19.i.i.i36 = icmp slt i32 %call18.i.i.i35, 0
  br i1 %cmp19.i.i.i36, label %err.i.i.i37.do.end.i.i.i39_crit_edge, label %err.i.i.i37.mt7531_sgmii_setup_mode_an.exit_crit_edge

err.i.i.i37.mt7531_sgmii_setup_mode_an.exit_crit_edge: ; preds = %err.i.i.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7531_sgmii_setup_mode_an.exit

err.i.i.i37.do.end.i.i.i39_crit_edge:             ; preds = %err.i.i.i37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i39

do.end.i.i.i39:                                   ; preds = %err.i.i.i37.do.end.i.i.i39_crit_edge, %if.end.i.i.i34.do.end.i.i.i39_crit_edge, %if.end.i31.do.end.i.i.i39_crit_edge
  %dev.i.i.i38 = getelementptr inbounds %struct.mii_bus, ptr %47, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i38, ptr noundef nonnull @.str.21) #16
  br label %mt7531_sgmii_setup_mode_an.exit

mt7531_sgmii_setup_mode_an.exit:                  ; preds = %do.end.i.i.i39, %err.i.i.i37.mt7531_sgmii_setup_mode_an.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i27) #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge89, %if.end.sw.bb7_crit_edge90
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  br i1 %cmp.i, label %sw.bb7.cleanup_crit_edge, label %if.end.i49

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i49:                                       ; preds = %sw.bb7
  %sub.i42 = shl nuw nsw i32 %port, 12
  %add1.i43 = or i32 %sub.i42, 232
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add1.i43, i32 noundef 0, i32 noundef 16) #13
  %bus1.i.i.i44 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %bus1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus1.i.i.i44, align 4
  %mdio_lock.i.i.i45 = getelementptr inbounds %struct.mii_bus, ptr %57, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i.i45, i32 noundef 2) #13
  %58 = ptrtoint ptr %bus1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus1.i.i.i44, align 4
  %60 = trunc i32 %sub.i42 to i16
  %61 = lshr exact i16 %60, 6
  %62 = or i16 %61, 4
  %write.i.i.i.i46 = getelementptr inbounds %struct.mii_bus, ptr %59, i32 0, i32 5
  %63 = ptrtoint ptr %write.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i.i.i.i46, align 8
  %call.i.i.i.i47 = tail call i32 %64(ptr noundef %59, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %62) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i47)
  %cmp.i.i.i.i48 = icmp slt i32 %call.i.i.i.i47, 0
  br i1 %cmp.i.i.i.i48, label %do.end.i.i.i.i51, label %if.end.i.i.i.i58

do.end.i.i.i.i51:                                 ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i.i50 = getelementptr inbounds %struct.mii_bus, ptr %59, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i50, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit.i66

if.end.i.i.i.i58:                                 ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i.i52 = getelementptr inbounds %struct.mii_bus, ptr %59, i32 0, i32 4
  %65 = ptrtoint ptr %read.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read.i.i.i.i52, align 4
  %call7.i.i.i.i53 = tail call i32 %66(ptr noundef %59, i32 noundef 31, i32 noundef 10) #13
  %67 = ptrtoint ptr %read.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read.i.i.i.i52, align 4
  %call10.i.i.i.i54 = tail call i32 %68(ptr noundef %59, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i.i55 = shl i32 %call10.i.i.i.i54, 16
  %conv13.i.i.i.i56 = and i32 %call7.i.i.i.i53, 65535
  %or.i.i.i.i57 = or i32 %shl.i.i.i.i55, %conv13.i.i.i.i56
  br label %mt7530_read.exit.i66

mt7530_read.exit.i66:                             ; preds = %if.end.i.i.i.i58, %do.end.i.i.i.i51
  %retval.0.i.i.i.i59 = phi i32 [ %call.i.i.i.i47, %do.end.i.i.i.i51 ], [ %or.i.i.i.i57, %if.end.i.i.i.i58 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i.i45) #13
  %69 = ptrtoint ptr %bus1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus1.i.i.i44, align 4
  %mdio_lock.i.i60 = getelementptr inbounds %struct.mii_bus, ptr %70, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i60, i32 noundef 2) #13
  %71 = ptrtoint ptr %bus1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus1.i.i.i44, align 4
  %shr7.i.i.i61 = lshr i32 %retval.0.i.i.i.i59, 16
  %conv8.i.i.i62 = trunc i32 %shr7.i.i.i61 to i16
  %write.i.i.i63 = getelementptr inbounds %struct.mii_bus, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %write.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write.i.i.i63, align 8
  %call.i.i.i64 = tail call i32 %74(ptr noundef %72, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %62) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64)
  %cmp.i.i.i65 = icmp slt i32 %call.i.i.i64, 0
  br i1 %cmp.i.i.i65, label %mt7530_read.exit.i66.do.end.i.i.i77_crit_edge, label %if.end.i.i.i72

mt7530_read.exit.i66.do.end.i.i.i77_crit_edge:    ; preds = %mt7530_read.exit.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i77

if.end.i.i.i72:                                   ; preds = %mt7530_read.exit.i66
  %and.i = and i32 %retval.0.i.i.i.i59, 65523
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %interface)
  %cmp.i67 = icmp eq i32 %interface, 22
  %cond.i = select i1 %cmp.i67, i32 4, i32 0
  %or.i68 = or i32 %and.i, %cond.i
  %conv6.i.i.i69 = trunc i32 %or.i68 to i16
  %75 = ptrtoint ptr %write.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write.i.i.i63, align 8
  %call12.i.i.i70 = tail call i32 %76(ptr noundef %72, i32 noundef 31, i32 noundef 10, i16 noundef zeroext %conv6.i.i.i69) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i70)
  %cmp13.i.i.i71 = icmp slt i32 %call12.i.i.i70, 0
  br i1 %cmp13.i.i.i71, label %if.end.i.i.i72.do.end.i.i.i77_crit_edge, label %err.i.i.i75

if.end.i.i.i72.do.end.i.i.i77_crit_edge:          ; preds = %if.end.i.i.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i77

err.i.i.i75:                                      ; preds = %if.end.i.i.i72
  %77 = ptrtoint ptr %write.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write.i.i.i63, align 8
  %call18.i.i.i73 = tail call i32 %78(ptr noundef %72, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i.i62) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i73)
  %cmp19.i.i.i74 = icmp slt i32 %call18.i.i.i73, 0
  br i1 %cmp19.i.i.i74, label %err.i.i.i75.do.end.i.i.i77_crit_edge, label %err.i.i.i75.mt7530_write.exit.i78_crit_edge

err.i.i.i75.mt7530_write.exit.i78_crit_edge:      ; preds = %err.i.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit.i78

err.i.i.i75.do.end.i.i.i77_crit_edge:             ; preds = %err.i.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i77

do.end.i.i.i77:                                   ; preds = %err.i.i.i75.do.end.i.i.i77_crit_edge, %if.end.i.i.i72.do.end.i.i.i77_crit_edge, %mt7530_read.exit.i66.do.end.i.i.i77_crit_edge
  %dev.i.i.i76 = getelementptr inbounds %struct.mii_bus, ptr %72, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i76, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit.i78

mt7530_write.exit.i78:                            ; preds = %do.end.i.i.i77, %err.i.i.i75.mt7530_write.exit.i78_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i60) #13
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %sub.i42, i32 noundef 4096, i32 noundef 0) #13
  %add18.i = or i32 %sub.i42, 32
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add18.i, i32 noundef 318, i32 noundef 8) #13
  %79 = ptrtoint ptr %bus1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus1.i.i.i44, align 4
  %mdio_lock.i37.i = getelementptr inbounds %struct.mii_bus, ptr %80, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i37.i, i32 noundef 2) #13
  %81 = ptrtoint ptr %bus1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus1.i.i.i44, align 4
  %83 = trunc i32 %add1.i43 to i16
  %84 = lshr i16 %83, 6
  %write.i.i38.i = getelementptr inbounds %struct.mii_bus, ptr %82, i32 0, i32 5
  %85 = ptrtoint ptr %write.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write.i.i38.i, align 8
  %call.i.i39.i = tail call i32 %86(ptr noundef %82, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %84) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.i)
  %cmp.i.i40.i = icmp slt i32 %call.i.i39.i, 0
  br i1 %cmp.i.i40.i, label %mt7530_write.exit.i78.do.end.i.i49.i_crit_edge, label %if.end.i.i44.i

mt7530_write.exit.i78.do.end.i.i49.i_crit_edge:   ; preds = %mt7530_write.exit.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i49.i

if.end.i.i44.i:                                   ; preds = %mt7530_write.exit.i78
  %87 = ptrtoint ptr %write.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write.i.i38.i, align 8
  %call12.i.i42.i = tail call i32 %88(ptr noundef %82, i32 noundef 31, i32 noundef 10, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i42.i)
  %cmp13.i.i43.i = icmp slt i32 %call12.i.i42.i, 0
  br i1 %cmp13.i.i43.i, label %if.end.i.i44.i.do.end.i.i49.i_crit_edge, label %err.i.i47.i

if.end.i.i44.i.do.end.i.i49.i_crit_edge:          ; preds = %if.end.i.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i49.i

err.i.i47.i:                                      ; preds = %if.end.i.i44.i
  %89 = ptrtoint ptr %write.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write.i.i38.i, align 8
  %call18.i.i45.i = tail call i32 %90(ptr noundef %82, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i45.i)
  %cmp19.i.i46.i = icmp slt i32 %call18.i.i45.i, 0
  br i1 %cmp19.i.i46.i, label %err.i.i47.i.do.end.i.i49.i_crit_edge, label %err.i.i47.i.mt7531_sgmii_setup_mode_force.exit_crit_edge

err.i.i47.i.mt7531_sgmii_setup_mode_force.exit_crit_edge: ; preds = %err.i.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7531_sgmii_setup_mode_force.exit

err.i.i47.i.do.end.i.i49.i_crit_edge:             ; preds = %err.i.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i49.i

do.end.i.i49.i:                                   ; preds = %err.i.i47.i.do.end.i.i49.i_crit_edge, %if.end.i.i44.i.do.end.i.i49.i_crit_edge, %mt7530_write.exit.i78.do.end.i.i49.i_crit_edge
  %dev.i.i48.i = getelementptr inbounds %struct.mii_bus, ptr %82, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i48.i, ptr noundef nonnull @.str.21) #16
  br label %mt7531_sgmii_setup_mode_force.exit

mt7531_sgmii_setup_mode_force.exit:               ; preds = %do.end.i.i49.i, %err.i.i47.i.mt7531_sgmii_setup_mode_force.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i37.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mt7531_sgmii_setup_mode_force.exit, %sw.bb7.cleanup_crit_edge, %mt7531_sgmii_setup_mode_an.exit, %mt7530_write.exit.i, %if.then9.i.cleanup_crit_edge, %do.end.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %mt7531_sgmii_setup_mode_force.exit ], [ 0, %mt7531_sgmii_setup_mode_an.exit ], [ -22, %do.end ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %mt7530_write.exit.i ], [ -22, %do.end.i ], [ -22, %if.then9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7531_sgmii_restart_an(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %port.tr = trunc i32 %port to i16
  %6 = shl i16 %port.tr, 6
  %7 = and i16 %6, 960
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %9(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %11(ptr noundef %5, i32 noundef 31, i32 noundef 0) #13
  %12 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %13(ptr noundef %5, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %and = and i32 %retval.0.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mt7530_read.exit.if.end_crit_edge, label %if.then

mt7530_read.exit.if.end_crit_edge:                ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %mt7530_read.exit
  %14 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %16 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i = lshr i32 %retval.0.i.i.i, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %19(ptr noundef %17, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.do.end.i.i_crit_edge, label %if.end.i.i

if.then.do.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.then
  %20 = trunc i32 %retval.0.i.i.i to i16
  %conv6.i.i = or i16 %20, 512
  %21 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %22(ptr noundef %17, i32 noundef 31, i32 noundef 0, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %23 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %24(ptr noundef %17, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.then.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %if.end

if.end:                                           ; preds = %mt7530_write.exit, %mt7530_read.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7531_sgmii_link_up_force(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %interface)
  %cmp.not = icmp ne i32 %interface, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  %or.cond = or i1 %cmp.i, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %port.tr = trunc i32 %port to i16
  %6 = shl i16 %port.tr, 6
  %7 = and i16 %6, 960
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %9(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %11(ptr noundef %5, i32 noundef 31, i32 noundef 8) #13
  %12 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %13(ptr noundef %5, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %and = and i32 %retval.0.i.i.i, -63
  %14 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %speed, label %mt7530_read.exit.if.end14_crit_edge [
    i32 1000, label %sw.epilog.thread
    i32 100, label %sw.epilog.thread30
    i32 10, label %mt7530_read.exit.land.lhs.true_crit_edge
  ]

mt7530_read.exit.land.lhs.true_crit_edge:         ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

mt7530_read.exit.if.end14_crit_edge:              ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

sw.epilog.thread30:                               ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or5 = or i32 %and, 4
  br label %land.lhs.true

sw.epilog.thread:                                 ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or7 = or i32 %and, 8
  br label %if.end14

land.lhs.true:                                    ; preds = %sw.epilog.thread30, %mt7530_read.exit.land.lhs.true_crit_edge
  %val.033 = phi i32 [ %or5, %sw.epilog.thread30 ], [ %and, %mt7530_read.exit.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp11.not = icmp eq i32 %duplex, 1
  %or13 = or i32 %val.033, 16
  %spec.select = select i1 %cmp11.not, i32 %val.033, i32 %or13
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %sw.epilog.thread, %mt7530_read.exit.if.end14_crit_edge
  %val.1 = phi i32 [ %spec.select, %land.lhs.true ], [ %or7, %sw.epilog.thread ], [ %and, %mt7530_read.exit.if.end14_crit_edge ]
  %15 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %17 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i = lshr i32 %val.1, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %20(ptr noundef %18, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end14.do.end.i.i_crit_edge, label %if.end.i.i

if.end14.do.end.i.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end14
  %conv6.i.i = trunc i32 %val.1 to i16
  %21 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %22(ptr noundef %18, i32 noundef 31, i32 noundef 8, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %23 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %24(ptr noundef %18, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.end14.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mt7530_write.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_mib_reset(ptr nocapture noundef readonly %ds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %7(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 319) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i.i_crit_edge, label %if.end.i.i

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %entry
  %8 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %9(ptr noundef %5, i32 noundef 31, i32 noundef 8, i16 noundef zeroext 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %11(ptr noundef %5, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %12 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i4 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i4, i32 noundef 2) #13
  %14 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus1.i, align 4
  %write.i.i5 = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write.i.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i5, align 8
  %call.i.i6 = tail call i32 %17(ptr noundef %15, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 319) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.i.i7 = icmp slt i32 %call.i.i6, 0
  br i1 %cmp.i.i7, label %mt7530_write.exit.do.end.i.i15_crit_edge, label %if.end.i.i10

mt7530_write.exit.do.end.i.i15_crit_edge:         ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i15

if.end.i.i10:                                     ; preds = %mt7530_write.exit
  %18 = ptrtoint ptr %write.i.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i5, align 8
  %call12.i.i8 = tail call i32 %19(ptr noundef %15, i32 noundef 31, i32 noundef 8, i16 noundef zeroext 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i8)
  %cmp13.i.i9 = icmp slt i32 %call12.i.i8, 0
  br i1 %cmp13.i.i9, label %if.end.i.i10.do.end.i.i15_crit_edge, label %err.i.i13

if.end.i.i10.do.end.i.i15_crit_edge:              ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i15

err.i.i13:                                        ; preds = %if.end.i.i10
  %20 = ptrtoint ptr %write.i.i5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i.i5, align 8
  %call18.i.i11 = tail call i32 %21(ptr noundef %15, i32 noundef 31, i32 noundef 16, i16 noundef zeroext -32768) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i11)
  %cmp19.i.i12 = icmp slt i32 %call18.i.i11, 0
  br i1 %cmp19.i.i12, label %err.i.i13.do.end.i.i15_crit_edge, label %err.i.i13.mt7530_write.exit16_crit_edge

err.i.i13.mt7530_write.exit16_crit_edge:          ; preds = %err.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit16

err.i.i13.do.end.i.i15_crit_edge:                 ; preds = %err.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i15

do.end.i.i15:                                     ; preds = %err.i.i13.do.end.i.i15_crit_edge, %if.end.i.i10.do.end.i.i15_crit_edge, %mt7530_write.exit.do.end.i.i15_crit_edge
  %dev.i.i14 = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i14, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit16

mt7530_write.exit16:                              ; preds = %do.end.i.i15, %err.i.i13.mt7530_write.exit16_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_rmw(ptr nocapture noundef readonly %priv, i32 noundef %reg, i32 noundef %mask, i32 noundef %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %4 = trunc i32 %reg to i16
  %5 = lshr i16 %4, 6
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_mii_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = lshr i32 %reg, 2
  %conv4.i = and i32 %8, 15
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call7.i = tail call i32 %10(ptr noundef %3, i32 noundef 31, i32 noundef %conv4.i) #13
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %call10.i = tail call i32 %12(ptr noundef %3, i32 noundef 31, i32 noundef 16) #13
  %shl.i = shl i32 %call10.i, 16
  %conv13.i = and i32 %call7.i, 65535
  %or.i = or i32 %shl.i, %conv13.i
  br label %mt7530_mii_read.exit

mt7530_mii_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %or.i, %if.end.i ]
  %neg = xor i32 %mask, -1
  %and = and i32 %retval.0.i, %neg
  %or = or i32 %and, %set
  %13 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus1, align 4
  %shr7.i = lshr i32 %or, 16
  %conv8.i = trunc i32 %shr7.i to i16
  %write.i11 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i11, align 8
  %call.i12 = tail call i32 %16(ptr noundef %14, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.i13 = icmp slt i32 %call.i12, 0
  br i1 %cmp.i13, label %mt7530_mii_read.exit.do.end.i17_crit_edge, label %if.end.i15

mt7530_mii_read.exit.do.end.i17_crit_edge:        ; preds = %mt7530_mii_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i17

if.end.i15:                                       ; preds = %mt7530_mii_read.exit
  %conv6.i = trunc i32 %or to i16
  %17 = lshr i32 %reg, 2
  %conv4.i14 = and i32 %17, 15
  %18 = ptrtoint ptr %write.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i11, align 8
  %call12.i = tail call i32 %19(ptr noundef %14, i32 noundef 31, i32 noundef %conv4.i14, i16 noundef zeroext %conv6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i15.do.end.i17_crit_edge, label %err.i

if.end.i15.do.end.i17_crit_edge:                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i17

err.i:                                            ; preds = %if.end.i15
  %20 = ptrtoint ptr %write.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i11, align 8
  %call18.i = tail call i32 %21(ptr noundef %14, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %err.i.do.end.i17_crit_edge, label %err.i.mt7530_mii_write.exit_crit_edge

err.i.mt7530_mii_write.exit_crit_edge:            ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit

err.i.do.end.i17_crit_edge:                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i17

do.end.i17:                                       ; preds = %err.i.do.end.i17_crit_edge, %if.end.i15.do.end.i17_crit_edge, %mt7530_mii_read.exit.do.end.i17_crit_edge
  %dev.i16 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit

mt7530_mii_write.exit:                            ; preds = %do.end.i17, %err.i.mt7530_mii_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt753x_cpu_port_enable(ptr noundef %ds, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %cpu_port_config = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cpu_port_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_port_config, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %ds, i32 noundef %port) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %mul = shl i32 %port, 8
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %8 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus1.i, align 4
  %10 = trunc i32 %mul to i16
  %11 = add i16 %10, 8208
  %12 = lshr i16 %11, 6
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %14(ptr noundef %9, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end6.do.end.i.i_crit_edge, label %if.end.i.i

if.end6.do.end.i.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end6
  %15 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %16(ptr noundef %9, i32 noundef 31, i32 noundef 4, i16 noundef zeroext 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %18(ptr noundef %9, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.end6.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %shl = shl nuw i32 1, %port
  %and = and i32 %shl, 255
  %shl7 = shl i32 %shl, 24
  %shl10 = shl nuw nsw i32 %and, 16
  %or = or i32 %shl10, %shl7
  %shl13 = shl nuw nsw i32 %and, 8
  %or14 = or i32 %or, %shl13
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 16, i32 noundef -256, i32 noundef %or14)
  %id = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then15, label %mt7530_write.exit.if.end18_crit_edge

mt7530_write.exit.if.end18_crit_edge:             ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then15:                                        ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %shl16 = shl i32 %port, 4
  %or17 = or i32 %shl16, 128
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 16, i32 noundef 240, i32 noundef %or17)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %mt7530_write.exit.if.end18_crit_edge
  %add20 = add i32 %mul, 8196
  %ds21 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %ds21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds21, align 4
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn19.i = load ptr, ptr %ports.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %ports.i
  br i1 %cmp.not20.i, label %if.end18.dsa_user_ports.exit_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.dsa_user_ports.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_user_ports.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %if.end18.for.body.i_crit_edge ]
  %mask.021.i = phi i32 [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %26 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %27, %22
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %type.i.i = getelementptr i8, ptr %.pn22.i, i32 -424
  %28 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i.i45 = icmp eq i32 %29, 3
  br i1 %cmp.i.i45, label %if.then5.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %31
  %or.i = or i32 %shl.i, %mask.021.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %or.i, %if.then5.i ], [ %mask.021.i, %if.then.i.for.inc.i_crit_edge ], [ %mask.021.i, %for.body.i.for.inc.i_crit_edge ]
  %32 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_user_ports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_user_ports.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_user_ports.exit

dsa_user_ports.exit:                              ; preds = %for.inc.i.dsa_user_ports.exit_crit_edge, %if.end18.dsa_user_ports.exit_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %if.end18.dsa_user_ports.exit_crit_edge ], [ %mask.1.i, %for.inc.i.dsa_user_ports.exit_crit_edge ]
  %33 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i47 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i47, i32 noundef 2) #13
  %35 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus1.i, align 4
  %37 = trunc i32 %add20 to i16
  %38 = lshr i16 %37, 6
  %39 = trunc i32 %mask.0.lcssa.i to i16
  %conv8.i.i = and i16 %39, 255
  %write.i.i48 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 5
  %40 = ptrtoint ptr %write.i.i48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i.i48, align 8
  %call.i.i49 = tail call i32 %41(ptr noundef %36, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.i.i50 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp.i.i50, label %dsa_user_ports.exit.do.end.i.i59_crit_edge, label %if.end.i.i54

dsa_user_ports.exit.do.end.i.i59_crit_edge:       ; preds = %dsa_user_ports.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i59

if.end.i.i54:                                     ; preds = %dsa_user_ports.exit
  %42 = ptrtoint ptr %write.i.i48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i.i48, align 8
  %call12.i.i52 = tail call i32 %43(ptr noundef %36, i32 noundef 31, i32 noundef 1, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i52)
  %cmp13.i.i53 = icmp slt i32 %call12.i.i52, 0
  br i1 %cmp13.i.i53, label %if.end.i.i54.do.end.i.i59_crit_edge, label %err.i.i57

if.end.i.i54.do.end.i.i59_crit_edge:              ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i59

err.i.i57:                                        ; preds = %if.end.i.i54
  %44 = ptrtoint ptr %write.i.i48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write.i.i48, align 8
  %call18.i.i55 = tail call i32 %45(ptr noundef %36, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i55)
  %cmp19.i.i56 = icmp slt i32 %call18.i.i55, 0
  br i1 %cmp19.i.i56, label %err.i.i57.do.end.i.i59_crit_edge, label %err.i.i57.mt7530_write.exit60_crit_edge

err.i.i57.mt7530_write.exit60_crit_edge:          ; preds = %err.i.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit60

err.i.i57.do.end.i.i59_crit_edge:                 ; preds = %err.i.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i59

do.end.i.i59:                                     ; preds = %err.i.i57.do.end.i.i59_crit_edge, %if.end.i.i54.do.end.i.i59_crit_edge, %dsa_user_ports.exit.do.end.i.i59_crit_edge
  %dev.i.i58 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i58, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit60

mt7530_write.exit60:                              ; preds = %do.end.i.i59, %err.i.i57.mt7530_write.exit60_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i47) #13
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add20, i32 noundef 3, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %mt7530_write.exit60, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7530_write.exit60 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_port_disable(ptr nocapture noundef readonly %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %arrayidx = getelementptr %struct.mt7530_priv, ptr %1, i32 0, i32 15, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 16711680, i32 noundef 0)
  %add3 = add i32 %mul, 12288
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add3, i32 noundef 24831, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7530_setup_vlan0(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i.i_crit_edge, label %if.end.i.i

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 5, i16 noundef zeroext 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %9(ptr noundef %3, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 24831) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %call = tail call fastcc i32 @mt7530_vlan_cmd(ptr noundef %priv, i32 noundef 1, i16 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_mdio_parse_addr(ptr noundef %dev, ptr noundef %np) unnamed_addr #7 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #13
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !432
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.16, ptr noundef nonnull %addr, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %1 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %2) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %4)
  %cmp1 = icmp ugt i32 %4, 31
  br i1 %cmp1, label %do.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %full_name6 = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %5 = ptrtoint ptr %full_name6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %full_name6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef %6, i32 noundef %4) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %do.end5 ], [ %4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_setup_port5(ptr nocapture noundef readonly %ds, i32 noundef %interface) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %7(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %9(ptr noundef %5, i32 noundef 31, i32 noundef 1) #13
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %11(ptr noundef %5, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %or = and i32 %retval.0.i.i.i, -1122497
  %and = or i32 %or, 73792
  %p5_intf_sel = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %p5_intf_sel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p5_intf_sel, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %13, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %mt7530_read.exit.sw.bb3_crit_edge
    i32 3, label %sw.bb5
    i32 0, label %mt7530_read.exit.if.end16_crit_edge
  ]

mt7530_read.exit.if.end16_crit_edge:              ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

mt7530_read.exit.sw.bb3_crit_edge:                ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

sw.bb:                                            ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or2 = or i32 %or, 1122368
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %mt7530_read.exit.sw.bb3_crit_edge
  %val.0 = phi i32 [ %and, %mt7530_read.exit.sw.bb3_crit_edge ], [ %or2, %sw.bb ]
  %and4 = and i32 %val.0, -8257
  %15 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %17 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %20(ptr noundef %18, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 212) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb3.do.end.i.i_crit_edge, label %if.end.i.i

sw.bb3.do.end.i.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %sw.bb3
  %21 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %22(ptr noundef %18, i32 noundef 31, i32 noundef 0, i16 noundef zeroext 25344) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %23 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %24(ptr noundef %18, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %sw.bb3.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and6 = or i32 %or, 73728
  br label %sw.epilog

do.end:                                           ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.34, i32 noundef %13) #16
  br label %unlock_exit

sw.epilog:                                        ; preds = %sw.bb5, %mt7530_write.exit
  %val.1 = phi i32 [ %and6, %sw.bb5 ], [ %and4, %mt7530_write.exit ]
  %27 = add i32 %interface, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %if.then, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then:                                          ; preds = %sw.epilog
  %or10 = or i32 %val.1, 128
  %29 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i56 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i56, i32 noundef 2) #13
  %31 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i57 = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write.i.i57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write.i.i57, align 8
  %call.i.i58 = tail call i32 %34(ptr noundef %32, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 492) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i.i59, label %if.then.do.end.i.i67_crit_edge, label %if.end.i.i62

if.then.do.end.i.i67_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i67

if.end.i.i62:                                     ; preds = %if.then
  %35 = ptrtoint ptr %write.i.i57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i57, align 8
  %call12.i.i60 = tail call i32 %36(ptr noundef %32, i32 noundef 31, i32 noundef 0, i16 noundef zeroext 256) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i60)
  %cmp13.i.i61 = icmp slt i32 %call12.i.i60, 0
  br i1 %cmp13.i.i61, label %if.end.i.i62.do.end.i.i67_crit_edge, label %err.i.i65

if.end.i.i62.do.end.i.i67_crit_edge:              ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i67

err.i.i65:                                        ; preds = %if.end.i.i62
  %37 = ptrtoint ptr %write.i.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write.i.i57, align 8
  %call18.i.i63 = tail call i32 %38(ptr noundef %32, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i63)
  %cmp19.i.i64 = icmp slt i32 %call18.i.i63, 0
  br i1 %cmp19.i.i64, label %err.i.i65.do.end.i.i67_crit_edge, label %err.i.i65.mt7530_write.exit68_crit_edge

err.i.i65.mt7530_write.exit68_crit_edge:          ; preds = %err.i.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit68

err.i.i65.do.end.i.i67_crit_edge:                 ; preds = %err.i.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i67

do.end.i.i67:                                     ; preds = %err.i.i65.do.end.i.i67_crit_edge, %if.end.i.i62.do.end.i.i67_crit_edge, %if.then.do.end.i.i67_crit_edge
  %dev.i.i66 = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i66, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit68

mt7530_write.exit68:                              ; preds = %do.end.i.i67, %err.i.i65.mt7530_write.exit68_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i56) #13
  %ds11 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %ds11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ds11, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %mt7530_write.exit68.dsa_is_dsa_port.exit_crit_edge, label %mt7530_write.exit68.for.body.i.i_crit_edge

mt7530_write.exit68.for.body.i.i_crit_edge:       ; preds = %mt7530_write.exit68
  br label %for.body.i.i

mt7530_write.exit68.dsa_is_dsa_port.exit_crit_edge: ; preds = %mt7530_write.exit68
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_dsa_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %mt7530_write.exit68.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %mt7530_write.exit68.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %44 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %45, %40
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %46 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp5.i.i = icmp eq i32 %47, 5
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %48 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_dsa_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_dsa_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_dsa_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_dsa_port.exit

dsa_is_dsa_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_dsa_port.exit_crit_edge, %mt7530_write.exit68.dsa_is_dsa_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %mt7530_write.exit68.dsa_is_dsa_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_dsa_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 4
  %51 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i70 = getelementptr inbounds %struct.mii_bus, ptr %52, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i70, i32 noundef 2) #13
  %53 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i71 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %write.i.i71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write.i.i71, align 8
  %call.i.i72 = tail call i32 %56(ptr noundef %54, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 492) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp.i.i73 = icmp slt i32 %call.i.i72, 0
  br i1 %cmp.i.i73, label %dsa_is_dsa_port.exit.do.end.i.i81_crit_edge, label %if.end.i.i76

dsa_is_dsa_port.exit.do.end.i.i81_crit_edge:      ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i81

if.end.i.i76:                                     ; preds = %dsa_is_dsa_port.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i = icmp eq i32 %50, 2
  %57 = add i32 %interface, -10
  %switch.and = and i32 %57, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %58 = select i1 %switch.selectcmp, i16 20, i16 16
  %conv6.i.i = select i1 %cmp.i, i16 16, i16 %58
  %59 = ptrtoint ptr %write.i.i71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i.i71, align 8
  %call12.i.i74 = tail call i32 %60(ptr noundef %54, i32 noundef 31, i32 noundef 1, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i74)
  %cmp13.i.i75 = icmp slt i32 %call12.i.i74, 0
  br i1 %cmp13.i.i75, label %if.end.i.i76.do.end.i.i81_crit_edge, label %err.i.i79

if.end.i.i76.do.end.i.i81_crit_edge:              ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i81

err.i.i79:                                        ; preds = %if.end.i.i76
  %61 = ptrtoint ptr %write.i.i71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write.i.i71, align 8
  %call18.i.i77 = tail call i32 %62(ptr noundef %54, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i77)
  %cmp19.i.i78 = icmp slt i32 %call18.i.i77, 0
  br i1 %cmp19.i.i78, label %err.i.i79.do.end.i.i81_crit_edge, label %err.i.i79.mt7530_write.exit82_crit_edge

err.i.i79.mt7530_write.exit82_crit_edge:          ; preds = %err.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit82

err.i.i79.do.end.i.i81_crit_edge:                 ; preds = %err.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i81

do.end.i.i81:                                     ; preds = %err.i.i79.do.end.i.i81_crit_edge, %if.end.i.i76.do.end.i.i81_crit_edge, %dsa_is_dsa_port.exit.do.end.i.i81_crit_edge
  %dev.i.i80 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i80, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit82

mt7530_write.exit82:                              ; preds = %do.end.i.i81, %err.i.i79.mt7530_write.exit82_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i70) #13
  %63 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i84 = getelementptr inbounds %struct.mii_bus, ptr %64, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i84, i32 noundef 2) #13
  %65 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i85 = getelementptr inbounds %struct.mii_bus, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %write.i.i85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write.i.i85, align 8
  %call.i.i86 = tail call i32 %68(ptr noundef %66, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %cmp.i.i87 = icmp slt i32 %call.i.i86, 0
  br i1 %cmp.i.i87, label %mt7530_write.exit82.do.end.i.i95_crit_edge, label %if.end.i.i90

mt7530_write.exit82.do.end.i.i95_crit_edge:       ; preds = %mt7530_write.exit82
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i95

if.end.i.i90:                                     ; preds = %mt7530_write.exit82
  %69 = ptrtoint ptr %write.i.i85 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write.i.i85, align 8
  %call12.i.i88 = tail call i32 %70(ptr noundef %66, i32 noundef 31, i32 noundef 4, i16 noundef zeroext 17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i88)
  %cmp13.i.i89 = icmp slt i32 %call12.i.i88, 0
  br i1 %cmp13.i.i89, label %if.end.i.i90.do.end.i.i95_crit_edge, label %err.i.i93

if.end.i.i90.do.end.i.i95_crit_edge:              ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i95

err.i.i93:                                        ; preds = %if.end.i.i90
  %71 = ptrtoint ptr %write.i.i85 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write.i.i85, align 8
  %call18.i.i91 = tail call i32 %72(ptr noundef %66, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i91)
  %cmp19.i.i92 = icmp slt i32 %call18.i.i91, 0
  br i1 %cmp19.i.i92, label %err.i.i93.do.end.i.i95_crit_edge, label %err.i.i93.mt7530_write.exit96_crit_edge

err.i.i93.mt7530_write.exit96_crit_edge:          ; preds = %err.i.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit96

err.i.i93.do.end.i.i95_crit_edge:                 ; preds = %err.i.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i95

do.end.i.i95:                                     ; preds = %err.i.i93.do.end.i.i95_crit_edge, %if.end.i.i90.do.end.i.i95_crit_edge, %mt7530_write.exit82.do.end.i.i95_crit_edge
  %dev.i.i94 = getelementptr inbounds %struct.mii_bus, ptr %66, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i94, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit96

mt7530_write.exit96:                              ; preds = %do.end.i.i95, %err.i.i93.mt7530_write.exit96_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i84) #13
  br label %if.end16

if.end16:                                         ; preds = %mt7530_write.exit96, %sw.epilog.if.end16_crit_edge, %mt7530_read.exit.if.end16_crit_edge
  %interface.addr.0121 = phi i32 [ %interface, %mt7530_write.exit96 ], [ %interface, %sw.epilog.if.end16_crit_edge ], [ %13, %mt7530_read.exit.if.end16_crit_edge ]
  %val.2 = phi i32 [ %or10, %mt7530_write.exit96 ], [ %val.1, %sw.epilog.if.end16_crit_edge ], [ %and, %mt7530_read.exit.if.end16_crit_edge ]
  %73 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i98 = getelementptr inbounds %struct.mii_bus, ptr %74, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i98, i32 noundef 2) #13
  %75 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i = lshr i32 %val.2, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i99 = getelementptr inbounds %struct.mii_bus, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %write.i.i99 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write.i.i99, align 8
  %call.i.i100 = tail call i32 %78(ptr noundef %76, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %cmp.i.i101 = icmp slt i32 %call.i.i100, 0
  br i1 %cmp.i.i101, label %if.end16.do.end.i.i110_crit_edge, label %if.end.i.i105

if.end16.do.end.i.i110_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i110

if.end.i.i105:                                    ; preds = %if.end16
  %conv6.i.i102 = trunc i32 %val.2 to i16
  %79 = ptrtoint ptr %write.i.i99 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write.i.i99, align 8
  %call12.i.i103 = tail call i32 %80(ptr noundef %76, i32 noundef 31, i32 noundef 1, i16 noundef zeroext %conv6.i.i102) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i103)
  %cmp13.i.i104 = icmp slt i32 %call12.i.i103, 0
  br i1 %cmp13.i.i104, label %if.end.i.i105.do.end.i.i110_crit_edge, label %err.i.i108

if.end.i.i105.do.end.i.i110_crit_edge:            ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i110

err.i.i108:                                       ; preds = %if.end.i.i105
  %81 = ptrtoint ptr %write.i.i99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write.i.i99, align 8
  %call18.i.i106 = tail call i32 %82(ptr noundef %76, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i106)
  %cmp19.i.i107 = icmp slt i32 %call18.i.i106, 0
  br i1 %cmp19.i.i107, label %err.i.i108.do.end.i.i110_crit_edge, label %err.i.i108.mt7530_write.exit111_crit_edge

err.i.i108.mt7530_write.exit111_crit_edge:        ; preds = %err.i.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit111

err.i.i108.do.end.i.i110_crit_edge:               ; preds = %err.i.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i110

do.end.i.i110:                                    ; preds = %err.i.i108.do.end.i.i110_crit_edge, %if.end.i.i105.do.end.i.i110_crit_edge, %if.end16.do.end.i.i110_crit_edge
  %dev.i.i109 = getelementptr inbounds %struct.mii_bus, ptr %76, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i109, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit111

mt7530_write.exit111:                             ; preds = %do.end.i.i110, %err.i.i108.mt7530_write.exit111_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i98) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7530_setup_port5.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7530_setup_port5, %if.then21)) #13
          to label %do.end28 [label %if.then21], !srcloc !433

if.then21:                                        ; preds = %mt7530_write.exit111
  %83 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ds, align 4
  %85 = ptrtoint ptr %p5_intf_sel to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %p5_intf_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %86)
  %87 = icmp ult i32 %86, 5
  br i1 %87, label %switch.lookup, label %if.then21.p5_intf_modes.exit_crit_edge

if.then21.p5_intf_modes.exit_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %p5_intf_modes.exit

switch.lookup:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mt7530_setup_port5, i32 0, i32 %86
  %88 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %p5_intf_modes.exit

p5_intf_modes.exit:                               ; preds = %switch.lookup, %if.then21.p5_intf_modes.exit_crit_edge
  %retval.0.i112 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.42, %if.then21.p5_intf_modes.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %interface.addr.0121)
  %89 = icmp ult i32 %interface.addr.0121, 30
  br i1 %89, label %switch.lookup127, label %p5_intf_modes.exit.phy_modes.exit_crit_edge

p5_intf_modes.exit.phy_modes.exit_crit_edge:      ; preds = %p5_intf_modes.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %phy_modes.exit

switch.lookup127:                                 ; preds = %p5_intf_modes.exit
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep128 = getelementptr inbounds [30 x ptr], ptr @switch.table.mt7530_setup_port5.197, i32 0, i32 %interface.addr.0121
  %90 = ptrtoint ptr %switch.gep128 to i32
  call void @__asan_load4_noabort(i32 %90)
  %switch.load129 = load ptr, ptr %switch.gep128, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup127, %p5_intf_modes.exit.phy_modes.exit_crit_edge
  %retval.0.i118 = phi ptr [ %switch.load129, %switch.lookup127 ], [ @.str.42, %p5_intf_modes.exit.phy_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7530_setup_port5.__UNIQUE_ID_ddebug500, ptr noundef %84, ptr noundef nonnull @.str.36, i32 noundef %val.2, ptr noundef nonnull %retval.0.i112, ptr noundef nonnull %retval.0.i118) #13
  br label %do.end28

do.end28:                                         ; preds = %phy_modes.exit, %mt7530_write.exit111
  %p5_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 11
  %91 = ptrtoint ptr %p5_interface to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %interface.addr.0121, ptr %p5_interface, align 4
  br label %unlock_exit

unlock_exit:                                      ; preds = %do.end28, %do.end
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7530_fdb_cmd(ptr noundef %priv, i32 noundef %cmd, ptr noundef writeonly %rsp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i, align 4
  %shr7.i.i = lshr i32 %cmd, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i.i_crit_edge, label %if.end.i.i

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %entry
  %6 = trunc i32 %cmd to i16
  %conv6.i.i = or i16 %6, -32768
  %7 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %8(ptr noundef %3, i32 noundef 31, i32 noundef 0, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %9 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %10(ptr noundef %3, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %call = tail call i64 @ktime_get() #13
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 316) #13
  br label %for.cond

for.cond:                                         ; preds = %if.then19, %mt7530_write.exit
  %11 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i56 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i56, i32 noundef 2) #13
  %13 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus1.i, align 4
  %write.i.i57 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write.i.i57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i.i57, align 8
  %call.i.i58 = tail call i32 %16(ptr noundef %14, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i.i59, label %do.end.i.i61, label %if.end.i.i62

do.end.i.i61:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i60 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i60, ptr noundef nonnull @.str.19) #16
  br label %_mt7530_read.exit

if.end.i.i62:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i.i, align 4
  %call7.i.i = tail call i32 %18(ptr noundef %14, i32 noundef 31, i32 noundef 0) #13
  %19 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i.i, align 4
  %call10.i.i = tail call i32 %20(ptr noundef %14, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i = and i32 %call7.i.i, 65535
  br label %_mt7530_read.exit

_mt7530_read.exit:                                ; preds = %if.end.i.i62, %do.end.i.i61
  %retval.0.i.i = phi i32 [ %call.i.i58, %do.end.i.i61 ], [ %conv13.i.i, %if.end.i.i62 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i56) #13
  %and = and i32 %retval.0.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %_mt7530_read.exit.for.end_crit_edge, label %land.lhs.true

_mt7530_read.exit.for.end_crit_edge:              ; preds = %_mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true:                                    ; preds = %_mt7530_read.exit
  %call12 = tail call i64 @ktime_get() #13
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then19

if.then15:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i64 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i64, i32 noundef 2) #13
  %23 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus1.i, align 4
  %write.i.i67 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write.i.i67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i67, align 8
  %call.i.i68 = tail call i32 %26(ptr noundef %24, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.i.i69 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp.i.i69, label %do.end.i.i71, label %if.end.i.i79

do.end.i.i71:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i70 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i70, ptr noundef nonnull @.str.19) #16
  br label %_mt7530_read.exit81

if.end.i.i79:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i73 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %read.i.i73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read.i.i73, align 4
  %call7.i.i74 = tail call i32 %28(ptr noundef %24, i32 noundef 31, i32 noundef 0) #13
  %29 = ptrtoint ptr %read.i.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i.i73, align 4
  %call10.i.i75 = tail call i32 %30(ptr noundef %24, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i77 = and i32 %call7.i.i74, 65535
  br label %_mt7530_read.exit81

_mt7530_read.exit81:                              ; preds = %if.end.i.i79, %do.end.i.i71
  %retval.0.i.i80 = phi i32 [ %call.i.i68, %do.end.i.i71 ], [ %conv13.i.i77, %if.end.i.i79 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i64) #13
  br label %for.end

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond

for.end:                                          ; preds = %_mt7530_read.exit81, %_mt7530_read.exit.for.end_crit_edge
  %val.0 = phi i32 [ %retval.0.i.i80, %_mt7530_read.exit81 ], [ %retval.0.i.i, %_mt7530_read.exit.for.end_crit_edge ]
  %and21 = and i32 %val.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.10) #16
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %33 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %35 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %38(ptr noundef %36, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 4
  %39 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %40(ptr noundef %36, i32 noundef 31, i32 noundef 0) #13
  %41 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %42(ptr noundef %36, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp30 = icmp ne i32 %cmd, 0
  %and32 = and i32 %retval.0.i.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond = select i1 %cmp30, i1 true, i1 %tobool33.not
  br i1 %or.cond, label %if.end35, label %mt7530_read.exit.cleanup_crit_edge

mt7530_read.exit.cleanup_crit_edge:               ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %mt7530_read.exit
  %tobool36.not = icmp eq ptr %rsp, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i.i.i, ptr %rsp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end35.cleanup_crit_edge, %mt7530_read.exit.cleanup_crit_edge, %do.end27
  %retval.0 = phi i32 [ -110, %do.end27 ], [ -22, %mt7530_read.exit.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7530_vlan_cmd(ptr noundef %priv, i32 noundef %cmd, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i.i_crit_edge, label %if.end.i.i

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %entry
  %cmd.tr = trunc i32 %cmd to i16
  %6 = shl i16 %cmd.tr, 12
  %conv6.i.i = or i16 %6, %vid
  %7 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %8(ptr noundef %3, i32 noundef 31, i32 noundef 4, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %9 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %10(ptr noundef %3, i32 noundef 31, i32 noundef 16, i16 noundef zeroext -32768) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %call = tail call i64 @ktime_get() #13
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1482) #13
  br label %for.cond

for.cond:                                         ; preds = %if.then23, %mt7530_write.exit
  %11 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i58 = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i58, i32 noundef 2) #13
  %13 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus1.i, align 4
  %write.i.i59 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write.i.i59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i.i59, align 8
  %call.i.i60 = tail call i32 %16(ptr noundef %14, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp.i.i61 = icmp slt i32 %call.i.i60, 0
  br i1 %cmp.i.i61, label %_mt7530_read.exit.thread, label %_mt7530_read.exit

_mt7530_read.exit.thread:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i62 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i62, ptr noundef nonnull @.str.19) #16
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i58) #13
  br label %land.lhs.true

_mt7530_read.exit:                                ; preds = %for.cond
  %read.i.i = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i.i, align 4
  %call7.i.i = tail call i32 %18(ptr noundef %14, i32 noundef 31, i32 noundef 4) #13
  %19 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i.i, align 4
  %call10.i.i = tail call i32 %20(ptr noundef %14, i32 noundef 31, i32 noundef 16) #13
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i58) #13
  %shl.i.i.mask = and i32 %call10.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.mask)
  %tobool.not = icmp eq i32 %shl.i.i.mask, 0
  br i1 %tobool.not, label %_mt7530_read.exit.if.end33_crit_edge, label %_mt7530_read.exit.land.lhs.true_crit_edge

_mt7530_read.exit.land.lhs.true_crit_edge:        ; preds = %_mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

_mt7530_read.exit.if.end33_crit_edge:             ; preds = %_mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true:                                    ; preds = %_mt7530_read.exit.land.lhs.true_crit_edge, %_mt7530_read.exit.thread
  %call15 = tail call i64 @ktime_get() #13
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then23

if.then19:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i66 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i66, i32 noundef 2) #13
  %23 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus1.i, align 4
  %write.i.i69 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write.i.i69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i69, align 8
  %call.i.i70 = tail call i32 %26(ptr noundef %24, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.i.i71 = icmp slt i32 %call.i.i70, 0
  br i1 %cmp.i.i71, label %for.end.thread93, label %for.end

for.end.thread93:                                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i72 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i72, ptr noundef nonnull @.str.19) #16
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i66) #13
  br label %cleanup.sink.split

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond

for.end:                                          ; preds = %if.then19
  %read.i.i75 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %read.i.i75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read.i.i75, align 4
  %call7.i.i76 = tail call i32 %28(ptr noundef %24, i32 noundef 31, i32 noundef 4) #13
  %29 = ptrtoint ptr %read.i.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i.i75, align 4
  %call10.i.i77 = tail call i32 %30(ptr noundef %24, i32 noundef 31, i32 noundef 16) #13
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i66) #13
  %shl.i.i78.mask = and i32 %call10.i.i77, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i78.mask)
  %tobool26.not = icmp eq i32 %shl.i.i78.mask, 0
  br i1 %tobool26.not, label %for.end.if.end33_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end33:                                         ; preds = %for.end.if.end33_crit_edge, %_mt7530_read.exit.if.end33_crit_edge
  %31 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %33 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus1.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %36(ptr noundef %34, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 4
  %37 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %38(ptr noundef %34, i32 noundef 31, i32 noundef 4) #13
  %39 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %40(ptr noundef %34, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %shl.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %and35 = and i32 %retval.0.i.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %mt7530_read.exit.cleanup_crit_edge, label %mt7530_read.exit.cleanup.sink.split_crit_edge

mt7530_read.exit.cleanup.sink.split_crit_edge:    ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

mt7530_read.exit.cleanup_crit_edge:               ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %mt7530_read.exit.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.end.thread93
  %.str.26.sink = phi ptr [ @.str.23, %for.end.thread93 ], [ @.str.23, %for.end.cleanup.sink.split_crit_edge ], [ @.str.26, %mt7530_read.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %for.end.thread93 ], [ -110, %for.end.cleanup.sink.split_crit_edge ], [ -22, %mt7530_read.exit.cleanup.sink.split_crit_edge ]
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull %.str.26.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mt7530_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7530_read.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #13
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 4) #13
  %8 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %9(ptr noundef %3, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  %div.i = udiv i32 %offset, 3
  %add.i = add i32 %div.i, %offset
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %10 = xor i32 %retval.0.i.i.i, -1
  %11 = lshr i32 %10, %add.i
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #13
  %div.i = udiv i32 %offset, 3
  %add.i = add i32 %div.i, %offset
  %shl.i = shl nuw i32 1, %add.i
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32020, i32 noundef %shl.i, i32 noundef 0) #13
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32016, i32 noundef %shl.i, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #13
  %div.i = udiv i32 %offset, 3
  %add.i = add i32 %div.i, %offset
  %shl.i = shl nuw i32 1, %add.i
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32016, i32 noundef 0, i32 noundef %shl.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32024, i32 noundef 0, i32 noundef %shl.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32024, i32 noundef %shl.i, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32020, i32 noundef 0, i32 noundef %shl.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #13
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 6) #13
  %8 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %9(ptr noundef %3, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  %div.i = udiv i32 %offset, 3
  %add.i = add i32 %div.i, %offset
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %10 = lshr i32 %retval.0.i.i.i, %add.i
  %11 = and i32 %10, 1
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #13
  %div.i = udiv i32 %offset, 3
  %add.i = add i32 %div.i, %offset
  %shl.i = shl nuw i32 1, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32024, i32 noundef 0, i32 noundef %shl.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_rmw(ptr noundef %call, i32 noundef 32024, i32 noundef %shl.i, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_write(ptr nocapture noundef readonly %priv, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %5(ptr noundef %3, i32 noundef 0, i32 noundef 13, i16 noundef zeroext 31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %conv4.i = trunc i32 %reg to i16
  %call5.i = tail call i32 %7(ptr noundef %3, i32 noundef 0, i32 noundef 14, i16 noundef zeroext %conv4.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end9.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end9.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 8
  %call12.i = tail call i32 %9(ptr noundef %3, i32 noundef 0, i32 noundef 13, i16 noundef zeroext 16415) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end9.i.do.end.i_crit_edge, label %err.i

if.end9.i.do.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

err.i:                                            ; preds = %if.end9.i
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 8
  %conv18.i = trunc i32 %val to i16
  %call19.i = tail call i32 %11(ptr noundef %3, i32 noundef 0, i32 noundef 14, i16 noundef zeroext %conv18.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %err.i.do.end.i_crit_edge, label %err.i.core_write_mmd_indirect.exit_crit_edge

err.i.core_write_mmd_indirect.exit_crit_edge:     ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %core_write_mmd_indirect.exit

err.i.do.end.i_crit_edge:                         ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %err.i.do.end.i_crit_edge, %if.end9.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81) #16
  br label %core_write_mmd_indirect.exit

core_write_mmd_indirect.exit:                     ; preds = %do.end.i, %err.i.core_write_mmd_indirect.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_rmw(ptr nocapture noundef readonly %priv, i32 noundef %mask, i32 noundef %set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %5(ptr noundef %3, i32 noundef 0, i32 noundef 13, i16 noundef zeroext 31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %call5.i = tail call i32 %7(ptr noundef %3, i32 noundef 0, i32 noundef 14, i16 noundef zeroext 1040) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end.i_crit_edge, label %if.end9.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end9.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 8
  %call12.i = tail call i32 %9(ptr noundef %3, i32 noundef 0, i32 noundef 13, i16 noundef zeroext 16415) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end9.i.do.end.i_crit_edge, label %if.end16.i

if.end9.i.do.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %call17.i = tail call i32 %11(ptr noundef %3, i32 noundef 0, i32 noundef 14) #13
  br label %core_read_mmd_indirect.exit

do.end.i:                                         ; preds = %if.end9.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call5.i, %if.end.i.do.end.i_crit_edge ], [ %call12.i, %if.end9.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79) #16
  br label %core_read_mmd_indirect.exit

core_read_mmd_indirect.exit:                      ; preds = %do.end.i, %if.end16.i
  %retval.0.i = phi i32 [ %ret.0.i, %do.end.i ], [ %call17.i, %if.end16.i ]
  %neg = xor i32 %mask, -1
  %and = and i32 %retval.0.i, %neg
  %or = or i32 %and, %set
  %12 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus1, align 4
  %write.i2 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write.i2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i2, align 8
  %call.i3 = tail call i32 %15(ptr noundef %13, i32 noundef 0, i32 noundef 13, i16 noundef zeroext 31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i4 = icmp slt i32 %call.i3, 0
  br i1 %cmp.i4, label %core_read_mmd_indirect.exit.do.end.i12_crit_edge, label %if.end.i7

core_read_mmd_indirect.exit.do.end.i12_crit_edge: ; preds = %core_read_mmd_indirect.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i12

if.end.i7:                                        ; preds = %core_read_mmd_indirect.exit
  %16 = ptrtoint ptr %write.i2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i2, align 8
  %call5.i5 = tail call i32 %17(ptr noundef %13, i32 noundef 0, i32 noundef 14, i16 noundef zeroext 1040) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i5)
  %cmp6.i6 = icmp slt i32 %call5.i5, 0
  br i1 %cmp6.i6, label %if.end.i7.do.end.i12_crit_edge, label %if.end9.i10

if.end.i7.do.end.i12_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i12

if.end9.i10:                                      ; preds = %if.end.i7
  %18 = ptrtoint ptr %write.i2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i2, align 8
  %call12.i8 = tail call i32 %19(ptr noundef %13, i32 noundef 0, i32 noundef 13, i16 noundef zeroext 16415) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i8)
  %cmp13.i9 = icmp slt i32 %call12.i8, 0
  br i1 %cmp13.i9, label %if.end9.i10.do.end.i12_crit_edge, label %err.i

if.end9.i10.do.end.i12_crit_edge:                 ; preds = %if.end9.i10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i12

err.i:                                            ; preds = %if.end9.i10
  %20 = ptrtoint ptr %write.i2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i2, align 8
  %conv18.i = trunc i32 %or to i16
  %call19.i = tail call i32 %21(ptr noundef %13, i32 noundef 0, i32 noundef 14, i16 noundef zeroext %conv18.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %err.i.do.end.i12_crit_edge, label %err.i.core_write_mmd_indirect.exit_crit_edge

err.i.core_write_mmd_indirect.exit_crit_edge:     ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %core_write_mmd_indirect.exit

err.i.do.end.i12_crit_edge:                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i12

do.end.i12:                                       ; preds = %err.i.do.end.i12_crit_edge, %if.end9.i10.do.end.i12_crit_edge, %if.end.i7.do.end.i12_crit_edge, %core_read_mmd_indirect.exit.do.end.i12_crit_edge
  %dev.i11 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i11, ptr noundef nonnull @.str.81) #16
  br label %core_write_mmd_indirect.exit

core_write_mmd_indirect.exit:                     ; preds = %do.end.i12, %err.i.core_write_mmd_indirect.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7531_ind_c45_phy_read(ptr noundef %priv, i32 noundef %port, i32 noundef %devad, i32 noundef %regnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  %call = tail call i64 @ktime_get() #13
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 628) #13
  br label %for.cond

for.cond:                                         ; preds = %if.then20, %entry
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %_mt7530_unlocked_read.exit.thread, label %_mt7530_unlocked_read.exit

_mt7530_unlocked_read.exit.thread:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true

_mt7530_unlocked_read.exit:                       ; preds = %for.cond
  %read.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i, align 4
  %call7.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 7) #13
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i, align 4
  %call10.i.i = tail call i32 %9(ptr noundef %3, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.mask = and i32 %call10.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.mask)
  %tobool.not = icmp eq i32 %shl.i.i.mask, 0
  br i1 %tobool.not, label %_mt7530_unlocked_read.exit.if.end29_crit_edge, label %_mt7530_unlocked_read.exit.land.lhs.true_crit_edge

_mt7530_unlocked_read.exit.land.lhs.true_crit_edge: ; preds = %_mt7530_unlocked_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

_mt7530_unlocked_read.exit.if.end29_crit_edge:    ; preds = %_mt7530_unlocked_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %_mt7530_unlocked_read.exit.land.lhs.true_crit_edge, %_mt7530_unlocked_read.exit.thread
  %call13 = tail call i64 @ktime_get() #13
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then20

if.then16:                                        ; preds = %land.lhs.true
  %10 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus1, align 4
  %write.i.i178 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write.i.i178 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i178, align 8
  %call.i.i179 = tail call i32 %13(ptr noundef %11, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %cmp.i.i180 = icmp slt i32 %call.i.i179, 0
  br i1 %cmp.i.i180, label %for.end.thread302, label %for.end

for.end.thread302:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i181 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i181, ptr noundef nonnull @.str.19) #16
  br label %do.end28

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond

for.end:                                          ; preds = %if.then16
  %read.i.i184 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %read.i.i184 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i.i184, align 4
  %call7.i.i185 = tail call i32 %15(ptr noundef %11, i32 noundef 31, i32 noundef 7) #13
  %16 = ptrtoint ptr %read.i.i184 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i.i184, align 4
  %call10.i.i186 = tail call i32 %17(ptr noundef %11, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i187.mask = and i32 %call10.i.i186, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i187.mask)
  %tobool23.not = icmp eq i32 %shl.i.i187.mask, 0
  br i1 %tobool23.not, label %for.end.if.end29_crit_edge, label %for.end.do.end28_crit_edge

for.end.do.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end28:                                         ; preds = %for.end.do.end28_crit_edge, %for.end.thread302
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23) #16
  br label %out

if.end29:                                         ; preds = %for.end.if.end29_crit_edge, %_mt7530_unlocked_read.exit.if.end29_crit_edge
  %and30 = shl i32 %port, 20
  %shl = and i32 %and30, 32505856
  %and31 = shl i32 %devad, 25
  %shl32 = and i32 %and31, 1040187392
  %or33 = or i32 %shl32, %shl
  %or34 = or i32 %or33, %regnum
  %20 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus1, align 4
  %or35 = lshr i32 %or34, 16
  %22 = trunc i32 %or35 to i16
  %conv8.i = or i16 %22, -32768
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 5
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %24(ptr noundef %21, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i193 = icmp slt i32 %call.i, 0
  br i1 %cmp.i193, label %if.end29.do.end.i_crit_edge, label %if.end.i

if.end29.do.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i:                                         ; preds = %if.end29
  %conv6.i = trunc i32 %regnum to i16
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i, align 8
  %call12.i = tail call i32 %26(ptr noundef %21, i32 noundef 31, i32 noundef 7, i16 noundef zeroext %conv6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i.do.end.i_crit_edge, label %err.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

err.i:                                            ; preds = %if.end.i
  %27 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i, align 8
  %call18.i = tail call i32 %28(ptr noundef %21, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %err.i.do.end.i_crit_edge, label %err.i.mt7530_mii_write.exit_crit_edge

err.i.mt7530_mii_write.exit_crit_edge:            ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit

err.i.do.end.i_crit_edge:                         ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %err.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %if.end29.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit

mt7530_mii_write.exit:                            ; preds = %do.end.i, %err.i.mt7530_mii_write.exit_crit_edge
  %call40 = tail call i64 @ktime_get() #13
  %add.i194 = add i64 %call40, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 639) #13
  br label %for.cond54

for.cond54:                                       ; preds = %if.then69, %mt7530_mii_write.exit
  %29 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus1, align 4
  %write.i.i197 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write.i.i197 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i.i197, align 8
  %call.i.i198 = tail call i32 %32(ptr noundef %30, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i198)
  %cmp.i.i199 = icmp slt i32 %call.i.i198, 0
  br i1 %cmp.i.i199, label %_mt7530_unlocked_read.exit211.thread, label %_mt7530_unlocked_read.exit211

_mt7530_unlocked_read.exit211.thread:             ; preds = %for.cond54
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i200 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i200, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true61

_mt7530_unlocked_read.exit211:                    ; preds = %for.cond54
  %read.i.i203 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %read.i.i203 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read.i.i203, align 4
  %call7.i.i204 = tail call i32 %34(ptr noundef %30, i32 noundef 31, i32 noundef 7) #13
  %35 = ptrtoint ptr %read.i.i203 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read.i.i203, align 4
  %call10.i.i205 = tail call i32 %36(ptr noundef %30, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i206.mask = and i32 %call10.i.i205, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i206.mask)
  %tobool57.not = icmp eq i32 %shl.i.i206.mask, 0
  br i1 %tobool57.not, label %_mt7530_unlocked_read.exit211.if.end85_crit_edge, label %_mt7530_unlocked_read.exit211.land.lhs.true61_crit_edge

_mt7530_unlocked_read.exit211.land.lhs.true61_crit_edge: ; preds = %_mt7530_unlocked_read.exit211
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true61

_mt7530_unlocked_read.exit211.if.end85_crit_edge: ; preds = %_mt7530_unlocked_read.exit211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true61:                                  ; preds = %_mt7530_unlocked_read.exit211.land.lhs.true61_crit_edge, %_mt7530_unlocked_read.exit211.thread
  %call62 = tail call i64 @ktime_get() #13
  %cmp3.i213 = icmp sgt i64 %call62, %add.i194
  br i1 %cmp3.i213, label %if.then65, label %if.then69

if.then65:                                        ; preds = %land.lhs.true61
  %37 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus1, align 4
  %write.i.i218 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %write.i.i218 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i.i218, align 8
  %call.i.i219 = tail call i32 %40(ptr noundef %38, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i219)
  %cmp.i.i220 = icmp slt i32 %call.i.i219, 0
  br i1 %cmp.i.i220, label %for.end73.thread309, label %for.end73

for.end73.thread309:                              ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i221 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i221, ptr noundef nonnull @.str.19) #16
  br label %do.end83

if.then69:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond54

for.end73:                                        ; preds = %if.then65
  %read.i.i224 = getelementptr inbounds %struct.mii_bus, ptr %38, i32 0, i32 4
  %41 = ptrtoint ptr %read.i.i224 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read.i.i224, align 4
  %call7.i.i225 = tail call i32 %42(ptr noundef %38, i32 noundef 31, i32 noundef 7) #13
  %43 = ptrtoint ptr %read.i.i224 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read.i.i224, align 4
  %call10.i.i226 = tail call i32 %44(ptr noundef %38, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i227.mask = and i32 %call10.i.i226, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i227.mask)
  %tobool76.not = icmp eq i32 %shl.i.i227.mask, 0
  br i1 %tobool76.not, label %for.end73.if.end85_crit_edge, label %for.end73.do.end83_crit_edge

for.end73.do.end83_crit_edge:                     ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end83

for.end73.if.end85_crit_edge:                     ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

do.end83:                                         ; preds = %for.end73.do.end83_crit_edge, %for.end73.thread309
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.23) #16
  br label %out

if.end85:                                         ; preds = %for.end73.if.end85_crit_edge, %_mt7530_unlocked_read.exit211.if.end85_crit_edge
  %47 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus1, align 4
  %or92 = lshr exact i32 %or33, 16
  %49 = trunc i32 %or92 to i16
  %conv8.i235 = or i16 %49, -32760
  %write.i236 = getelementptr inbounds %struct.mii_bus, ptr %48, i32 0, i32 5
  %50 = ptrtoint ptr %write.i236 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i236, align 8
  %call.i237 = tail call i32 %51(ptr noundef %48, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %cmp.i238 = icmp slt i32 %call.i237, 0
  br i1 %cmp.i238, label %if.end85.do.end.i247_crit_edge, label %if.end.i242

if.end85.do.end.i247_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i247

if.end.i242:                                      ; preds = %if.end85
  %52 = ptrtoint ptr %write.i236 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write.i236, align 8
  %call12.i240 = tail call i32 %53(ptr noundef %48, i32 noundef 31, i32 noundef 7, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i240)
  %cmp13.i241 = icmp slt i32 %call12.i240, 0
  br i1 %cmp13.i241, label %if.end.i242.do.end.i247_crit_edge, label %err.i245

if.end.i242.do.end.i247_crit_edge:                ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i247

err.i245:                                         ; preds = %if.end.i242
  %54 = ptrtoint ptr %write.i236 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i236, align 8
  %call18.i243 = tail call i32 %55(ptr noundef %48, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i235) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i243)
  %cmp19.i244 = icmp slt i32 %call18.i243, 0
  br i1 %cmp19.i244, label %err.i245.do.end.i247_crit_edge, label %err.i245.mt7530_mii_write.exit248_crit_edge

err.i245.mt7530_mii_write.exit248_crit_edge:      ; preds = %err.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit248

err.i245.do.end.i247_crit_edge:                   ; preds = %err.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i247

do.end.i247:                                      ; preds = %err.i245.do.end.i247_crit_edge, %if.end.i242.do.end.i247_crit_edge, %if.end85.do.end.i247_crit_edge
  %dev.i246 = getelementptr inbounds %struct.mii_bus, ptr %48, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i246, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit248

mt7530_mii_write.exit248:                         ; preds = %do.end.i247, %err.i245.mt7530_mii_write.exit248_crit_edge
  %call97 = tail call i64 @ktime_get() #13
  %add.i249 = add i64 %call97, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 650) #13
  br label %for.cond111

for.cond111:                                      ; preds = %if.then126, %mt7530_mii_write.exit248
  %56 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus1, align 4
  %write.i.i252 = getelementptr inbounds %struct.mii_bus, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %write.i.i252 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i.i252, align 8
  %call.i.i253 = tail call i32 %59(ptr noundef %57, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i253)
  %cmp.i.i254 = icmp slt i32 %call.i.i253, 0
  br i1 %cmp.i.i254, label %_mt7530_unlocked_read.exit266.thread, label %_mt7530_unlocked_read.exit266

_mt7530_unlocked_read.exit266.thread:             ; preds = %for.cond111
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i255 = getelementptr inbounds %struct.mii_bus, ptr %57, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i255, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true118

_mt7530_unlocked_read.exit266:                    ; preds = %for.cond111
  %read.i.i258 = getelementptr inbounds %struct.mii_bus, ptr %57, i32 0, i32 4
  %60 = ptrtoint ptr %read.i.i258 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read.i.i258, align 4
  %call7.i.i259 = tail call i32 %61(ptr noundef %57, i32 noundef 31, i32 noundef 7) #13
  %62 = ptrtoint ptr %read.i.i258 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read.i.i258, align 4
  %call10.i.i260 = tail call i32 %63(ptr noundef %57, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i261 = shl i32 %call10.i.i260, 16
  %conv13.i.i262 = and i32 %call7.i.i259, 65535
  %or.i.i263 = or i32 %shl.i.i261, %conv13.i.i262
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i.i263)
  %tobool114.not = icmp sgt i32 %or.i.i263, -1
  br i1 %tobool114.not, label %_mt7530_unlocked_read.exit266.if.end142_crit_edge, label %_mt7530_unlocked_read.exit266.land.lhs.true118_crit_edge

_mt7530_unlocked_read.exit266.land.lhs.true118_crit_edge: ; preds = %_mt7530_unlocked_read.exit266
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true118

_mt7530_unlocked_read.exit266.if.end142_crit_edge: ; preds = %_mt7530_unlocked_read.exit266
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

land.lhs.true118:                                 ; preds = %_mt7530_unlocked_read.exit266.land.lhs.true118_crit_edge, %_mt7530_unlocked_read.exit266.thread
  %call119 = tail call i64 @ktime_get() #13
  %cmp3.i268 = icmp sgt i64 %call119, %add.i249
  br i1 %cmp3.i268, label %if.then122, label %if.then126

if.then122:                                       ; preds = %land.lhs.true118
  %64 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus1, align 4
  %write.i.i273 = getelementptr inbounds %struct.mii_bus, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write.i.i273 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write.i.i273, align 8
  %call.i.i274 = tail call i32 %67(ptr noundef %65, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i274)
  %cmp.i.i275 = icmp slt i32 %call.i.i274, 0
  br i1 %cmp.i.i275, label %for.end130.thread317, label %for.end130

for.end130.thread317:                             ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i276 = getelementptr inbounds %struct.mii_bus, ptr %65, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i276, ptr noundef nonnull @.str.19) #16
  br label %do.end140

if.then126:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond111

for.end130:                                       ; preds = %if.then122
  %read.i.i279 = getelementptr inbounds %struct.mii_bus, ptr %65, i32 0, i32 4
  %68 = ptrtoint ptr %read.i.i279 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read.i.i279, align 4
  %call7.i.i280 = tail call i32 %69(ptr noundef %65, i32 noundef 31, i32 noundef 7) #13
  %70 = ptrtoint ptr %read.i.i279 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read.i.i279, align 4
  %call10.i.i281 = tail call i32 %71(ptr noundef %65, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i282 = shl i32 %call10.i.i281, 16
  %conv13.i.i283 = and i32 %call7.i.i280, 65535
  %or.i.i284 = or i32 %shl.i.i282, %conv13.i.i283
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i.i284)
  %tobool133.not = icmp sgt i32 %or.i.i284, -1
  br i1 %tobool133.not, label %for.end130.if.end142_crit_edge, label %for.end130.do.end140_crit_edge

for.end130.do.end140_crit_edge:                   ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end140

for.end130.if.end142_crit_edge:                   ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end142

do.end140:                                        ; preds = %for.end130.do.end140_crit_edge, %for.end130.thread317
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.23) #16
  br label %out

if.end142:                                        ; preds = %for.end130.if.end142_crit_edge, %_mt7530_unlocked_read.exit266.if.end142_crit_edge
  %val.2316 = phi i32 [ %or.i.i284, %for.end130.if.end142_crit_edge ], [ %or.i.i263, %_mt7530_unlocked_read.exit266.if.end142_crit_edge ]
  %and143 = and i32 %val.2316, 65535
  br label %out

out:                                              ; preds = %if.end142, %do.end140, %do.end83, %do.end28
  %ret.0 = phi i32 [ -110, %do.end28 ], [ -110, %do.end83 ], [ -110, %do.end140 ], [ %and143, %if.end142 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7531_ind_c45_phy_write(ptr noundef %priv, i32 noundef %port, i32 noundef %devad, i32 noundef %regnum, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  %call = tail call i64 @ktime_get() #13
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 677) #13
  br label %for.cond

for.cond:                                         ; preds = %if.then20, %entry
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %_mt7530_unlocked_read.exit.thread, label %_mt7530_unlocked_read.exit

_mt7530_unlocked_read.exit.thread:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true

_mt7530_unlocked_read.exit:                       ; preds = %for.cond
  %read.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i, align 4
  %call7.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 7) #13
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i, align 4
  %call10.i.i = tail call i32 %9(ptr noundef %3, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.mask = and i32 %call10.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i.mask)
  %tobool.not = icmp eq i32 %shl.i.i.mask, 0
  br i1 %tobool.not, label %_mt7530_unlocked_read.exit.if.end29_crit_edge, label %_mt7530_unlocked_read.exit.land.lhs.true_crit_edge

_mt7530_unlocked_read.exit.land.lhs.true_crit_edge: ; preds = %_mt7530_unlocked_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

_mt7530_unlocked_read.exit.if.end29_crit_edge:    ; preds = %_mt7530_unlocked_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %_mt7530_unlocked_read.exit.land.lhs.true_crit_edge, %_mt7530_unlocked_read.exit.thread
  %call13 = tail call i64 @ktime_get() #13
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then20

if.then16:                                        ; preds = %land.lhs.true
  %10 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus1, align 4
  %write.i.i177 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write.i.i177 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i177, align 8
  %call.i.i178 = tail call i32 %13(ptr noundef %11, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %cmp.i.i179 = icmp slt i32 %call.i.i178, 0
  br i1 %cmp.i.i179, label %if.then16.out.sink.split.sink.split_crit_edge, label %for.end

if.then16.out.sink.split.sink.split_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond

for.end:                                          ; preds = %if.then16
  %read.i.i183 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %read.i.i183 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i.i183, align 4
  %call7.i.i184 = tail call i32 %15(ptr noundef %11, i32 noundef 31, i32 noundef 7) #13
  %16 = ptrtoint ptr %read.i.i183 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i.i183, align 4
  %call10.i.i185 = tail call i32 %17(ptr noundef %11, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i186.mask = and i32 %call10.i.i185, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i186.mask)
  %tobool23.not = icmp eq i32 %shl.i.i186.mask, 0
  br i1 %tobool23.not, label %for.end.if.end29_crit_edge, label %for.end.out.sink.split_crit_edge

for.end.out.sink.split_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %for.end.if.end29_crit_edge, %_mt7530_unlocked_read.exit.if.end29_crit_edge
  %and30 = shl i32 %port, 20
  %shl = and i32 %and30, 32505856
  %and31 = shl i32 %devad, 25
  %shl32 = and i32 %and31, 1040187392
  %or33 = or i32 %shl32, %shl
  %or34 = or i32 %or33, %regnum
  %18 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus1, align 4
  %or35 = lshr i32 %or34, 16
  %20 = trunc i32 %or35 to i16
  %conv8.i = or i16 %20, -32768
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 5
  %21 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %22(ptr noundef %19, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i192 = icmp slt i32 %call.i, 0
  br i1 %cmp.i192, label %if.end29.do.end.i_crit_edge, label %if.end.i

if.end29.do.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i:                                         ; preds = %if.end29
  %conv6.i = trunc i32 %regnum to i16
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 8
  %call12.i = tail call i32 %24(ptr noundef %19, i32 noundef 31, i32 noundef 7, i16 noundef zeroext %conv6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i.do.end.i_crit_edge, label %err.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

err.i:                                            ; preds = %if.end.i
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i, align 8
  %call18.i = tail call i32 %26(ptr noundef %19, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %err.i.do.end.i_crit_edge, label %err.i.mt7530_mii_write.exit_crit_edge

err.i.mt7530_mii_write.exit_crit_edge:            ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit

err.i.do.end.i_crit_edge:                         ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %err.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %if.end29.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit

mt7530_mii_write.exit:                            ; preds = %do.end.i, %err.i.mt7530_mii_write.exit_crit_edge
  %call40 = tail call i64 @ktime_get() #13
  %add.i193 = add i64 %call40, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 688) #13
  br label %for.cond54

for.cond54:                                       ; preds = %if.then69, %mt7530_mii_write.exit
  %27 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus1, align 4
  %write.i.i196 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write.i.i196 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i.i196, align 8
  %call.i.i197 = tail call i32 %30(ptr noundef %28, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i197)
  %cmp.i.i198 = icmp slt i32 %call.i.i197, 0
  br i1 %cmp.i.i198, label %_mt7530_unlocked_read.exit210.thread, label %_mt7530_unlocked_read.exit210

_mt7530_unlocked_read.exit210.thread:             ; preds = %for.cond54
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i199 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i199, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true61

_mt7530_unlocked_read.exit210:                    ; preds = %for.cond54
  %read.i.i202 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %read.i.i202 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read.i.i202, align 4
  %call7.i.i203 = tail call i32 %32(ptr noundef %28, i32 noundef 31, i32 noundef 7) #13
  %33 = ptrtoint ptr %read.i.i202 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read.i.i202, align 4
  %call10.i.i204 = tail call i32 %34(ptr noundef %28, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i205.mask = and i32 %call10.i.i204, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i205.mask)
  %tobool57.not = icmp eq i32 %shl.i.i205.mask, 0
  br i1 %tobool57.not, label %_mt7530_unlocked_read.exit210.if.end85_crit_edge, label %_mt7530_unlocked_read.exit210.land.lhs.true61_crit_edge

_mt7530_unlocked_read.exit210.land.lhs.true61_crit_edge: ; preds = %_mt7530_unlocked_read.exit210
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true61

_mt7530_unlocked_read.exit210.if.end85_crit_edge: ; preds = %_mt7530_unlocked_read.exit210
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true61:                                  ; preds = %_mt7530_unlocked_read.exit210.land.lhs.true61_crit_edge, %_mt7530_unlocked_read.exit210.thread
  %call62 = tail call i64 @ktime_get() #13
  %cmp3.i212 = icmp sgt i64 %call62, %add.i193
  br i1 %cmp3.i212, label %if.then65, label %if.then69

if.then65:                                        ; preds = %land.lhs.true61
  %35 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus1, align 4
  %write.i.i217 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %write.i.i217 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write.i.i217, align 8
  %call.i.i218 = tail call i32 %38(ptr noundef %36, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i218)
  %cmp.i.i219 = icmp slt i32 %call.i.i218, 0
  br i1 %cmp.i.i219, label %if.then65.out.sink.split.sink.split_crit_edge, label %for.end73

if.then65.out.sink.split.sink.split_crit_edge:    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split

if.then69:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond54

for.end73:                                        ; preds = %if.then65
  %read.i.i223 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 4
  %39 = ptrtoint ptr %read.i.i223 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read.i.i223, align 4
  %call7.i.i224 = tail call i32 %40(ptr noundef %36, i32 noundef 31, i32 noundef 7) #13
  %41 = ptrtoint ptr %read.i.i223 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read.i.i223, align 4
  %call10.i.i225 = tail call i32 %42(ptr noundef %36, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i226.mask = and i32 %call10.i.i225, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i226.mask)
  %tobool76.not = icmp eq i32 %shl.i.i226.mask, 0
  br i1 %tobool76.not, label %for.end73.if.end85_crit_edge, label %for.end73.out.sink.split_crit_edge

for.end73.out.sink.split_crit_edge:               ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

for.end73.if.end85_crit_edge:                     ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end85:                                         ; preds = %for.end73.if.end85_crit_edge, %_mt7530_unlocked_read.exit210.if.end85_crit_edge
  %or91 = or i32 %or33, %data
  %43 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus1, align 4
  %or93 = lshr i32 %or91, 16
  %45 = trunc i32 %or93 to i16
  %conv8.i234 = or i16 %45, -32764
  %write.i235 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 5
  %46 = ptrtoint ptr %write.i235 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i235, align 8
  %call.i236 = tail call i32 %47(ptr noundef %44, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %cmp.i237 = icmp slt i32 %call.i236, 0
  br i1 %cmp.i237, label %if.end85.do.end.i246_crit_edge, label %if.end.i241

if.end85.do.end.i246_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i246

if.end.i241:                                      ; preds = %if.end85
  %conv6.i238 = trunc i32 %data to i16
  %48 = ptrtoint ptr %write.i235 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write.i235, align 8
  %call12.i239 = tail call i32 %49(ptr noundef %44, i32 noundef 31, i32 noundef 7, i16 noundef zeroext %conv6.i238) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i239)
  %cmp13.i240 = icmp slt i32 %call12.i239, 0
  br i1 %cmp13.i240, label %if.end.i241.do.end.i246_crit_edge, label %err.i244

if.end.i241.do.end.i246_crit_edge:                ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i246

err.i244:                                         ; preds = %if.end.i241
  %50 = ptrtoint ptr %write.i235 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i235, align 8
  %call18.i242 = tail call i32 %51(ptr noundef %44, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i242)
  %cmp19.i243 = icmp slt i32 %call18.i242, 0
  br i1 %cmp19.i243, label %err.i244.do.end.i246_crit_edge, label %err.i244.mt7530_mii_write.exit247_crit_edge

err.i244.mt7530_mii_write.exit247_crit_edge:      ; preds = %err.i244
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit247

err.i244.do.end.i246_crit_edge:                   ; preds = %err.i244
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i246

do.end.i246:                                      ; preds = %err.i244.do.end.i246_crit_edge, %if.end.i241.do.end.i246_crit_edge, %if.end85.do.end.i246_crit_edge
  %dev.i245 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i245, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit247

mt7530_mii_write.exit247:                         ; preds = %do.end.i246, %err.i244.mt7530_mii_write.exit247_crit_edge
  %call98 = tail call i64 @ktime_get() #13
  %add.i248 = add i64 %call98, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 699) #13
  br label %for.cond112

for.cond112:                                      ; preds = %if.then127, %mt7530_mii_write.exit247
  %52 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus1, align 4
  %write.i.i251 = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write.i.i251 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i.i251, align 8
  %call.i.i252 = tail call i32 %55(ptr noundef %53, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i252)
  %cmp.i.i253 = icmp slt i32 %call.i.i252, 0
  br i1 %cmp.i.i253, label %_mt7530_unlocked_read.exit265.thread, label %_mt7530_unlocked_read.exit265

_mt7530_unlocked_read.exit265.thread:             ; preds = %for.cond112
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i254 = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i254, ptr noundef nonnull @.str.19) #16
  br label %land.lhs.true119

_mt7530_unlocked_read.exit265:                    ; preds = %for.cond112
  %read.i.i257 = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 4
  %56 = ptrtoint ptr %read.i.i257 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read.i.i257, align 4
  %call7.i.i258 = tail call i32 %57(ptr noundef %53, i32 noundef 31, i32 noundef 7) #13
  %58 = ptrtoint ptr %read.i.i257 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read.i.i257, align 4
  %call10.i.i259 = tail call i32 %59(ptr noundef %53, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i260.mask = and i32 %call10.i.i259, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i260.mask)
  %tobool115.not = icmp eq i32 %shl.i.i260.mask, 0
  br i1 %tobool115.not, label %_mt7530_unlocked_read.exit265.out_crit_edge, label %_mt7530_unlocked_read.exit265.land.lhs.true119_crit_edge

_mt7530_unlocked_read.exit265.land.lhs.true119_crit_edge: ; preds = %_mt7530_unlocked_read.exit265
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true119

_mt7530_unlocked_read.exit265.out_crit_edge:      ; preds = %_mt7530_unlocked_read.exit265
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true119:                                 ; preds = %_mt7530_unlocked_read.exit265.land.lhs.true119_crit_edge, %_mt7530_unlocked_read.exit265.thread
  %call120 = tail call i64 @ktime_get() #13
  %cmp3.i267 = icmp sgt i64 %call120, %add.i248
  br i1 %cmp3.i267, label %if.then123, label %if.then127

if.then123:                                       ; preds = %land.lhs.true119
  %60 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus1, align 4
  %write.i.i272 = getelementptr inbounds %struct.mii_bus, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %write.i.i272 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.i.i272, align 8
  %call.i.i273 = tail call i32 %63(ptr noundef %61, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i273)
  %cmp.i.i274 = icmp slt i32 %call.i.i273, 0
  br i1 %cmp.i.i274, label %if.then123.out.sink.split.sink.split_crit_edge, label %for.end131

if.then123.out.sink.split.sink.split_crit_edge:   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split

if.then127:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #13
  br label %for.cond112

for.end131:                                       ; preds = %if.then123
  %read.i.i278 = getelementptr inbounds %struct.mii_bus, ptr %61, i32 0, i32 4
  %64 = ptrtoint ptr %read.i.i278 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read.i.i278, align 4
  %call7.i.i279 = tail call i32 %65(ptr noundef %61, i32 noundef 31, i32 noundef 7) #13
  %66 = ptrtoint ptr %read.i.i278 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read.i.i278, align 4
  %call10.i.i280 = tail call i32 %67(ptr noundef %61, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i281.mask = and i32 %call10.i.i280, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i281.mask)
  %tobool134.not = icmp eq i32 %shl.i.i281.mask, 0
  br i1 %tobool134.not, label %for.end131.out_crit_edge, label %for.end131.out.sink.split_crit_edge

for.end131.out.sink.split_crit_edge:              ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

for.end131.out_crit_edge:                         ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.sink.split.sink.split:                        ; preds = %if.then123.out.sink.split.sink.split_crit_edge, %if.then65.out.sink.split.sink.split_crit_edge, %if.then16.out.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.then16.out.sink.split.sink.split_crit_edge ], [ %36, %if.then65.out.sink.split.sink.split_crit_edge ], [ %61, %if.then123.out.sink.split.sink.split_crit_edge ]
  %dev.i.i275 = getelementptr inbounds %struct.mii_bus, ptr %.sink, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i275, ptr noundef nonnull @.str.19) #16
  br label %out.sink.split

out.sink.split:                                   ; preds = %out.sink.split.sink.split, %for.end131.out.sink.split_crit_edge, %for.end73.out.sink.split_crit_edge, %for.end.out.sink.split_crit_edge
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.23) #16
  br label %out

out:                                              ; preds = %out.sink.split, %for.end131.out_crit_edge, %_mt7530_unlocked_read.exit265.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end131.out_crit_edge ], [ -110, %out.sink.split ], [ 0, %_mt7530_unlocked_read.exit265.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt753x_phylink_mac_link_up(ptr noundef %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr noundef %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %info.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %mac_pcs_link_up.i = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %mac_pcs_link_up.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_pcs_link_up.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mt753x_mac_pcs_link_up.exit_crit_edge, label %if.end.i

entry.mt753x_mac_pcs_link_up.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt753x_mac_pcs_link_up.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex) #13
  br label %mt753x_mac_pcs_link_up.exit

mt753x_mac_pcs_link_up.exit:                      ; preds = %if.end.i, %entry.mt753x_mac_pcs_link_up.exit_crit_edge
  %6 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %interface, label %if.end [
    i32 22, label %mt753x_mac_pcs_link_up.exit..thread_crit_edge
    i32 21, label %mt753x_mac_pcs_link_up.exit..thread_crit_edge65
    i32 19, label %mt753x_mac_pcs_link_up.exit..thread_crit_edge66
  ]

mt753x_mac_pcs_link_up.exit..thread_crit_edge66:  ; preds = %mt753x_mac_pcs_link_up.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

mt753x_mac_pcs_link_up.exit..thread_crit_edge65:  ; preds = %mt753x_mac_pcs_link_up.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

mt753x_mac_pcs_link_up.exit..thread_crit_edge:    ; preds = %mt753x_mac_pcs_link_up.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

if.end:                                           ; preds = %mt753x_mac_pcs_link_up.exit
  %7 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %speed, label %.thread59.fold.split [
    i32 100, label %if.end..thread59_crit_edge
    i32 1000, label %if.end..thread_crit_edge
  ]

if.end..thread_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread

if.end..thread59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread59

.thread:                                          ; preds = %if.end..thread_crit_edge, %mt753x_mac_pcs_link_up.exit..thread_crit_edge, %mt753x_mac_pcs_link_up.exit..thread_crit_edge65, %mt753x_mac_pcs_link_up.exit..thread_crit_edge66
  %duplex.addr.05058 = phi i32 [ 1, %mt753x_mac_pcs_link_up.exit..thread_crit_edge ], [ %duplex, %if.end..thread_crit_edge ], [ 1, %mt753x_mac_pcs_link_up.exit..thread_crit_edge65 ], [ 1, %mt753x_mac_pcs_link_up.exit..thread_crit_edge66 ]
  br label %.thread59

.thread59.fold.split:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread59

.thread59:                                        ; preds = %.thread59.fold.split, %.thread, %if.end..thread59_crit_edge
  %duplex.addr.05057 = phi i32 [ %duplex.addr.05058, %.thread ], [ %duplex, %if.end..thread59_crit_edge ], [ %duplex, %.thread59.fold.split ]
  %speed.addr.05155 = phi i32 [ 1000, %.thread ], [ %speed, %if.end..thread59_crit_edge ], [ %speed, %.thread59.fold.split ]
  %8 = phi i32 [ 24585, %.thread ], [ 24581, %if.end..thread59_crit_edge ], [ 24577, %.thread59.fold.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex.addr.05057)
  %cmp5 = icmp eq i32 %duplex.addr.05057, 1
  %spec.select.v = select i1 %tx_pause, i32 34, i32 2
  %spec.select = or i32 %8, %spec.select.v
  %or13 = or i32 %spec.select, 16
  %spec.select46 = select i1 %rx_pause, i32 %or13, i32 %spec.select
  %mcr.2 = select i1 %cmp5, i32 %spec.select46, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp16 = icmp ne i32 %mode, 0
  %tobool17.not = icmp eq ptr %phydev, null
  %or.cond = or i1 %cmp16, %tobool17.not
  br i1 %or.cond, label %.thread59.if.end27_crit_edge, label %land.lhs.true18

.thread59.if.end27_crit_edge:                     ; preds = %.thread59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true18:                                  ; preds = %.thread59
  %call19 = tail call i32 @phy_init_eee(ptr noundef nonnull %phydev, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp20 = icmp sgt i32 %call19, -1
  br i1 %cmp20, label %if.then21, label %land.lhs.true18.if.end27_crit_edge

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true18
  %9 = zext i32 %speed.addr.05155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %speed.addr.05155, label %if.then21.if.end27_crit_edge [
    i32 1000, label %sw.bb22
    i32 100, label %sw.bb24
  ]

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

sw.bb22:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %or23 = or i32 %mcr.2, 128
  br label %if.end27

sw.bb24:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %or25 = or i32 %mcr.2, 64
  br label %if.end27

if.end27:                                         ; preds = %sw.bb24, %sw.bb22, %if.then21.if.end27_crit_edge, %land.lhs.true18.if.end27_crit_edge, %.thread59.if.end27_crit_edge
  %mcr.3 = phi i32 [ %mcr.2, %if.then21.if.end27_crit_edge ], [ %or25, %sw.bb24 ], [ %or23, %sw.bb22 ], [ %mcr.2, %land.lhs.true18.if.end27_crit_edge ], [ %mcr.2, %.thread59.if.end27_crit_edge ]
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 12288
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef %mcr.3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_driver_is_genphy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt753x_setup(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %sw_setup = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sw_setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw_setup, align 4
  %call = tail call i32 %5(ptr noundef %ds) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.126, ptr noundef null) #13
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.127) #16
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @of_irq_get(ptr noundef %9, i32 noundef 0) #13
  %irq.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 1
  br i1 %cmp.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.130, i32 noundef %call2.i) #16
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool.not.i, i32 -22, i32 %12
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %tobool.not.i.i.i = icmp eq ptr %9, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i, i32 noundef 5, i32 noundef 5, i32 noundef 0, ptr noundef nonnull @mt7530_irq_domain_ops, ptr noundef %1) #13
  %irq_domain.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1.i.i, ptr %irq_domain.i, align 4
  %tobool13.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end18.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.133) #16
  br label %cleanup

if.end18.i:                                       ; preds = %if.end10.i
  %id.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp19.not.i = icmp eq i32 %15, 2
  br i1 %cmp19.not.i, label %if.end18.i.if.end21.i_crit_edge, label %if.then20.i

if.end18.i.if.end21.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 30728, i32 noundef 0, i32 noundef 196608) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end18.i.if.end21.i_crit_edge
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  %call23.i = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef null, ptr noundef nonnull @mt7530_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end5_crit_edge, label %if.then25.i

if.end21.i.if.end5_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %19) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.136, i32 noundef %call23.i) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end21.i.if.end5_crit_edge, %do.end.i
  %ds1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ds1.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i.i22 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %23, i32 noundef 0) #13
  %tobool.not.i23 = icmp eq ptr %call.i.i22, null
  br i1 %tobool.not.i23, label %if.end5.land.lhs.true_crit_edge, label %if.end.i26

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end.i26:                                       ; preds = %if.end5
  %slave_mii_bus.i = getelementptr inbounds %struct.dsa_switch, ptr %21, i32 0, i32 10
  %24 = ptrtoint ptr %slave_mii_bus.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i22, ptr %slave_mii_bus.i, align 4
  %priv3.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i22, i32 0, i32 3
  %25 = ptrtoint ptr %priv3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %priv3.i, align 8
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i22, i32 0, i32 1
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.138, ptr %name.i, align 4
  %id.i24 = getelementptr inbounds %struct.mii_bus, ptr %call.i.i22, i32 0, i32 2
  %27 = load i32, ptr @mt7530_setup_mdio.idx, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr @mt7530_setup_mdio.idx, align 4
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i24, i32 noundef 61, ptr noundef nonnull @.str.139, i32 noundef %27) #13
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i22, i32 0, i32 4
  %28 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mt753x_phy_read, ptr %read.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i22, i32 0, i32 5
  %29 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mt753x_phy_write, ptr %write.i, align 8
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i22, i32 0, i32 9
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %parent.i, align 4
  %phys_mii_mask.i = getelementptr inbounds %struct.dsa_switch, ptr %21, i32 0, i32 9
  %31 = ptrtoint ptr %phys_mii_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_mii_mask.i, align 4
  %neg.i = xor i32 %32, -1
  %phy_mask.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i22, i32 0, i32 13
  %33 = ptrtoint ptr %phy_mask.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %neg.i, ptr %phy_mask.i, align 8
  %irq.i25 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %irq.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool5.not.i = icmp eq i32 %35, 0
  br i1 %tobool5.not.i, label %if.end.i26.if.end7.i_crit_edge, label %if.then6.i

if.end.i26.if.end7.i_crit_edge:                   ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i26
  %36 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds1.i, align 4
  %phys_mii_mask.i.i = getelementptr inbounds %struct.dsa_switch, ptr %37, i32 0, i32 9
  %irq_domain.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 18
  %slave_mii_bus.i.i = getelementptr inbounds %struct.dsa_switch, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %phys_mii_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys_mii_mask.i.i, align 4
  %and.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then6.i.for.inc.i.i_crit_edge, label %if.then.i.i

if.then6.i.for.inc.i.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %irq_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_domain.i.i, align 4
  %call.i.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %41, i32 noundef 0, ptr noundef null) #13
  %42 = ptrtoint ptr %slave_mii_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave_mii_bus.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mii_bus, ptr %43, i32 0, i32 15, i32 0
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i.i.i, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %if.then6.i.for.inc.i.i_crit_edge
  %45 = ptrtoint ptr %phys_mii_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_mii_mask.i.i, align 4
  %and.1.i.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %irq_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq_domain.i.i, align 4
  %call.i.1.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %48, i32 noundef 1, ptr noundef null) #13
  %49 = ptrtoint ptr %slave_mii_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slave_mii_bus.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.mii_bus, ptr %50, i32 0, i32 15, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i.1.i.i, ptr %arrayidx.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %52 = ptrtoint ptr %phys_mii_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %phys_mii_mask.i.i, align 4
  %and.2.i.i = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %irq_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %irq_domain.i.i, align 4
  %call.i.2.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %55, i32 noundef 2, ptr noundef null) #13
  %56 = ptrtoint ptr %slave_mii_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %slave_mii_bus.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.mii_bus, ptr %57, i32 0, i32 15, i32 2
  %58 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i.2.i.i, ptr %arrayidx.2.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %59 = ptrtoint ptr %phys_mii_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %phys_mii_mask.i.i, align 4
  %and.3.i.i = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.then.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %irq_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %irq_domain.i.i, align 4
  %call.i.3.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %62, i32 noundef 3, ptr noundef null) #13
  %63 = ptrtoint ptr %slave_mii_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %slave_mii_bus.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.mii_bus, ptr %64, i32 0, i32 15, i32 3
  %65 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call.i.3.i.i, ptr %arrayidx.3.i.i, align 4
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %66 = ptrtoint ptr %phys_mii_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phys_mii_mask.i.i, align 4
  %and.4.i.i = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.if.end7.i_crit_edge, label %if.then.4.i.i

for.inc.3.i.i.if.end7.i_crit_edge:                ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %irq_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %irq_domain.i.i, align 4
  %call.i.4.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %69, i32 noundef 4, ptr noundef null) #13
  %70 = ptrtoint ptr %slave_mii_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %slave_mii_bus.i.i, align 4
  %arrayidx.4.i.i = getelementptr %struct.mii_bus, ptr %71, i32 0, i32 15, i32 4
  %72 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call.i.4.i.i, ptr %arrayidx.4.i.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.4.i.i, %for.inc.3.i.i.if.end7.i_crit_edge, %if.end.i26.if.end7.i_crit_edge
  %call8.i = tail call i32 @__devm_mdiobus_register(ptr noundef %23, ptr noundef nonnull %call.i.i22, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.cleanup_crit_edge, label %do.end.i27

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i27:                                       ; preds = %if.end7.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.140, i32 noundef %call8.i) #16
  %73 = ptrtoint ptr %irq.i25 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool12.not.i = icmp eq i32 %74, 0
  br i1 %tobool12.not.i, label %do.end.i27.land.lhs.true_crit_edge, label %if.then13.i

do.end.i27.land.lhs.true_crit_edge:               ; preds = %do.end.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then13.i:                                      ; preds = %do.end.i27
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_free_mdio_irq(ptr noundef %1) #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then13.i, %do.end.i27.land.lhs.true_crit_edge, %if.end5.land.lhs.true_crit_edge
  %retval.0.i28.ph = phi i32 [ %call8.i, %if.then13.i ], [ %call8.i, %do.end.i27.land.lhs.true_crit_edge ], [ -12, %if.end5.land.lhs.true_crit_edge ]
  %irq = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 17
  %75 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool8.not = icmp eq i32 %76, 0
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %if.then9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @free_irq(i32 noundef %76, ptr noundef %1) #13
  %irq_domain.i30 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 18
  %77 = ptrtoint ptr %irq_domain.i30 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %irq_domain.i30, align 4
  tail call void @irq_domain_remove(ptr noundef %78) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then25.i, %do.end17.i, %do.end7.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i28.ph, %if.then9 ], [ %retval.0.i28.ph, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end7.i.cleanup_crit_edge ], [ -12, %do.end17.i ], [ %call23.i, %if.then25.i ], [ %spec.select, %do.end7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt753x_phylink_validate(ptr noundef %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #13
  %0 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %info.i = getelementptr inbounds %struct.mt7530_priv, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 4
  %phy_mode_supported.i = getelementptr inbounds %struct.mt753x_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %phy_mode_supported.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_mode_supported.i, align 4
  %call.i = tail call zeroext i1 %8(ptr noundef %ds, i32 noundef %port, ptr noundef %state) #13
  br i1 %call.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %9 = call ptr @memset(ptr %supported, i32 0, i32 12)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #13
  %10 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %11, label %if.end13 [
    i32 22, label %if.end.if.then16_crit_edge
    i32 21, label %if.end.if.then16_crit_edge50
    i32 19, label %if.end.if.then16_crit_edge51
  ]

if.end.if.then16_crit_edge51:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.end.if.then16_crit_edge50:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.end13:                                         ; preds = %if.end
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %or.i43 = or i32 %14, 79
  store i32 %or.i43, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp15.not = icmp eq i32 %11, 2
  br i1 %cmp15.not, label %if.end13.if.end18_crit_edge, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge50, %if.end.if.then16_crit_edge51
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %or.i44 = or i32 %16, 32
  store i32 %or.i44, ptr %mask, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %mac_port_validate = getelementptr inbounds %struct.mt753x_info, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %mac_port_validate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac_port_validate, align 4
  call void %20(ptr noundef %ds, i32 noundef %port, ptr noundef nonnull %mask) #13
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %or.i46 = or i32 %22, 24576
  store i32 %or.i46, ptr %mask, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #13
  %call.i.i47 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #13
  call void @phylink_helper_basex_speed(ptr noundef %state) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt753x_phylink_mac_link_state(ptr noundef %ds, i32 noundef %port, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %mac_port_get_state = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %mac_port_get_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_port_get_state, align 4
  %call = tail call i32 %5(ptr noundef %ds, i32 noundef %port, ptr noundef %state) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt753x_phylink_mac_config(ptr noundef %ds, i32 noundef %port, i32 noundef %mode, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %phy_mode_supported.i = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %phy_mode_supported.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_mode_supported.i, align 4
  %call.i = tail call zeroext i1 %5(ptr noundef %ds, i32 noundef %port, ptr noundef %state) #13
  br i1 %call.i, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %entry
  %6 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %port, label %if.end.do.end_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge114
    i32 2, label %if.end.sw.bb_crit_edge115
    i32 3, label %if.end.sw.bb_crit_edge116
    i32 4, label %if.end.sw.bb_crit_edge117
    i32 5, label %sw.bb4
    i32 6, label %sw.bb18
  ]

if.end.sw.bb_crit_edge117:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge116:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge115:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge114:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge114, %if.end.sw.bb_crit_edge115, %if.end.sw.bb_crit_edge116, %if.end.sw.bb_crit_edge117
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.not = icmp eq i32 %8, 3
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %p5_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %p5_interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p5_interface, align 4
  %interface5 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %11 = ptrtoint ptr %interface5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interface5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp6 = icmp eq i32 %10, %12
  br i1 %cmp6, label %sw.bb4.sw.epilog_crit_edge, label %if.end8

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end8:                                          ; preds = %sw.bb4
  %13 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv1, align 4
  %info.i96 = getelementptr inbounds %struct.mt7530_priv, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %info.i96 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i96, align 4
  %mac_port_config.i = getelementptr inbounds %struct.mt753x_info, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %mac_port_config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac_port_config.i, align 4
  %call.i97 = tail call i32 %18(ptr noundef %ds, i32 noundef 5, i32 noundef %mode, i32 noundef %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp10 = icmp slt i32 %call.i97, 0
  br i1 %cmp10, label %if.end8.do.end_crit_edge, label %if.end12

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end12:                                         ; preds = %if.end8
  %p5_intf_sel = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %p5_intf_sel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p5_intf_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp13.not = icmp eq i32 %20, 0
  br i1 %cmp13.not, label %if.end12.sw.epilog_crit_edge, label %if.end12.sw.epilog.sink.split_crit_edge

if.end12.sw.epilog.sink.split_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %p6_interface = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %p6_interface to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p6_interface, align 4
  %interface19 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %23 = ptrtoint ptr %interface19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %interface19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp20 = icmp eq i32 %22, %24
  br i1 %cmp20, label %sw.bb18.sw.epilog_crit_edge, label %if.end22

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end22:                                         ; preds = %sw.bb18
  %25 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv1, align 4
  %info.i99 = getelementptr inbounds %struct.mt7530_priv, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %info.i99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info.i99, align 4
  %pad_setup.i = getelementptr inbounds %struct.mt753x_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %pad_setup.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad_setup.i, align 4
  %call.i101 = tail call i32 %30(ptr noundef %ds, i32 noundef %24) #13
  %31 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv1, align 4
  %info.i103 = getelementptr inbounds %struct.mt7530_priv, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %info.i103 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info.i103, align 4
  %mac_port_config.i104 = getelementptr inbounds %struct.mt753x_info, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %mac_port_config.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mac_port_config.i104, align 4
  %37 = ptrtoint ptr %interface19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interface19, align 4
  %call.i106 = tail call i32 %36(ptr noundef %ds, i32 noundef 6, i32 noundef %mode, i32 noundef %38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp25 = icmp slt i32 %call.i106, 0
  br i1 %cmp25, label %if.end22.do.end_crit_edge, label %if.end22.sw.epilog.sink.split_crit_edge

if.end22.sw.epilog.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

if.end22.do.end_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end22.do.end_crit_edge, %if.end8.do.end_crit_edge, %sw.bb.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %39 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ds, align 4
  %interface30 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %41 = ptrtoint ptr %interface30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %interface30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %42)
  %43 = icmp ult i32 %42, 30
  br i1 %43, label %switch.lookup, label %do.end.phy_modes.exit_crit_edge

do.end.phy_modes.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.mt753x_phylink_mac_config, i32 0, i32 %42
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %do.end.phy_modes.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.42, %do.end.phy_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, ptr noundef nonnull %retval.0.i, i32 noundef %port) #16
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end22.sw.epilog.sink.split_crit_edge, %if.end12.sw.epilog.sink.split_crit_edge
  %interface5.sink = phi ptr [ %interface5, %if.end12.sw.epilog.sink.split_crit_edge ], [ %interface19, %if.end22.sw.epilog.sink.split_crit_edge ]
  %p5_interface.sink = phi ptr [ %p5_interface, %if.end12.sw.epilog.sink.split_crit_edge ], [ %p6_interface, %if.end22.sw.epilog.sink.split_crit_edge ]
  %45 = ptrtoint ptr %interface5.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %interface5.sink, align 4
  %47 = ptrtoint ptr %p5_interface.sink to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %p5_interface.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb18.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  br i1 %cmp.i, label %land.lhs.true, label %sw.epilog.if.end40_crit_edge

sw.epilog.if.end40_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true:                                    ; preds = %sw.epilog
  %interface33 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %48 = ptrtoint ptr %interface33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %interface33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp34.not = icmp eq i32 %49, 4
  br i1 %cmp34.not, label %land.lhs.true.if.end40_crit_edge, label %do.end38

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

do.end38:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.143) #16
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %sw.epilog.if.end40_crit_edge
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %54 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus1.i.i, align 4
  %port.tr = trunc i32 %port to i16
  %56 = shl nuw nsw i16 %port.tr, 8
  %57 = add nuw nsw i16 %56, 12288
  %58 = lshr exact i16 %57, 6
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %55, i32 0, i32 5
  %59 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %60(ptr noundef %55, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %58) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %55, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %55, i32 0, i32 4
  %61 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %62(ptr noundef %55, i32 noundef 31, i32 noundef 0) #13
  %63 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %64(ptr noundef %55, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %and = and i32 %retval.0.i.i.i, -353280
  %id = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp42 = icmp eq i32 %66, 2
  %or = select i1 %cmp42, i32 -133889280, i32 361216
  %or43 = or i32 %or, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %port)
  %cmp44 = icmp eq i32 %port, 5
  br i1 %cmp44, label %land.lhs.true45, label %mt7530_read.exit.if.end49_crit_edge

mt7530_read.exit.if.end49_crit_edge:              ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

land.lhs.true45:                                  ; preds = %mt7530_read.exit
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %67 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %land.lhs.true45.dsa_is_user_port.exit_crit_edge, label %land.lhs.true45.for.body.i.i_crit_edge

land.lhs.true45.for.body.i.i_crit_edge:           ; preds = %land.lhs.true45
  br label %for.body.i.i

land.lhs.true45.dsa_is_user_port.exit_crit_edge:  ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %land.lhs.true45.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %land.lhs.true45.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %70 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %71, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %72 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %73)
  %cmp5.i.i = icmp eq i32 %73, 5
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %74 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %land.lhs.true45.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %land.lhs.true45.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp.i107 = icmp eq i32 %76, 3
  %or48 = or i32 %or43, 131072
  %spec.select = select i1 %cmp.i107, i32 %or48, i32 %or43
  br label %if.end49

if.end49:                                         ; preds = %dsa_is_user_port.exit, %mt7530_read.exit.if.end49_crit_edge
  %mcr_new.0 = phi i32 [ %or43, %mt7530_read.exit.if.end49_crit_edge ], [ %spec.select, %dsa_is_user_port.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mcr_new.0, i32 %retval.0.i.i.i)
  %cmp50.not = icmp eq i32 %mcr_new.0, %retval.0.i.i.i
  br i1 %cmp50.not, label %if.end49.cleanup_crit_edge, label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then51:                                        ; preds = %if.end49
  %77 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %78, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %79 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i = lshr i32 %mcr_new.0, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %82(ptr noundef %80, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %58) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then51.do.end.i.i_crit_edge, label %if.end.i.i

if.then51.do.end.i.i_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.then51
  %conv6.i.i = trunc i32 %mcr_new.0 to i16
  %83 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %84(ptr noundef %80, i32 noundef 31, i32 noundef 0, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %85 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %86(ptr noundef %80, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.then51.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %80, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mt7530_write.exit, %if.end49.cleanup_crit_edge, %do.end38, %phy_modes.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt753x_phylink_mac_an_restart(ptr noundef %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %mac_pcs_an_restart = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %mac_pcs_an_restart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_pcs_an_restart, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %ds, i32 noundef %port) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt753x_phylink_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 12288
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 24831, i32 noundef 0) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_get_strings(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.05, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %name = getelementptr [41 x %struct.mt7530_mib_desc], ptr @mt7530_mib, i32 0, i32 %i.05, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 32)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 41
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 16384
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [41 x %struct.mt7530_mib_desc], ptr @mt7530_mib, i32 0, i32 %i.035
  %offset = getelementptr [41 x %struct.mt7530_mib_desc], ptr @mt7530_mib, i32 0, i32 %i.035, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add2 = add i32 %add, %3
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %6 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i.i, align 4
  %8 = trunc i32 %add2 to i16
  %9 = lshr i16 %8, 6
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %11(ptr noundef %7, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = lshr i32 %add2, 2
  %conv4.i.i.i = and i32 %12, 15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %14(ptr noundef %7, i32 noundef 31, i32 noundef %conv4.i.i.i) #13
  %15 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %16(ptr noundef %7, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %conv = zext i32 %retval.0.i.i.i to i64
  %arrayidx3 = getelementptr i64, ptr %data, i32 %i.035
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %arrayidx3, align 8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp4 = icmp eq i32 %19, 2
  br i1 %cmp4, label %if.then, label %mt7530_read.exit.for.inc_crit_edge

mt7530_read.exit.for.inc_crit_edge:               ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %mt7530_read.exit
  %add6 = add i32 %add2, 4
  %20 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i19 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i19, i32 noundef 2) #13
  %22 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus1.i.i, align 4
  %24 = trunc i32 %add6 to i16
  %25 = lshr i16 %24, 6
  %write.i.i.i20 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %write.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i.i.i20, align 8
  %call.i.i.i21 = tail call i32 %27(ptr noundef %23, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i21)
  %cmp.i.i.i22 = icmp slt i32 %call.i.i.i21, 0
  br i1 %cmp.i.i.i22, label %do.end.i.i.i24, label %if.end.i.i.i32

do.end.i.i.i24:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i23 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i23, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit34

if.end.i.i.i32:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %28 = lshr i32 %add6, 2
  %conv4.i.i.i25 = and i32 %28, 15
  %read.i.i.i26 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 4
  %29 = ptrtoint ptr %read.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i.i.i26, align 4
  %call7.i.i.i27 = tail call i32 %30(ptr noundef %23, i32 noundef 31, i32 noundef %conv4.i.i.i25) #13
  %31 = ptrtoint ptr %read.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read.i.i.i26, align 4
  %call10.i.i.i28 = tail call i32 %32(ptr noundef %23, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i29 = shl i32 %call10.i.i.i28, 16
  %conv13.i.i.i30 = and i32 %call7.i.i.i27, 65535
  %or.i.i.i31 = or i32 %shl.i.i.i29, %conv13.i.i.i30
  br label %mt7530_read.exit34

mt7530_read.exit34:                               ; preds = %if.end.i.i.i32, %do.end.i.i.i24
  %retval.0.i.i.i33 = phi i32 [ %call.i.i.i21, %do.end.i.i.i24 ], [ %or.i.i.i31, %if.end.i.i.i32 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i19) #13
  %conv8 = zext i32 %retval.0.i.i.i33 to i64
  %shl = shl nuw i64 %conv8, 32
  %33 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx3, align 8
  %or = or i64 %34, %shl
  store i64 %or, ptr %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %mt7530_read.exit34, %mt7530_read.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 41
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7530_get_sset_count(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %sset) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 41, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_enable(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readnone %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %arrayidx = getelementptr %struct.mt7530_priv, ptr %1, i32 0, i32 15, i32 %port
  %pm = getelementptr %struct.mt7530_priv, ptr %1, i32 0, i32 15, i32 %port, i32 1
  %2 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm, align 4
  %or = or i32 %3, 4194304
  store i32 %or, ptr %pm, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 16711680, i32 noundef %or)
  %add8 = add i32 %mul, 12288
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add8, i32 noundef 24831, i32 noundef 0) #13
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt753x_set_mac_eee(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 7
  %0 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_lpi_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %1)
  %cmp = icmp ugt i32 %1, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %shl = shl nuw nsw i32 %1, 4
  %and = and i32 %shl, 65520
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 6
  %4 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_lpi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %or = zext i1 %tobool.not to i32
  %spec.select = or i32 %and, %or
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 12292
  tail call fastcc void @mt7530_rmw(ptr noundef %3, i32 noundef %add, i32 noundef 65521, i32 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt753x_get_mac_eee(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %port.tr = trunc i32 %port to i16
  %6 = shl i16 %port.tr, 8
  %7 = add i16 %6, 12292
  %8 = lshr i16 %7, 6
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %10(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %12(ptr noundef %5, i32 noundef 31, i32 noundef 1) #13
  %13 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %14(ptr noundef %5, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv13.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %and = and i32 %retval.0.i.i.i, 1
  %15 = xor i32 %and, 1
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 6
  %16 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_lpi_enabled, align 4
  %and2 = lshr i32 %retval.0.i.i.i, 4
  %shr = and i32 %and2, 4095
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %e, i32 0, i32 7
  %17 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %tx_lpi_timer, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_set_ageing_time(ptr nocapture noundef readonly %ds, i32 noundef %msecs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %div = udiv i32 %msecs, 1000
  %2 = add i32 %msecs, -1048577000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576000, i32 %2)
  %3 = icmp ult i32 %2, -1048576000
  br i1 %3, label %entry.cleanup20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup20

for.body:                                         ; preds = %cleanup16.for.body_crit_edge, %entry.for.body_crit_edge
  %age_unit.045 = phi i32 [ %age_unit.2, %cleanup16.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %age_count.044 = phi i32 [ %age_count.2, %cleanup16.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %error.043 = phi i32 [ %error.2, %cleanup16.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %tmp_age_count.042 = phi i32 [ %add, %cleanup16.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add nuw nsw i32 %tmp_age_count.042, 1
  %div4 = udiv i32 %div, %add
  %sub = add nsw i32 %div4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp5 = icmp ult i32 %sub, 4096
  br i1 %cmp5, label %if.then6, label %for.body.cleanup16_crit_edge

for.body.cleanup16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

if.then6:                                         ; preds = %for.body
  %mul = mul nuw nsw i32 %div4, %add
  %sub9 = sub nsw i32 %div, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %error.043, i32 %sub9)
  %cmp10 = icmp ugt i32 %error.043, %sub9
  %4 = tail call i32 @llvm.umin.i32(i32 %error.043, i32 %sub9)
  %age_count.1 = select i1 %cmp10, i32 %tmp_age_count.042, i32 %age_count.044
  %age_unit.1 = select i1 %cmp10, i32 %sub, i32 %age_unit.045
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then6.for.end_crit_edge, label %if.then6.cleanup16_crit_edge

if.then6.cleanup16_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup16:                                        ; preds = %if.then6.cleanup16_crit_edge, %for.body.cleanup16_crit_edge
  %error.2 = phi i32 [ %4, %if.then6.cleanup16_crit_edge ], [ %error.043, %for.body.cleanup16_crit_edge ]
  %age_count.2 = phi i32 [ %age_count.1, %if.then6.cleanup16_crit_edge ], [ %age_count.044, %for.body.cleanup16_crit_edge ]
  %age_unit.2 = phi i32 [ %age_unit.1, %if.then6.cleanup16_crit_edge ], [ %age_unit.045, %for.body.cleanup16_crit_edge ]
  %exitcond.not = icmp eq i32 %add, 256
  br i1 %exitcond.not, label %cleanup16.for.end_crit_edge, label %cleanup16.for.body_crit_edge

cleanup16.for.body_crit_edge:                     ; preds = %cleanup16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup16.for.end_crit_edge:                      ; preds = %cleanup16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup16.for.end_crit_edge, %if.then6.for.end_crit_edge
  %age_count.4 = phi i32 [ %age_count.2, %cleanup16.for.end_crit_edge ], [ %age_count.1, %if.then6.for.end_crit_edge ]
  %age_unit.4 = phi i32 [ %age_unit.2, %cleanup16.for.end_crit_edge ], [ %age_unit.1, %if.then6.for.end_crit_edge ]
  %shl = shl i32 %age_count.4, 12
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %7 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus1.i, align 4
  %and = lshr i32 %shl, 16
  %9 = trunc i32 %and to i16
  %conv8.i.i = and i16 %9, 15
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 5
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %11(ptr noundef %8, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.end.do.end.i.i_crit_edge, label %if.end.i.i

for.end.do.end.i.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %for.end
  %and19 = and i32 %age_unit.4, 4095
  %or = or i32 %and19, %shl
  %conv6.i.i = trunc i32 %or to i16
  %12 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %13(ptr noundef %8, i32 noundef 31, i32 noundef 8, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %14 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %15(ptr noundef %8, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %for.end.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %cleanup20

cleanup20:                                        ; preds = %mt7530_write.exit, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ 0, %mt7530_write.exit ], [ -34, %entry.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_bridge_join(ptr noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef readnone %tx_fwd_offload) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %1 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %4 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %5, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %port)
  %cmp5.i = icmp eq i32 %7, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %10, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %11 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1.i, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn85 = load ptr, ptr %ports, align 4
  %cmp.not88 = icmp eq ptr %.pn85, %ports
  br i1 %cmp.not88, label %dsa_to_port.exit.for.end_crit_edge, label %for.body.lr.ph

dsa_to_port.exit.for.end_crit_edge:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %dsa_to_port.exit
  %and = shl i32 65536, %port
  %shl15 = and i32 %and, 16711680
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn90 = phi ptr [ %.pn85, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %port_bitmap.089 = phi i32 [ 64, %for.body.lr.ph ], [ %port_bitmap.2, %for.inc.for.body_crit_edge ]
  %other_dp.091 = getelementptr i8, ptr %.pn90, i32 -448
  %ds4 = getelementptr i8, ptr %.pn90, i32 -432
  %14 = ptrtoint ptr %ds4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds4, align 4
  %cmp5 = icmp eq ptr %15, %ds
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %type.i = getelementptr i8, ptr %.pn90, i32 -424
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i = icmp eq i32 %17, 3
  br i1 %cmp.i, label %if.then7, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %if.then
  %index = getelementptr i8, ptr %.pn90, i32 -428
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %cmp8 = icmp eq ptr %retval.0.i, %other_dp.091
  br i1 %cmp8, label %if.then7.for.inc_crit_edge, label %if.end

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %if.then7
  %bridge.i.i = getelementptr i8, ptr %.pn90, i32 -396
  %20 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.dsa_port_offloads_bridge.exit_crit_edge, label %cond.true.i.i

if.end.dsa_port_offloads_bridge.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_port_offloads_bridge.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  br label %dsa_port_offloads_bridge.exit

dsa_port_offloads_bridge.exit:                    ; preds = %cond.true.i.i, %if.end.dsa_port_offloads_bridge.exit_crit_edge
  %cond.i.i = phi ptr [ %23, %cond.true.i.i ], [ null, %if.end.dsa_port_offloads_bridge.exit_crit_edge ]
  %cmp.i83 = icmp eq ptr %cond.i.i, %0
  br i1 %cmp.i83, label %if.end12, label %dsa_port_offloads_bridge.exit.for.inc_crit_edge

dsa_port_offloads_bridge.exit.for.inc_crit_edge:  ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end12:                                         ; preds = %dsa_port_offloads_bridge.exit
  %arrayidx = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %19
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %19, 8
  %add = add i32 %mul, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %10, i32 noundef %add, i32 noundef 0, i32 noundef %shl15) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %pm = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %19, i32 1
  %26 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pm, align 4
  %or = or i32 %27, %shl15
  store i32 %or, ptr %pm, align 4
  %shl22 = shl nuw i32 1, %19
  %or23 = or i32 %shl22, %port_bitmap.089
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %dsa_port_offloads_bridge.exit.for.inc_crit_edge, %if.then7.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port_bitmap.2 = phi i32 [ %port_bitmap.089, %if.then.for.inc_crit_edge ], [ %port_bitmap.089, %for.body.for.inc_crit_edge ], [ %or23, %if.end16 ], [ %port_bitmap.089, %if.then7.for.inc_crit_edge ], [ %port_bitmap.089, %dsa_port_offloads_bridge.exit.for.inc_crit_edge ]
  %28 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn90, align 4
  %29 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst1.i, align 4
  %ports3 = getelementptr inbounds %struct.dsa_switch_tree, ptr %30, i32 0, i32 1
  %cmp.not = icmp eq ptr %.pn, %ports3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dsa_to_port.exit.for.end_crit_edge
  %port_bitmap.0.lcssa = phi i32 [ 64, %dsa_to_port.exit.for.end_crit_edge ], [ %port_bitmap.2, %for.inc.for.end_crit_edge ]
  %arrayidx32 = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %port
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx32, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool34.not = icmp eq i8 %32, 0
  br i1 %tobool34.not, label %for.end.if.end40_crit_edge, label %if.then35

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = shl i32 %port_bitmap.0.lcssa, 16
  %.pre93 = and i32 %.pre, 16711680
  %.pre94 = shl i32 %port, 8
  %.pre95 = add i32 %.pre94, 8196
  br label %if.end40

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul36 = shl i32 %port, 8
  %add37 = add i32 %mul36, 8196
  %and38 = shl i32 %port_bitmap.0.lcssa, 16
  %shl39 = and i32 %and38, 16711680
  tail call fastcc void @mt7530_rmw(ptr noundef %10, i32 noundef %add37, i32 noundef 16711680, i32 noundef %shl39)
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %for.end.if.end40_crit_edge
  %add48.pre-phi = phi i32 [ %.pre95, %for.end.if.end40_crit_edge ], [ %add37, %if.then35 ]
  %shl42.pre-phi = phi i32 [ %.pre93, %for.end.if.end40_crit_edge ], [ %shl39, %if.then35 ]
  %pm45 = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %port, i32 1
  %33 = ptrtoint ptr %pm45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pm45, align 4
  %or46 = or i32 %34, %shl42.pre-phi
  store i32 %or46, ptr %pm45, align 4
  tail call fastcc void @mt7530_rmw(ptr noundef %10, i32 noundef %add48.pre-phi, i32 noundef 3, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_port_bridge_leave(ptr noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %1 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %4 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %5, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %port)
  %cmp5.i = icmp eq i32 %7, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %10, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %11 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1.i, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn72 = load ptr, ptr %ports, align 4
  %cmp.not75 = icmp eq ptr %.pn72, %ports
  br i1 %cmp.not75, label %dsa_to_port.exit.for.end_crit_edge, label %for.body.lr.ph

dsa_to_port.exit.for.end_crit_edge:               ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %dsa_to_port.exit
  %and = shl i32 65536, %port
  %shl15 = and i32 %and, 16711680
  %neg = xor i32 %shl15, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn76 = phi ptr [ %.pn72, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %other_dp.077 = getelementptr i8, ptr %.pn76, i32 -448
  %ds4 = getelementptr i8, ptr %.pn76, i32 -432
  %14 = ptrtoint ptr %ds4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds4, align 4
  %cmp5 = icmp eq ptr %15, %ds
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %type.i = getelementptr i8, ptr %.pn76, i32 -424
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i = icmp eq i32 %17, 3
  br i1 %cmp.i, label %if.then7, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then7:                                         ; preds = %if.then
  %index = getelementptr i8, ptr %.pn76, i32 -428
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %cmp8 = icmp eq ptr %retval.0.i, %other_dp.077
  br i1 %cmp8, label %if.then7.for.inc_crit_edge, label %if.end

if.then7.for.inc_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %if.then7
  %bridge.i.i = getelementptr i8, ptr %.pn76, i32 -396
  %20 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.dsa_port_offloads_bridge.exit_crit_edge, label %cond.true.i.i

if.end.dsa_port_offloads_bridge.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_port_offloads_bridge.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  br label %dsa_port_offloads_bridge.exit

dsa_port_offloads_bridge.exit:                    ; preds = %cond.true.i.i, %if.end.dsa_port_offloads_bridge.exit_crit_edge
  %cond.i.i = phi ptr [ %23, %cond.true.i.i ], [ null, %if.end.dsa_port_offloads_bridge.exit_crit_edge ]
  %cmp.i70 = icmp eq ptr %cond.i.i, %0
  br i1 %cmp.i70, label %if.end12, label %dsa_port_offloads_bridge.exit.for.inc_crit_edge

dsa_port_offloads_bridge.exit.for.inc_crit_edge:  ; preds = %dsa_port_offloads_bridge.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end12:                                         ; preds = %dsa_port_offloads_bridge.exit
  %arrayidx = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %19
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %19, 8
  %add = add i32 %mul, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %10, i32 noundef %add, i32 noundef %shl15, i32 noundef 0) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %pm = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %19, i32 1
  %26 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pm, align 4
  %and22 = and i32 %27, %neg
  store i32 %and22, ptr %pm, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %dsa_port_offloads_bridge.exit.for.inc_crit_edge, %if.then7.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn76, align 4
  %29 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst1.i, align 4
  %ports3 = getelementptr inbounds %struct.dsa_switch_tree, ptr %30, i32 0, i32 1
  %cmp.not = icmp eq ptr %.pn, %ports3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dsa_to_port.exit.for.end_crit_edge
  %arrayidx31 = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %port
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31, align 4, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool33.not = icmp eq i8 %32, 0
  %.pre = shl i32 %port, 8
  %.pre79 = add i32 %.pre, 8196
  br i1 %tobool33.not, label %for.end.if.end37_crit_edge, label %if.then34

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_rmw(ptr noundef %10, i32 noundef %.pre79, i32 noundef 16711680, i32 noundef 4194304)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %for.end.if.end37_crit_edge
  %pm40 = getelementptr %struct.mt7530_priv, ptr %10, i32 0, i32 15, i32 %port, i32 1
  %33 = ptrtoint ptr %pm40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4194304, ptr %pm40, align 4
  tail call fastcc void @mt7530_rmw(ptr noundef %10, i32 noundef %.pre79, i32 noundef 3, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %state)
  %2 = icmp ult i8 %state, 5
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = sext i8 %state to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mt7530_stp_state_set, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %stp_state.0 = phi i32 [ %switch.load, %switch.lookup ], [ 12, %entry.sw.epilog_crit_edge ]
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 8192
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 12, i32 noundef %stp_state.0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7530_port_pre_bridge_flags(ptr nocapture noundef readnone %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %and = and i32 %flags.coerce.fca.1.extract, -18529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_bridge_flags(ptr nocapture noundef readonly %ds, i32 noundef %port, [2 x i32] %flags.coerce, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.coerce.fca.0.extract = extractvalue [2 x i32] %flags.coerce, 0
  %flags.coerce.fca.1.extract = extractvalue [2 x i32] %flags.coerce, 1
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %and = and i32 %flags.coerce.fca.1.extract, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 8204
  %and2 = lshr i32 %flags.coerce.fca.0.extract, 1
  %2 = and i32 %and2, 16
  %3 = xor i32 %2, 16
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 16, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %flags.coerce.fca.1.extract, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and8 = shl i32 256, %port
  %shl9 = and i32 %and8, 65280
  %and11 = and i32 %flags.coerce.fca.0.extract, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select = select i1 %tobool12.not, i32 0, i32 %shl9
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 16, i32 noundef %shl9, i32 noundef %spec.select)
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.end.if.end17_crit_edge
  %and19 = and i32 %flags.coerce.fca.1.extract, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end35_crit_edge, label %if.then21

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %and23 = shl i32 65536, %port
  %shl24 = and i32 %and23, 16711680
  %and26 = and i32 %flags.coerce.fca.0.extract, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %spec.select69 = select i1 %tobool27.not, i32 0, i32 %shl24
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 16, i32 noundef %shl24, i32 noundef %spec.select69)
  br label %if.end35

if.end35:                                         ; preds = %if.then21, %if.end17.if.end35_crit_edge
  %and37 = and i32 %flags.coerce.fca.1.extract, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end53_crit_edge, label %if.then39

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %shl42 = shl i32 16777216, %port
  %and44 = and i32 %flags.coerce.fca.0.extract, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %spec.select70 = select i1 %tobool45.not, i32 0, i32 %shl42
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef 16, i32 noundef %shl42, i32 noundef %spec.select70)
  br label %if.end53

if.end53:                                         ; preds = %if.then39, %if.end35.if.end53_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_vlan_filtering(ptr noundef %ds, i32 noundef %port, i1 noundef zeroext %vlan_filtering, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %vlan_filtering, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mt7530_port_set_vlan_aware(ptr noundef %ds, i32 noundef %port)
  tail call fastcc void @mt7530_port_set_vlan_aware(ptr noundef %ds, i32 noundef 6)
  br label %if.end

if.else:                                          ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.else.dsa_to_port.exit.i_crit_edge, label %if.else.for.body.i.i_crit_edge

if.else.for.body.i.i_crit_edge:                   ; preds = %if.else
  br label %for.body.i.i

if.else.dsa_to_port.exit.i_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.else.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i.i = icmp eq i32 %8, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %if.else.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.else.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.i.if.end.i_crit_edge, label %dsa_port_bridge_dev_get.exit.i

dsa_to_port.exit.i.if.end.i_crit_edge:            ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %dsa_to_port.exit.i
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.i.if.end.i_crit_edge, label %if.then.i

dsa_port_bridge_dev_get.exit.i.if.end.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = shl i32 %port, 8
  %add.i = add i32 %mul.i, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add.i, i32 noundef 3, i32 noundef 1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %dsa_port_bridge_dev_get.exit.i.if.end.i_crit_edge, %dsa_to_port.exit.i.if.end.i_crit_edge
  %mul3.i = shl i32 %port, 8
  %add4.i = add i32 %mul3.i, 8208
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add4.i, i32 noundef 1987, i32 noundef 448) #13
  %add6.i = add i32 %mul3.i, 8212
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add6.i, i32 noundef 4095, i32 noundef 0) #13
  %14 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.084.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp.not21.i.i.i, label %dsa_is_user_port.exit.thread.i, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %17 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %18, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %19 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %i.084.i)
  %cmp5.i.i.i = icmp eq i32 %20, %i.084.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %21 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 3
  br i1 %cmp.i.i, label %dsa_is_user_port.exit.i.for.body.i38.i_crit_edge, label %dsa_is_user_port.exit.i.for.inc.i_crit_edge

dsa_is_user_port.exit.i.for.inc.i_crit_edge:      ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

dsa_is_user_port.exit.i.for.body.i38.i_crit_edge: ; preds = %dsa_is_user_port.exit.i
  br label %for.body.i38.i

dsa_is_user_port.exit.thread.i:                   ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 24)
  %24 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i80.i = icmp eq i32 %24, 3
  br i1 %cmp.i80.i, label %dsa_is_user_port.exit.thread.i.dsa_to_port.exit48.i_crit_edge, label %dsa_is_user_port.exit.thread.i.for.inc.i_crit_edge

dsa_is_user_port.exit.thread.i.for.inc.i_crit_edge: ; preds = %dsa_is_user_port.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

dsa_is_user_port.exit.thread.i.dsa_to_port.exit48.i_crit_edge: ; preds = %dsa_is_user_port.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit48.i

for.body.i38.i:                                   ; preds = %for.inc.i44.i.for.body.i38.i_crit_edge, %dsa_is_user_port.exit.i.for.body.i38.i_crit_edge
  %.pn22.i35.i = phi ptr [ %.pn.i42.i, %for.inc.i44.i.for.body.i38.i_crit_edge ], [ %.pn20.i.i.i, %dsa_is_user_port.exit.i.for.body.i38.i_crit_edge ]
  %ds3.i36.i = getelementptr i8, ptr %.pn22.i35.i, i32 -432
  %25 = ptrtoint ptr %ds3.i36.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ds3.i36.i, align 4
  %cmp4.i37.i = icmp eq ptr %26, %ds
  br i1 %cmp4.i37.i, label %land.lhs.true.i41.i, label %for.body.i38.i.for.inc.i44.i_crit_edge

for.body.i38.i.for.inc.i44.i_crit_edge:           ; preds = %for.body.i38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i44.i

land.lhs.true.i41.i:                              ; preds = %for.body.i38.i
  %index.i39.i = getelementptr i8, ptr %.pn22.i35.i, i32 -428
  %27 = ptrtoint ptr %index.i39.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %i.084.i)
  %cmp5.i40.i = icmp eq i32 %28, %i.084.i
  br i1 %cmp5.i40.i, label %cleanup.split.loop.exit18.i46.i, label %land.lhs.true.i41.i.for.inc.i44.i_crit_edge

land.lhs.true.i41.i.for.inc.i44.i_crit_edge:      ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i44.i

for.inc.i44.i:                                    ; preds = %land.lhs.true.i41.i.for.inc.i44.i_crit_edge, %for.body.i38.i.for.inc.i44.i_crit_edge
  %29 = ptrtoint ptr %.pn22.i35.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i42.i = load ptr, ptr %.pn22.i35.i, align 4
  %cmp.not.i43.i = icmp eq ptr %.pn.i42.i, %ports.i.i.i
  br i1 %cmp.not.i43.i, label %for.inc.i44.i.dsa_to_port.exit48.i_crit_edge, label %for.inc.i44.i.for.body.i38.i_crit_edge

for.inc.i44.i.for.body.i38.i_crit_edge:           ; preds = %for.inc.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i38.i

for.inc.i44.i.dsa_to_port.exit48.i_crit_edge:     ; preds = %for.inc.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit48.i

cleanup.split.loop.exit18.i46.i:                  ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i45.i = getelementptr i8, ptr %.pn22.i35.i, i32 -448
  br label %dsa_to_port.exit48.i

dsa_to_port.exit48.i:                             ; preds = %cleanup.split.loop.exit18.i46.i, %for.inc.i44.i.dsa_to_port.exit48.i_crit_edge, %dsa_is_user_port.exit.thread.i.dsa_to_port.exit48.i_crit_edge
  %retval.0.i47.i = phi ptr [ %dp.0.le.i45.i, %cleanup.split.loop.exit18.i46.i ], [ null, %dsa_is_user_port.exit.thread.i.dsa_to_port.exit48.i_crit_edge ], [ null, %for.inc.i44.i.dsa_to_port.exit48.i_crit_edge ]
  %ds1.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i47.i, i32 0, i32 4
  %30 = ptrtoint ptr %ds1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ds1.i.i, align 4
  %vlan_filtering_is_global.i.i = getelementptr inbounds %struct.dsa_switch, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %vlan_filtering_is_global.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i.i = load i16, ptr %vlan_filtering_is_global.i.i, align 4
  %33 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i49.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i49.i, label %dsa_port_is_vlan_filtering.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dsa_to_port.exit48.i
  %34 = and i16 %bf.load.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool6.i.not.i = icmp eq i16 %34, 0
  br i1 %tobool6.i.not.i, label %if.then.i.i.for.inc.i_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

dsa_port_is_vlan_filtering.exit.i:                ; preds = %dsa_to_port.exit48.i
  %vlan_filtering7.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i47.i, i32 0, i32 11
  %35 = ptrtoint ptr %vlan_filtering7.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load8.i.i = load i8, ptr %vlan_filtering7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i.i)
  %tobool10.i.i = icmp slt i8 %bf.load8.i.i, 0
  br i1 %tobool10.i.i, label %dsa_port_is_vlan_filtering.exit.i.if.end_crit_edge, label %dsa_port_is_vlan_filtering.exit.i.for.inc.i_crit_edge

dsa_port_is_vlan_filtering.exit.i.for.inc.i_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

dsa_port_is_vlan_filtering.exit.i.if.end_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.inc.i:                                        ; preds = %dsa_port_is_vlan_filtering.exit.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge, %dsa_is_user_port.exit.thread.i.for.inc.i_crit_edge, %dsa_is_user_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %if.then13.critedge.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then13.critedge.i:                             ; preds = %for.inc.i
  %ds14.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %ds14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds14.i, align 4
  %dst.i.i = getelementptr inbounds %struct.dsa_switch, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst.i.i, align 4
  %ports.i51.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ports.i51.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn19.i.i = load ptr, ptr %ports.i51.i, align 4
  %cmp.not20.i.i = icmp eq ptr %.pn19.i.i, %ports.i51.i
  br i1 %cmp.not20.i.i, label %if.then13.critedge.i.dsa_user_ports.exit.i_crit_edge, label %if.then13.critedge.i.for.body.i55.i_crit_edge

if.then13.critedge.i.for.body.i55.i_crit_edge:    ; preds = %if.then13.critedge.i
  br label %for.body.i55.i

if.then13.critedge.i.dsa_user_ports.exit.i_crit_edge: ; preds = %if.then13.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_user_ports.exit.i

for.body.i55.i:                                   ; preds = %for.inc.i60.i.for.body.i55.i_crit_edge, %if.then13.critedge.i.for.body.i55.i_crit_edge
  %.pn22.i52.i = phi ptr [ %.pn.i58.i, %for.inc.i60.i.for.body.i55.i_crit_edge ], [ %.pn19.i.i, %if.then13.critedge.i.for.body.i55.i_crit_edge ]
  %mask.021.i.i = phi i32 [ %mask.1.i.i, %for.inc.i60.i.for.body.i55.i_crit_edge ], [ 0, %if.then13.critedge.i.for.body.i55.i_crit_edge ]
  %ds3.i53.i = getelementptr i8, ptr %.pn22.i52.i, i32 -432
  %41 = ptrtoint ptr %ds3.i53.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ds3.i53.i, align 4
  %cmp4.i54.i = icmp eq ptr %42, %37
  br i1 %cmp4.i54.i, label %if.then.i56.i, label %for.body.i55.i.for.inc.i60.i_crit_edge

for.body.i55.i.for.inc.i60.i_crit_edge:           ; preds = %for.body.i55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i60.i

if.then.i56.i:                                    ; preds = %for.body.i55.i
  %type.i.i.i = getelementptr i8, ptr %.pn22.i52.i, i32 -424
  %43 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i.i.i = icmp eq i32 %44, 3
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.then.i56.i.for.inc.i60.i_crit_edge

if.then.i56.i.for.inc.i60.i_crit_edge:            ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i60.i

if.then5.i.i:                                     ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #15
  %index.i57.i = getelementptr i8, ptr %.pn22.i52.i, i32 -428
  %45 = ptrtoint ptr %index.i57.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i57.i, align 4
  %shl.i.i = shl nuw i32 1, %46
  %or.i.i = or i32 %shl.i.i, %mask.021.i.i
  br label %for.inc.i60.i

for.inc.i60.i:                                    ; preds = %if.then5.i.i, %if.then.i56.i.for.inc.i60.i_crit_edge, %for.body.i55.i.for.inc.i60.i_crit_edge
  %mask.1.i.i = phi i32 [ %or.i.i, %if.then5.i.i ], [ %mask.021.i.i, %if.then.i56.i.for.inc.i60.i_crit_edge ], [ %mask.021.i.i, %for.body.i55.i.for.inc.i60.i_crit_edge ]
  %47 = ptrtoint ptr %.pn22.i52.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i58.i = load ptr, ptr %.pn22.i52.i, align 4
  %cmp.not.i59.i = icmp eq ptr %.pn.i58.i, %ports.i51.i
  br i1 %cmp.not.i59.i, label %for.inc.i60.i.dsa_user_ports.exit.i_crit_edge, label %for.inc.i60.i.for.body.i55.i_crit_edge

for.inc.i60.i.for.body.i55.i_crit_edge:           ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i55.i

for.inc.i60.i.dsa_user_ports.exit.i_crit_edge:    ; preds = %for.inc.i60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_user_ports.exit.i

dsa_user_ports.exit.i:                            ; preds = %for.inc.i60.i.dsa_user_ports.exit.i_crit_edge, %if.then13.critedge.i.dsa_user_ports.exit.i_crit_edge
  %mask.0.lcssa.i.i = phi i32 [ 0, %if.then13.critedge.i.dsa_user_ports.exit.i_crit_edge ], [ %mask.1.i.i, %for.inc.i60.i.dsa_user_ports.exit.i_crit_edge ]
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %49, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %50 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus1.i.i, align 4
  %52 = trunc i32 %mask.0.lcssa.i.i to i16
  %conv8.i.i.i = and i16 %52, 255
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %51, i32 0, i32 5
  %53 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %54(ptr noundef %51, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 152) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i61.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i61.i, label %dsa_user_ports.exit.i.do.end.i.i.i_crit_edge, label %if.end.i.i.i

dsa_user_ports.exit.i.do.end.i.i.i_crit_edge:     ; preds = %dsa_user_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

if.end.i.i.i:                                     ; preds = %dsa_user_ports.exit.i
  %55 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write.i.i.i, align 8
  %call12.i.i.i = tail call i32 %56(ptr noundef %51, i32 noundef 31, i32 noundef 1, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call12.i.i.i, 0
  br i1 %cmp13.i.i.i, label %if.end.i.i.i.do.end.i.i.i_crit_edge, label %err.i.i.i

if.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

err.i.i.i:                                        ; preds = %if.end.i.i.i
  %57 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i.i, align 8
  %call18.i.i.i = tail call i32 %58(ptr noundef %51, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %cmp19.i.i.i = icmp slt i32 %call18.i.i.i, 0
  br i1 %cmp19.i.i.i, label %err.i.i.i.do.end.i.i.i_crit_edge, label %err.i.i.i.mt7530_write.exit.i_crit_edge

err.i.i.i.mt7530_write.exit.i_crit_edge:          ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit.i

err.i.i.i.do.end.i.i.i_crit_edge:                 ; preds = %err.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %err.i.i.i.do.end.i.i.i_crit_edge, %if.end.i.i.i.do.end.i.i.i_crit_edge, %dsa_user_ports.exit.i.do.end.i.i.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %51, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit.i

mt7530_write.exit.i:                              ; preds = %do.end.i.i.i, %err.i.i.i.mt7530_write.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %59 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i63.i = getelementptr inbounds %struct.mii_bus, ptr %60, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i63.i, i32 noundef 2) #13
  %61 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i64.i = getelementptr inbounds %struct.mii_bus, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %write.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i.i64.i, align 8
  %call.i.i65.i = tail call i32 %64(ptr noundef %62, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 152) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65.i)
  %cmp.i.i66.i = icmp slt i32 %call.i.i65.i, 0
  br i1 %cmp.i.i66.i, label %mt7530_write.exit.i.do.end.i.i74.i_crit_edge, label %if.end.i.i69.i

mt7530_write.exit.i.do.end.i.i74.i_crit_edge:     ; preds = %mt7530_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i74.i

if.end.i.i69.i:                                   ; preds = %mt7530_write.exit.i
  %65 = ptrtoint ptr %write.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write.i.i64.i, align 8
  %call12.i.i67.i = tail call i32 %66(ptr noundef %62, i32 noundef 31, i32 noundef 4, i16 noundef zeroext 288) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i67.i)
  %cmp13.i.i68.i = icmp slt i32 %call12.i.i67.i, 0
  br i1 %cmp13.i.i68.i, label %if.end.i.i69.i.do.end.i.i74.i_crit_edge, label %err.i.i72.i

if.end.i.i69.i.do.end.i.i74.i_crit_edge:          ; preds = %if.end.i.i69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i74.i

err.i.i72.i:                                      ; preds = %if.end.i.i69.i
  %67 = ptrtoint ptr %write.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write.i.i64.i, align 8
  %call18.i.i70.i = tail call i32 %68(ptr noundef %62, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i70.i)
  %cmp19.i.i71.i = icmp slt i32 %call18.i.i70.i, 0
  br i1 %cmp19.i.i71.i, label %err.i.i72.i.do.end.i.i74.i_crit_edge, label %err.i.i72.i.mt7530_write.exit75.i_crit_edge

err.i.i72.i.mt7530_write.exit75.i_crit_edge:      ; preds = %err.i.i72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit75.i

err.i.i72.i.do.end.i.i74.i_crit_edge:             ; preds = %err.i.i72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i74.i

do.end.i.i74.i:                                   ; preds = %err.i.i72.i.do.end.i.i74.i_crit_edge, %if.end.i.i69.i.do.end.i.i74.i_crit_edge, %mt7530_write.exit.i.do.end.i.i74.i_crit_edge
  %dev.i.i73.i = getelementptr inbounds %struct.mii_bus, ptr %62, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i73.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit75.i

mt7530_write.exit75.i:                            ; preds = %do.end.i.i74.i, %err.i.i72.i.mt7530_write.exit75.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i63.i) #13
  br label %if.end

if.end:                                           ; preds = %mt7530_write.exit75.i, %dsa_port_is_vlan_filtering.exit.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_vlan_add(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %new_entry = alloca %struct.mt7530_hw_vlan_entry, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool4.not = icmp eq i16 %2, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_entry) #13
  %3 = ptrtoint ptr %new_entry to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %new_entry, align 8, !annotation !432
  %priv6 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %4 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv6, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %5, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %6 = trunc i16 %1 to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %new_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %port, ptr %new_entry, align 8
  %untagged2.i = getelementptr inbounds %struct.mt7530_hw_vlan_entry, ptr %new_entry, i32 0, i32 2
  %10 = ptrtoint ptr %untagged2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %untagged2.i, align 1
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %11 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid, align 2
  call fastcc void @mt7530_hw_vlan_update(ptr noundef %5, i16 noundef zeroext %12, ptr noundef nonnull %new_entry, ptr noundef nonnull @mt7530_hw_vlan_add)
  %13 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid, align 2
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pvid10 = getelementptr %struct.mt7530_priv, ptr %5, i32 0, i32 15, i32 %port, i32 2
  %15 = ptrtoint ptr %pvid10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %pvid10, align 4
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 8208
  call fastcc void @mt7530_rmw(ptr noundef %5, i32 noundef %add, i32 noundef 3, i32 noundef 0)
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %16 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %if.then.dsa_to_port.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.dsa_to_port.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.then.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %19 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %20, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %port)
  %cmp5.i = icmp eq i32 %22, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %if.then.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %if.then.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %vlan_filtering_is_global.i, align 4
  %27 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i, label %dsa_port_is_vlan_filtering.exit, label %if.then.i

if.then.i:                                        ; preds = %dsa_to_port.exit
  %28 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool6.i.not = icmp eq i16 %28, 0
  br i1 %tobool6.i.not, label %if.then.i.if.end41_crit_edge, label %if.then.i.if.then12_crit_edge

if.then.i.if.then12_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then.i.if.end41_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

dsa_port_is_vlan_filtering.exit:                  ; preds = %dsa_to_port.exit
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %29 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br i1 %tobool10.i, label %dsa_port_is_vlan_filtering.exit.if.then12_crit_edge, label %dsa_port_is_vlan_filtering.exit.if.end41_crit_edge

dsa_port_is_vlan_filtering.exit.if.end41_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

dsa_port_is_vlan_filtering.exit.if.then12_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then12:                                        ; preds = %dsa_port_is_vlan_filtering.exit.if.then12_crit_edge, %if.then.i.if.then12_crit_edge
  %add14 = add i32 %mul, 8212
  %30 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vid, align 2
  %32 = and i16 %31, 4095
  %and17 = zext i16 %32 to i32
  call fastcc void @mt7530_rmw(ptr noundef %5, i32 noundef %add14, i32 noundef 4095, i32 noundef %and17)
  br label %if.end41

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool20.not = icmp eq i16 %14, 0
  br i1 %tobool20.not, label %if.else.if.end41_crit_edge, label %land.lhs.true

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true:                                    ; preds = %if.else
  %pvid23 = getelementptr %struct.mt7530_priv, ptr %5, i32 0, i32 15, i32 %port, i32 2
  %33 = ptrtoint ptr %pvid23 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pvid23, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %14)
  %cmp = icmp eq i16 %34, %14
  br i1 %cmp, label %if.then28, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then28:                                        ; preds = %land.lhs.true
  %35 = ptrtoint ptr %pvid23 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %pvid23, align 4
  %dst1.i70 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %36 = ptrtoint ptr %dst1.i70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst1.i70, align 4
  %ports.i71 = getelementptr inbounds %struct.dsa_switch_tree, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ports.i71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn20.i72 = load ptr, ptr %ports.i71, align 4
  %cmp.not21.i73 = icmp eq ptr %.pn20.i72, %ports.i71
  br i1 %cmp.not21.i73, label %if.then28.dsa_to_port.exit87_crit_edge, label %if.then28.for.body.i77_crit_edge

if.then28.for.body.i77_crit_edge:                 ; preds = %if.then28
  br label %for.body.i77

if.then28.dsa_to_port.exit87_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit87

for.body.i77:                                     ; preds = %for.inc.i83.for.body.i77_crit_edge, %if.then28.for.body.i77_crit_edge
  %.pn22.i74 = phi ptr [ %.pn.i81, %for.inc.i83.for.body.i77_crit_edge ], [ %.pn20.i72, %if.then28.for.body.i77_crit_edge ]
  %ds3.i75 = getelementptr i8, ptr %.pn22.i74, i32 -432
  %39 = ptrtoint ptr %ds3.i75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ds3.i75, align 4
  %cmp4.i76 = icmp eq ptr %40, %ds
  br i1 %cmp4.i76, label %land.lhs.true.i80, label %for.body.i77.for.inc.i83_crit_edge

for.body.i77.for.inc.i83_crit_edge:               ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i83

land.lhs.true.i80:                                ; preds = %for.body.i77
  %index.i78 = getelementptr i8, ptr %.pn22.i74, i32 -428
  %41 = ptrtoint ptr %index.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index.i78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %port)
  %cmp5.i79 = icmp eq i32 %42, %port
  br i1 %cmp5.i79, label %cleanup.split.loop.exit18.i85, label %land.lhs.true.i80.for.inc.i83_crit_edge

land.lhs.true.i80.for.inc.i83_crit_edge:          ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i83

for.inc.i83:                                      ; preds = %land.lhs.true.i80.for.inc.i83_crit_edge, %for.body.i77.for.inc.i83_crit_edge
  %43 = ptrtoint ptr %.pn22.i74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i81 = load ptr, ptr %.pn22.i74, align 4
  %cmp.not.i82 = icmp eq ptr %.pn.i81, %ports.i71
  br i1 %cmp.not.i82, label %for.inc.i83.dsa_to_port.exit87_crit_edge, label %for.inc.i83.for.body.i77_crit_edge

for.inc.i83.for.body.i77_crit_edge:               ; preds = %for.inc.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i77

for.inc.i83.dsa_to_port.exit87_crit_edge:         ; preds = %for.inc.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit87

cleanup.split.loop.exit18.i85:                    ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i84 = getelementptr i8, ptr %.pn22.i74, i32 -448
  br label %dsa_to_port.exit87

dsa_to_port.exit87:                               ; preds = %cleanup.split.loop.exit18.i85, %for.inc.i83.dsa_to_port.exit87_crit_edge, %if.then28.dsa_to_port.exit87_crit_edge
  %retval.0.i86 = phi ptr [ %dp.0.le.i84, %cleanup.split.loop.exit18.i85 ], [ null, %if.then28.dsa_to_port.exit87_crit_edge ], [ null, %for.inc.i83.dsa_to_port.exit87_crit_edge ]
  %ds1.i88 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i86, i32 0, i32 4
  %44 = ptrtoint ptr %ds1.i88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ds1.i88, align 4
  %vlan_filtering_is_global.i89 = getelementptr inbounds %struct.dsa_switch, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %vlan_filtering_is_global.i89 to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load.i90 = load i16, ptr %vlan_filtering_is_global.i89, align 4
  %47 = and i16 %bf.load.i90, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i91 = icmp eq i16 %47, 0
  br i1 %tobool.not.i91, label %dsa_port_is_vlan_filtering.exit99, label %if.then.i93

if.then.i93:                                      ; preds = %dsa_to_port.exit87
  %48 = and i16 %bf.load.i90, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool6.i92.not = icmp eq i16 %48, 0
  br i1 %tobool6.i92.not, label %if.then.i93.if.end37_crit_edge, label %if.then.i93.if.then34_crit_edge

if.then.i93.if.then34_crit_edge:                  ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.then.i93.if.end37_crit_edge:                   ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

dsa_port_is_vlan_filtering.exit99:                ; preds = %dsa_to_port.exit87
  %vlan_filtering7.i94 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i86, i32 0, i32 11
  %49 = ptrtoint ptr %vlan_filtering7.i94 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load8.i95 = load i8, ptr %vlan_filtering7.i94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i95)
  %tobool10.i96 = icmp slt i8 %bf.load8.i95, 0
  br i1 %tobool10.i96, label %dsa_port_is_vlan_filtering.exit99.if.then34_crit_edge, label %dsa_port_is_vlan_filtering.exit99.if.end37_crit_edge

dsa_port_is_vlan_filtering.exit99.if.end37_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

dsa_port_is_vlan_filtering.exit99.if.then34_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.then34:                                        ; preds = %dsa_port_is_vlan_filtering.exit99.if.then34_crit_edge, %if.then.i93.if.then34_crit_edge
  %mul35 = shl i32 %port, 8
  %add36 = add i32 %mul35, 8208
  call fastcc void @mt7530_rmw(ptr noundef %5, i32 noundef %add36, i32 noundef 3, i32 noundef 1)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %dsa_port_is_vlan_filtering.exit99.if.end37_crit_edge, %if.then.i93.if.end37_crit_edge
  %mul38 = shl i32 %port, 8
  %add39 = add i32 %mul38, 8212
  call fastcc void @mt7530_rmw(ptr noundef %5, i32 noundef %add39, i32 noundef 4095, i32 noundef 0)
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %land.lhs.true.if.end41_crit_edge, %if.else.if.end41_crit_edge, %if.then12, %dsa_port_is_vlan_filtering.exit.if.end41_crit_edge, %if.then.i.if.end41_crit_edge
  call void @mutex_unlock(ptr noundef %reg_mutex) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_entry) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_vlan_del(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #2 align 64 {
entry:
  %target_entry = alloca %struct.mt7530_hw_vlan_entry, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_entry) #13
  %0 = ptrtoint ptr %target_entry to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -16711681, ptr %target_entry, align 8, !annotation !432
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %2, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %3 = ptrtoint ptr %target_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %port, ptr %target_entry, align 8
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 2
  call fastcc void @mt7530_hw_vlan_update(ptr noundef %2, i16 noundef zeroext %5, ptr noundef nonnull %target_entry, ptr noundef nonnull @mt7530_hw_vlan_del)
  %pvid = getelementptr %struct.mt7530_priv, ptr %2, i32 0, i32 15, i32 %port, i32 2
  %6 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pvid, align 4
  %8 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp = icmp eq i16 %7, %9
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %pvid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %pvid, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %11 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %if.then.dsa_to_port.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.dsa_to_port.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.then.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %14 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %15, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %port)
  %cmp5.i = icmp eq i32 %17, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %if.then.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %if.then.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 4
  %19 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %vlan_filtering_is_global.i, align 4
  %22 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %dsa_port_is_vlan_filtering.exit, label %if.then.i

if.then.i:                                        ; preds = %dsa_to_port.exit
  %23 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool6.i.not = icmp eq i16 %23, 0
  br i1 %tobool6.i.not, label %if.then.i.if.end_crit_edge, label %if.then.i.if.then9_crit_edge

if.then.i.if.then9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

dsa_port_is_vlan_filtering.exit:                  ; preds = %dsa_to_port.exit
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %24 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br i1 %tobool10.i, label %dsa_port_is_vlan_filtering.exit.if.then9_crit_edge, label %dsa_port_is_vlan_filtering.exit.if.end_crit_edge

dsa_port_is_vlan_filtering.exit.if.end_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

dsa_port_is_vlan_filtering.exit.if.then9_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %dsa_port_is_vlan_filtering.exit.if.then9_crit_edge, %if.then.i.if.then9_crit_edge
  %mul = shl i32 %port, 8
  %add = add i32 %mul, 8208
  call fastcc void @mt7530_rmw(ptr noundef %2, i32 noundef %add, i32 noundef 3, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then9, %dsa_port_is_vlan_filtering.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %mul10 = shl i32 %port, 8
  %add11 = add i32 %mul10, 8212
  call fastcc void @mt7530_rmw(ptr noundef %2, i32 noundef %add11, i32 noundef 4095, i32 noundef 0)
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  call void @mutex_unlock(ptr noundef %reg_mutex) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_entry) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %shl = shl nuw i32 1, %port
  %conv = trunc i32 %shl to i8
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  tail call fastcc void @mt7530_fdb_write(ptr noundef %1, i16 noundef zeroext %vid, i8 noundef zeroext %conv, ptr noundef %addr, i8 noundef zeroext -1, i8 noundef zeroext 3)
  %call = tail call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 1, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %shl = shl nuw i32 1, %port
  %conv = trunc i32 %shl to i8
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  tail call fastcc void @mt7530_fdb_write(ptr noundef %1, i16 noundef zeroext %vid, i8 noundef zeroext %conv, ptr noundef %addr, i8 noundef zeroext -1, i8 noundef zeroext 0)
  %call = tail call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 1, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_fdb_dump(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %cb, ptr noundef %data) #2 align 64 {
entry:
  %_fdb = alloca %struct.mt7530_fdb, align 2
  %rsp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_fdb) #13
  %2 = call ptr @memset(ptr %_fdb, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp) #13
  %3 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rsp, align 4
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %call = call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %rsp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_crit_edge, label %do.body.preheader

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

do.body.preheader:                                ; preds = %entry
  %mac = getelementptr inbounds %struct.mt7530_fdb, ptr %_fdb, i32 0, i32 3
  %port_mask = getelementptr inbounds %struct.mt7530_fdb, ptr %_fdb, i32 0, i32 1
  %shl = shl nuw i32 1, %port
  %noarp = getelementptr inbounds %struct.mt7530_fdb, ptr %_fdb, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %cnt.0 = phi i32 [ %dec, %land.rhs.do.body_crit_edge ], [ 2048, %do.body.preheader ]
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsp, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.cond_crit_edge, label %if.then2

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

if.then2:                                         ; preds = %do.body
  call fastcc void @mt7530_fdb_read(ptr noundef %1, ptr noundef nonnull %_fdb)
  %6 = ptrtoint ptr %port_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_mask, align 2
  %conv = zext i8 %7 to i32
  %and3 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.do.cond_crit_edge, label %if.then5

if.then2.do.cond_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

if.then5:                                         ; preds = %if.then2
  %8 = ptrtoint ptr %_fdb to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %_fdb, align 2
  %10 = ptrtoint ptr %noarp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %noarp, align 2, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6 = icmp ne i8 %11, 0
  %call7 = call i32 %cb(ptr noundef %mac, i16 noundef zeroext %9, i1 noundef zeroext %tobool6, ptr noundef %data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then5.err_crit_edge, label %if.then5.do.cond_crit_edge

if.then5.do.cond_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

do.cond:                                          ; preds = %if.then5.do.cond_crit_edge, %if.then2.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %dec = add nsw i32 %cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool14.not = icmp eq i32 %dec, 0
  br i1 %tobool14.not, label %do.cond.err_crit_edge, label %land.lhs.true

do.cond.err_crit_edge:                            ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

land.lhs.true:                                    ; preds = %do.cond
  %12 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rsp, align 4
  %and15 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.rhs, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

land.rhs:                                         ; preds = %land.lhs.true
  %call17 = call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %rsp)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.rhs.do.body_crit_edge, label %land.rhs.err_crit_edge

land.rhs.err_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

err:                                              ; preds = %land.rhs.err_crit_edge, %land.lhs.true.err_crit_edge, %do.cond.err_crit_edge, %if.then5.err_crit_edge, %entry.err_crit_edge
  call void @mutex_unlock(ptr noundef %reg_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_fdb) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_mdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mdb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  tail call fastcc void @mt7530_fdb_write(ptr noundef %1, i16 noundef zeroext %3, i8 noundef zeroext 0, ptr noundef %addr2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %call = tail call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %6 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %9(ptr noundef %7, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %11(ptr noundef %7, i32 noundef 31, i32 noundef 3) #13
  %12 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %13(ptr noundef %7, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv13.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %shr = lshr i32 %retval.0.i.i.i, 4
  %phi.cast = and i32 %shr, 255
  br label %if.end

if.end:                                           ; preds = %mt7530_read.exit, %entry.if.end_crit_edge
  %port_mask.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %phi.cast, %mt7530_read.exit ]
  %shl = shl nuw i32 1, %port
  %or = or i32 %port_mask.0, %shl
  %conv6 = trunc i32 %or to i8
  tail call fastcc void @mt7530_fdb_write(ptr noundef %1, i16 noundef zeroext %3, i8 noundef zeroext %conv6, ptr noundef %addr2, i8 noundef zeroext -1, i8 noundef zeroext 3)
  %call7 = tail call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 1, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_mdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mdb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %reg_mutex = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  tail call fastcc void @mt7530_fdb_write(ptr noundef %1, i16 noundef zeroext %3, i8 noundef zeroext 0, ptr noundef %addr2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %call = tail call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %6 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %9(ptr noundef %7, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %11(ptr noundef %7, i32 noundef 31, i32 noundef 3) #13
  %12 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %13(ptr noundef %7, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv13.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %shr = lshr i32 %retval.0.i.i.i, 4
  %phi.cast = and i32 %shr, 255
  br label %if.end

if.end:                                           ; preds = %mt7530_read.exit, %entry.if.end_crit_edge
  %port_mask.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %phi.cast, %mt7530_read.exit ]
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %and6 = and i32 %port_mask.0, %neg
  %conv7 = trunc i32 %and6 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool9.not = icmp eq i32 %and6, 0
  %conv10 = select i1 %tobool9.not, i8 0, i8 3
  tail call fastcc void @mt7530_fdb_write(ptr noundef %1, i16 noundef zeroext %3, i8 noundef zeroext %conv7, ptr noundef %addr2, i8 noundef zeroext -1, i8 noundef zeroext %conv10)
  %call11 = tail call fastcc i32 @mt7530_fdb_cmd(ptr noundef %1, i32 noundef 1, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt753x_port_mirror_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror, i1 noundef zeroext %ingress) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %mirror_rx = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 13
  %mirror_tx = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 14
  %cond.in.in = select i1 %ingress, ptr %mirror_rx, ptr %mirror_tx
  %2 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %cond.in = load i8, ptr %cond.in.in, align 1
  %cond = zext i8 %cond.in to i32
  %shl = shl nuw i32 1, %port
  %and = and i32 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %7 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %10(ptr noundef %8, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  %cond5 = select i1 %cmp, i32 1, i32 4
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %12(ptr noundef %8, i32 noundef 31, i32 noundef %cond5) #13
  %13 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %14(ptr noundef %8, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.i = icmp eq i32 %16, 2
  %cond11 = select i1 %cmp.i, i32 524288, i32 8
  %and12 = and i32 %cond11, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %mt7530_read.exit.if.end18_crit_edge, label %land.lhs.true

mt7530_read.exit.if.end18_crit_edge:              ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true:                                    ; preds = %mt7530_read.exit
  %shr.i = lshr i32 %retval.0.i.i.i, 16
  %cond.in.i = select i1 %cmp.i, i32 %shr.i, i32 %retval.0.i.i.i
  %cond.i = and i32 %cond.in.i, 7
  %17 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mirror, align 1
  %conv14 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv14)
  %cmp15.not = icmp eq i32 %cond.i, %conv14
  br i1 %cmp15.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %mt7530_read.exit.if.end18_crit_edge
  %or = or i32 %cond11, %retval.0.i.i.i
  %neg = select i1 %cmp.i, i32 -458753, i32 -8
  %and27 = and i32 %or, %neg
  %19 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mirror, align 1
  %conv30 = zext i8 %20 to i32
  %and.i = shl nuw nsw i32 %conv30, 16
  %shl.i = and i32 %and.i, 458752
  %and1.i = and i32 %conv30, 7
  %cond.i86 = select i1 %cmp.i, i32 %shl.i, i32 %and1.i
  %or32 = or i32 %cond.i86, %and27
  %21 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %23 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i = lshr i32 %or32, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %26(ptr noundef %24, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end18.do.end.i.i_crit_edge, label %if.end.i.i

if.end18.do.end.i.i_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end18
  %cond36 = select i1 %cmp.i, i32 1, i32 4
  %conv6.i.i = trunc i32 %or32 to i16
  %27 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %28(ptr noundef %24, i32 noundef 31, i32 noundef %cond36, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %29 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %30(ptr noundef %24, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.end18.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %31 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i88 = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i88, i32 noundef 2) #13
  %33 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus1.i.i, align 4
  %port.tr = trunc i32 %port to i16
  %35 = shl i16 %port.tr, 8
  %36 = add i16 %35, 8196
  %37 = lshr i16 %36, 6
  %write.i.i.i89 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 5
  %38 = ptrtoint ptr %write.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i.i.i89, align 8
  %call.i.i.i90 = tail call i32 %39(ptr noundef %34, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i90)
  %cmp.i.i.i91 = icmp slt i32 %call.i.i.i90, 0
  br i1 %cmp.i.i.i91, label %do.end.i.i.i93, label %if.end.i.i.i101

do.end.i.i.i93:                                   ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i92 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i92, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit103

if.end.i.i.i101:                                  ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i95 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 4
  %40 = ptrtoint ptr %read.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read.i.i.i95, align 4
  %call7.i.i.i96 = tail call i32 %41(ptr noundef %34, i32 noundef 31, i32 noundef 1) #13
  %42 = ptrtoint ptr %read.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i.i.i95, align 4
  %call10.i.i.i97 = tail call i32 %43(ptr noundef %34, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i98 = shl i32 %call10.i.i.i97, 16
  %conv13.i.i.i99 = and i32 %call7.i.i.i96, 65535
  %or.i.i.i100 = or i32 %shl.i.i.i98, %conv13.i.i.i99
  br label %mt7530_read.exit103

mt7530_read.exit103:                              ; preds = %if.end.i.i.i101, %do.end.i.i.i93
  %retval.0.i.i.i102 = phi i32 [ %call.i.i.i90, %do.end.i.i.i93 ], [ %or.i.i.i100, %if.end.i.i.i101 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i88) #13
  br i1 %ingress, label %if.then39, label %if.else

if.then39:                                        ; preds = %mt7530_read.exit103
  call void @__sanitizer_cov_trace_pc() #15
  %or40 = or i32 %retval.0.i.i.i102, 256
  %44 = ptrtoint ptr %mirror_rx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mirror_rx, align 4
  %46 = trunc i32 %shl to i8
  %conv45 = or i8 %45, %46
  store i8 %conv45, ptr %mirror_rx, align 4
  br label %if.end52

if.else:                                          ; preds = %mt7530_read.exit103
  call void @__sanitizer_cov_trace_pc() #15
  %or46 = or i32 %retval.0.i.i.i102, 512
  %47 = ptrtoint ptr %mirror_tx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mirror_tx, align 1
  %49 = trunc i32 %shl to i8
  %conv51 = or i8 %48, %49
  store i8 %conv51, ptr %mirror_tx, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then39
  %val.0 = phi i32 [ %or40, %if.then39 ], [ %or46, %if.else ]
  %50 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i105 = getelementptr inbounds %struct.mii_bus, ptr %51, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i105, i32 noundef 2) #13
  %52 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i106 = lshr i32 %val.0, 16
  %conv8.i.i107 = trunc i32 %shr7.i.i106 to i16
  %write.i.i108 = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write.i.i108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i.i108, align 8
  %call.i.i109 = tail call i32 %55(ptr noundef %53, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %cmp.i.i110 = icmp slt i32 %call.i.i109, 0
  br i1 %cmp.i.i110, label %if.end52.do.end.i.i120_crit_edge, label %if.end.i.i115

if.end52.do.end.i.i120_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i120

if.end.i.i115:                                    ; preds = %if.end52
  %conv6.i.i111 = trunc i32 %val.0 to i16
  %56 = ptrtoint ptr %write.i.i108 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write.i.i108, align 8
  %call12.i.i113 = tail call i32 %57(ptr noundef %53, i32 noundef 31, i32 noundef 1, i16 noundef zeroext %conv6.i.i111) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i113)
  %cmp13.i.i114 = icmp slt i32 %call12.i.i113, 0
  br i1 %cmp13.i.i114, label %if.end.i.i115.do.end.i.i120_crit_edge, label %err.i.i118

if.end.i.i115.do.end.i.i120_crit_edge:            ; preds = %if.end.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i120

err.i.i118:                                       ; preds = %if.end.i.i115
  %58 = ptrtoint ptr %write.i.i108 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i.i108, align 8
  %call18.i.i116 = tail call i32 %59(ptr noundef %53, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i107) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i116)
  %cmp19.i.i117 = icmp slt i32 %call18.i.i116, 0
  br i1 %cmp19.i.i117, label %err.i.i118.do.end.i.i120_crit_edge, label %err.i.i118.mt7530_write.exit121_crit_edge

err.i.i118.mt7530_write.exit121_crit_edge:        ; preds = %err.i.i118
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit121

err.i.i118.do.end.i.i120_crit_edge:               ; preds = %err.i.i118
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i120

do.end.i.i120:                                    ; preds = %err.i.i118.do.end.i.i120_crit_edge, %if.end.i.i115.do.end.i.i120_crit_edge, %if.end52.do.end.i.i120_crit_edge
  %dev.i.i119 = getelementptr inbounds %struct.mii_bus, ptr %53, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i119, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit121

mt7530_write.exit121:                             ; preds = %do.end.i.i120, %err.i.i118.mt7530_write.exit121_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i105) #13
  br label %cleanup

cleanup:                                          ; preds = %mt7530_write.exit121, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt7530_write.exit121 ], [ -17, %entry.cleanup_crit_edge ], [ -17, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt753x_port_mirror_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %mirror) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %port.tr = trunc i32 %port to i16
  %6 = shl i16 %port.tr, 8
  %7 = add i16 %6, 8196
  %8 = lshr i16 %7, 6
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %10(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %12(ptr noundef %5, i32 noundef 31, i32 noundef 1) #13
  %13 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %14(ptr noundef %5, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %ingress = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, ptr %mirror, i32 0, i32 1
  %15 = ptrtoint ptr %ingress to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ingress, align 1, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %retval.0.i.i.i, -257
  %shl = shl nuw i32 1, %port
  %mirror_rx = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %mirror_rx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mirror_rx, align 4
  %19 = trunc i32 %shl to i8
  %20 = xor i8 %19, -1
  %conv3 = and i8 %18, %20
  store i8 %conv3, ptr %mirror_rx, align 4
  br label %if.end

if.else:                                          ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and4 = and i32 %retval.0.i.i.i, -513
  %shl5 = shl nuw i32 1, %port
  %mirror_tx = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %mirror_tx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mirror_tx, align 1
  %23 = trunc i32 %shl5 to i8
  %24 = xor i8 %23, -1
  %conv9 = and i8 %22, %24
  store i8 %conv9, ptr %mirror_tx, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %and, %if.then ], [ %and4, %if.else ]
  %25 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %27 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i = lshr i32 %val.0, 16
  %conv8.i.i = trunc i32 %shr7.i.i to i16
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %30(ptr noundef %28, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.do.end.i.i_crit_edge, label %if.end.i.i

if.end.do.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.end
  %conv6.i.i = trunc i32 %val.0 to i16
  %31 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %32(ptr noundef %28, i32 noundef 31, i32 noundef 1, i16 noundef zeroext %conv6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %33 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %34(ptr noundef %28, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.end.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %mirror_rx12 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %mirror_rx12 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mirror_rx12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool13.not = icmp eq i8 %36, 0
  br i1 %tobool13.not, label %land.lhs.true, label %mt7530_write.exit.if.end29_crit_edge

mt7530_write.exit.if.end29_crit_edge:             ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %mt7530_write.exit
  %mirror_tx14 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %mirror_tx14 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mirror_tx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool15.not = icmp eq i8 %38, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then16:                                        ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %41 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i48 = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i48, i32 noundef 2) #13
  %43 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i49 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %write.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write.i.i.i49, align 8
  %call.i.i.i50 = tail call i32 %46(ptr noundef %44, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i50)
  %cmp.i.i.i51 = icmp slt i32 %call.i.i.i50, 0
  br i1 %cmp.i.i.i51, label %do.end.i.i.i53, label %if.end.i.i.i61

do.end.i.i.i53:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i52 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i52, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit63

if.end.i.i.i61:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp = icmp eq i32 %40, 2
  %cond = select i1 %cmp, i32 1, i32 4
  %read.i.i.i55 = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %read.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read.i.i.i55, align 4
  %call7.i.i.i56 = tail call i32 %48(ptr noundef %44, i32 noundef 31, i32 noundef %cond) #13
  %49 = ptrtoint ptr %read.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read.i.i.i55, align 4
  %call10.i.i.i57 = tail call i32 %50(ptr noundef %44, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i58 = shl i32 %call10.i.i.i57, 16
  %conv13.i.i.i59 = and i32 %call7.i.i.i56, 65535
  %or.i.i.i60 = or i32 %shl.i.i.i58, %conv13.i.i.i59
  br label %mt7530_read.exit63

mt7530_read.exit63:                               ; preds = %if.end.i.i.i61, %do.end.i.i.i53
  %retval.0.i.i.i62 = phi i32 [ %call.i.i.i50, %do.end.i.i.i53 ], [ %or.i.i.i60, %if.end.i.i.i61 ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i48) #13
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp20 = icmp eq i32 %52, 2
  %neg23 = select i1 %cmp20, i32 -524289, i32 -9
  %and24 = and i32 %neg23, %retval.0.i.i.i62
  %53 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i65 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i65, i32 noundef 2) #13
  %55 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus1.i.i, align 4
  %shr7.i.i66 = lshr i32 %and24, 16
  %conv8.i.i67 = trunc i32 %shr7.i.i66 to i16
  %write.i.i68 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %write.i.i68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i68, align 8
  %call.i.i69 = tail call i32 %58(ptr noundef %56, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69)
  %cmp.i.i70 = icmp slt i32 %call.i.i69, 0
  br i1 %cmp.i.i70, label %mt7530_read.exit63.do.end.i.i80_crit_edge, label %if.end.i.i75

mt7530_read.exit63.do.end.i.i80_crit_edge:        ; preds = %mt7530_read.exit63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i80

if.end.i.i75:                                     ; preds = %mt7530_read.exit63
  %cond28 = select i1 %cmp20, i32 1, i32 4
  %conv6.i.i71 = trunc i32 %and24 to i16
  %59 = ptrtoint ptr %write.i.i68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i.i68, align 8
  %call12.i.i73 = tail call i32 %60(ptr noundef %56, i32 noundef 31, i32 noundef %cond28, i16 noundef zeroext %conv6.i.i71) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i73)
  %cmp13.i.i74 = icmp slt i32 %call12.i.i73, 0
  br i1 %cmp13.i.i74, label %if.end.i.i75.do.end.i.i80_crit_edge, label %err.i.i78

if.end.i.i75.do.end.i.i80_crit_edge:              ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i80

err.i.i78:                                        ; preds = %if.end.i.i75
  %61 = ptrtoint ptr %write.i.i68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write.i.i68, align 8
  %call18.i.i76 = tail call i32 %62(ptr noundef %56, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i67) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i76)
  %cmp19.i.i77 = icmp slt i32 %call18.i.i76, 0
  br i1 %cmp19.i.i77, label %err.i.i78.do.end.i.i80_crit_edge, label %err.i.i78.mt7530_write.exit81_crit_edge

err.i.i78.mt7530_write.exit81_crit_edge:          ; preds = %err.i.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit81

err.i.i78.do.end.i.i80_crit_edge:                 ; preds = %err.i.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i80

do.end.i.i80:                                     ; preds = %err.i.i78.do.end.i.i80_crit_edge, %if.end.i.i75.do.end.i.i80_crit_edge, %mt7530_read.exit63.do.end.i.i80_crit_edge
  %dev.i.i79 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i79, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit81

mt7530_write.exit81:                              ; preds = %do.end.i.i80, %err.i.i78.mt7530_write.exit81_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i65) #13
  br label %if.end29

if.end29:                                         ; preds = %mt7530_write.exit81, %land.lhs.true.if.end29_crit_edge, %mt7530_write.exit.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_port_change_mtu(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %bus2 = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus2, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_cpu_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_cpu_port.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %7 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %8, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %port)
  %cmp5.i.i = icmp eq i32 %10, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %entry.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.end, label %dsa_is_cpu_port.exit.cleanup_crit_edge

dsa_is_cpu_port.exit.cleanup_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dsa_is_cpu_port.exit
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  %14 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus2, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %17(ptr noundef %15, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 195) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i41 = icmp slt i32 %call.i, 0
  br i1 %cmp.i41, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_mii_read.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %call7.i = tail call i32 %19(ptr noundef %15, i32 noundef 31, i32 noundef 8) #13
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %call10.i = tail call i32 %21(ptr noundef %15, i32 noundef 31, i32 noundef 16) #13
  %shl.i = shl i32 %call10.i, 16
  %conv13.i = and i32 %call7.i, 65535
  %or.i = or i32 %shl.i, %conv13.i
  br label %mt7530_mii_read.exit

mt7530_mii_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %or.i, %if.end.i ]
  %and = and i32 %retval.0.i, -4
  %add5 = add i32 %new_mtu, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1523, i32 %add5)
  %cmp = icmp slt i32 %add5, 1523
  br i1 %cmp, label %mt7530_mii_read.exit.if.end21_crit_edge, label %if.else

mt7530_mii_read.exit.if.end21_crit_edge:          ; preds = %mt7530_mii_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.else:                                          ; preds = %mt7530_mii_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1537, i32 %add5)
  %cmp7 = icmp ult i32 %add5, 1537
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %or9 = or i32 %and, 1
  br label %if.end21

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1553, i32 %add5)
  %cmp11 = icmp ult i32 %add5, 1553
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  %or13 = or i32 %and, 2
  br label %if.end21

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  %and15 = and i32 %retval.0.i, -64
  %sub = add nuw i32 %new_mtu, 1045
  %div = sdiv i32 %sub, 1024
  %shl = shl nsw i32 %div, 2
  %or17 = or i32 %shl, %and15
  %or18 = or i32 %or17, 3
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %if.then12, %if.then8, %mt7530_mii_read.exit.if.end21_crit_edge
  %val.0 = phi i32 [ %or9, %if.then8 ], [ %or13, %if.then12 ], [ %or18, %if.else14 ], [ %and, %mt7530_mii_read.exit.if.end21_crit_edge ]
  %22 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus2, align 4
  %shr7.i = lshr i32 %val.0, 16
  %conv8.i = trunc i32 %shr7.i to i16
  %write.i43 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i43, align 8
  %call.i44 = tail call i32 %25(ptr noundef %23, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 195) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i45 = icmp slt i32 %call.i44, 0
  br i1 %cmp.i45, label %if.end21.do.end.i48_crit_edge, label %if.end.i46

if.end21.do.end.i48_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i48

if.end.i46:                                       ; preds = %if.end21
  %conv6.i = trunc i32 %val.0 to i16
  %26 = ptrtoint ptr %write.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i43, align 8
  %call12.i = tail call i32 %27(ptr noundef %23, i32 noundef 31, i32 noundef 8, i16 noundef zeroext %conv6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i46.do.end.i48_crit_edge, label %err.i

if.end.i46.do.end.i48_crit_edge:                  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i48

err.i:                                            ; preds = %if.end.i46
  %28 = ptrtoint ptr %write.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i43, align 8
  %call18.i = tail call i32 %29(ptr noundef %23, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %err.i.do.end.i48_crit_edge, label %err.i.mt7530_mii_write.exit_crit_edge

err.i.mt7530_mii_write.exit_crit_edge:            ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit

err.i.do.end.i48_crit_edge:                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i48

do.end.i48:                                       ; preds = %err.i.do.end.i48_crit_edge, %if.end.i46.do.end.i48_crit_edge, %if.end21.do.end.i48_crit_edge
  %dev.i47 = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit

mt7530_mii_write.exit:                            ; preds = %do.end.i48, %err.i.mt7530_mii_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %mt7530_mii_write.exit, %dsa_is_cpu_port.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt7530_port_max_mtu(ptr nocapture noundef readnone %ds, i32 noundef %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 15338
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_irq_thread_fn(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mt7530_priv, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_mii_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %call7.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 3) #13
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %call10.i = tail call i32 %9(ptr noundef %3, i32 noundef 31, i32 noundef 16) #13
  %shl.i = shl i32 %call10.i, 16
  %conv13.i = and i32 %call7.i, 65535
  %or.i = or i32 %shl.i, %conv13.i
  br label %mt7530_mii_read.exit

mt7530_mii_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %or.i, %if.end.i ]
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %shr7.i = lshr i32 %retval.0.i, 16
  %conv8.i = trunc i32 %shr7.i to i16
  %write.i17 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write.i17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i17, align 8
  %call.i18 = tail call i32 %13(ptr noundef %11, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp.i19 = icmp slt i32 %call.i18, 0
  br i1 %cmp.i19, label %mt7530_mii_read.exit.do.end.i22_crit_edge, label %if.end.i20

mt7530_mii_read.exit.do.end.i22_crit_edge:        ; preds = %mt7530_mii_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i22

if.end.i20:                                       ; preds = %mt7530_mii_read.exit
  %conv6.i = trunc i32 %retval.0.i to i16
  %14 = ptrtoint ptr %write.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i17, align 8
  %call12.i = tail call i32 %15(ptr noundef %11, i32 noundef 31, i32 noundef 3, i16 noundef zeroext %conv6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i20.do.end.i22_crit_edge, label %err.i

if.end.i20.do.end.i22_crit_edge:                  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i22

err.i:                                            ; preds = %if.end.i20
  %16 = ptrtoint ptr %write.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i17, align 8
  %call18.i = tail call i32 %17(ptr noundef %11, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %err.i.do.end.i22_crit_edge, label %err.i.mt7530_mii_write.exit_crit_edge

err.i.mt7530_mii_write.exit_crit_edge:            ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit

err.i.do.end.i22_crit_edge:                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i22

do.end.i22:                                       ; preds = %err.i.do.end.i22_crit_edge, %if.end.i20.do.end.i22_crit_edge, %mt7530_mii_read.exit.do.end.i22_crit_edge
  %dev.i21 = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit

mt7530_mii_write.exit:                            ; preds = %do.end.i22, %err.i.mt7530_mii_write.exit_crit_edge
  %18 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus, align 4
  %mdio_lock3 = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock3) #13
  %irq_domain = getelementptr inbounds %struct.mt7530_priv, ptr %dev_id, i32 0, i32 18
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mt7530_mii_write.exit.for.inc_crit_edge, label %if.then

mt7530_mii_write.exit.for.inc_crit_edge:          ; preds = %mt7530_mii_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %mt7530_mii_write.exit
  %20 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i23 = call ptr @__irq_resolve_mapping(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %irq.i) #13
  %tobool.not.i = icmp eq ptr %call.i23, null
  br i1 %tobool.not.i, label %if.then.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then.irq_find_mapping.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then.irq_find_mapping.exit_crit_edge
  %retval.0.i24 = phi i32 [ %24, %if.then.i ], [ 0, %if.then.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @handle_nested_irq(i32 noundef %retval.0.i24) #13
  br label %for.inc

for.inc:                                          ; preds = %irq_find_mapping.exit, %mt7530_mii_write.exit.for.inc_crit_edge
  %25 = xor i1 %tobool.not, true
  %and.1 = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %26 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i23.1 = call ptr @__irq_resolve_mapping(ptr noundef %27, i32 noundef 1, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.1 = icmp eq ptr %call.i23.1, null
  br i1 %tobool.not.i.1, label %if.then.1.irq_find_mapping.exit.1_crit_edge, label %if.then.i.1

if.then.1.irq_find_mapping.exit.1_crit_edge:      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.1

if.then.i.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.1

irq_find_mapping.exit.1:                          ; preds = %if.then.i.1, %if.then.1.irq_find_mapping.exit.1_crit_edge
  %retval.0.i24.1 = phi i32 [ %30, %if.then.i.1 ], [ 0, %if.then.1.irq_find_mapping.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @handle_nested_irq(i32 noundef %retval.0.i24.1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %irq_find_mapping.exit.1, %for.inc.for.inc.1_crit_edge
  %handled.1.off0.1 = phi i1 [ true, %irq_find_mapping.exit.1 ], [ %25, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %31 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i23.2 = call ptr @__irq_resolve_mapping(ptr noundef %32, i32 noundef 2, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.2 = icmp eq ptr %call.i23.2, null
  br i1 %tobool.not.i.2, label %if.then.2.irq_find_mapping.exit.2_crit_edge, label %if.then.i.2

if.then.2.irq_find_mapping.exit.2_crit_edge:      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.2

if.then.i.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.2

irq_find_mapping.exit.2:                          ; preds = %if.then.i.2, %if.then.2.irq_find_mapping.exit.2_crit_edge
  %retval.0.i24.2 = phi i32 [ %35, %if.then.i.2 ], [ 0, %if.then.2.irq_find_mapping.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @handle_nested_irq(i32 noundef %retval.0.i24.2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %irq_find_mapping.exit.2, %for.inc.1.for.inc.2_crit_edge
  %handled.1.off0.2 = phi i1 [ true, %irq_find_mapping.exit.2 ], [ %handled.1.off0.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %36 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i23.3 = call ptr @__irq_resolve_mapping(ptr noundef %37, i32 noundef 3, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.3 = icmp eq ptr %call.i23.3, null
  br i1 %tobool.not.i.3, label %if.then.3.irq_find_mapping.exit.3_crit_edge, label %if.then.i.3

if.then.3.irq_find_mapping.exit.3_crit_edge:      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.3

if.then.i.3:                                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.3

irq_find_mapping.exit.3:                          ; preds = %if.then.i.3, %if.then.3.irq_find_mapping.exit.3_crit_edge
  %retval.0.i24.3 = phi i32 [ %40, %if.then.i.3 ], [ 0, %if.then.3.irq_find_mapping.exit.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @handle_nested_irq(i32 noundef %retval.0.i24.3) #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %irq_find_mapping.exit.3, %for.inc.2.for.inc.3_crit_edge
  %handled.1.off0.3 = phi i1 [ true, %irq_find_mapping.exit.3 ], [ %handled.1.off0.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %41 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i23.4 = call ptr @__irq_resolve_mapping(ptr noundef %42, i32 noundef 4, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.4 = icmp eq ptr %call.i23.4, null
  br i1 %tobool.not.i.4, label %if.then.4.irq_find_mapping.exit.4_crit_edge, label %if.then.i.4

if.then.4.irq_find_mapping.exit.4_crit_edge:      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.4

if.then.i.4:                                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.4

irq_find_mapping.exit.4:                          ; preds = %if.then.i.4, %if.then.4.irq_find_mapping.exit.4_crit_edge
  %retval.0.i24.4 = phi i32 [ %45, %if.then.i.4 ], [ 0, %if.then.4.irq_find_mapping.exit.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @handle_nested_irq(i32 noundef %retval.0.i24.4) #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %irq_find_mapping.exit.4, %for.inc.3.for.inc.4_crit_edge
  %handled.1.off0.4 = phi i1 [ true, %irq_find_mapping.exit.4 ], [ %handled.1.off0.3, %for.inc.3.for.inc.4_crit_edge ]
  %cond = zext i1 %handled.1.off0.4 to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7530_irq_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #13
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @mt7530_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #13
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #13
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #13
  ret i32 0
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
define internal void @mt7530_irq_mask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %irq_enable = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_enable, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_enable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mt7530_irq_unmask(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %irq_enable = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_enable, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %irq_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %bus = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_enable = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_enable, align 4
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i, align 4
  %shr7.i = lshr i32 %3, 16
  %conv8.i = trunc i32 %shr7.i to i16
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 8
  %call.i = tail call i32 %7(ptr noundef %5, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 448) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %conv6.i = trunc i32 %3 to i16
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 8
  %call12.i = tail call i32 %9(ptr noundef %5, i32 noundef 31, i32 noundef 2, i16 noundef zeroext %conv6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i.do.end.i_crit_edge, label %err.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

err.i:                                            ; preds = %if.end.i
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 8
  %call18.i = tail call i32 %11(ptr noundef %5, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %err.i.do.end.i_crit_edge, label %err.i.mt7530_mii_write.exit_crit_edge

err.i.mt7530_mii_write.exit_crit_edge:            ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_mii_write.exit

err.i.do.end.i_crit_edge:                         ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %err.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_mii_write.exit

mt7530_mii_write.exit:                            ; preds = %do.end.i, %err.i.mt7530_mii_write.exit_crit_edge
  %12 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus1.i, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt753x_phy_read(ptr nocapture noundef readonly %bus, i32 noundef %port, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %phy_read = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_read, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %port, i32 noundef %regnum) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt753x_phy_write(ptr nocapture noundef readonly %bus, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %info = getelementptr inbounds %struct.mt7530_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %phy_write = getelementptr inbounds %struct.mt753x_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %phy_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_write, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %port, i32 noundef %regnum, i16 noundef zeroext %val) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_free_mdio_irq(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 1
  %irq_domain = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  %phys_mii_mask = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %phys_mii_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_mii_mask, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %irq.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then.irq_find_mapping.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ 0, %if.then.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #13
  br label %for.inc

for.inc:                                          ; preds = %irq_find_mapping.exit, %entry.for.inc_crit_edge
  %9 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds, align 4
  %phys_mii_mask.1 = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %phys_mii_mask.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys_mii_mask.1, align 4
  %and.1 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %13 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i.1 = call ptr @__irq_resolve_mapping(ptr noundef %14, i32 noundef 1, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %if.then.1.irq_find_mapping.exit.1_crit_edge, label %if.then.i.1

if.then.1.irq_find_mapping.exit.1_crit_edge:      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.1

if.then.i.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.1

irq_find_mapping.exit.1:                          ; preds = %if.then.i.1, %if.then.1.irq_find_mapping.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %17, %if.then.i.1 ], [ 0, %if.then.1.irq_find_mapping.exit.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.1) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %irq_find_mapping.exit.1, %for.inc.for.inc.1_crit_edge
  %18 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds, align 4
  %phys_mii_mask.2 = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %phys_mii_mask.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys_mii_mask.2, align 4
  %and.2 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %22 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i.2 = call ptr @__irq_resolve_mapping(ptr noundef %23, i32 noundef 2, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.i.2, label %if.then.2.irq_find_mapping.exit.2_crit_edge, label %if.then.i.2

if.then.2.irq_find_mapping.exit.2_crit_edge:      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.2

if.then.i.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.2

irq_find_mapping.exit.2:                          ; preds = %if.then.i.2, %if.then.2.irq_find_mapping.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %26, %if.then.i.2 ], [ 0, %if.then.2.irq_find_mapping.exit.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.2) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %irq_find_mapping.exit.2, %for.inc.1.for.inc.2_crit_edge
  %27 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ds, align 4
  %phys_mii_mask.3 = getelementptr inbounds %struct.dsa_switch, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %phys_mii_mask.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phys_mii_mask.3, align 4
  %and.3 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %31 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i.3 = call ptr @__irq_resolve_mapping(ptr noundef %32, i32 noundef 3, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.3 = icmp eq ptr %call.i.3, null
  br i1 %tobool.not.i.3, label %if.then.3.irq_find_mapping.exit.3_crit_edge, label %if.then.i.3

if.then.3.irq_find_mapping.exit.3_crit_edge:      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.3

if.then.i.3:                                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.3

irq_find_mapping.exit.3:                          ; preds = %if.then.i.3, %if.then.3.irq_find_mapping.exit.3_crit_edge
  %retval.0.i.3 = phi i32 [ %35, %if.then.i.3 ], [ 0, %if.then.3.irq_find_mapping.exit.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.3) #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %irq_find_mapping.exit.3, %for.inc.2.for.inc.3_crit_edge
  %36 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds, align 4
  %phys_mii_mask.4 = getelementptr inbounds %struct.dsa_switch, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %phys_mii_mask.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys_mii_mask.4, align 4
  %and.4 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %40 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %42 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %irq.i, align 4, !annotation !432
  %call.i.4 = call ptr @__irq_resolve_mapping(ptr noundef %41, i32 noundef 4, ptr noundef nonnull %irq.i) #13
  %tobool.not.i.4 = icmp eq ptr %call.i.4, null
  br i1 %tobool.not.i.4, label %if.then.4.irq_find_mapping.exit.4_crit_edge, label %if.then.i.4

if.then.4.irq_find_mapping.exit.4_crit_edge:      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.4

if.then.i.4:                                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit.4

irq_find_mapping.exit.4:                          ; preds = %if.then.i.4, %if.then.4.irq_find_mapping.exit.4_crit_edge
  %retval.0.i.4 = phi i32 [ %44, %if.then.i.4 ], [ 0, %if.then.4.irq_find_mapping.exit.4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.4) #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %irq_find_mapping.exit.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_helper_basex_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_port_set_vlan_aware(ptr noundef readonly %ds, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_user_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_user_port.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i.i = icmp eq i32 %8, %port
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %entry.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  %mul = shl i32 %port, 8
  br i1 %cmp.i, label %if.then, label %dsa_is_user_port.exit.if.end10_crit_edge

dsa_is_user_port.exit.if.end10_crit_edge:         ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then:                                          ; preds = %dsa_is_user_port.exit
  %add = add i32 %mul, 8196
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add, i32 noundef 3, i32 noundef 3)
  %add3 = add i32 %mul, 8212
  %pvid = getelementptr %struct.mt7530_priv, ptr %1, i32 0, i32 15, i32 %port, i32 2
  %12 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pvid, align 4
  %14 = and i16 %13, 4095
  %and = zext i16 %14 to i32
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add3, i32 noundef 4095, i32 noundef %and)
  %15 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pvid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.then7, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add9 = add i32 %mul, 8208
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add9, i32 noundef 3, i32 noundef 1)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then.if.end10_crit_edge, %dsa_is_user_port.exit.if.end10_crit_edge
  %add12 = add i32 %mul, 8208
  tail call fastcc void @mt7530_rmw(ptr noundef %1, i32 noundef %add12, i32 noundef 1984, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_hw_vlan_update(ptr noundef %priv, i16 noundef zeroext %vid, ptr noundef %entry1, ptr nocapture noundef readonly %vlan_op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt7530_vlan_cmd(ptr noundef %priv, i32 noundef 0, i16 noundef zeroext %vid)
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %2 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %5(ptr noundef %3, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %7(ptr noundef %3, i32 noundef 31, i32 noundef 5) #13
  %8 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %9(ptr noundef %3, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %shl.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %shr = lshr i32 %retval.0.i.i.i, 16
  %conv = trunc i32 %shr to i8
  %old_members = getelementptr inbounds %struct.mt7530_hw_vlan_entry, ptr %entry1, i32 0, i32 1
  %10 = ptrtoint ptr %old_members to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %old_members, align 4
  tail call void %vlan_op(ptr noundef %priv, ptr noundef %entry1) #13, !callees !434
  %call3 = tail call fastcc i32 @mt7530_vlan_cmd(ptr noundef %priv, i32 noundef 1, i16 noundef zeroext %vid)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_hw_vlan_add(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %old_members = getelementptr inbounds %struct.mt7530_hw_vlan_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %old_members to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %old_members, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry1, align 4
  %shl = shl nuw i32 1, %3
  %4 = trunc i32 %shl to i8
  %5 = or i8 %1, %4
  %conv4 = zext i8 %5 to i16
  %or8 = or i16 %conv4, 20544
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %8 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus1.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %11(ptr noundef %9, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i.i_crit_edge, label %if.end.i.i

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %entry
  %12 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %13(ptr noundef %9, i32 noundef 31, i32 noundef 5, i16 noundef zeroext 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %14 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %15(ptr noundef %9, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %or8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %untagged = getelementptr inbounds %struct.mt7530_hw_vlan_entry, ptr %entry1, i32 0, i32 2
  %16 = ptrtoint ptr %untagged to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %untagged, align 1, !range !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool.not, i32 2, i32 0
  %18 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entry1, align 4
  %shl11 = shl i32 %19, 1
  %shl12 = shl i32 3, %shl11
  %shl16 = shl i32 %cond, %shl11
  tail call fastcc void @mt7530_rmw(ptr noundef %priv, i32 noundef 152, i32 noundef %shl12, i32 noundef %shl16)
  tail call fastcc void @mt7530_rmw(ptr noundef %priv, i32 noundef 152, i32 noundef 12288, i32 noundef 12288)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt7530_hw_vlan_del(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %old_members = getelementptr inbounds %struct.mt7530_hw_vlan_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %old_members to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %old_members, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry1, align 4
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %6 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %9(ptr noundef %7, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %11(ptr noundef %7, i32 noundef 31, i32 noundef 5) #13
  %12 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %13(ptr noundef %7, i32 noundef 31, i32 noundef 16) #13
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv13.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %and3 = and i32 %retval.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.188) #16
  br label %cleanup

if.end:                                           ; preds = %mt7530_read.exit
  %shl = shl nuw i32 1, %3
  %16 = trunc i32 %shl to i8
  %17 = xor i8 %16, -1
  %conv2 = and i8 %1, %17
  %18 = zext i8 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.217)
  switch i8 %conv2, label %if.then8 [
    i8 0, label %if.end.if.else_crit_edge
    i8 64, label %if.end.if.else_crit_edge51
  ]

if.end.if.else_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then8:                                         ; preds = %if.end
  %conv4 = zext i8 %conv2 to i16
  %or12 = or i16 %conv4, 20480
  %19 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %21 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %24(ptr noundef %22, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then8.do.end.i.i_crit_edge, label %if.end.i.i

if.then8.do.end.i.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %if.then8
  %25 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %26(ptr noundef %22, i32 noundef 31, i32 noundef 5, i16 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %27 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %28(ptr noundef %22, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %or12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %if.then8.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.if.else_crit_edge51
  %29 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i24 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i24, i32 noundef 2) #13
  %31 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i25 = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write.i.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write.i.i25, align 8
  %call.i.i26 = tail call i32 %34(ptr noundef %32, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.i.i27 = icmp slt i32 %call.i.i26, 0
  br i1 %cmp.i.i27, label %if.else.do.end.i.i35_crit_edge, label %if.end.i.i30

if.else.do.end.i.i35_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i35

if.end.i.i30:                                     ; preds = %if.else
  %35 = ptrtoint ptr %write.i.i25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i25, align 8
  %call12.i.i28 = tail call i32 %36(ptr noundef %32, i32 noundef 31, i32 noundef 5, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i28)
  %cmp13.i.i29 = icmp slt i32 %call12.i.i28, 0
  br i1 %cmp13.i.i29, label %if.end.i.i30.do.end.i.i35_crit_edge, label %err.i.i33

if.end.i.i30.do.end.i.i35_crit_edge:              ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i35

err.i.i33:                                        ; preds = %if.end.i.i30
  %37 = ptrtoint ptr %write.i.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write.i.i25, align 8
  %call18.i.i31 = tail call i32 %38(ptr noundef %32, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i31)
  %cmp19.i.i32 = icmp slt i32 %call18.i.i31, 0
  br i1 %cmp19.i.i32, label %err.i.i33.do.end.i.i35_crit_edge, label %err.i.i33.mt7530_write.exit36_crit_edge

err.i.i33.mt7530_write.exit36_crit_edge:          ; preds = %err.i.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit36

err.i.i33.do.end.i.i35_crit_edge:                 ; preds = %err.i.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i35

do.end.i.i35:                                     ; preds = %err.i.i33.do.end.i.i35_crit_edge, %if.end.i.i30.do.end.i.i35_crit_edge, %if.else.do.end.i.i35_crit_edge
  %dev.i.i34 = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i34, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit36

mt7530_write.exit36:                              ; preds = %do.end.i.i35, %err.i.i33.mt7530_write.exit36_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i24) #13
  %39 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i38 = getelementptr inbounds %struct.mii_bus, ptr %40, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i38, i32 noundef 2) #13
  %41 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus1.i.i, align 4
  %write.i.i39 = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %write.i.i39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i.i39, align 8
  %call.i.i40 = tail call i32 %44(ptr noundef %42, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %cmp.i.i41 = icmp slt i32 %call.i.i40, 0
  br i1 %cmp.i.i41, label %mt7530_write.exit36.do.end.i.i49_crit_edge, label %if.end.i.i44

mt7530_write.exit36.do.end.i.i49_crit_edge:       ; preds = %mt7530_write.exit36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i49

if.end.i.i44:                                     ; preds = %mt7530_write.exit36
  %45 = ptrtoint ptr %write.i.i39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write.i.i39, align 8
  %call12.i.i42 = tail call i32 %46(ptr noundef %42, i32 noundef 31, i32 noundef 6, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i42)
  %cmp13.i.i43 = icmp slt i32 %call12.i.i42, 0
  br i1 %cmp13.i.i43, label %if.end.i.i44.do.end.i.i49_crit_edge, label %err.i.i47

if.end.i.i44.do.end.i.i49_crit_edge:              ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i49

err.i.i47:                                        ; preds = %if.end.i.i44
  %47 = ptrtoint ptr %write.i.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write.i.i39, align 8
  %call18.i.i45 = tail call i32 %48(ptr noundef %42, i32 noundef 31, i32 noundef 16, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i45)
  %cmp19.i.i46 = icmp slt i32 %call18.i.i45, 0
  br i1 %cmp19.i.i46, label %err.i.i47.do.end.i.i49_crit_edge, label %err.i.i47.mt7530_write.exit50_crit_edge

err.i.i47.mt7530_write.exit50_crit_edge:          ; preds = %err.i.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit50

err.i.i47.do.end.i.i49_crit_edge:                 ; preds = %err.i.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i49

do.end.i.i49:                                     ; preds = %err.i.i47.do.end.i.i49_crit_edge, %if.end.i.i44.do.end.i.i49_crit_edge, %mt7530_write.exit36.do.end.i.i49_crit_edge
  %dev.i.i48 = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i48, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit50

mt7530_write.exit50:                              ; preds = %do.end.i.i49, %err.i.i47.mt7530_write.exit50_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i38) #13
  br label %cleanup

cleanup:                                          ; preds = %mt7530_write.exit50, %mt7530_write.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_fdb_write(ptr nocapture noundef readonly %priv, i16 noundef zeroext %vid, i8 noundef zeroext %port_mask, ptr nocapture noundef readonly %mac, i8 noundef zeroext %aging, i8 noundef zeroext %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %vid, 4095
  %1 = or i16 %0, -28672
  %conv9 = zext i8 %port_mask to i16
  %shl11 = shl nuw nsw i16 %conv9, 4
  %2 = shl i8 %type, 2
  %3 = and i8 %2, 12
  %shl16 = zext i8 %3 to i16
  %or13 = or i16 %shl11, %shl16
  %arrayidx19 = getelementptr i8, ptr %mac, i32 5
  %4 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %5 to i16
  %arrayidx24 = getelementptr i8, ptr %mac, i32 4
  %6 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %7 to i16
  %shl26 = shl nuw i16 %conv25, 8
  %or28 = or i16 %shl26, %conv20
  %arrayidx29 = getelementptr i8, ptr %mac, i32 3
  %8 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx29, align 1
  %arrayidx34 = getelementptr i8, ptr %mac, i32 2
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx34, align 1
  %arrayidx39 = getelementptr i8, ptr %mac, i32 1
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %13 to i16
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mac, align 1
  %conv45 = zext i8 %15 to i16
  %shl46 = shl nuw i16 %conv45, 8
  %or48 = or i16 %shl46, %conv40
  %bus1.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i, i32 noundef 2) #13
  %18 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus1.i, align 4
  %write.i.i = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i.i, align 8
  %call.i.i = tail call i32 %21(ptr noundef %19, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i.i_crit_edge, label %if.end.i.i

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %entry
  %conv35 = zext i8 %11 to i16
  %shl36 = shl nuw i16 %conv35, 8
  %conv30 = zext i8 %9 to i16
  %or38 = or i16 %shl36, %conv30
  %22 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i.i, align 8
  %call12.i.i = tail call i32 %23(ptr noundef %19, i32 noundef 31, i32 noundef 13, i16 noundef zeroext %or38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %err.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

err.i.i:                                          ; preds = %if.end.i.i
  %24 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i.i, align 8
  %call18.i.i = tail call i32 %25(ptr noundef %19, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %or48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %err.i.i.do.end.i.i_crit_edge, label %err.i.i.mt7530_write.exit_crit_edge

err.i.i.mt7530_write.exit_crit_edge:              ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit

err.i.i.do.end.i.i_crit_edge:                     ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %err.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit

mt7530_write.exit:                                ; preds = %do.end.i.i, %err.i.i.mt7530_write.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i) #13
  %26 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.1 = getelementptr inbounds %struct.mii_bus, ptr %27, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.1, i32 noundef 2) #13
  %28 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus1.i, align 4
  %write.i.i.1 = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i.i.1, align 8
  %call.i.i.1 = tail call i32 %31(ptr noundef %29, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.i.1, label %mt7530_write.exit.do.end.i.i.1_crit_edge, label %if.end.i.i.1

mt7530_write.exit.do.end.i.i.1_crit_edge:         ; preds = %mt7530_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.1

if.end.i.i.1:                                     ; preds = %mt7530_write.exit
  %32 = ptrtoint ptr %write.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i.i.1, align 8
  %call12.i.i.1 = tail call i32 %33(ptr noundef %29, i32 noundef 31, i32 noundef 14, i16 noundef zeroext %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.1)
  %cmp13.i.i.1 = icmp slt i32 %call12.i.i.1, 0
  br i1 %cmp13.i.i.1, label %if.end.i.i.1.do.end.i.i.1_crit_edge, label %err.i.i.1

if.end.i.i.1.do.end.i.i.1_crit_edge:              ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.1

err.i.i.1:                                        ; preds = %if.end.i.i.1
  %34 = ptrtoint ptr %write.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i.i.1, align 8
  %call18.i.i.1 = tail call i32 %35(ptr noundef %29, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %or28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.1)
  %cmp19.i.i.1 = icmp slt i32 %call18.i.i.1, 0
  br i1 %cmp19.i.i.1, label %err.i.i.1.do.end.i.i.1_crit_edge, label %err.i.i.1.mt7530_write.exit.1_crit_edge

err.i.i.1.mt7530_write.exit.1_crit_edge:          ; preds = %err.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit.1

err.i.i.1.do.end.i.i.1_crit_edge:                 ; preds = %err.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.1

do.end.i.i.1:                                     ; preds = %err.i.i.1.do.end.i.i.1_crit_edge, %if.end.i.i.1.do.end.i.i.1_crit_edge, %mt7530_write.exit.do.end.i.i.1_crit_edge
  %dev.i.i.1 = getelementptr inbounds %struct.mii_bus, ptr %29, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.1, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit.1

mt7530_write.exit.1:                              ; preds = %do.end.i.i.1, %err.i.i.1.mt7530_write.exit.1_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.1) #13
  %36 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus1.i, align 4
  %mdio_lock.i.2 = getelementptr inbounds %struct.mii_bus, ptr %37, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.2, i32 noundef 2) #13
  %38 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus1.i, align 4
  %conv5.tr = zext i8 %aging to i16
  %conv8.i.i.2 = shl nuw i16 %conv5.tr, 8
  %write.i.i.2 = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %write.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i.i.2, align 8
  %call.i.i.2 = tail call i32 %41(ptr noundef %39, i32 noundef 31, i32 noundef 31, i16 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp.i.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp.i.i.2, label %mt7530_write.exit.1.do.end.i.i.2_crit_edge, label %if.end.i.i.2

mt7530_write.exit.1.do.end.i.i.2_crit_edge:       ; preds = %mt7530_write.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.2

if.end.i.i.2:                                     ; preds = %mt7530_write.exit.1
  %42 = ptrtoint ptr %write.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i.i.2, align 8
  %call12.i.i.2 = tail call i32 %43(ptr noundef %39, i32 noundef 31, i32 noundef 15, i16 noundef zeroext %or13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.2)
  %cmp13.i.i.2 = icmp slt i32 %call12.i.i.2, 0
  br i1 %cmp13.i.i.2, label %if.end.i.i.2.do.end.i.i.2_crit_edge, label %err.i.i.2

if.end.i.i.2.do.end.i.i.2_crit_edge:              ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.2

err.i.i.2:                                        ; preds = %if.end.i.i.2
  %44 = ptrtoint ptr %write.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write.i.i.2, align 8
  %call18.i.i.2 = tail call i32 %45(ptr noundef %39, i32 noundef 31, i32 noundef 16, i16 noundef zeroext %conv8.i.i.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.2)
  %cmp19.i.i.2 = icmp slt i32 %call18.i.i.2, 0
  br i1 %cmp19.i.i.2, label %err.i.i.2.do.end.i.i.2_crit_edge, label %err.i.i.2.mt7530_write.exit.2_crit_edge

err.i.i.2.mt7530_write.exit.2_crit_edge:          ; preds = %err.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt7530_write.exit.2

err.i.i.2.do.end.i.i.2_crit_edge:                 ; preds = %err.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i.2

do.end.i.i.2:                                     ; preds = %err.i.i.2.do.end.i.i.2_crit_edge, %if.end.i.i.2.do.end.i.i.2_crit_edge, %mt7530_write.exit.1.do.end.i.i.2_crit_edge
  %dev.i.i.2 = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.2, ptr noundef nonnull @.str.21) #16
  br label %mt7530_write.exit.2

mt7530_write.exit.2:                              ; preds = %do.end.i.i.2, %err.i.i.2.mt7530_write.exit.2_crit_edge
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7530_fdb_read(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %fdb) unnamed_addr #2 align 64 {
entry:
  %reg = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg) #13
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !432
  %1 = getelementptr inbounds [3 x i32], ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !432
  %3 = getelementptr inbounds [3 x i32], ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !432
  %bus1.i.i = getelementptr inbounds %struct.mt7530_priv, ptr %priv, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.071, 2
  %add = add nuw nsw i32 %mul, 132
  %5 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus1.i.i, align 4
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %6, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 2) #13
  %7 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus1.i.i, align 4
  %9 = trunc i32 %add to i16
  %10 = lshr i16 %9, 6
  %write.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i.i, align 8
  %call.i.i.i = tail call i32 %12(ptr noundef %8, i32 noundef 31, i32 noundef 31, i16 noundef zeroext %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.19) #16
  br label %mt7530_read.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %13 = lshr exact i32 %add, 2
  %conv4.i.i.i = and i32 %13, 15
  %read.i.i.i = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 4
  %14 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i.i.i, align 4
  %call7.i.i.i = tail call i32 %15(ptr noundef %8, i32 noundef 31, i32 noundef %conv4.i.i.i) #13
  %16 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i.i.i, align 4
  %call10.i.i.i = tail call i32 %17(ptr noundef %8, i32 noundef 31, i32 noundef 16) #13
  %shl.i.i.i = shl i32 %call10.i.i.i, 16
  %conv13.i.i.i = and i32 %call7.i.i.i, 65535
  %or.i.i.i = or i32 %shl.i.i.i, %conv13.i.i.i
  br label %mt7530_read.exit

mt7530_read.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %or.i.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i.i) #13
  %arrayidx = getelementptr [3 x i32], ptr %reg, i32 0, i32 %i.071
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i.i.i, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7530_fdb_read.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7530_fdb_read, %if.then)) #13
          to label %for.inc [label %if.then], !srcloc !433

if.then:                                          ; preds = %mt7530_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7530_fdb_read.__UNIQUE_ID_ddebug499, ptr noundef %20, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.190, i32 noundef 346, i32 noundef %i.071, i32 noundef %retval.0.i.i.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %mt7530_read.exit
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = trunc i32 %22 to i16
  %conv = and i16 %23, 4095
  %24 = ptrtoint ptr %fdb to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %fdb, align 2
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %shr7 = lshr i32 %26, 24
  %conv9 = trunc i32 %shr7 to i8
  %aging = getelementptr inbounds %struct.mt7530_fdb, ptr %fdb, i32 0, i32 2
  %27 = ptrtoint ptr %aging to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv9, ptr %aging, align 1
  %shr11 = lshr i32 %26, 4
  %conv13 = trunc i32 %shr11 to i8
  %port_mask = getelementptr inbounds %struct.mt7530_fdb, ptr %fdb, i32 0, i32 1
  %28 = ptrtoint ptr %port_mask to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv13, ptr %port_mask, align 2
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %shr15 = lshr i32 %30, 24
  %conv17 = trunc i32 %shr15 to i8
  %mac = getelementptr inbounds %struct.mt7530_fdb, ptr %fdb, i32 0, i32 3
  %31 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv17, ptr %mac, align 2
  %shr20 = lshr i32 %30, 16
  %conv22 = trunc i32 %shr20 to i8
  %arrayidx24 = getelementptr %struct.mt7530_fdb, ptr %fdb, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv22, ptr %arrayidx24, align 1
  %shr26 = lshr i32 %30, 8
  %conv28 = trunc i32 %shr26 to i8
  %arrayidx30 = getelementptr %struct.mt7530_fdb, ptr %fdb, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv28, ptr %arrayidx30, align 2
  %conv34 = trunc i32 %30 to i8
  %arrayidx36 = getelementptr %struct.mt7530_fdb, ptr %fdb, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv34, ptr %arrayidx36, align 1
  %shr38 = lshr i32 %22, 24
  %conv40 = trunc i32 %shr38 to i8
  %arrayidx42 = getelementptr %struct.mt7530_fdb, ptr %fdb, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv40, ptr %arrayidx42, align 2
  %shr44 = lshr i32 %22, 16
  %conv46 = trunc i32 %shr44 to i8
  %arrayidx48 = getelementptr %struct.mt7530_fdb, ptr %fdb, i32 0, i32 3, i32 5
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv46, ptr %arrayidx48, align 1
  %37 = and i32 %26, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %37)
  %cmp52 = icmp eq i32 %37, 12
  %noarp = getelementptr inbounds %struct.mt7530_fdb, ptr %fdb, i32 0, i32 4
  %frombool54 = zext i1 %cmp52 to i8
  %38 = ptrtoint ptr %noarp to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool54, ptr %noarp, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !195, !196, !198, !199, !200, !202, !203, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !253, !254, !255, !256, !257, !259, !261, !262, !263, !265, !267, !269, !271, !272, !274, !275, !277, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !300, !302, !304, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318, !319, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !407, !408, !409, !411, !412, !413, !415, !416, !417, !418, !420, !421}
!llvm.module.flags = !{!422, !423, !424, !425, !426, !427, !428, !429}
!llvm.ident = !{!430}

!0 = !{ptr @__initcall__kmod_mt7530__502_3335_mdio_module_init6, !1, !"__initcall__kmod_mt7530__502_3335_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mt7530.c", i32 3335, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author503, !4, !"__UNIQUE_ID_author503", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/mt7530.c", i32 3337, i32 1}
!5 = !{ptr @__UNIQUE_ID_description504, !6, !"__UNIQUE_ID_description504", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/mt7530.c", i32 3338, i32 1}
!7 = !{ptr @__UNIQUE_ID_file505, !8, !"__UNIQUE_ID_file505", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/mt7530.c", i32 3339, i32 1}
!9 = !{ptr @__UNIQUE_ID_license506, !8, !"__UNIQUE_ID_license506", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/mt7530.c", i32 3330, i32 11}
!12 = !{ptr @mt7530_mdio_driver, !13, !"mt7530_mdio_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/mt7530.c", i32 3325, i32 27}
!14 = !{ptr @mt7530_of_match, !15, !"mt7530_of_match", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/mt7530.c", i32 3191, i32 34}
!16 = !{ptr @mt753x_table, !17, !"mt753x_table", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/mt7530.c", i32 3152, i32 33}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/mt7530.c", i32 2111, i32 4}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt7530_setup._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt7530_setup._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/mt7530.c", i32 2119, i32 4}
!28 = !{ptr @mt7530_setup._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt7530_setup._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/mt7530.c", i32 2143, i32 3}
!32 = !{ptr @mt7530_setup._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mt7530_setup._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/mt7530.c", i32 2150, i32 3}
!36 = !{ptr @mt7530_setup._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt7530_setup._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/dsa/mt7530.c", i32 2212, i32 12}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/mt7530.c", i32 2215, i32 39}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/mt7530.c", i32 2219, i32 40}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/mt7530.c", i32 2242, i32 48}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/dsa/mt7530.c", i32 221, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mt7530_mii_read._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mt7530_mii_read._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/mt7530.c", i32 203, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mt7530_mii_write._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt7530_mii_write._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/dsa/mt7530.c", i32 1484, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mt7530_vlan_cmd._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt7530_vlan_cmd._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/mt7530.c", i32 1490, i32 3}
!63 = !{ptr @mt7530_vlan_cmd._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mt7530_vlan_cmd._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/of_mdio.h", i32 45, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @of_mdio_parse_addr._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @of_mdio_parse_addr._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/of_mdio.h", i32 51, i32 3}
!73 = !{ptr @of_mdio_parse_addr._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @of_mdio_parse_addr._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mt7530_setup_gpio.lock_key, !76, !"lock_key", i1 false, i1 false}
!76 = !{!"../drivers/net/dsa/mt7530.c", i32 1879, i32 9}
!77 = !{ptr @mt7530_setup_gpio.request_key, !76, !"request_key", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/dsa/mt7530.c", i32 956, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mt7530_setup_port5._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mt7530_setup_port5._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/dsa/mt7530.c", i32 985, i32 2}
!85 = !{ptr @mt7530_setup_port5.__UNIQUE_ID_ddebug500, !84, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/dsa/mt7530.h", i32 728, i32 10}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/mt7530.h", i32 730, i32 10}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/dsa/mt7530.h", i32 732, i32 10}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/dsa/mt7530.h", i32 734, i32 10}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/mt7530.h", i32 736, i32 10}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/dsa/mt7530.h", i32 738, i32 10}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/phy.h", i32 211, i32 10}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/phy.h", i32 213, i32 10}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/phy.h", i32 215, i32 10}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/phy.h", i32 217, i32 10}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/phy.h", i32 219, i32 10}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/phy.h", i32 221, i32 10}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/phy.h", i32 223, i32 10}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/phy.h", i32 225, i32 10}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/phy.h", i32 227, i32 10}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/phy.h", i32 229, i32 10}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/phy.h", i32 231, i32 10}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/phy.h", i32 233, i32 10}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/phy.h", i32 235, i32 10}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/phy.h", i32 237, i32 10}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/phy.h", i32 239, i32 10}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/phy.h", i32 241, i32 10}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/phy.h", i32 243, i32 10}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/phy.h", i32 245, i32 10}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/phy.h", i32 247, i32 10}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/phy.h", i32 249, i32 10}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/phy.h", i32 251, i32 10}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/phy.h", i32 253, i32 10}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/phy.h", i32 255, i32 10}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/phy.h", i32 257, i32 10}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/phy.h", i32 259, i32 10}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/phy.h", i32 261, i32 10}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/phy.h", i32 263, i32 10}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/linux/phy.h", i32 265, i32 10}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/phy.h", i32 267, i32 10}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/phy.h", i32 269, i32 10}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/dsa/mt7530.c", i32 318, i32 3}
!160 = !{ptr @mt7530_fdb_cmd._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @mt7530_fdb_cmd._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/dsa/mt7530.c", i32 401, i32 3}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mt7530_pad_clk_setup._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @mt7530_pad_clk_setup._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/dsa/mt7530.c", i32 429, i32 3}
!169 = !{ptr @mt7530_pad_clk_setup._entry.76, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @mt7530_pad_clk_setup._entry_ptr.78, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/dsa/mt7530.c", i32 103, i32 2}
!173 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @core_read_mmd_indirect._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @core_read_mmd_indirect._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/dsa/mt7530.c", i32 134, i32 3}
!178 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @core_write_mmd_indirect._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @core_write_mmd_indirect._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/dsa/mt7530.c", i32 2410, i32 3}
!183 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mt7530_phy_mode_supported._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mt7530_phy_mode_supported._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/dsa/mt7530.c", i32 2285, i32 3}
!188 = !{ptr @mt7531_setup._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @mt7531_setup._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @mt7531_setup._entry.86, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/net/dsa/mt7530.c", i32 2293, i32 3}
!192 = !{ptr @mt7531_setup._entry_ptr.87, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/dsa/mt7530.c", i32 2313, i32 2}
!195 = !{ptr @mt7531_setup.__UNIQUE_ID_ddebug501, !194, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!196 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/dsa/mt7530.c", i32 630, i32 3}
!198 = !{ptr @mt7531_ind_c45_phy_read._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @mt7531_ind_c45_phy_read._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @mt7531_ind_c45_phy_read._entry.90, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/net/dsa/mt7530.c", i32 641, i32 3}
!202 = !{ptr @mt7531_ind_c45_phy_read._entry_ptr.91, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @mt7531_ind_c45_phy_read._entry.92, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/net/dsa/mt7530.c", i32 652, i32 3}
!205 = !{ptr @mt7531_ind_c45_phy_read._entry_ptr.93, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/dsa/mt7530.c", i32 679, i32 3}
!208 = !{ptr @mt7531_ind_c45_phy_write._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @mt7531_ind_c45_phy_write._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @mt7531_ind_c45_phy_write._entry.95, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/net/dsa/mt7530.c", i32 690, i32 3}
!212 = !{ptr @mt7531_ind_c45_phy_write._entry_ptr.96, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @mt7531_ind_c45_phy_write._entry.97, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/net/dsa/mt7530.c", i32 701, i32 3}
!215 = !{ptr @mt7531_ind_c45_phy_write._entry_ptr.98, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/dsa/mt7530.c", i32 726, i32 3}
!218 = !{ptr @mt7531_ind_c22_phy_read._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @mt7531_ind_c22_phy_read._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @mt7531_ind_c22_phy_read._entry.100, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/net/dsa/mt7530.c", i32 738, i32 3}
!222 = !{ptr @mt7531_ind_c22_phy_read._entry_ptr.101, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/dsa/mt7530.c", i32 765, i32 3}
!225 = !{ptr @mt7531_ind_c22_phy_write._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @mt7531_ind_c22_phy_write._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @mt7531_ind_c22_phy_write._entry.103, !228, !"_entry", i1 false, i1 false}
!228 = !{!"../drivers/net/dsa/mt7530.c", i32 777, i32 3}
!229 = !{ptr @mt7531_ind_c22_phy_write._entry_ptr.104, !228, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.105, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/dsa/mt7530.c", i32 2444, i32 3}
!232 = !{ptr @mt7531_phy_mode_supported._entry, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @mt7531_phy_mode_supported._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/dsa/mt7530.c", i32 3031, i32 4}
!236 = !{ptr @.str.107, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @mt7531_sgmii_pcs_get_state_an._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @mt7531_sgmii_pcs_get_state_an._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/dsa/mt7530.c", i32 2677, i32 3}
!241 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @mt7531_mac_config._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @mt7531_mac_config._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.110, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/dsa/mt7530.c", i32 2491, i32 3}
!246 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @mt7531_rgmii_setup._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @mt7531_rgmii_setup._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.112, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/dsa/mt7530.c", i32 3221, i32 40}
!251 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/dsa/mt7530.c", i32 3223, i32 3}
!253 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @mt7530_probe._entry, !252, !"_entry", i1 false, i1 false}
!256 = !{ptr @mt7530_probe._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/dsa/mt7530.c", i32 3225, i32 54}
!259 = !{ptr @.str.118, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/dsa/mt7530.c", i32 3227, i32 4}
!261 = !{ptr @mt7530_probe._entry.117, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @mt7530_probe._entry_ptr.119, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.120, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/dsa/mt7530.c", i32 3252, i32 54}
!265 = !{ptr @.str.121, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/dsa/mt7530.c", i32 3256, i32 52}
!267 = !{ptr @.str.122, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/dsa/mt7530.c", i32 3267, i32 56}
!269 = !{ptr @mt7530_probe._entry.123, !270, !"_entry", i1 false, i1 false}
!270 = !{!"../drivers/net/dsa/mt7530.c", i32 3270, i32 4}
!271 = !{ptr @mt7530_probe._entry_ptr.124, !270, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @mt7530_probe.__key, !273, !"__key", i1 false, i1 false}
!273 = !{!"../drivers/net/dsa/mt7530.c", i32 3279, i32 2}
!274 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @mt7530_switch_ops, !276, !"mt7530_switch_ops", i1 false, i1 false}
!276 = !{!"../drivers/net/dsa/mt7530.c", i32 3116, i32 36}
!277 = !{ptr @.str.126, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/dsa/mt7530.c", i32 1990, i32 33}
!279 = !{ptr @.str.127, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/dsa/mt7530.c", i32 1991, i32 3}
!281 = !{ptr @.str.128, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @mt7530_setup_irq._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @mt7530_setup_irq._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.130, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/dsa/mt7530.c", i32 1997, i32 3}
!286 = !{ptr @mt7530_setup_irq._entry.129, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @mt7530_setup_irq._entry_ptr.131, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/dsa/mt7530.c", i32 2004, i32 3}
!290 = !{ptr @mt7530_setup_irq._entry.132, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @mt7530_setup_irq._entry_ptr.134, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.136, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/dsa/mt7530.c", i32 2016, i32 3}
!294 = !{ptr @mt7530_setup_irq._entry.135, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @mt7530_setup_irq._entry_ptr.137, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @mt7530_irq_domain_ops, !297, !"mt7530_irq_domain_ops", i1 false, i1 false}
!297 = !{!"../drivers/net/dsa/mt7530.c", i32 1962, i32 36}
!298 = !{ptr @mt7530_irq_chip, !299, !"mt7530_irq_chip", i1 false, i1 false}
!299 = !{!"../drivers/net/dsa/mt7530.c", i32 1942, i32 24}
!300 = !{ptr @mt7530_setup_mdio.idx, !301, !"idx", i1 false, i1 false}
!301 = !{!"../drivers/net/dsa/mt7530.c", i32 2058, i32 13}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/dsa/mt7530.c", i32 2067, i32 14}
!304 = !{ptr @.str.139, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/dsa/mt7530.c", i32 2068, i32 37}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/dsa/mt7530.c", i32 2079, i32 3}
!308 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @mt7530_setup_mdio._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @mt7530_setup_mdio._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.142, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/dsa/mt7530.c", i32 2752, i32 3}
!313 = !{ptr @.str.143, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @mt753x_phylink_mac_config._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @mt753x_phylink_mac_config._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.145, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/dsa/mt7530.c", i32 2759, i32 3}
!318 = !{ptr @mt753x_phylink_mac_config._entry.144, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @mt753x_phylink_mac_config._entry_ptr.146, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/dsa/mt7530.c", i32 29, i32 2}
!322 = !{ptr @.str.148, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/dsa/mt7530.c", i32 30, i32 2}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/dsa/mt7530.c", i32 31, i32 2}
!326 = !{ptr @.str.150, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/dsa/mt7530.c", i32 32, i32 2}
!328 = !{ptr @.str.151, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/dsa/mt7530.c", i32 33, i32 2}
!330 = !{ptr @.str.152, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/dsa/mt7530.c", i32 34, i32 2}
!332 = !{ptr @.str.153, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/dsa/mt7530.c", i32 35, i32 2}
!334 = !{ptr @.str.154, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/dsa/mt7530.c", i32 36, i32 2}
!336 = !{ptr @.str.155, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/dsa/mt7530.c", i32 37, i32 2}
!338 = !{ptr @.str.156, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/dsa/mt7530.c", i32 38, i32 2}
!340 = !{ptr @.str.157, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/dsa/mt7530.c", i32 39, i32 2}
!342 = !{ptr @.str.158, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/dsa/mt7530.c", i32 40, i32 2}
!344 = !{ptr @.str.159, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/dsa/mt7530.c", i32 41, i32 2}
!346 = !{ptr @.str.160, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/dsa/mt7530.c", i32 42, i32 2}
!348 = !{ptr @.str.161, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/dsa/mt7530.c", i32 43, i32 2}
!350 = !{ptr @.str.162, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/dsa/mt7530.c", i32 44, i32 2}
!352 = !{ptr @.str.163, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/dsa/mt7530.c", i32 45, i32 2}
!354 = !{ptr @.str.164, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/dsa/mt7530.c", i32 46, i32 2}
!356 = !{ptr @.str.165, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/dsa/mt7530.c", i32 47, i32 2}
!358 = !{ptr @.str.166, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/dsa/mt7530.c", i32 48, i32 2}
!360 = !{ptr @.str.167, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/dsa/mt7530.c", i32 49, i32 2}
!362 = !{ptr @.str.168, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/dsa/mt7530.c", i32 50, i32 2}
!364 = !{ptr @.str.169, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/dsa/mt7530.c", i32 51, i32 2}
!366 = !{ptr @.str.170, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/dsa/mt7530.c", i32 52, i32 2}
!368 = !{ptr @.str.171, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/dsa/mt7530.c", i32 53, i32 2}
!370 = !{ptr @.str.172, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/dsa/mt7530.c", i32 54, i32 2}
!372 = !{ptr @.str.173, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/net/dsa/mt7530.c", i32 55, i32 2}
!374 = !{ptr @.str.174, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/dsa/mt7530.c", i32 56, i32 2}
!376 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/dsa/mt7530.c", i32 57, i32 2}
!378 = !{ptr @.str.176, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/dsa/mt7530.c", i32 58, i32 2}
!380 = !{ptr @.str.177, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/dsa/mt7530.c", i32 59, i32 2}
!382 = !{ptr @.str.178, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/dsa/mt7530.c", i32 60, i32 2}
!384 = !{ptr @.str.179, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/dsa/mt7530.c", i32 61, i32 2}
!386 = !{ptr @.str.180, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/dsa/mt7530.c", i32 62, i32 2}
!388 = !{ptr @.str.181, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/dsa/mt7530.c", i32 63, i32 2}
!390 = !{ptr @.str.182, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/dsa/mt7530.c", i32 64, i32 2}
!392 = !{ptr @.str.183, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/dsa/mt7530.c", i32 65, i32 2}
!394 = !{ptr @.str.184, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/dsa/mt7530.c", i32 66, i32 2}
!396 = !{ptr @.str.185, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/dsa/mt7530.c", i32 67, i32 2}
!398 = !{ptr @.str.186, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/dsa/mt7530.c", i32 68, i32 2}
!400 = !{ptr @.str.187, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/dsa/mt7530.c", i32 69, i32 2}
!402 = !{ptr @mt7530_mib, !403, !"mt7530_mib", i1 false, i1 false}
!403 = !{!"../drivers/net/dsa/mt7530.c", i32 28, i32 37}
!404 = !{ptr @.str.188, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/dsa/mt7530.c", i32 1564, i32 3}
!406 = !{ptr @.str.189, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @mt7530_hw_vlan_del._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @mt7530_hw_vlan_del._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.190, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/dsa/mt7530.c", i32 345, i32 3}
!411 = !{ptr @.str.191, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @mt7530_fdb_read.__UNIQUE_ID_ddebug499, !410, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!413 = !{ptr @.str.192, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/dsa/mt7530.c", i32 3296, i32 3}
!415 = !{ptr @.str.193, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @mt7530_remove._entry, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @mt7530_remove._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.195, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/dsa/mt7530.c", i32 3301, i32 3}
!420 = !{ptr @mt7530_remove._entry.194, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @mt7530_remove._entry_ptr.196, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{i32 1, !"wchar_size", i32 2}
!423 = !{i32 1, !"min_enum_size", i32 4}
!424 = !{i32 8, !"branch-target-enforcement", i32 0}
!425 = !{i32 8, !"sign-return-address", i32 0}
!426 = !{i32 8, !"sign-return-address-all", i32 0}
!427 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!428 = !{i32 7, !"uwtable", i32 1}
!429 = !{i32 7, !"frame-pointer", i32 2}
!430 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!431 = !{i8 0, i8 2}
!432 = !{!"auto-init"}
!433 = !{i64 2148932988, i64 2148932993, i64 2148933006, i64 2148933050, i64 2148933084, i64 2148933105}
!434 = !{ptr @mt7530_hw_vlan_add, ptr @mt7530_hw_vlan_del}
