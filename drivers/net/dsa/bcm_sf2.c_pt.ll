; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/bcm_sf2.c_pt.bc'
source_filename = "../drivers/net/dsa/bcm_sf2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bcm_sf2_of_data = type { i32, ptr, i32, i32, i32 }
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
%struct.bcm_sf2_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, %struct.bcm_sf2_hw_params, [12 x %struct.bcm_sf2_port_status], i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.bcm_sf2_cfp_priv }
%struct.bcm_sf2_hw_params = type { i16, i16, i16, i32, i8, i8, i8, i8 }
%struct.bcm_sf2_port_status = type { i32, i32, i8 }
%struct.bcm_sf2_cfp_priv = type { %struct.mutex, [8 x i32], [8 x i32], i32, %struct.list_head }
%struct.b53_platform_data = type { %struct.dsa_chip_data, i32, i16, i8, ptr }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
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
%struct.b53_port = type { i16, %struct.ethtool_eee }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__initcall__kmod_bcm_sf2__498_1630_bcm_sf2_driver_init6 = internal global ptr @bcm_sf2_driver_init, section ".initcall6.init", align 4
@bcm_sf2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_sf2_sw_probe, ptr @bcm_sf2_sw_remove, ptr @bcm_sf2_sw_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_sf2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sf2_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_sf2_driver_exit = internal global ptr @bcm_sf2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author499 = internal constant [36 x i8] c"bcm_sf2.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description500 = internal constant [75 x i8] c"bcm_sf2.description=Driver for Broadcom Starfighter 2 ethernet switch chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [37 x i8] c"bcm_sf2.file=drivers/net/dsa/bcm-sf2\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [20 x i8] c"bcm_sf2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias503 = internal constant [32 x i8] c"bcm_sf2.alias=platform:brcm-sf2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcm-sf2\00", [23 x i8] zeroinitializer }, align 32
@bcm_sf2_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_4908_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-switch-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_7445_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-switch-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_7278_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-switch-v4.8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_7278_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@bcm_sf2_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_sf2_suspend, ptr @bcm_sf2_resume, ptr @bcm_sf2_suspend, ptr @bcm_sf2_resume, ptr @bcm_sf2_suspend, ptr @bcm_sf2_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intrl2_0\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intrl2_1\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fcb\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acb\00", [28 x i8] zeroinitializer }, align 32
@__const.bcm_sf2_sw_probe.reg_names = private unnamed_addr constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@bcm_sf2_io_ops = internal constant { %struct.b53_io_ops, [48 x i8] } { %struct.b53_io_ops { ptr @bcm_sf2_core_read8, ptr @bcm_sf2_core_read16, ptr @bcm_sf2_core_read32, ptr @bcm_sf2_core_read64, ptr @bcm_sf2_core_read64, ptr @bcm_sf2_core_write8, ptr @bcm_sf2_core_write16, ptr @bcm_sf2_core_write32, ptr @bcm_sf2_core_write64, ptr @bcm_sf2_core_write64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@bcm_sf2_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @b53_get_tag_protocol, ptr null, ptr null, ptr @bcm_sf2_sw_setup, ptr @bcm_sf2_sw_teardown, ptr null, ptr null, ptr @bcm_sf2_sw_get_phy_flags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sf2_sw_validate, ptr null, ptr @bcm_sf2_sw_mac_config, ptr null, ptr @bcm_sf2_sw_mac_link_down, ptr @bcm_sf2_sw_mac_link_up, ptr @bcm_sf2_sw_fixed_state, ptr @bcm_sf2_sw_get_strings, ptr @bcm_sf2_sw_get_ethtool_stats, ptr @bcm_sf2_sw_get_sset_count, ptr @b53_get_ethtool_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sf2_sw_get_wol, ptr @bcm_sf2_sw_set_wol, ptr null, ptr @bcm_sf2_sw_suspend, ptr @bcm_sf2_sw_resume, ptr @bcm_sf2_port_setup, ptr @bcm_sf2_port_disable, ptr @b53_set_mac_eee, ptr @b53_get_mac_eee, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b53_br_join, ptr @b53_br_leave, ptr @b53_br_set_stp_state, ptr @b53_br_fast_age, ptr @b53_br_flags_pre, ptr @b53_br_flags, ptr @b53_vlan_filtering, ptr @b53_vlan_add, ptr @b53_vlan_del, ptr @b53_fdb_add, ptr @b53_fdb_del, ptr @b53_fdb_dump, ptr @b53_mdb_add, ptr @b53_mdb_del, ptr @bcm_sf2_get_rxnfc, ptr @bcm_sf2_set_rxnfc, ptr null, ptr null, ptr null, ptr @b53_mirror_add, ptr @b53_mirror_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->indir_lock\00", [46 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->cfp.lock\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013unable to find register: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_sf2_sw_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/dsa/bcm_sf2.c\00", [38 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry_ptr = internal global ptr @bcm_sf2_sw_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sw_switch\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sw_switch_mdiv\00", [17 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.14, i32 1471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013unable to software reset switch: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry_ptr.19 = internal global ptr @bcm_sf2_sw_probe._entry.17, section ".printk_index", align 4
@bcm_sf2_sw_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.14, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to register MDIO bus\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry_ptr.22 = internal global ptr @bcm_sf2_sw_probe._entry.20, section ".printk_index", align 4
@bcm_sf2_sw_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.14, i32 1489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013failed to reset CFP\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry_ptr.25 = internal global ptr @bcm_sf2_sw_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"switch_0\00", [23 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str.14, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to request switch_0 IRQ\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry_ptr.29 = internal global ptr @bcm_sf2_sw_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"switch_1\00", [23 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.14, i32 1506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to request switch_1 IRQ\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry_ptr.33 = internal global ptr @bcm_sf2_sw_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm,num-gphy\00", [18 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.13, ptr @.str.14, i32 1543, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Starfighter 2 top: %x.%02x, core: %x.%02x, IRQs: %d, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_probe._entry_ptr.39 = internal global ptr @bcm_sf2_sw_probe._entry.35, section ".printk_index", align 4
@bcm_sf2_sw_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.14, i32 732, ptr @.str.42, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported interface: %d for port %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm_sf2_sw_validate\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_validate._entry_ptr = internal global ptr @bcm_sf2_sw_validate._entry, section ".printk_index", align 4
@bcm_sf2_reg_rgmii_cntrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unsupported port %d\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.14, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: failed to software reset switch\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_sf2_sw_resume\00", [46 x i8] zeroinitializer }, align 32
@bcm_sf2_sw_resume._entry_ptr = internal global ptr @bcm_sf2_sw_resume._entry, section ".printk_index", align 4
@bcm_sf2_recalc_clock.rate_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 59220000, i32 60820000, i32 62500000, i32 62500000], [16 x i8] zeroinitializer }, align 32
@bcm_sf2_identify_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.14, i32 568, ptr @.str.42, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid port number %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_sf2_identify_ports\00", [41 x i8] zeroinitializer }, align 32
@bcm_sf2_identify_ports._entry_ptr = internal global ptr @bcm_sf2_identify_ports._entry, section ".printk_index", align 4
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,use-bcm-hdr\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid port mode\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm_sf2_crossbar_setup.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.14, ptr @.str.53, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bcm_sf2\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_sf2_crossbar_setup\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"crossbar int port #%d - ext port #%d\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_sf2_mdio_register.index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,unimac-mdio\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sf2 slave mii\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sf2-%d\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,bcm7445d0\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phandle\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linux,phandle\00", [18 x i8] zeroinitializer }, align 32
@bcm_sf2_4908_data = internal constant { %struct.bcm_sf2_of_data, [44 x i8] } { %struct.bcm_sf2_of_data { i32 18696, ptr @bcm_sf2_4908_reg_offsets, i32 0, i32 256, i32 2 }, [44 x i8] zeroinitializer }, align 32
@bcm_sf2_7445_data = internal constant { %struct.bcm_sf2_of_data, [44 x i8] } { %struct.bcm_sf2_of_data { i32 29765, ptr @bcm_sf2_7445_reg_offsets, i32 0, i32 256, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bcm_sf2_7278_data = internal constant { %struct.bcm_sf2_of_data, [44 x i8] } { %struct.bcm_sf2_of_data { i32 29304, ptr @bcm_sf2_7278_reg_offsets, i32 1, i32 128, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bcm_sf2_4908_reg_offsets = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 36, i16 200, i16 0, i16 0, i16 0, i16 332, i16 64, i16 76, i16 88, i16 100, i16 136, i16 160, i16 184], [58 x i8] zeroinitializer }, align 32
@bcm_sf2_7445_reg_offsets = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 0, i16 4, i16 8, i16 12, i16 24, i16 28, i16 44, i16 0, i16 52, i16 64, i16 76, i16 0, i16 144, i16 148, i16 152], [34 x i8] zeroinitializer }, align 32
@bcm_sf2_7278_reg_offsets = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 36, i16 0, i16 224, i16 236, i16 248, i16 0, i16 64, i16 76, i16 88], [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 29304, i64 29765]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 17]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 9, i64 12]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 18696, i64 29765]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 18696, i64 29765]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 9, i64 12]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 29304, i64 29765]
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"bcm_sf2_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1620, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1625, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"bcm_sf2_of_match\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1340, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"bcm_sf2_pm_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1616, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1359, i32 44 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"bcm_sf2_io_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1170, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1404, i32 9 }
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"bcm_sf2_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1215, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1424, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1425, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1436, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1449, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1455, i32 48 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1461, i32 53 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1471, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1481, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1489, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1497, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1499, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1504, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1506, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1523, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1539, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 730, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 59, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 985, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [11 x i8] c"rate_table\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 119, i32 29 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 568, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 589, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 597, i32 34 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 526, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 538, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 610, i32 13 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 614, i32 43 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 631, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 634, i32 53 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 648, i32 31 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 670, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 674, i32 34 }
@___asan_gen_.269 = private unnamed_addr constant [18 x i8] c"bcm_sf2_4908_data\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1285, i32 37 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"bcm_sf2_7445_data\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1310, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"bcm_sf2_7278_data\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1333, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant [25 x i8] c"bcm_sf2_4908_reg_offsets\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1265, i32 18 }
@___asan_gen_.281 = private unnamed_addr constant [25 x i8] c"bcm_sf2_7445_reg_offsets\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1294, i32 18 }
@___asan_gen_.284 = private unnamed_addr constant [25 x i8] c"bcm_sf2_7278_reg_offsets\00", align 1
@___asan_gen_.285 = private constant [29 x i8] c"../drivers/net/dsa/bcm_sf2.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1317, i32 18 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_alias503, ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_description500, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__exitcall_bcm_sf2_driver_exit, ptr @__initcall__kmod_bcm_sf2__498_1630_bcm_sf2_driver_init6, ptr @bcm_sf2_driver_exit, ptr @bcm_sf2_identify_ports._entry, ptr @bcm_sf2_identify_ports._entry_ptr, ptr @bcm_sf2_sw_probe._entry, ptr @bcm_sf2_sw_probe._entry.17, ptr @bcm_sf2_sw_probe._entry.20, ptr @bcm_sf2_sw_probe._entry.23, ptr @bcm_sf2_sw_probe._entry.27, ptr @bcm_sf2_sw_probe._entry.31, ptr @bcm_sf2_sw_probe._entry.35, ptr @bcm_sf2_sw_probe._entry_ptr, ptr @bcm_sf2_sw_probe._entry_ptr.19, ptr @bcm_sf2_sw_probe._entry_ptr.22, ptr @bcm_sf2_sw_probe._entry_ptr.25, ptr @bcm_sf2_sw_probe._entry_ptr.29, ptr @bcm_sf2_sw_probe._entry_ptr.33, ptr @bcm_sf2_sw_probe._entry_ptr.39, ptr @bcm_sf2_sw_resume._entry, ptr @bcm_sf2_sw_resume._entry_ptr, ptr @bcm_sf2_sw_validate._entry, ptr @bcm_sf2_sw_validate._entry_ptr, ptr @bcm_sf2_driver, ptr @.str, ptr @bcm_sf2_of_match, ptr @bcm_sf2_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bcm_sf2_io_ops, ptr @.str.7, ptr @bcm_sf2_ops, ptr @bcm_sf2_sw_probe.__key, ptr @.str.8, ptr @bcm_sf2_sw_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @bcm_sf2_recalc_clock.rate_table, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @bcm_sf2_mdio_register.index, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @bcm_sf2_4908_data, ptr @bcm_sf2_7445_data, ptr @bcm_sf2_7278_data, ptr @bcm_sf2_4908_reg_offsets, ptr @bcm_sf2_7445_reg_offsets, ptr @bcm_sf2_7278_reg_offsets], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_io_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_sw_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_recalc_clock.rate_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_identify_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_mdio_register.index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_4908_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_7445_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_7278_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_4908_reg_offsets to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_7445_reg_offsets to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sf2_7278_reg_offsets to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_sf2_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_sf2_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 488, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i325 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 416, i32 noundef 3520) #9
  %tobool5.not = icmp eq ptr %call.i325, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @b53_switch_alloc(ptr noundef %dev, ptr noundef nonnull @bcm_sf2_io_ops, ptr noundef nonnull %call.i) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call.i326 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 176, i32 noundef 3520) #9
  %tobool15.not = icmp eq ptr %call.i326, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call ptr @of_match_node(ptr noundef nonnull @bcm_sf2_of_match, ptr noundef %1) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %lor.lhs.false

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end17
  %data20 = getelementptr inbounds %struct.of_device_id, ptr %call18, i32 0, i32 3
  %2 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data20, align 4
  %tobool21.not = icmp eq ptr %3, null
  br i1 %tobool21.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %type25 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %type25, align 4
  %reg_offsets = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_offsets, align 4
  %reg_offsets26 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %reg_offsets26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %reg_offsets26, align 4
  %core_reg_align = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %core_reg_align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_reg_align, align 4
  %core_reg_align27 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %core_reg_align27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %core_reg_align27, align 4
  %num_cfp_rules = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %num_cfp_rules to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_cfp_rules, align 4
  %num_cfp_rules28 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %num_cfp_rules28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_cfp_rules28, align 4
  %num_crossbar_int_ports = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %num_crossbar_int_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_crossbar_int_ports, align 4
  %num_crossbar_int_ports29 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %num_crossbar_int_ports29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_crossbar_int_ports29, align 4
  %call.i327 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %rcdev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i327, ptr %rcdev, align 4
  %cmp.i = icmp ugt ptr %call.i327, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call.i327 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end23
  %21 = ptrtoint ptr %type25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type25, align 4
  %chip_id = getelementptr inbounds %struct.b53_platform_data, ptr %call.i326, i32 0, i32 1
  %23 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %chip_id, align 4
  %pdata39 = getelementptr inbounds %struct.b53_device, ptr %call9, i32 0, i32 1
  %24 = ptrtoint ptr %pdata39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i326, ptr %pdata39, align 4
  %dev40 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 19
  %25 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9, ptr %dev40, align 4
  %26 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call9, align 4
  %ops42 = getelementptr inbounds %struct.dsa_switch, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %ops42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bcm_sf2_ops, ptr %ops42, align 4
  %num_tx_queues = getelementptr inbounds %struct.dsa_switch, ptr %27, i32 0, i32 15
  %29 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %num_tx_queues, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i, align 4
  %indir_lock = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %indir_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @bcm_sf2_sw_probe.__key, i16 noundef signext 3) #9
  %cfp = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %cfp, ptr noundef nonnull @.str.10, ptr noundef nonnull @bcm_sf2_sw_probe.__key.9) #9
  %rules_list = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 32, i32 4
  %31 = ptrtoint ptr %rules_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %rules_list, ptr %rules_list, align 4
  %prev.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 32, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rules_list, ptr %prev.i, align 4
  %used = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 32, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %used) #9
  %unique = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 32, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %unique) #9
  %call52 = tail call ptr @of_node_get(ptr noundef %1) #9
  %call53 = tail call ptr @of_find_node_by_name(ptr noundef %1, ptr noundef nonnull @.str.11) #9
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end37.if.end56_crit_edge, label %if.then55

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @bcm_sf2_identify_ports(ptr noundef nonnull %call.i, ptr noundef nonnull %call53)
  tail call void @of_node_put(ptr noundef nonnull %call53) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end37.if.end56_crit_edge
  %call57 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #9
  %irq0 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 13
  %33 = ptrtoint ptr %irq0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call57, ptr %irq0, align 4
  %call58 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 1) #9
  %irq1 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 14
  %34 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call58, ptr %irq1, align 4
  %call59 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call59, ptr %call.i, align 4
  %cmp.i328 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.end56.do.end64_crit_edge, label %if.end67

if.end56.do.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

do.end64:                                         ; preds = %if.end67.4.do.end64_crit_edge, %if.end67.3.do.end64_crit_edge, %if.end67.2.do.end64_crit_edge, %if.end67.1.do.end64_crit_edge, %if.end67.do.end64_crit_edge, %if.end56.do.end64_crit_edge
  %i.0351.lcssa = phi i32 [ 0, %if.end56.do.end64_crit_edge ], [ 1, %if.end67.do.end64_crit_edge ], [ 2, %if.end67.1.do.end64_crit_edge ], [ 3, %if.end67.2.do.end64_crit_edge ], [ 4, %if.end67.3.do.end64_crit_edge ], [ 5, %if.end67.4.do.end64_crit_edge ]
  %base.0350.lcssa = phi ptr [ %call.i, %if.end56.do.end64_crit_edge ], [ %incdec.ptr, %if.end67.do.end64_crit_edge ], [ %incdec.ptr.1, %if.end67.1.do.end64_crit_edge ], [ %incdec.ptr.2, %if.end67.2.do.end64_crit_edge ], [ %incdec.ptr.3, %if.end67.3.do.end64_crit_edge ], [ %incdec.ptr.4, %if.end67.4.do.end64_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr @__const.bcm_sf2_sw_probe.reg_names, i32 0, i32 %i.0351.lcssa
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %37) #12
  %38 = ptrtoint ptr %base.0350.lcssa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.0350.lcssa, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end56
  %incdec.ptr = getelementptr ptr, ptr %call.i, i32 1
  %call59.1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #9
  %41 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call59.1, ptr %incdec.ptr, align 4
  %cmp.i328.1 = icmp ugt ptr %call59.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328.1, label %if.end67.do.end64_crit_edge, label %if.end67.1

if.end67.do.end64_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

if.end67.1:                                       ; preds = %if.end67
  %incdec.ptr.1 = getelementptr ptr, ptr %call.i, i32 2
  %call59.2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #9
  %42 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call59.2, ptr %incdec.ptr.1, align 4
  %cmp.i328.2 = icmp ugt ptr %call59.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328.2, label %if.end67.1.do.end64_crit_edge, label %if.end67.2

if.end67.1.do.end64_crit_edge:                    ; preds = %if.end67.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

if.end67.2:                                       ; preds = %if.end67.1
  %incdec.ptr.2 = getelementptr ptr, ptr %call.i, i32 3
  %call59.3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 3) #9
  %43 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call59.3, ptr %incdec.ptr.2, align 4
  %cmp.i328.3 = icmp ugt ptr %call59.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328.3, label %if.end67.2.do.end64_crit_edge, label %if.end67.3

if.end67.2.do.end64_crit_edge:                    ; preds = %if.end67.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

if.end67.3:                                       ; preds = %if.end67.2
  %incdec.ptr.3 = getelementptr ptr, ptr %call.i, i32 4
  %call59.4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 4) #9
  %44 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call59.4, ptr %incdec.ptr.3, align 4
  %cmp.i328.4 = icmp ugt ptr %call59.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328.4, label %if.end67.3.do.end64_crit_edge, label %if.end67.4

if.end67.3.do.end64_crit_edge:                    ; preds = %if.end67.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

if.end67.4:                                       ; preds = %if.end67.3
  %incdec.ptr.4 = getelementptr ptr, ptr %call.i, i32 5
  %call59.5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 5) #9
  %45 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call59.5, ptr %incdec.ptr.4, align 4
  %cmp.i328.5 = icmp ugt ptr %call59.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328.5, label %if.end67.4.do.end64_crit_edge, label %if.end67.5

if.end67.4.do.end64_crit_edge:                    ; preds = %if.end67.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

if.end67.5:                                       ; preds = %if.end67.4
  %call69 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %clk = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 23
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call69, ptr %clk, align 4
  %cmp.i329 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end67.5
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %call69 to i32
  br label %cleanup

if.end75:                                         ; preds = %if.end67.5
  tail call fastcc void @clk_prepare_enable(ptr noundef %call69)
  %call79 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  %clk_mdiv = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 24
  %48 = ptrtoint ptr %clk_mdiv to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call79, ptr %clk_mdiv, align 4
  %cmp.i330 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i330, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %call79 to i32
  br label %out_clk

if.end85:                                         ; preds = %if.end75
  tail call fastcc void @clk_prepare_enable(ptr noundef %call79)
  %call88 = tail call fastcc i32 @bcm_sf2_sw_rst(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end96, label %do.end93

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call88) #12
  br label %out_clk_mdiv

if.end96:                                         ; preds = %if.end85
  tail call fastcc void @bcm_sf2_crossbar_setup(ptr noundef nonnull %call.i)
  %50 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev40, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  tail call fastcc void @bcm_sf2_gphy_enable_set(ptr noundef %53, i1 noundef zeroext true)
  %call99 = tail call fastcc i32 @bcm_sf2_mdio_register(ptr noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end107, label %do.end104

do.end104:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %out_clk_mdiv

if.end107:                                        ; preds = %if.end96
  %54 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev40, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  tail call fastcc void @bcm_sf2_gphy_enable_set(ptr noundef %57, i1 noundef zeroext false)
  %call110 = tail call i32 @bcm_sf2_cfp_rst(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end118, label %if.end107.out_mdio.sink.split_crit_edge

if.end107.out_mdio.sink.split_crit_edge:          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mdio.sink.split

if.end118:                                        ; preds = %if.end107
  tail call fastcc void @bcm_sf2_intr_disable(ptr noundef nonnull %call.i)
  %58 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq0, align 4
  %call.i331 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %59, ptr noundef nonnull @bcm_sf2_switch_0_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331)
  %cmp122 = icmp slt i32 %call.i331, 0
  br i1 %cmp122, label %if.end118.out_mdio.sink.split_crit_edge, label %if.end129

if.end118.out_mdio.sink.split_crit_edge:          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mdio.sink.split

if.end129:                                        ; preds = %if.end118
  %60 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq1, align 4
  %call.i332 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %61, ptr noundef nonnull @bcm_sf2_switch_1_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %cmp133 = icmp slt i32 %call.i332, 0
  br i1 %cmp133, label %if.end129.out_mdio.sink.split_crit_edge, label %if.end140

if.end129.out_mdio.sink.split_crit_edge:          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mdio.sink.split

if.end140:                                        ; preds = %if.end129
  %62 = ptrtoint ptr %core_reg_align27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %core_reg_align27, align 4
  %shl.i.i = shl i32 2048, %63
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 %shl.i.i
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #9
  %or = or i32 %67, 1
  %68 = ptrtoint ptr %core_reg_align27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %core_reg_align27, align 4
  %shl.i.i334 = shl i32 2048, %69
  %70 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %add.ptr.i335 = getelementptr i8, ptr %72, i32 %shl.i.i334
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i335, i32 %70) #9, !srcloc !153
  %and = and i32 %67, -2
  %73 = ptrtoint ptr %core_reg_align27 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %core_reg_align27, align 4
  %shl.i.i337 = shl i32 2048, %74
  %75 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %add.ptr.i338 = getelementptr i8, ptr %77, i32 %shl.i.i337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i338, i32 %75) #9, !srcloc !153
  %78 = ptrtoint ptr %core_reg_align27 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %core_reg_align27, align 4
  %shl.i.i340 = shl i32 2052, %79
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  %add.ptr.i341 = getelementptr i8, ptr %81, i32 %shl.i.i340
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i341) #9, !srcloc !152
  %83 = lshr i32 %82, 24
  %84 = trunc i32 %83 to i8
  %conv = add i8 %84, 1
  %hw_params = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 20
  %num_ports = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 20, i32 6
  %85 = tail call i8 @llvm.umin.i8(i8 %conv, i8 12)
  %86 = ptrtoint ptr %num_ports to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %num_ports, align 2
  %num_gphy = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 20, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef %num_gphy, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool154.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool154.not, label %if.end140.if.end158_crit_edge, label %if.then155

if.end140.if.end158_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then155:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %num_gphy to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %num_gphy, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end140.if.end158_crit_edge
  %88 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %incdec.ptr, align 4
  %90 = ptrtoint ptr %reg_offsets26 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_offsets26, align 4
  %arrayidx.i = getelementptr i16, ptr %91, i32 4
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %93 to i32
  %add.ptr.i342 = getelementptr i8, ptr %89, i32 %conv.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342) #9, !srcloc !152
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #9
  %shr = lshr i32 %95, 16
  %conv161 = trunc i32 %shr to i16
  %96 = ptrtoint ptr %hw_params to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv161, ptr %hw_params, align 4
  %conv164 = trunc i32 %95 to i16
  %core_rev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 20, i32 1
  %97 = ptrtoint ptr %core_rev to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv164, ptr %core_rev, align 2
  %98 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %incdec.ptr, align 4
  %100 = ptrtoint ptr %reg_offsets26 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_offsets26, align 4
  %arrayidx.i345 = getelementptr i16, ptr %101, i32 5
  %102 = ptrtoint ptr %arrayidx.i345 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx.i345, align 2
  %conv.i346 = zext i16 %103 to i32
  %add.ptr.i347 = getelementptr i8, ptr %99, i32 %conv.i346
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i347) #9, !srcloc !152
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #9
  %conv168 = trunc i32 %105 to i16
  %gphy_rev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %call.i, i32 0, i32 20, i32 2
  %106 = ptrtoint ptr %gphy_rev to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv168, ptr %gphy_rev, align 4
  %call170 = tail call i32 @b53_switch_register(ptr noundef nonnull %call9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %do.end176, label %if.end158.out_mdio_crit_edge

if.end158.out_mdio_crit_edge:                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mdio

do.end176:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %hw_params to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hw_params, align 4
  %conv180 = zext i16 %108 to i32
  %109 = lshr i32 %conv180, 8
  %and185 = and i32 %conv180, 255
  %110 = ptrtoint ptr %core_rev to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %core_rev, align 2
  %conv188 = zext i16 %111 to i32
  %112 = lshr i32 %conv188, 8
  %and193 = and i32 %conv188, 255
  %113 = ptrtoint ptr %irq0 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq0, align 4
  %115 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %109, i32 noundef %and185, i32 noundef %112, i32 noundef %and193, i32 noundef %114, i32 noundef %116) #12
  br label %cleanup

out_mdio.sink.split:                              ; preds = %if.end129.out_mdio.sink.split_crit_edge, %if.end118.out_mdio.sink.split_crit_edge, %if.end107.out_mdio.sink.split_crit_edge
  %.str.32.sink = phi ptr [ @.str.24, %if.end107.out_mdio.sink.split_crit_edge ], [ @.str.28, %if.end118.out_mdio.sink.split_crit_edge ], [ @.str.32, %if.end129.out_mdio.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call110, %if.end107.out_mdio.sink.split_crit_edge ], [ %call.i331, %if.end118.out_mdio.sink.split_crit_edge ], [ %call.i332, %if.end129.out_mdio.sink.split_crit_edge ]
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.32.sink) #12
  br label %out_mdio

out_mdio:                                         ; preds = %out_mdio.sink.split, %if.end158.out_mdio_crit_edge
  %ret.0 = phi i32 [ %call170, %if.end158.out_mdio_crit_edge ], [ %ret.0.ph, %out_mdio.sink.split ]
  tail call fastcc void @bcm_sf2_mdio_unregister(ptr noundef nonnull %call.i)
  br label %out_clk_mdiv

out_clk_mdiv:                                     ; preds = %out_mdio, %do.end104, %do.end93
  %ret.1 = phi i32 [ %call88, %do.end93 ], [ %call99, %do.end104 ], [ %ret.0, %out_mdio ]
  %117 = ptrtoint ptr %clk_mdiv to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk_mdiv, align 4
  tail call void @clk_disable(ptr noundef %118) #9
  tail call void @clk_unprepare(ptr noundef %118) #9
  br label %out_clk

out_clk:                                          ; preds = %out_clk_mdiv, %if.then82
  %ret.2 = phi i32 [ %49, %if.then82 ], [ %ret.1, %out_clk_mdiv ]
  %119 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %120) #9
  tail call void @clk_unprepare(ptr noundef %120) #9
  br label %cleanup

cleanup:                                          ; preds = %out_clk, %do.end176, %if.then72, %do.end64, %if.then34, %lor.lhs.false.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then34 ], [ %40, %do.end64 ], [ %47, %if.then72 ], [ %ret.2, %out_clk ], [ 0, %do.end176 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol_ports_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %wol_ports_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wol_ports_mask, align 4
  %intrl2_0.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %intrl2_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intrl2_0.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1) #9, !srcloc !153
  %irq0_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %irq0_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %irq0_mask.i.i, align 4
  %6 = ptrtoint ptr %intrl2_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intrl2_0.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #9, !srcloc !153
  %intrl2_1.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %intrl2_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intrl2_1.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 -1) #9, !srcloc !153
  %irq1_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %irq1_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq1_mask.i.i, align 4
  %11 = ptrtoint ptr %intrl2_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intrl2_1.i.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 -1) #9, !srcloc !153
  %dev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @dsa_unregister_switch(ptr noundef %16) #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void @bcm_sf2_cfp_exit(ptr noundef %20) #9
  %slave_mii_bus.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 29
  %21 = ptrtoint ptr %slave_mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave_mii_bus.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %22) #9
  %23 = ptrtoint ptr %slave_mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave_mii_bus.i, align 4
  tail call void @mdiobus_free(ptr noundef %24) #9
  %master_mii_dn.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 28
  %25 = ptrtoint ptr %master_mii_dn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master_mii_dn.i, align 4
  tail call void @of_node_put(ptr noundef %26) #9
  %clk_mdiv = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 24
  %27 = ptrtoint ptr %clk_mdiv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_mdiv, align 4
  tail call void @clk_disable(ptr noundef %28) #9
  tail call void @clk_unprepare(ptr noundef %28) #9
  %clk = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #9
  tail call void @clk_unprepare(ptr noundef %30) #9
  %type = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29304, i32 %32)
  %cmp = icmp eq i32 %32, 29304
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rcdev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rcdev, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %34) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_shutdown(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_gphy = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 20, i32 3
  %2 = ptrtoint ptr %num_gphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_gphy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %priv.i.i = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.b53_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %15, i32 6
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %19 = and i32 %18, -989855745
  %20 = or i32 %19, 536870912
  %21 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg.i.i, align 4
  %23 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i38.i = getelementptr i16, ptr %24, i32 6
  %25 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i38.i, align 2
  %conv.i39.i = zext i16 %26 to i32
  %add.ptr.i40.i = getelementptr i8, ptr %22, i32 %conv.i39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %20) #9, !srcloc !153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 4509708) #9
  %28 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i, align 4
  %30 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i43.i = getelementptr i16, ptr %31, i32 6
  %32 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i43.i, align 2
  %conv.i44.i = zext i16 %33 to i32
  %add.ptr.i45.i = getelementptr i8, ptr %29, i32 %conv.i44.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #9, !srcloc !152
  %35 = and i32 %34, -536870913
  %36 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i.i, align 4
  %38 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i48.i = getelementptr i16, ptr %39, i32 6
  %40 = ptrtoint ptr %arrayidx.i48.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i48.i, align 2
  %conv.i49.i = zext i16 %41 to i32
  %add.ptr.i50.i = getelementptr i8, ptr %37, i32 %conv.i49.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %35) #9, !srcloc !153
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %dev3 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 19
  %42 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev3, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %45) #9
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_identify_ports(ptr noundef %priv, ptr noundef %dn) unnamed_addr #2 align 64 {
entry:
  %port_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_num) #9
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %port_num, align 4, !annotation !154
  %moca_port = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 25
  %7 = ptrtoint ptr %moca_port to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %moca_port, align 4
  %call = tail call ptr @of_get_next_available_child(ptr noundef %dn, ptr noundef null) #9
  %cmp.not51 = icmp eq ptr %call, null
  br i1 %cmp.not51, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %int_phy_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 26
  %brcm_tag_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 31
  %type = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.052 = phi ptr [ %call, %for.body.lr.ph ], [ %call34, %for.inc.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %port.052, ptr noundef nonnull @.str.2, ptr noundef nonnull %port_num, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp4 = icmp ugt i32 %9, 11
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %9) #12
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 21, i32 %9
  %call7 = call i32 @of_get_phy_mode(ptr noundef nonnull %port.052, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end10:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12 = icmp eq i32 %11, 1
  br i1 %cmp12, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num, align 4
  %shl = shl nuw i32 1, %13
  %14 = ptrtoint ptr %int_phy_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %int_phy_mask, align 4
  %or = or i32 %15, %shl
  store i32 %or, ptr %int_phy_mask, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %arrayidx, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %17 = phi i32 [ %.pr, %if.then13 ], [ %11, %if.end10.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %17)
  %cmp16 = icmp eq i32 %17, 17
  br i1 %cmp16, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_num, align 4
  %20 = ptrtoint ptr %moca_port to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %moca_port, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %call.i = call ptr @of_find_property(ptr noundef nonnull %port.052, ptr noundef nonnull @.str.48, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i, null
  %21 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr54 = load i32, ptr %port_num, align 4
  br i1 %tobool.i.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %shl22 = shl nuw i32 1, %.pr54
  %22 = ptrtoint ptr %brcm_tag_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brcm_tag_mask, align 4
  %or23 = or i32 %23, %shl22
  store i32 %or23, ptr %brcm_tag_mask, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr54)
  %cmp25 = icmp eq i32 %.pr54, 5
  br i1 %cmp25, label %land.lhs.true, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end24
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29304, i32 %25)
  %cmp26 = icmp eq i32 %25, 29304
  br i1 %cmp26, label %if.then27, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true
  %call28 = call ptr @of_find_property(ptr noundef nonnull %port.052, ptr noundef nonnull @.str.49, ptr noundef null) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then27.for.inc_crit_edge, label %if.then30

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 @of_remove_property(ptr noundef nonnull %port.052, ptr noundef nonnull %call28) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.then27.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end24.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %do.end, %for.body.for.inc_crit_edge
  %call34 = call ptr @of_get_next_available_child(ptr noundef %dn, ptr noundef nonnull %port.052) #9
  %cmp.not = icmp eq ptr %call34, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_num) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_sw_rst(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29304, i32 %1)
  %cmp = icmp eq i32 %1, 29304
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %rcdev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rcdev, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcdev, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %5) #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 484, %7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %11 = or i32 %10, -805306368
  %12 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i26 = shl i32 484, %13
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %add.ptr.i27 = getelementptr i8, ptr %15, i32 %shl.i.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %11) #9, !srcloc !153
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %if.end4
  %timeout.0 = phi i32 [ 1000, %if.end4 ], [ %dec, %if.end9.do.body_crit_edge ]
  %16 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i29 = shl i32 484, %17
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %add.ptr.i30 = getelementptr i8, ptr %19, i32 %shl.i.i29
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #9, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool7.not = icmp sgt i32 %20, -1
  br i1 %tobool7.not, label %do.end, label %if.end9

if.end9:                                          ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %dec = add nsw i32 %timeout.0, -1
  %cmp10.not = icmp eq i32 %timeout.0, 0
  br i1 %cmp10.not, label %if.end9.cleanup_crit_edge, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp11 = icmp eq i32 %timeout.0, 0
  %spec.select = select i1 %cmp11, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %if.then.cleanup_crit_edge ], [ %spec.select, %do.end ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_crossbar_setup(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %num_crossbar_int_ports = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 11
  %6 = ptrtoint ptr %num_crossbar_int_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crossbar_int_ports, align 4
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  %reg.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 8
  %10 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %type = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 7
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18696, i32 %16)
  %cond = icmp eq i32 %16, 18696
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %and = and i32 %17, %notmask
  %int_phy_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 26
  %18 = ptrtoint ptr %int_phy_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %int_phy_mask, align 4
  %and5 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %arrayidx = getelementptr %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 21, i32 7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = add i32 %21, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %if.else.sw.epilog_crit_edge, label %do.end

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 526, i32 noundef 9, ptr noundef nonnull @.str.50) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.else.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb.sw.epilog_crit_edge ], [ 2, %if.else.sw.epilog_crit_edge ]
  %or = or i32 %and, %.sink
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg.i, align 4
  %27 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i80 = getelementptr i16, ptr %28, i32 7
  %29 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i80, align 2
  %conv.i81 = zext i16 %30 to i32
  %add.ptr.i82 = getelementptr i8, ptr %26, i32 %conv.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %24) #9, !srcloc !153
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i, align 4
  %33 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i85 = getelementptr i16, ptr %34, i32 7
  %35 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i85, align 2
  %conv.i86 = zext i16 %36 to i32
  %add.ptr.i87 = getelementptr i8, ptr %32, i32 %conv.i86
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #9, !srcloc !152
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = ptrtoint ptr %num_crossbar_int_ports to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_crossbar_int_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp89.not = icmp eq i32 %40, 0
  br i1 %cmp89.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %41 = phi i32 [ %43, %for.inc.for.body_crit_edge ], [ %40, %sw.epilog.for.body_crit_edge ]
  %i.090 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_sf2_crossbar_setup.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_sf2_crossbar_setup, %if.then47)) #9
          to label %for.inc [label %if.then47], !srcloc !155

if.then47:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mul36 = mul i32 %41, %i.090
  %shr = lshr i32 %38, %mul36
  %and48 = and i32 %shr, %sub
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_sf2_crossbar_setup.__UNIQUE_ID_ddebug497, ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %i.090, i32 noundef %and48) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %for.body
  %inc = add nuw i32 %i.090, 1
  %42 = ptrtoint ptr %num_crossbar_int_ports to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_crossbar_int_ports, align 4
  %cmp = icmp ult i32 %inc, %43
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_gphy_enable_set(ptr nocapture noundef readonly %ds, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %reg.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %7, i32 6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = and i32 %11, -60
  %and = or i32 %or, 32
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 4
  %15 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i38 = getelementptr i16, ptr %16, i32 6
  %17 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i38, align 2
  %conv.i39 = zext i16 %18 to i32
  %add.ptr.i40 = getelementptr i8, ptr %14, i32 %conv.i39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %12) #9, !srcloc !153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 4509708) #9
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i, align 4
  %22 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i43 = getelementptr i16, ptr %23, i32 6
  %24 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i43, align 2
  %conv.i44 = zext i16 %25 to i32
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 %conv.i44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #9, !srcloc !152
  %27 = and i32 %26, -536870913
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i, align 4
  %30 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i48 = getelementptr i16, ptr %31, i32 6
  %32 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i48, align 2
  %conv.i49 = zext i16 %33 to i32
  %add.ptr.i50 = getelementptr i8, ptr %29, i32 %conv.i49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %27) #9, !srcloc !153
  br label %if.end15

if.else:                                          ; preds = %entry
  %or4 = or i32 %11, 35
  %34 = tail call i32 @llvm.bswap.i32(i32 %or4) #9
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i, align 4
  %37 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i53 = getelementptr i16, ptr %38, i32 6
  %39 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i53, align 2
  %conv.i54 = zext i16 %40 to i32
  %add.ptr.i55 = getelementptr i8, ptr %36, i32 %conv.i54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %34) #9, !srcloc !153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #9
  %or5 = or i32 %11, 51
  %42 = tail call i32 @llvm.bswap.i32(i32 %or5) #9
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i, align 4
  %45 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i58 = getelementptr i16, ptr %46, i32 6
  %47 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i58, align 2
  %conv.i59 = zext i16 %48 to i32
  %add.ptr.i60 = getelementptr i8, ptr %44, i32 %conv.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %42) #9, !srcloc !153
  %type = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %50, label %if.else.if.end15_crit_edge [
    i32 29304, label %if.else.if.then11_crit_edge
    i32 29765, label %if.else.if.then11_crit_edge70
  ]

if.else.if.then11_crit_edge70:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.else.if.then11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.else.if.then11_crit_edge, %if.else.if.then11_crit_edge70
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  %54 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i62 = getelementptr i16, ptr %55, i32 12
  %56 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i62, align 2
  %conv.i63 = zext i16 %57 to i32
  %add.ptr.i64 = getelementptr i8, ptr %53, i32 %conv.i63
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #9, !srcloc !152
  %59 = or i32 %58, 1
  %60 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i, align 4
  %62 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i67 = getelementptr i16, ptr %63, i32 12
  %64 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i67, align 2
  %conv.i68 = zext i16 %65 to i32
  %add.ptr.i69 = getelementptr i8, ptr %61, i32 %conv.i68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %59) #9, !srcloc !153
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_mdio_register(ptr nocapture noundef %ds) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !154
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54) #9
  %call2 = tail call ptr @of_mdio_find_bus(ptr noundef %call1) #9
  %master_mii_bus = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 30
  %5 = ptrtoint ptr %master_mii_bus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %master_mii_bus, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mii_bus, ptr %call2, i32 0, i32 11
  %call5 = tail call ptr @get_device(ptr noundef %dev) #9
  %master_mii_dn = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %master_mii_dn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %master_mii_dn, align 4
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #9
  %slave_mii_bus = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 29
  %7 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %slave_mii_bus, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef %call1) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv12 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %priv12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %priv12, align 8
  %9 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave_mii_bus, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.55, ptr %name, align 4
  %12 = load ptr, ptr %slave_mii_bus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bcm_sf2_sw_mdio_read, ptr %read, align 4
  %14 = load ptr, ptr %slave_mii_bus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @bcm_sf2_sw_mdio_write, ptr %write, align 8
  %16 = load ptr, ptr %slave_mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 2
  %17 = load i32, ptr @bcm_sf2_mdio_register.index, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr @bcm_sf2_mdio_register.index, align 4
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.56, i32 noundef %17)
  %18 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave_mii_bus, align 4
  %of_node = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 11, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1, ptr %of_node, align 8
  %call20 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %indir_phy_mask23 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 27
  br i1 %tobool21.not, label %if.end10.if.end24_crit_edge, label %if.then22

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %indir_phy_mask23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %indir_phy_mask23, align 4
  %or = or i32 %22, 1073741825
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end10.if.end24_crit_edge
  %.sink = phi i32 [ %or, %if.then22 ], [ 0, %if.end10.if.end24_crit_edge ]
  %23 = ptrtoint ptr %indir_phy_mask23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %indir_phy_mask23, align 4
  %indir_phy_mask25 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 27
  %phys_mii_mask = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 9
  %24 = ptrtoint ptr %phys_mii_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %phys_mii_mask, align 4
  %25 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave_mii_bus, align 4
  %slave_mii_bus27 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 10
  %27 = ptrtoint ptr %slave_mii_bus27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %slave_mii_bus27, align 4
  %28 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds, align 4
  %parent = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %32 = load ptr, ptr %slave_mii_bus, align 4
  %parent30 = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %parent30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %parent30, align 4
  %34 = ptrtoint ptr %indir_phy_mask25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %indir_phy_mask25, align 4
  %neg = xor i32 %35, -1
  %36 = load ptr, ptr %slave_mii_bus, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %neg, ptr %phy_mask, align 8
  %call33 = tail call ptr @of_get_next_available_child(ptr noundef %call1, ptr noundef null) #9
  %cmp.not116 = icmp eq ptr %call33, null
  br i1 %cmp.not116, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end24.for.body_crit_edge
  %child.0117 = phi ptr [ %call57, %for.inc.for.body_crit_edge ], [ %call33, %if.end24.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0117, ptr noundef nonnull @.str.2, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool35.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool35.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %39)
  %cmp36 = icmp sgt i32 %39, 31
  br i1 %cmp36, label %lor.lhs.false.for.inc_crit_edge, label %if.end38

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end38:                                         ; preds = %lor.lhs.false
  %40 = ptrtoint ptr %indir_phy_mask25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %indir_phy_mask25, align 4
  %shl = shl nuw i32 1, %39
  %and = and i32 %41, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end38.for.inc_crit_edge, label %if.end42

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end42:                                         ; preds = %if.end38
  %call43 = call ptr @of_find_property(ptr noundef nonnull %child.0117, ptr noundef nonnull @.str.58, ptr noundef null) #9
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = call i32 @of_remove_property(ptr noundef nonnull %child.0117, ptr noundef nonnull %call43) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %call48 = call ptr @of_find_property(ptr noundef nonnull %child.0117, ptr noundef nonnull @.str.59, ptr noundef null) #9
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.if.end52_crit_edge, label %if.then50

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call i32 @of_remove_property(ptr noundef nonnull %child.0117, ptr noundef nonnull %call48) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47.if.end52_crit_edge
  %call53 = call ptr @of_phy_find_device(ptr noundef nonnull %child.0117) #9
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end52.for.inc_crit_edge, label %if.then55

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  call void @phy_device_remove(ptr noundef nonnull %call53) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %if.end52.for.inc_crit_edge, %if.end38.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call57 = call ptr @of_get_next_available_child(ptr noundef %call1, ptr noundef nonnull %child.0117) #9
  %cmp.not = icmp eq ptr %call57, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end24.for.end_crit_edge
  %42 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave_mii_bus, align 4
  %call59 = call i32 @__mdiobus_register(ptr noundef %43, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %tobool61.not = icmp eq ptr %call1, null
  %or.cond = or i1 %tobool61.not, %tobool60.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.then62

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then62:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %slave_mii_bus, align 4
  call void @mdiobus_free(ptr noundef %45) #9
  call void @of_node_put(ptr noundef nonnull %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %for.end.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi i32 [ -12, %if.then9 ], [ -517, %if.then ], [ %call59, %if.then62 ], [ %call59, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_cfp_rst(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_intr_disable(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intrl2_0.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %intrl2_0.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intrl2_0.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #9, !srcloc !153
  %irq0_mask.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %irq0_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq0_mask.i, align 4
  %3 = ptrtoint ptr %intrl2_0.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intrl2_0.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #9, !srcloc !153
  %intrl2_1.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %intrl2_1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intrl2_1.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 -1) #9, !srcloc !153
  %irq1_mask.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 18
  %7 = ptrtoint ptr %irq1_mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq1_mask.i, align 4
  %8 = ptrtoint ptr %intrl2_1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intrl2_1.i.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 -1) #9, !srcloc !153
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_switch_0_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %intrl2_0.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %intrl2_0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intrl2_0.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !152
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %irq0_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %irq0_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq0_mask, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %7, %neg
  %irq0_stat = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %irq0_stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %irq0_stat, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %12 = ptrtoint ptr %intrl2_0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intrl2_0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !153
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_switch_1_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %intrl2_1.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %intrl2_1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intrl2_1.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !152
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %irq1_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %irq1_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq1_mask, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %7, %neg
  %irq1_stat = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %irq1_stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %irq1_stat, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %12 = ptrtoint ptr %intrl2_1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intrl2_1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !153
  %14 = ptrtoint ptr %irq1_stat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq1_stat, align 4
  %and4 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %link = getelementptr %struct.bcm_sf2_priv, ptr %3, i32 0, i32 21, i32 7, i32 1
  %16 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %link, align 4
  tail call void @dsa_port_phylink_mac_change(ptr noundef %dev_id, i32 noundef 7, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %irq1_stat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq1_stat, align 4
  %and6 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %link11 = getelementptr %struct.bcm_sf2_priv, ptr %3, i32 0, i32 21, i32 7, i32 1
  %19 = ptrtoint ptr %link11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %link11, align 4
  tail call void @dsa_port_phylink_mac_change(ptr noundef %dev_id, i32 noundef 7, i1 noundef zeroext false) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_mdio_unregister(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_mii_bus = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_mii_bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #9
  %2 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_mii_bus, align 4
  tail call void @mdiobus_free(ptr noundef %3) #9
  %master_mii_dn = getelementptr inbounds %struct.bcm_sf2_priv, ptr %priv, i32 0, i32 28
  %4 = ptrtoint ptr %master_mii_dn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_mii_dn, align 4
  tail call void @of_node_put(ptr noundef %5) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read8(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 10
  %conv2 = zext i8 %reg to i32
  %shl3 = shl nuw nsw i32 %conv2, 2
  %or = or i32 %shl3, %shl
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 %or, %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %7 = lshr i32 %6, 24
  %conv4 = trunc i32 %7 to i8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %val, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read16(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 10
  %conv2 = zext i8 %reg to i32
  %shl3 = shl nuw nsw i32 %conv2, 2
  %or = or i32 %shl3, %shl
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 %or, %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %conv4 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %val, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read32(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 10
  %conv2 = zext i8 %reg to i32
  %shl3 = shl nuw nsw i32 %conv2, 2
  %or = or i32 %shl3, %shl
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 %or, %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read64(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 10
  %conv2 = zext i8 %reg to i32
  %shl3 = shl nuw nsw i32 %conv2, 2
  %or = or i32 %shl3, %shl
  %indir_lock.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %indir_lock.i) #9
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 %or, %3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %shl.i.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i7.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #9, !srcloc !152
  tail call void @_raw_spin_unlock(ptr noundef %indir_lock.i) #9
  %14 = zext i32 %13 to i64
  %15 = zext i32 %6 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #9
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write8(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i8 %value to i32
  %conv2 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv2, 10
  %conv3 = zext i8 %reg to i32
  %shl4 = shl nuw nsw i32 %conv3, 2
  %or = or i32 %shl4, %shl
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 %or, %3
  %4 = shl nuw i32 %conv, 24
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !153
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write16(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i16 %value to i32
  %conv2 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv2, 10
  %conv3 = zext i8 %reg to i32
  %shl4 = shl nuw nsw i32 %conv3, 2
  %or = or i32 %shl4, %shl
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 %or, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !153
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write32(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 10
  %conv2 = zext i8 %reg to i32
  %shl3 = shl nuw nsw i32 %conv2, 2
  %or = or i32 %shl3, %shl
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 %or, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %value) #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !153
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write64(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i64 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 10
  %conv2 = zext i8 %reg to i32
  %shl3 = shl nuw nsw i32 %conv2, 2
  %or = or i32 %shl3, %shl
  %indir_lock.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %indir_lock.i) #9
  %shr.i = lshr i64 %value, 32
  %conv.i = trunc i64 %shr.i to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #9, !srcloc !153
  %conv2.i = trunc i64 %value to i32
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 %or, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv2.i) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %11) #9, !srcloc !153
  tail call void @_raw_spin_unlock(ptr noundef %indir_lock.i) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_get_tag_protocol(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_setup(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %num_ports = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 20, i32 6
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_ports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp53.not = icmp eq i8 %5, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_user_port.exit.thread, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %9 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %10, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %port.054)
  %cmp5.i.i = icmp eq i32 %12, %port.054
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %13 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i = icmp eq i32 %15, 3
  br i1 %cmp.i, label %dsa_is_user_port.exit.if.then_crit_edge, label %dsa_is_user_port.exit.for.body.i.i31_crit_edge

dsa_is_user_port.exit.for.body.i.i31_crit_edge:   ; preds = %dsa_is_user_port.exit
  br label %for.body.i.i31

dsa_is_user_port.exit.if.then_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

dsa_is_user_port.exit.thread:                     ; preds = %for.body
  call void @__asan_load4_noabort(i32 24)
  %16 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i49 = icmp eq i32 %16, 3
  br i1 %cmp.i49, label %dsa_is_user_port.exit.thread.if.then_crit_edge, label %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge

dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

dsa_is_user_port.exit.thread.if.then_crit_edge:   ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %dsa_is_user_port.exit.thread.if.then_crit_edge, %dsa_is_user_port.exit.if.then_crit_edge
  %call3 = tail call i32 @bcm_sf2_port_setup(ptr noundef %ds, i32 noundef %port.054, ptr noundef null)
  br label %for.inc

for.body.i.i31:                                   ; preds = %for.inc.i.i37.for.body.i.i31_crit_edge, %dsa_is_user_port.exit.for.body.i.i31_crit_edge
  %.pn22.i.i28 = phi ptr [ %.pn.i.i35, %for.inc.i.i37.for.body.i.i31_crit_edge ], [ %.pn20.i.i, %dsa_is_user_port.exit.for.body.i.i31_crit_edge ]
  %ds3.i.i29 = getelementptr i8, ptr %.pn22.i.i28, i32 -432
  %17 = ptrtoint ptr %ds3.i.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds3.i.i29, align 4
  %cmp4.i.i30 = icmp eq ptr %18, %ds
  br i1 %cmp4.i.i30, label %land.lhs.true.i.i34, label %for.body.i.i31.for.inc.i.i37_crit_edge

for.body.i.i31.for.inc.i.i37_crit_edge:           ; preds = %for.body.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i37

land.lhs.true.i.i34:                              ; preds = %for.body.i.i31
  %index.i.i32 = getelementptr i8, ptr %.pn22.i.i28, i32 -428
  %19 = ptrtoint ptr %index.i.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %port.054)
  %cmp5.i.i33 = icmp eq i32 %20, %port.054
  br i1 %cmp5.i.i33, label %cleanup.split.loop.exit18.i.i39, label %land.lhs.true.i.i34.for.inc.i.i37_crit_edge

land.lhs.true.i.i34.for.inc.i.i37_crit_edge:      ; preds = %land.lhs.true.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i37

for.inc.i.i37:                                    ; preds = %land.lhs.true.i.i34.for.inc.i.i37_crit_edge, %for.body.i.i31.for.inc.i.i37_crit_edge
  %21 = ptrtoint ptr %.pn22.i.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i35 = load ptr, ptr %.pn22.i.i28, align 4
  %cmp.not.i.i36 = icmp eq ptr %.pn.i.i35, %ports.i.i
  br i1 %cmp.not.i.i36, label %for.inc.i.i37.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i37.for.body.i.i31_crit_edge

for.inc.i.i37.for.body.i.i31_crit_edge:           ; preds = %for.inc.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i31

for.inc.i.i37.dsa_is_cpu_port.exit_crit_edge:     ; preds = %for.inc.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i39:                  ; preds = %land.lhs.true.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i38 = getelementptr i8, ptr %.pn22.i.i28, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i39, %for.inc.i.i37.dsa_is_cpu_port.exit_crit_edge, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i40 = phi ptr [ %dp.0.le.i.i38, %cleanup.split.loop.exit18.i.i39 ], [ null, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i37.dsa_is_cpu_port.exit_crit_edge ]
  %type.i41 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i40, i32 0, i32 6
  %22 = ptrtoint ptr %type.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i42 = icmp eq i32 %23, 1
  br i1 %cmp.i42, label %if.then5, label %if.else6

if.then5:                                         ; preds = %dsa_is_cpu_port.exit
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.b53_device, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv1.i.i, align 4
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 9088, %29
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %shl.i.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %mul.i = shl nuw i32 %port.054, 1
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %33, %neg.i
  %34 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i78.i = shl i32 9088, %35
  %36 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %27, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %38, i32 %shl.i.i78.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %36) #9, !srcloc !153
  %39 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i81.i = shl i32 44, %40
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %27, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %42, i32 %shl.i.i81.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 33554432) #9, !srcloc !153
  %43 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i84.i = shl i32 136, %44
  %45 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %27, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %46, i32 %shl.i.i84.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #9, !srcloc !152
  %48 = or i32 %47, 1073741824
  %49 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i87.i = shl i32 136, %50
  %51 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %27, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %52, i32 %shl.i.i87.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %48) #9, !srcloc !153
  %mul3.i = shl i32 %port.054, 4
  %add.i = add nuw nsw i32 %mul3.i, 49600
  %53 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i90.i = shl i32 %add.i, %54
  %55 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %27, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %56, i32 %shl.i.i90.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91.i) #9, !srcloc !152
  %58 = or i32 %57, -2000225792
  %59 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i93.i = shl i32 %add.i, %60
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %27, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %62, i32 %shl.i.i93.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 %58) #9, !srcloc !153
  tail call void @b53_brcm_hdr_setup(ptr noundef %ds, i32 noundef %port.054) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %port.054)
  %cmp10.i = icmp eq i32 %port.054, 8
  br i1 %cmp10.i, label %if.then.i, label %if.else27.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %type.i43 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %27, i32 0, i32 7
  %63 = ptrtoint ptr %type.i43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18696, i32 %64)
  %switch.selectcmp.case1.i = icmp eq i32 %64, 18696
  call void @__sanitizer_cov_trace_const_cmp4(i32 29765, i32 %64)
  %switch.selectcmp.case2.i = icmp eq i32 %64, 29765
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %65 = select i1 %switch.selectcmp.i, i32 56, i32 233536
  %66 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i96.i = shl i32 %65, %67
  %68 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %27, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %69, i32 %shl.i.i96.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i) #9, !srcloc !152
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  %72 = ptrtoint ptr %type.i43 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18696, i32 %73)
  %cmp18.i = icmp eq i32 %73, 18696
  %or20.i = or i32 %71, 193
  %or16.i = and i32 %71, -194
  %and22.i = or i32 %or16.i, 129
  %reg.1.i = select i1 %cmp18.i, i32 %or20.i, i32 %and22.i
  %74 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i99.i = shl i32 %65, %75
  %76 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i) #9
  %77 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %27, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %78, i32 %shl.i.i99.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 %76) #9, !srcloc !153
  %79 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i102.i = shl i32 32, %80
  %81 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %27, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %82, i32 %shl.i.i102.i
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #9, !srcloc !152
  %84 = and i32 %83, -520093697
  %85 = or i32 %84, 469762048
  %86 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i105.i = shl i32 32, %87
  %88 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %27, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %89, i32 %shl.i.i105.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %85) #9, !srcloc !153
  br label %bcm_sf2_imp_setup.exit

if.else27.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %mul28.i = shl i32 %port.054, 2
  %90 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i108.i = shl i32 %mul28.i, %91
  %92 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %27, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %93, i32 %shl.i.i108.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109.i) #9, !srcloc !152
  %95 = and i32 %94, -50331649
  %96 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i111.i = shl i32 %mul28.i, %97
  %98 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %27, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %99, i32 %shl.i.i111.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 %95) #9, !srcloc !153
  br label %bcm_sf2_imp_setup.exit

bcm_sf2_imp_setup.exit:                           ; preds = %if.else27.i, %if.then.i
  %enabled.i = getelementptr %struct.bcm_sf2_priv, ptr %27, i32 0, i32 21, i32 %port.054, i32 2
  %100 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %enabled.i, align 4
  br label %for.inc

if.else6:                                         ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bcm_sf2_port_disable(ptr noundef %ds, i32 noundef %port.054)
  br label %for.inc

for.inc:                                          ; preds = %if.else6, %bcm_sf2_imp_setup.exit, %if.then
  %inc = add nuw nsw i32 %port.054, 1
  %101 = ptrtoint ptr %num_ports to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_ports, align 2
  %conv = zext i8 %102 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call8 = tail call i32 @b53_configure_vlan(ptr noundef %ds) #9
  %103 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv.i, align 4
  %priv1.i.i45 = getelementptr inbounds %struct.b53_device, ptr %104, i32 0, i32 23
  %105 = ptrtoint ptr %priv1.i.i45 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv1.i.i45, align 4
  %acb.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %acb.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %acb.i.i, align 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #9, !srcloc !152
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #9
  %or.i = or i32 %110, 12
  %111 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %112 = ptrtoint ptr %acb.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %acb.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #9, !srcloc !153
  %and.i46 = and i32 %110, -16
  %or2.i = or i32 %and.i46, 3
  %114 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #9
  %115 = ptrtoint ptr %acb.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %acb.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #9, !srcloc !153
  %call9 = tail call i32 @b53_setup_devlink_resources(ptr noundef %ds) #9
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_teardown(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_devlink_resources_unregister(ptr noundef %ds) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_sf2_sw_get_phy_flags(ptr nocapture noundef readonly %ds, i32 noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %int_phy_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %int_phy_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_phy_mask, align 4
  %shl = shl nuw i32 1, %port
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gphy_rev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %gphy_rev to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gphy_rev, align 4
  %conv = zext i16 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 41, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_validate(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #2 align 64 {
entry:
  %mask = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mask) #9
  %4 = call ptr @memset(ptr %mask, i32 0, i32 12)
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  %7 = add i32 %6, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %entry.if.end19_crit_edge, label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %6, label %if.then [
    i32 2, label %land.lhs.true.if.end19_crit_edge
    i32 6, label %land.lhs.true.if.end19_crit_edge66
    i32 3, label %land.lhs.true.if.end19_crit_edge67
    i32 1, label %land.lhs.true.if.end19_crit_edge68
    i32 17, label %land.lhs.true.if.end19_crit_edge69
  ]

land.lhs.true.if.end19_crit_edge69:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.if.end19_crit_edge68:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.if.end19_crit_edge67:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.if.end19_crit_edge66:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %10 = call ptr @memset(ptr %supported, i32 0, i32 12)
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 2052, %12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %shl.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %port)
  %cmp16.not = icmp eq i32 %16, %port
  br i1 %cmp16.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds, align 4
  %19 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interface, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.40, i32 noundef %20, i32 noundef %port) #12
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge66, %land.lhs.true.if.end19_crit_edge67, %land.lhs.true.if.end19_crit_edge68, %land.lhs.true.if.end19_crit_edge69, %entry.if.end19_crit_edge
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %or.i = or i32 %22, 64
  store i32 %or.i, ptr %mask, align 4
  call void @phylink_set_port_modes(ptr noundef nonnull %mask) #9
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %or.i58 = or i32 %24, 24576
  store i32 %or.i58, ptr %mask, align 4
  %25 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interface, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %26, label %if.then28 [
    i32 2, label %if.end19.if.end31_crit_edge
    i32 6, label %if.end19.if.end31_crit_edge70
  ]

if.end19.if.end31_crit_edge70:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %or.i60 = or i32 %24, 24624
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i60, ptr %mask, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end19.if.end31_crit_edge, %if.end19.if.end31_crit_edge70
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask, align 4
  %or.i64 = or i32 %30, 15
  store i32 %or.i64, ptr %mask, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported, ptr noundef nonnull %mask, i32 noundef 92) #9
  %call.i.i65 = call i32 @__bitmap_and(ptr noundef %state, ptr noundef %state, ptr noundef nonnull %mask, i32 noundef 92) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mask) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_mac_config(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 2052, %5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %port)
  %cmp = icmp eq i32 %9, %port
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %10 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 9, label %sw.bb
    i32 12, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb3
    i32 6, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %tobool.not = phi i1 [ false, %sw.bb ], [ true, %if.end.sw.epilog_crit_edge ], [ true, %sw.bb4 ], [ true, %sw.bb3 ]
  %port_mode.0 = phi i32 [ 12, %sw.bb ], [ %11, %if.end.sw.epilog_crit_edge ], [ 16, %sw.bb4 ], [ 8, %sw.bb3 ]
  %type.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18696, i32 %14)
  %cond.i = icmp eq i32 %14, 18696
  br i1 %cond.i, label %sw.bb.i, label %sw.default2.i

sw.bb.i:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %port)
  %cond41.i = icmp eq i32 %port, 7
  br i1 %cond41.i, label %sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge, label %sw.bb.i.land.end.i_crit_edge

sw.bb.i.land.end.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit

sw.default2.i:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %port)
  %15 = icmp ult i32 %port, 3
  br i1 %15, label %switch.lookup, label %sw.default2.i.land.end.i_crit_edge

sw.default2.i.land.end.i_crit_edge:               ; preds = %sw.default2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.end.i:                                       ; preds = %sw.default2.i.land.end.i_crit_edge, %sw.bb.i.land.end.i_crit_edge
  %.b46.i = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge, label %if.then.i, !prof !156

land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %port) #9
  br label %bcm_sf2_reg_rgmii_cntrl.exit

switch.lookup:                                    ; preds = %sw.default2.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.offset = add i32 %port, 8
  br label %bcm_sf2_reg_rgmii_cntrl.exit

bcm_sf2_reg_rgmii_cntrl.exit:                     ; preds = %switch.lookup, %if.then.i, %land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge, %sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge
  %retval.0.i = phi i32 [ 11, %sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge ], [ 1, %if.then.i ], [ 1, %land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge ], [ %switch.offset, %switch.lookup ]
  %reg.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %19, i32 %retval.0.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.ptr.i26 = getelementptr i8, ptr %17, i32 %conv.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #9, !srcloc !152
  %23 = and i32 %22, -503316481
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %or = or i32 %24, %port_mode.0
  %or10 = or i32 %or, 2
  %spec.select = select i1 %tobool.not, i32 %or, i32 %or10
  %25 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg.i, align 4
  %28 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i30 = getelementptr i16, ptr %29, i32 %retval.0.i
  %30 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i30, align 2
  %conv.i31 = zext i16 %31 to i32
  %add.ptr.i32 = getelementptr i8, ptr %27, i32 %conv.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %25) #9, !srcloc !153
  br label %cleanup

cleanup:                                          ; preds = %bcm_sf2_reg_rgmii_cntrl.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 2052, %5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %port)
  %cmp.not = icmp eq i32 %9, %port
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %11, label %if.else [
    i32 18696, label %if.then.if.end_crit_edge
    i32 29765, label %if.then.if.end_crit_edge27
  ]

if.then.if.end_crit_edge27:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge27
  %.sink26 = phi i32 [ 3, %if.else ], [ 2, %if.then.if.end_crit_edge ], [ 2, %if.then.if.end_crit_edge27 ]
  %.sink = phi i32 [ 233472, %if.else ], [ 352, %if.then.if.end_crit_edge ], [ 352, %if.then.if.end_crit_edge27 ]
  %mul6 = shl i32 %port, %.sink26
  %add7 = add i32 %mul6, %.sink
  %13 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i21 = shl i32 %add7, %14
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr.i22 = getelementptr i8, ptr %16, i32 %shl.i.i21
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #9, !srcloc !152
  %18 = and i32 %17, -16777217
  %19 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i24 = shl i32 %add7, %20
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr.i25 = getelementptr i8, ptr %22, i32 %shl.i.i24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %18) #9, !srcloc !153
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.b53_device, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv1.i.i, align 4
  %27 = add i32 %interface, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %if.end9.if.end.i_crit_edge, label %switch.early.test.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

switch.early.test.i:                              ; preds = %if.end9
  %29 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %interface, label %switch.early.test.i.bcm_sf2_sw_mac_link_set.exit_crit_edge [
    i32 6, label %switch.early.test.i.if.end.i_crit_edge
    i32 2, label %switch.early.test.i.if.end.i_crit_edge28
  ]

switch.early.test.i.if.end.i_crit_edge28:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

switch.early.test.i.if.end.i_crit_edge:           ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

switch.early.test.i.bcm_sf2_sw_mac_link_set.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_sw_mac_link_set.exit

if.end.i:                                         ; preds = %switch.early.test.i.if.end.i_crit_edge, %switch.early.test.i.if.end.i_crit_edge28, %if.end9.if.end.i_crit_edge
  %type.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %26, i32 0, i32 7
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18696, i32 %31)
  %cond.i.i = icmp eq i32 %31, 18696
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.default2.i.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %port)
  %cond41.i.i = icmp eq i32 %port, 7
  br i1 %cond41.i.i, label %sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge, label %sw.bb.i.i.land.end.i.i_crit_edge

sw.bb.i.i.land.end.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

sw.default2.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %port)
  %32 = icmp ult i32 %port, 3
  br i1 %32, label %switch.lookup, label %sw.default2.i.i.land.end.i.i_crit_edge

sw.default2.i.i.land.end.i.i_crit_edge:           ; preds = %sw.default2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %sw.default2.i.i.land.end.i.i_crit_edge, %sw.bb.i.i.land.end.i.i_crit_edge
  %.b46.i.i = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %.b46.i.i, label %land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge, label %if.then.i.i, !prof !156

land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %port) #9
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

switch.lookup:                                    ; preds = %sw.default2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.offset = add i32 %port, 8
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

bcm_sf2_reg_rgmii_cntrl.exit.i:                   ; preds = %switch.lookup, %if.then.i.i, %land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge, %sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 11, %sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge ], [ 1, %if.then.i.i ], [ 1, %land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge ], [ %switch.offset, %switch.lookup ]
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %26, i32 0, i32 8
  %35 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %36, i32 %retval.0.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %40 = and i32 %39, -16777217
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i, align 4
  %43 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i23.i = getelementptr i16, ptr %44, i32 %retval.0.i.i
  %45 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i23.i, align 2
  %conv.i24.i = zext i16 %46 to i32
  %add.ptr.i25.i = getelementptr i8, ptr %42, i32 %conv.i24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %40) #9, !srcloc !153
  br label %bcm_sf2_sw_mac_link_set.exit

bcm_sf2_sw_mac_link_set.exit:                     ; preds = %bcm_sf2_reg_rgmii_cntrl.exit.i, %switch.early.test.i.bcm_sf2_sw_mac_link_set.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_mac_link_up(ptr noundef %ds, i32 noundef %port, i32 noundef %mode, i32 noundef %interface, ptr noundef %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %dev = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %ports = getelementptr inbounds %struct.b53_device, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %8 = add i32 %interface, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %entry.if.end.i_crit_edge, label %switch.early.test.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

switch.early.test.i:                              ; preds = %entry
  %10 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %interface, label %switch.early.test.i.bcm_sf2_sw_mac_link_set.exit_crit_edge [
    i32 6, label %switch.early.test.i.if.end.i_crit_edge
    i32 2, label %switch.early.test.i.if.end.i_crit_edge86
  ]

switch.early.test.i.if.end.i_crit_edge86:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

switch.early.test.i.if.end.i_crit_edge:           ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

switch.early.test.i.bcm_sf2_sw_mac_link_set.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_sw_mac_link_set.exit

if.end.i:                                         ; preds = %switch.early.test.i.if.end.i_crit_edge, %switch.early.test.i.if.end.i_crit_edge86, %entry.if.end.i_crit_edge
  %type.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18696, i32 %12)
  %cond.i.i = icmp eq i32 %12, 18696
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.default2.i.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %port)
  %cond41.i.i = icmp eq i32 %port, 7
  br i1 %cond41.i.i, label %sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge, label %sw.bb.i.i.land.end.i.i_crit_edge

sw.bb.i.i.land.end.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

sw.default2.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %port)
  %13 = icmp ult i32 %port, 3
  br i1 %13, label %switch.lookup, label %sw.default2.i.i.land.end.i.i_crit_edge

sw.default2.i.i.land.end.i.i_crit_edge:           ; preds = %sw.default2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %sw.default2.i.i.land.end.i.i_crit_edge, %sw.bb.i.i.land.end.i.i_crit_edge
  %.b46.i.i = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %.b46.i.i, label %land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge, label %if.then.i.i, !prof !156

land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %port) #9
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

switch.lookup:                                    ; preds = %sw.default2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.offset = add i32 %port, 8
  br label %bcm_sf2_reg_rgmii_cntrl.exit.i

bcm_sf2_reg_rgmii_cntrl.exit.i:                   ; preds = %switch.lookup, %if.then.i.i, %land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge, %sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 11, %sw.bb.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge ], [ 1, %if.then.i.i ], [ 1, %land.end.i.i.bcm_sf2_reg_rgmii_cntrl.exit.i_crit_edge ], [ %switch.offset, %switch.lookup ]
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %17, i32 %retval.0.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %21 = or i32 %20, 16777216
  %22 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i, align 4
  %24 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i23.i = getelementptr i16, ptr %25, i32 %retval.0.i.i
  %26 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i23.i, align 2
  %conv.i24.i = zext i16 %27 to i32
  %add.ptr.i25.i = getelementptr i8, ptr %23, i32 %conv.i24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %21) #9, !srcloc !153
  br label %bcm_sf2_sw_mac_link_set.exit

bcm_sf2_sw_mac_link_set.exit:                     ; preds = %bcm_sf2_reg_rgmii_cntrl.exit.i, %switch.early.test.i.bcm_sf2_sw_mac_link_set.exit_crit_edge
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 2052, %29
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %shl.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %port)
  %cmp.not = icmp eq i32 %33, %port
  br i1 %cmp.not, label %bcm_sf2_sw_mac_link_set.exit.if.end36_crit_edge, label %if.then

bcm_sf2_sw_mac_link_set.exit.if.end36_crit_edge:  ; preds = %bcm_sf2_sw_mac_link_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then:                                          ; preds = %bcm_sf2_sw_mac_link_set.exit
  %type = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %35, label %if.else [
    i32 18696, label %if.then.if.end_crit_edge
    i32 29765, label %if.then.if.end_crit_edge87
  ]

if.then.if.end_crit_edge87:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge87
  %.sink83 = phi i32 [ 3, %if.else ], [ 2, %if.then.if.end_crit_edge ], [ 2, %if.then.if.end_crit_edge87 ]
  %.sink = phi i32 [ 233472, %if.else ], [ 352, %if.then.if.end_crit_edge ], [ 352, %if.then.if.end_crit_edge87 ]
  %mul7 = shl i32 %port, %.sink83
  %add8 = add i32 %mul7, %.sink
  %37 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %interface, label %if.end.if.end27_crit_edge [
    i32 9, label %if.end.if.then16_crit_edge
    i32 12, label %if.end.if.then16_crit_edge88
    i32 2, label %if.end.if.then16_crit_edge89
    i32 6, label %if.end.if.then16_crit_edge90
  ]

if.end.if.then16_crit_edge90:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.if.then16_crit_edge89:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.if.then16_crit_edge88:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge88, %if.end.if.then16_crit_edge89, %if.end.if.then16_crit_edge90
  call void @__sanitizer_cov_trace_const_cmp4(i32 18696, i32 %35)
  %cond.i = icmp eq i32 %35, 18696
  br i1 %cond.i, label %sw.bb.i, label %sw.default2.i

sw.bb.i:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %port)
  %cond41.i = icmp eq i32 %port, 7
  br i1 %cond41.i, label %sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge, label %sw.bb.i.land.end.i_crit_edge

sw.bb.i.land.end.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit

sw.default2.i:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %port)
  %38 = icmp ult i32 %port, 3
  br i1 %38, label %switch.lookup84, label %sw.default2.i.land.end.i_crit_edge

sw.default2.i.land.end.i_crit_edge:               ; preds = %sw.default2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i

land.end.i:                                       ; preds = %sw.default2.i.land.end.i_crit_edge, %sw.bb.i.land.end.i_crit_edge
  %.b46.i = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge, label %if.then.i, !prof !156

land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_reg_rgmii_cntrl.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %port) #9
  br label %bcm_sf2_reg_rgmii_cntrl.exit

switch.lookup84:                                  ; preds = %sw.default2.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.offset85 = add i32 %port, 8
  br label %bcm_sf2_reg_rgmii_cntrl.exit

bcm_sf2_reg_rgmii_cntrl.exit:                     ; preds = %switch.lookup84, %if.then.i, %land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge, %sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge
  %retval.0.i = phi i32 [ 11, %sw.bb.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge ], [ 1, %if.then.i ], [ 1, %land.end.i.bcm_sf2_reg_rgmii_cntrl.exit_crit_edge ], [ %switch.offset85, %switch.lookup84 ]
  %reg.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %42, i32 %retval.0.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %44 to i32
  %add.ptr.i73 = getelementptr i8, ptr %40, i32 %conv.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #9, !srcloc !152
  %46 = and i32 %45, 1073741823
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %or = or i32 %47, 128
  %spec.select = select i1 %tx_pause, i32 %or, i32 %47
  %or24 = or i32 %spec.select, 64
  %reg.1 = select i1 %rx_pause, i32 %or24, i32 %spec.select
  %48 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #9
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg.i, align 4
  %51 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx.i77 = getelementptr i16, ptr %52, i32 %retval.0.i
  %53 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i77, align 2
  %conv.i78 = zext i16 %54 to i32
  %add.ptr.i79 = getelementptr i8, ptr %50, i32 %conv.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %48) #9, !srcloc !153
  br label %if.end27

if.end27:                                         ; preds = %bcm_sf2_reg_rgmii_cntrl.exit, %if.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %speed)
  %switch.selectcmp = icmp eq i32 %speed, 100
  %switch.select = select i1 %switch.selectcmp, i32 1157627904, i32 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %switch.selectcmp71 = icmp eq i32 %speed, 1000
  %switch.select72 = select i1 %switch.selectcmp71, i32 1224736768, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp31 = icmp eq i32 %duplex, 1
  %55 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i81 = shl i32 %add8, %56
  %57 = or i32 %switch.select72, 33554432
  %58 = select i1 %cmp31, i32 %57, i32 %switch.select72
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %add.ptr.i82 = getelementptr i8, ptr %60, i32 %shl.i.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %58) #9, !srcloc !153
  br label %if.end36

if.end36:                                         ; preds = %if.end27, %bcm_sf2_sw_mac_link_set.exit.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp37 = icmp ne i32 %mode, 0
  %tobool39.not = icmp eq ptr %phydev, null
  %or.cond = or i1 %cmp37, %tobool39.not
  br i1 %or.cond, label %if.end36.if.end42_crit_edge, label %if.then40

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 @b53_eee_init(ptr noundef %ds, i32 noundef %port, ptr noundef nonnull %phydev) #9
  %eee_enabled = getelementptr %struct.b53_port, ptr %7, i32 %port, i32 1, i32 5
  %61 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call41, ptr %eee_enabled, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end36.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_fixed_state(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %status, i32 0, i32 6
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %link, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %link, align 4
  %moca_port = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %moca_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %moca_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp = icmp eq i32 %6, %port
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %link1 = getelementptr %struct.bcm_sf2_priv, ptr %3, i32 0, i32 21, i32 %port, i32 1
  %7 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link1, align 4
  %9 = trunc i32 %8 to i8
  %bf.shl = shl i8 %9, 7
  %bf.set5 = or i8 %bf.shl, %bf.clear
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set5, ptr %link, align 4
  %bf.lshr = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.lshr)
  %tobool.not = icmp eq i32 %bf.lshr, 0
  br i1 %tobool.not, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8:                                         ; preds = %if.then
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %11 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %if.then8.dsa_to_port.exit_crit_edge, label %if.then8.for.body.i_crit_edge

if.then8.for.body.i_crit_edge:                    ; preds = %if.then8
  br label %for.body.i

if.then8.dsa_to_port.exit_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then8.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.then8.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %14 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %15, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %if.then8.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %if.then8.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i, align 4
  tail call void @netif_carrier_off(ptr noundef %20) #9
  br label %if.end

if.end:                                           ; preds = %dsa_to_port.exit, %if.then.if.end_crit_edge
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %status, i32 0, i32 4
  %21 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %duplex, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set13 = or i8 %bf.load, -128
  %22 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.set13, ptr %link, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_get_strings(ptr noundef %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @b53_get_sset_count(ptr noundef %ds, i32 noundef %port, i32 noundef %stringset) #9
  tail call void @b53_get_strings(ptr noundef %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #9
  %mul = shl i32 %call, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  tail call void @bcm_sf2_cfp_get_strings(ptr noundef %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_get_ethtool_stats(ptr noundef %ds, i32 noundef %port, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @b53_get_sset_count(ptr noundef %ds, i32 noundef %port, i32 noundef 1) #9
  tail call void @b53_get_ethtool_stats(ptr noundef %ds, i32 noundef %port, ptr noundef %data) #9
  %add.ptr = getelementptr i64, ptr %data, i32 %call
  tail call void @bcm_sf2_cfp_get_ethtool_stats(ptr noundef %ds, i32 noundef %port, ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_get_sset_count(ptr noundef %ds, i32 noundef %port, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @b53_get_sset_count(ptr noundef %ds, i32 noundef %port, i32 noundef %sset) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @bcm_sf2_cfp_get_sset_count(ptr noundef %ds, i32 noundef %port, i32 noundef %sset) #9
  %add = add i32 %call1, %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_get_ethtool_phy_stats(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_get_wol(ptr noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %wol) #2 align 64 {
entry:
  %pwol = alloca %struct.ethtool_wolinfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %3 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %4, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %port)
  %cmp5.i = icmp eq i32 %6, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %8 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_dp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pwol) #9
  %16 = call ptr @memset(ptr %pwol, i32 0, i32 20)
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 44
  %17 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ethtool_ops, align 16
  %get_wol = getelementptr inbounds %struct.ethtool_ops, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %get_wol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_wol, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %dsa_to_port.exit.if.end_crit_edge, label %if.then

dsa_to_port.exit.if.end_crit_edge:                ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void %20(ptr noundef %11, ptr noundef nonnull %pwol) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %dsa_to_port.exit.if.end_crit_edge
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %pwol, i32 0, i32 1
  %21 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %supported, align 4
  %supported4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %23 = ptrtoint ptr %supported4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %supported4, align 4
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %24 = call ptr @memset(ptr %sopass, i32 0, i32 6)
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %pwol, i32 0, i32 2
  %25 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wolopts, align 4
  %and = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sopass8 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %pwol, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %sopass, ptr %sopass8, i32 6)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %wol_ports_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %15, i32 0, i32 22
  %28 = ptrtoint ptr %wol_ports_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wol_ports_mask, align 4
  %shl = shl nuw i32 1, %port
  %and10 = and i32 %29, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 %26
  %30 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pwol) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_set_wol(ptr noundef readonly %ds, i32 noundef %port, ptr noundef %wol) #2 align 64 {
entry:
  %pwol = alloca %struct.ethtool_wolinfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %0 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %dsa_to_port.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

dsa_to_port.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 32)
  %3 = load ptr, ptr inttoptr (i32 32 to ptr), align 32
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %priv.i80 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i80 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i80, align 4
  %priv1.i81 = getelementptr inbounds %struct.b53_device, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %priv1.i81 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1.i81, align 4
  br label %dsa_to_port.exit77

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %10 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %11, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.for.body.i67.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body.i67.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i67.preheader

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %for.body.i67.preheader

for.body.i67.preheader:                           ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.for.body.i67.preheader_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %for.inc.i.for.body.i67.preheader_crit_edge ]
  %cpu_dp = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %15 = ptrtoint ptr %cpu_dp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpu_dp, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv1.i, align 4
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i73.for.body.i67_crit_edge, %for.body.i67.preheader
  %.pn22.i64 = phi ptr [ %.pn.i71, %for.inc.i73.for.body.i67_crit_edge ], [ %.pn20.i, %for.body.i67.preheader ]
  %ds3.i65 = getelementptr i8, ptr %.pn22.i64, i32 -432
  %23 = ptrtoint ptr %ds3.i65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ds3.i65, align 4
  %cmp4.i66 = icmp eq ptr %24, %ds
  br i1 %cmp4.i66, label %land.lhs.true.i70, label %for.body.i67.for.inc.i73_crit_edge

for.body.i67.for.inc.i73_crit_edge:               ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

land.lhs.true.i70:                                ; preds = %for.body.i67
  %index.i68 = getelementptr i8, ptr %.pn22.i64, i32 -428
  %25 = ptrtoint ptr %index.i68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %port)
  %cmp5.i69 = icmp eq i32 %26, %port
  br i1 %cmp5.i69, label %cleanup.split.loop.exit18.i75, label %land.lhs.true.i70.for.inc.i73_crit_edge

land.lhs.true.i70.for.inc.i73_crit_edge:          ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

for.inc.i73:                                      ; preds = %land.lhs.true.i70.for.inc.i73_crit_edge, %for.body.i67.for.inc.i73_crit_edge
  %27 = ptrtoint ptr %.pn22.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i71 = load ptr, ptr %.pn22.i64, align 4
  %cmp.not.i72 = icmp eq ptr %.pn.i71, %ports.i
  br i1 %cmp.not.i72, label %for.inc.i73.dsa_to_port.exit77_crit_edge, label %for.inc.i73.for.body.i67_crit_edge

for.inc.i73.for.body.i67_crit_edge:               ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i67

for.inc.i73.dsa_to_port.exit77_crit_edge:         ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit77

cleanup.split.loop.exit18.i75:                    ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i74 = getelementptr i8, ptr %.pn22.i64, i32 -448
  br label %dsa_to_port.exit77

dsa_to_port.exit77:                               ; preds = %cleanup.split.loop.exit18.i75, %for.inc.i73.dsa_to_port.exit77_crit_edge, %dsa_to_port.exit.thread
  %28 = phi ptr [ %22, %cleanup.split.loop.exit18.i75 ], [ %9, %dsa_to_port.exit.thread ], [ %22, %for.inc.i73.dsa_to_port.exit77_crit_edge ]
  %29 = phi ptr [ %18, %cleanup.split.loop.exit18.i75 ], [ %5, %dsa_to_port.exit.thread ], [ %18, %for.inc.i73.dsa_to_port.exit77_crit_edge ]
  %retval.0.i76 = phi ptr [ %dp.0.le.i74, %cleanup.split.loop.exit18.i75 ], [ null, %dsa_to_port.exit.thread ], [ null, %for.inc.i73.dsa_to_port.exit77_crit_edge ]
  %cpu_dp3 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i76, i32 0, i32 8
  %30 = ptrtoint ptr %cpu_dp3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu_dp3, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pwol) #9
  %34 = call ptr @memset(ptr %pwol, i32 0, i32 20)
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 44
  %35 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ethtool_ops, align 16
  %get_wol = getelementptr inbounds %struct.ethtool_ops, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %get_wol to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_wol, align 4
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %dsa_to_port.exit77.if.end_crit_edge, label %if.then

dsa_to_port.exit77.if.end_crit_edge:              ; preds = %dsa_to_port.exit77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %dsa_to_port.exit77
  call void @__sanitizer_cov_trace_pc() #11
  call void %38(ptr noundef %29, ptr noundef nonnull %pwol) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %dsa_to_port.exit77.if.end_crit_edge
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %39 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wolopts, align 4
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %pwol, i32 0, i32 1
  %41 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %supported, align 4
  %neg = xor i32 %42, -1
  %and = and i32 %40, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool10.not = icmp eq i32 %40, 0
  %shl12 = shl nuw i32 1, %port
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %wol_ports_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %28, i32 0, i32 22
  %43 = ptrtoint ptr %wol_ports_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wol_ports_mask, align 4
  %or = or i32 %44, %shl12
  store i32 %or, ptr %wol_ports_mask, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %neg13 = xor i32 %shl12, -1
  %wol_ports_mask14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %28, i32 0, i32 22
  %45 = ptrtoint ptr %wol_ports_mask14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wol_ports_mask14, align 4
  %and15 = and i32 %46, %neg13
  store i32 %and15, ptr %wol_ports_mask14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %wol_ports_mask17 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %28, i32 0, i32 22
  %47 = ptrtoint ptr %wol_ports_mask17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wol_ports_mask17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool18.not = icmp eq i32 %48, 0
  %.pre = shl i32 %33, 24
  %.pre86 = ashr exact i32 %.pre, 24
  %.pre87 = shl nuw i32 1, %.pre86
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %.pre87)
  %cmp.not = icmp eq i32 %48, %.pre87
  %or.cond = select i1 %tobool18.not, i1 true, i1 %cmp.not
  %neg31 = xor i32 %.pre87, -1
  %and33 = and i32 %48, %neg31
  %or27 = or i32 %48, %.pre87
  %storemerge = select i1 %or.cond, i32 %and33, i32 %or27
  %49 = ptrtoint ptr %wol_ports_mask17 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %wol_ports_mask17, align 4
  %50 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ethtool_ops, align 16
  %set_wol = getelementptr inbounds %struct.ethtool_ops, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %set_wol to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_wol, align 4
  %call36 = call i32 %53(ptr noundef %29, ptr noundef %wol) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end16 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pwol) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_suspend(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %intrl2_0.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %intrl2_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intrl2_0.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1) #9, !srcloc !153
  %irq0_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %irq0_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq0_mask.i.i, align 4
  %7 = ptrtoint ptr %intrl2_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intrl2_0.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #9, !srcloc !153
  %intrl2_1.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %intrl2_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intrl2_1.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 -1) #9, !srcloc !153
  %irq1_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 18
  %11 = ptrtoint ptr %irq1_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %irq1_mask.i.i, align 4
  %12 = ptrtoint ptr %intrl2_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intrl2_1.i.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 -1) #9, !srcloc !153
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp39.not = icmp eq i32 %15, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_user_port.exit.thread, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %19 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %20, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %port.040)
  %cmp5.i.i = icmp eq i32 %22, %port.040
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %23 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.i = icmp eq i32 %25, 3
  br i1 %cmp.i, label %dsa_is_user_port.exit.if.then_crit_edge, label %dsa_is_user_port.exit.for.body.i.i22_crit_edge

dsa_is_user_port.exit.for.body.i.i22_crit_edge:   ; preds = %dsa_is_user_port.exit
  br label %for.body.i.i22

dsa_is_user_port.exit.if.then_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

dsa_is_user_port.exit.thread:                     ; preds = %for.body
  call void @__asan_load4_noabort(i32 24)
  %26 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i36 = icmp eq i32 %26, 3
  br i1 %cmp.i36, label %dsa_is_user_port.exit.thread.if.then_crit_edge, label %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge

dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

dsa_is_user_port.exit.thread.if.then_crit_edge:   ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.body.i.i22:                                   ; preds = %for.inc.i.i28.for.body.i.i22_crit_edge, %dsa_is_user_port.exit.for.body.i.i22_crit_edge
  %.pn22.i.i19 = phi ptr [ %.pn.i.i26, %for.inc.i.i28.for.body.i.i22_crit_edge ], [ %.pn20.i.i, %dsa_is_user_port.exit.for.body.i.i22_crit_edge ]
  %ds3.i.i20 = getelementptr i8, ptr %.pn22.i.i19, i32 -432
  %27 = ptrtoint ptr %ds3.i.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ds3.i.i20, align 4
  %cmp4.i.i21 = icmp eq ptr %28, %ds
  br i1 %cmp4.i.i21, label %land.lhs.true.i.i25, label %for.body.i.i22.for.inc.i.i28_crit_edge

for.body.i.i22.for.inc.i.i28_crit_edge:           ; preds = %for.body.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i28

land.lhs.true.i.i25:                              ; preds = %for.body.i.i22
  %index.i.i23 = getelementptr i8, ptr %.pn22.i.i19, i32 -428
  %29 = ptrtoint ptr %index.i.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %port.040)
  %cmp5.i.i24 = icmp eq i32 %30, %port.040
  br i1 %cmp5.i.i24, label %cleanup.split.loop.exit18.i.i30, label %land.lhs.true.i.i25.for.inc.i.i28_crit_edge

land.lhs.true.i.i25.for.inc.i.i28_crit_edge:      ; preds = %land.lhs.true.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i28

for.inc.i.i28:                                    ; preds = %land.lhs.true.i.i25.for.inc.i.i28_crit_edge, %for.body.i.i22.for.inc.i.i28_crit_edge
  %31 = ptrtoint ptr %.pn22.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i.i26 = load ptr, ptr %.pn22.i.i19, align 4
  %cmp.not.i.i27 = icmp eq ptr %.pn.i.i26, %ports.i.i
  br i1 %cmp.not.i.i27, label %for.inc.i.i28.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i28.for.body.i.i22_crit_edge

for.inc.i.i28.for.body.i.i22_crit_edge:           ; preds = %for.inc.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i22

for.inc.i.i28.dsa_is_cpu_port.exit_crit_edge:     ; preds = %for.inc.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i30:                  ; preds = %land.lhs.true.i.i25
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i29 = getelementptr i8, ptr %.pn22.i.i19, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i30, %for.inc.i.i28.dsa_is_cpu_port.exit_crit_edge, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i31 = phi ptr [ %dp.0.le.i.i29, %cleanup.split.loop.exit18.i.i30 ], [ null, %dsa_is_user_port.exit.thread.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i28.dsa_is_cpu_port.exit_crit_edge ]
  %type.i32 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i31, i32 0, i32 6
  %32 = ptrtoint ptr %type.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i33 = icmp eq i32 %33, 1
  br i1 %cmp.i33, label %dsa_is_cpu_port.exit.if.then_crit_edge, label %dsa_is_cpu_port.exit.for.inc_crit_edge

dsa_is_cpu_port.exit.for.inc_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

dsa_is_cpu_port.exit.if.then_crit_edge:           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %dsa_is_cpu_port.exit.if.then_crit_edge, %dsa_is_user_port.exit.thread.if.then_crit_edge, %dsa_is_user_port.exit.if.then_crit_edge
  tail call void @bcm_sf2_port_disable(ptr noundef %ds, i32 noundef %port.040)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %dsa_is_cpu_port.exit.for.inc_crit_edge
  %inc = add nuw i32 %port.040, 1
  %34 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %wol_ports_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 22
  %36 = ptrtoint ptr %wol_ports_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wol_ports_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.then3, label %for.end.if.end4_crit_edge

for.end.if.end4_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %clk = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 23
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %39) #9
  tail call void @clk_unprepare(ptr noundef %39) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_resume(ptr noundef %ds) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %wol_ports_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %wol_ports_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol_ports_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call fastcc i32 @bcm_sf2_sw_rst(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call fastcc void @bcm_sf2_crossbar_setup(ptr noundef %3)
  %call7 = tail call i32 @bcm_sf2_cfp_resume(ptr noundef %ds) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %num_gphy = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %num_gphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_gphy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then11, label %if.end10.if.end12_crit_edge

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.b53_device, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %17, i32 6
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %21 = and i32 %20, -989855745
  %22 = or i32 %21, 536870912
  %23 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i.i, align 4
  %25 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i38.i = getelementptr i16, ptr %26, i32 6
  %27 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i38.i, align 2
  %conv.i39.i = zext i16 %28 to i32
  %add.ptr.i40.i = getelementptr i8, ptr %24, i32 %conv.i39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %22) #9, !srcloc !153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 4509708) #9
  %30 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i.i, align 4
  %32 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i43.i = getelementptr i16, ptr %33, i32 6
  %34 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i43.i, align 2
  %conv.i44.i = zext i16 %35 to i32
  %add.ptr.i45.i = getelementptr i8, ptr %31, i32 %conv.i44.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #9, !srcloc !152
  %37 = and i32 %36, -536870913
  %38 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i.i, align 4
  %40 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i48.i = getelementptr i16, ptr %41, i32 6
  %42 = ptrtoint ptr %arrayidx.i48.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i48.i, align 2
  %conv.i49.i = zext i16 %43 to i32
  %add.ptr.i50.i = getelementptr i8, ptr %39, i32 %conv.i49.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %37) #9, !srcloc !153
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10.if.end12_crit_edge
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 8
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %setup = getelementptr inbounds %struct.dsa_switch_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %setup, align 4
  %call13 = tail call i32 %47(ptr noundef %ds) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end12 ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_port_setup(ptr noundef %ds, i32 noundef %port, ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %entry.dsa_is_user_port.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_is_user_port.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %7 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %8, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %entry.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %entry.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %if.end, label %dsa_is_user_port.exit.cleanup_crit_edge

dsa_is_user_port.exit.cleanup_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dsa_is_user_port.exit
  %enabled = getelementptr %struct.bcm_sf2_priv, ptr %3, i32 0, i32 21, i32 %port, i32 2
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %enabled, align 4
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.b53_device, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1.i.i, align 4
  %num_ports.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %19 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp12.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp12.not.i.i, label %if.end.bcm_sf2_recalc_clock.exit_crit_edge, label %for.body.lr.ph.i.i

if.end.bcm_sf2_recalc_clock.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_recalc_clock.exit

for.body.lr.ph.i.i:                               ; preds = %if.end
  %21 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn20.i.i.i.i = load ptr, ptr %ports.i.i.i.i, align 4
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %ports.i.i.i.i
  br label %for.body.i.i94

for.body.i.i94:                                   ; preds = %for.inc.i.i95.for.body.i.i94_crit_edge, %for.body.lr.ph.i.i
  %count.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %count.1.i.i, %for.inc.i.i95.for.body.i.i94_crit_edge ]
  %port.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc4.i.i, %for.inc.i.i95.for.body.i.i94_crit_edge ]
  br i1 %cmp.not21.i.i.i.i, label %for.body.i.i94.dsa_is_cpu_port.exit.i.i_crit_edge, label %for.body.i.i94.for.body.i.i.i.i_crit_edge

for.body.i.i94.for.body.i.i.i.i_crit_edge:        ; preds = %for.body.i.i94
  br label %for.body.i.i.i.i

for.body.i.i94.dsa_is_cpu_port.exit.i.i_crit_edge: ; preds = %for.body.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.i94.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %for.body.i.i94.for.body.i.i.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %24 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %25, %ds
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %index.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %26 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %port.013.i.i)
  %cmp5.i.i.i.i = icmp eq i32 %27, %port.013.i.i
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %28 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i.i.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit.i.i

cleanup.split.loop.exit18.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i.i

dsa_is_cpu_port.exit.i.i:                         ; preds = %cleanup.split.loop.exit18.i.i.i.i, %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, %for.body.i.i94.dsa_is_cpu_port.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %dp.0.le.i.i.i.i, %cleanup.split.loop.exit18.i.i.i.i ], [ null, %for.body.i.i94.dsa_is_cpu_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge ]
  %type.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i.i.i = icmp eq i32 %30, 1
  br i1 %cmp.i.i.i, label %dsa_is_cpu_port.exit.i.i.for.inc.i.i95_crit_edge, label %if.end.i.i

dsa_is_cpu_port.exit.i.i.for.inc.i.i95_crit_edge: ; preds = %dsa_is_cpu_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i95

if.end.i.i:                                       ; preds = %dsa_is_cpu_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %enabled.i.i = getelementptr %struct.bcm_sf2_priv, ptr %18, i32 0, i32 21, i32 %port.013.i.i, i32 2
  %31 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enabled.i.i, align 4, !range !157
  %33 = zext i8 %32 to i32
  %spec.select.i.i = add i32 %count.016.i.i, %33
  br label %for.inc.i.i95

for.inc.i.i95:                                    ; preds = %if.end.i.i, %dsa_is_cpu_port.exit.i.i.for.inc.i.i95_crit_edge
  %count.1.i.i = phi i32 [ %count.016.i.i, %dsa_is_cpu_port.exit.i.i.for.inc.i.i95_crit_edge ], [ %spec.select.i.i, %if.end.i.i ]
  %inc4.i.i = add nuw i32 %port.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc4.i.i, %20
  br i1 %exitcond.not.i.i, label %bcm_sf2_num_active_ports.exit.i, label %for.inc.i.i95.for.body.i.i94_crit_edge

for.inc.i.i95.for.body.i.i94_crit_edge:           ; preds = %for.inc.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i94

bcm_sf2_num_active_ports.exit.i:                  ; preds = %for.inc.i.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i.i)
  %cmp.i96 = icmp eq i32 %count.1.i.i, 0
  br i1 %cmp.i96, label %bcm_sf2_num_active_ports.exit.i.bcm_sf2_recalc_clock.exit_crit_edge, label %lor.lhs.false.i

bcm_sf2_num_active_ports.exit.i.bcm_sf2_recalc_clock.exit_crit_edge: ; preds = %bcm_sf2_num_active_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_recalc_clock.exit

lor.lhs.false.i:                                  ; preds = %bcm_sf2_num_active_ports.exit.i
  %clk_mdiv.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %18, i32 0, i32 24
  %34 = ptrtoint ptr %clk_mdiv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_mdiv.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.bcm_sf2_recalc_clock.exit_crit_edge, label %if.end.i

lor.lhs.false.i.bcm_sf2_recalc_clock.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_sf2_recalc_clock.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count.1.i.i)
  %cmp2.i = icmp ugt i32 %count.1.i.i, 4
  br i1 %cmp2.i, label %if.end.i.if.end4.i_crit_edge, label %if.else.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %count.1.i.i, -1
  %arrayidx.i = getelementptr [4 x i32], ptr @bcm_sf2_recalc_clock.rate_table, i32 0, i32 %sub.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.end.i.if.end4.i_crit_edge
  %new_rate.0.i = phi i32 [ %37, %if.else.i ], [ 90000000, %if.end.i.if.end4.i_crit_edge ]
  %call6.i = tail call i32 @clk_set_rate(ptr noundef nonnull %35, i32 noundef %new_rate.0.i) #9
  br label %bcm_sf2_recalc_clock.exit

bcm_sf2_recalc_clock.exit:                        ; preds = %if.end4.i, %lor.lhs.false.i.bcm_sf2_recalc_clock.exit_crit_edge, %bcm_sf2_num_active_ports.exit.i.bcm_sf2_recalc_clock.exit_crit_edge, %if.end.bcm_sf2_recalc_clock.exit_crit_edge
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %38 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 9088, %39
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %shl.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %mul = shl i32 %port, 1
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %43, %neg
  %44 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i98 = shl i32 9088, %45
  %46 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %add.ptr.i99 = getelementptr i8, ptr %48, i32 %shl.i.i98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %46) #9, !srcloc !153
  %brcm_tag_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 31
  %49 = ptrtoint ptr %brcm_tag_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %brcm_tag_mask, align 4
  %shl3 = shl nuw i32 1, %port
  %and4 = and i32 %50, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %bcm_sf2_recalc_clock.exit.if.end6_crit_edge, label %if.then5

bcm_sf2_recalc_clock.exit.if.end6_crit_edge:      ; preds = %bcm_sf2_recalc_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %bcm_sf2_recalc_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @b53_brcm_hdr_setup(ptr noundef %ds, i32 noundef %port) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %bcm_sf2_recalc_clock.exit.if.end6_crit_edge
  %mul7 = shl i32 %port, 4
  %add = add i32 %mul7, 49600
  %51 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i101 = shl i32 %add, %52
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %add.ptr.i102 = getelementptr i8, ptr %54, i32 %shl.i.i101
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #9, !srcloc !152
  %56 = or i32 %55, -2000225792
  %57 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i104 = shl i32 %add, %58
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %add.ptr.i105 = getelementptr i8, ptr %60, i32 %shl.i.i104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %56) #9, !srcloc !153
  %int_phy_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 26
  %61 = ptrtoint ptr %int_phy_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %int_phy_mask, align 4
  %and14 = and i32 %62, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end6.if.end22_crit_edge, label %land.lhs.true

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end6
  %num_gphy = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 20, i32 3
  %63 = ptrtoint ptr %num_gphy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_gphy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp16 = icmp eq i32 %64, 1
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 4
  %priv1.i.i107 = getelementptr inbounds %struct.b53_device, ptr %66, i32 0, i32 23
  %67 = ptrtoint ptr %priv1.i.i107 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv1.i.i107, align 4
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %68, i32 0, i32 8
  %71 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %72, i32 6
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %74 to i32
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %conv.i.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %76 = and i32 %75, -989855745
  %77 = or i32 %76, 536870912
  %78 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg.i.i, align 4
  %80 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i38.i = getelementptr i16, ptr %81, i32 6
  %82 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.i38.i, align 2
  %conv.i39.i = zext i16 %83 to i32
  %add.ptr.i40.i = getelementptr i8, ptr %79, i32 %conv.i39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %77) #9, !srcloc !153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 4509708) #9
  %85 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg.i.i, align 4
  %87 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i43.i = getelementptr i16, ptr %88, i32 6
  %89 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.i43.i, align 2
  %conv.i44.i = zext i16 %90 to i32
  %add.ptr.i45.i = getelementptr i8, ptr %86, i32 %conv.i44.i
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #9, !srcloc !152
  %92 = and i32 %91, -536870913
  %93 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg.i.i, align 4
  %95 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i48.i = getelementptr i16, ptr %96, i32 6
  %97 = ptrtoint ptr %arrayidx.i48.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i48.i, align 2
  %conv.i49.i = zext i16 %98 to i32
  %add.ptr.i50.i = getelementptr i8, ptr %94, i32 %conv.i49.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %92) #9, !srcloc !153
  %tobool18.not = icmp eq ptr %phy, null
  br i1 %tobool18.not, label %if.then17.if.end22_crit_edge, label %if.then19

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 5
  %99 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %state, align 4
  %call20 = tail call i32 @phy_init_hw(ptr noundef nonnull %phy) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then17.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  %moca_port = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 25
  %100 = ptrtoint ptr %moca_port to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %moca_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %port)
  %cmp23 = icmp eq i32 %101, %port
  br i1 %cmp23, label %if.then24, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  %102 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %port, label %sw.default.i [
    i32 7, label %if.then24.sw.epilog.i_crit_edge
    i32 0, label %sw.bb1.i
  ]

if.then24.sw.epilog.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %irq0_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 16
  %103 = ptrtoint ptr %irq0_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %irq0_mask.i.i, align 4
  %and.i.i = and i32 %104, -32
  store i32 %and.i.i, ptr %irq0_mask.i.i, align 4
  %intrl2_0.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 2
  %105 = ptrtoint ptr %intrl2_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %intrl2_0.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %106, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 520093696) #9, !srcloc !153
  br label %if.end25

sw.default.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i108 = sub i32 6, %port
  %mul.i = mul i32 %sub.i108, 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.then24.sw.epilog.i_crit_edge
  %off.0.i = phi i32 [ %mul.i, %sw.default.i ], [ 0, %if.then24.sw.epilog.i_crit_edge ]
  %shl.i = shl nuw i32 1, %off.0.i
  %add2.i = add i32 %off.0.i, 1
  %shl3.i = shl nuw i32 1, %add2.i
  %or.i109 = or i32 %shl3.i, %shl.i
  %add4.i = add i32 %off.0.i, 2
  %shl5.i = shl nuw i32 1, %add4.i
  %or6.i = or i32 %or.i109, %shl5.i
  %add7.i = add i32 %off.0.i, 3
  %shl8.i = shl nuw i32 1, %add7.i
  %or9.i = or i32 %or6.i, %shl8.i
  %add10.i = add i32 %off.0.i, 4
  %shl11.i = shl nuw i32 1, %add10.i
  %or12.i = or i32 %or9.i, %shl11.i
  %neg.i.i = xor i32 %or12.i, -1
  %irq1_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 18
  %107 = ptrtoint ptr %irq1_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq1_mask.i.i, align 4
  %and.i19.i = and i32 %108, %neg.i.i
  store i32 %and.i19.i, ptr %irq1_mask.i.i, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #9
  %intrl2_1.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 3
  %110 = ptrtoint ptr %intrl2_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %intrl2_1.i.i.i, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %111, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20.i, i32 %109) #9, !srcloc !153
  br label %if.end25

if.end25:                                         ; preds = %sw.epilog.i, %sw.bb1.i, %if.end22.if.end25_crit_edge
  %mul26 = shl i32 %port, 3
  %add27 = add i32 %mul26, 11392
  %112 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i111 = shl i32 %add27, %113
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %3, align 4
  %add.ptr.i112 = getelementptr i8, ptr %115, i32 %shl.i.i111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 536870912) #9, !srcloc !153
  %acb.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 5
  %mul33 = shl i32 %port, 5
  %add34 = or i32 %mul33, 8
  %116 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %117, i32 %add34
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #9, !srcloc !152
  %119 = and i32 %118, 16318463
  %120 = or i32 %119, 402653184
  %121 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %122, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %120) #9, !srcloc !153
  %add32.1 = shl i32 %port, 5
  %add34.1 = or i32 %add32.1, 12
  %123 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113.1 = getelementptr i8, ptr %124, i32 %add34.1
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.1) #9, !srcloc !152
  %126 = and i32 %125, 16318463
  %127 = or i32 %126, 402653184
  %128 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115.1 = getelementptr i8, ptr %129, i32 %add34.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.1, i32 %127) #9, !srcloc !153
  %add32.2 = shl i32 %port, 5
  %add34.2 = or i32 %add32.2, 16
  %130 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113.2 = getelementptr i8, ptr %131, i32 %add34.2
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.2) #9, !srcloc !152
  %133 = and i32 %132, 16318463
  %134 = or i32 %133, 402653184
  %135 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115.2 = getelementptr i8, ptr %136, i32 %add34.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.2, i32 %134) #9, !srcloc !153
  %add32.3 = shl i32 %port, 5
  %add34.3 = or i32 %add32.3, 20
  %137 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113.3 = getelementptr i8, ptr %138, i32 %add34.3
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.3) #9, !srcloc !152
  %140 = and i32 %139, 16318463
  %141 = or i32 %140, 402653184
  %142 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115.3 = getelementptr i8, ptr %143, i32 %add34.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.3, i32 %141) #9, !srcloc !153
  %add32.4 = shl i32 %port, 5
  %add34.4 = or i32 %add32.4, 24
  %144 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113.4 = getelementptr i8, ptr %145, i32 %add34.4
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.4) #9, !srcloc !152
  %147 = and i32 %146, 16318463
  %148 = or i32 %147, 402653184
  %149 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115.4 = getelementptr i8, ptr %150, i32 %add34.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.4, i32 %148) #9, !srcloc !153
  %add32.5 = shl i32 %port, 5
  %add34.5 = or i32 %add32.5, 28
  %151 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113.5 = getelementptr i8, ptr %152, i32 %add34.5
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.5) #9, !srcloc !152
  %154 = and i32 %153, 16318463
  %155 = or i32 %154, 402653184
  %156 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115.5 = getelementptr i8, ptr %157, i32 %add34.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.5, i32 %155) #9, !srcloc !153
  %add32.6 = shl i32 %port, 5
  %add34.6 = add i32 %add32.6, 32
  %158 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113.6 = getelementptr i8, ptr %159, i32 %add34.6
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.6) #9, !srcloc !152
  %161 = and i32 %160, 16318463
  %162 = or i32 %161, 402653184
  %163 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115.6 = getelementptr i8, ptr %164, i32 %add34.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.6, i32 %162) #9, !srcloc !153
  %add32.7 = shl i32 %port, 5
  %add34.7 = add i32 %add32.7, 36
  %165 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %acb.i, align 4
  %add.ptr.i113.7 = getelementptr i8, ptr %166, i32 %add34.7
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.7) #9, !srcloc !152
  %168 = and i32 %167, 16318463
  %169 = or i32 %168, 402653184
  %170 = ptrtoint ptr %acb.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %acb.i, align 4
  %add.ptr.i115.7 = getelementptr i8, ptr %171, i32 %add34.7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.7, i32 %169) #9, !srcloc !153
  %call45 = tail call i32 @b53_enable_port(ptr noundef %ds, i32 noundef %port, ptr noundef %phy) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %dsa_is_user_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end25 ], [ 0, %dsa_is_user_port.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_sf2_port_disable(ptr noundef %ds, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %wol_ports_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %wol_ports_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wol_ports_mask, align 4
  %shl = shl nuw i32 1, %port
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %core_reg_align.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i = shl i32 240, %7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !152
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %or = or i32 %11, %shl
  %12 = ptrtoint ptr %core_reg_align.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_reg_align.i.i, align 4
  %shl.i.i38 = shl i32 240, %13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr.i39 = getelementptr i8, ptr %16, i32 %shl.i.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %14) #9, !srcloc !153
  br label %cleanup

if.end:                                           ; preds = %entry
  %moca_port = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 25
  %17 = ptrtoint ptr %moca_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %moca_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %port)
  %cmp = icmp eq i32 %18, %port
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %19 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %port, label %sw.default.i [
    i32 7, label %if.then3.sw.epilog.i_crit_edge
    i32 0, label %sw.bb1.i
  ]

if.then3.sw.epilog.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %intrl2_0.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %intrl2_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intrl2_0.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 520093696) #9, !srcloc !153
  %irq0_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 16
  %22 = ptrtoint ptr %irq0_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq0_mask.i.i, align 4
  %or.i.i = or i32 %23, 31
  store i32 %or.i.i, ptr %irq0_mask.i.i, align 4
  %24 = ptrtoint ptr %intrl2_0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intrl2_0.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 520093696) #9, !srcloc !153
  br label %if.end4

sw.default.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 6, %port
  %mul.i = mul i32 %sub.i, 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.then3.sw.epilog.i_crit_edge
  %off.0.i = phi i32 [ %mul.i, %sw.default.i ], [ 0, %if.then3.sw.epilog.i_crit_edge ]
  %shl.i = shl nuw i32 1, %off.0.i
  %add2.i = add i32 %off.0.i, 1
  %shl3.i = shl nuw i32 1, %add2.i
  %or.i = or i32 %shl3.i, %shl.i
  %add4.i = add i32 %off.0.i, 2
  %shl5.i = shl nuw i32 1, %add4.i
  %or6.i = or i32 %or.i, %shl5.i
  %add7.i = add i32 %off.0.i, 3
  %shl8.i = shl nuw i32 1, %add7.i
  %or9.i = or i32 %or6.i, %shl8.i
  %add10.i = add i32 %off.0.i, 4
  %shl11.i = shl nuw i32 1, %add10.i
  %or12.i = or i32 %or9.i, %shl11.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #9
  %intrl2_1.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %intrl2_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %intrl2_1.i.i.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40.i, i32 %26) #9, !srcloc !153
  %irq1_mask.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 18
  %29 = ptrtoint ptr %irq1_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq1_mask.i.i, align 4
  %or.i41.i = or i32 %or12.i, %30
  store i32 %or.i41.i, ptr %irq1_mask.i.i, align 4
  %31 = ptrtoint ptr %intrl2_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intrl2_1.i.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %26) #9, !srcloc !153
  br label %if.end4

if.end4:                                          ; preds = %sw.epilog.i, %sw.bb1.i, %if.end.if.end4_crit_edge
  %int_phy_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 26
  %33 = ptrtoint ptr %int_phy_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %int_phy_mask, align 4
  %and6 = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %land.lhs.true

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %num_gphy = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 20, i32 3
  %35 = ptrtoint ptr %num_gphy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_gphy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp8 = icmp eq i32 %36, 1
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %37 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.b53_device, ptr %38, i32 0, i32 23
  %39 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv1.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %44, i32 6
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %46 to i32
  %add.ptr.i.i40 = getelementptr i8, ptr %42, i32 %conv.i.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #9, !srcloc !152
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %or4.i = or i32 %48, 35
  %49 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #9
  %50 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i.i, align 4
  %52 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i53.i = getelementptr i16, ptr %53, i32 6
  %54 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.i53.i, align 2
  %conv.i54.i = zext i16 %55 to i32
  %add.ptr.i55.i = getelementptr i8, ptr %51, i32 %conv.i54.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %49) #9, !srcloc !153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #9
  %or5.i = or i32 %48, 51
  %57 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #9
  %58 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg.i.i, align 4
  %60 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i58.i = getelementptr i16, ptr %61, i32 6
  %62 = ptrtoint ptr %arrayidx.i58.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.i58.i, align 2
  %conv.i59.i = zext i16 %63 to i32
  %add.ptr.i60.i = getelementptr i8, ptr %59, i32 %conv.i59.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %57) #9, !srcloc !153
  %type.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %40, i32 0, i32 7
  %64 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %65, label %if.then9.if.end10_crit_edge [
    i32 29304, label %if.then9.if.then11.i_crit_edge
    i32 29765, label %if.then9.if.then11.i_crit_edge56
  ]

if.then9.if.then11.i_crit_edge56:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then9.if.then11.i_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then11.i:                                      ; preds = %if.then9.if.then11.i_crit_edge, %if.then9.if.then11.i_crit_edge56
  %67 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg.i.i, align 4
  %69 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i62.i = getelementptr i16, ptr %70, i32 12
  %71 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.i62.i, align 2
  %conv.i63.i = zext i16 %72 to i32
  %add.ptr.i64.i = getelementptr i8, ptr %68, i32 %conv.i63.i
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i) #9, !srcloc !152
  %74 = or i32 %73, 1
  %75 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i.i, align 4
  %77 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx.i67.i = getelementptr i16, ptr %78, i32 12
  %79 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.i67.i, align 2
  %conv.i68.i = zext i16 %80 to i32
  %add.ptr.i69.i = getelementptr i8, ptr %76, i32 %conv.i68.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %74) #9, !srcloc !153
  br label %if.end10

if.end10:                                         ; preds = %if.then11.i, %if.then9.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  tail call void @b53_disable_port(ptr noundef %ds, i32 noundef %port) #9
  %core_reg_align.i.i41 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 9
  %81 = ptrtoint ptr %core_reg_align.i.i41 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %core_reg_align.i.i41, align 4
  %shl.i.i42 = shl i32 9088, %82
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 4
  %add.ptr.i43 = getelementptr i8, ptr %84, i32 %shl.i.i42
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #9, !srcloc !152
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  %mul = shl i32 %port, 1
  %shl12 = shl i32 3, %mul
  %or13 = or i32 %86, %shl12
  %87 = ptrtoint ptr %core_reg_align.i.i41 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %core_reg_align.i.i41, align 4
  %shl.i.i45 = shl i32 9088, %88
  %89 = tail call i32 @llvm.bswap.i32(i32 %or13) #9
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 4
  %add.ptr.i46 = getelementptr i8, ptr %91, i32 %shl.i.i45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %89) #9, !srcloc !153
  %enabled = getelementptr %struct.bcm_sf2_priv, ptr %3, i32 0, i32 21, i32 %port, i32 2
  %92 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %enabled, align 4
  %93 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv.i, align 4
  %priv1.i.i48 = getelementptr inbounds %struct.b53_device, ptr %94, i32 0, i32 23
  %95 = ptrtoint ptr %priv1.i.i48 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv1.i.i48, align 4
  %num_ports.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %97 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp12.not.i.i = icmp eq i32 %98, 0
  br i1 %cmp12.not.i.i, label %if.end10.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end10
  %dst1.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %99 = ptrtoint ptr %dst1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dst1.i.i.i.i, align 4
  %ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn20.i.i.i.i = load ptr, ptr %ports.i.i.i.i, align 4
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %ports.i.i.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %count.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %port.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc4.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  br i1 %cmp.not21.i.i.i.i, label %for.body.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, label %for.body.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.for.body.i.i.i.i_crit_edge:          ; preds = %for.body.i.i
  br label %for.body.i.i.i.i

for.body.i.i.dsa_is_cpu_port.exit.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.i.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %for.body.i.i.for.body.i.i.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %102 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %103, %ds
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %index.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %104 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %port.013.i.i)
  %cmp5.i.i.i.i = icmp eq i32 %105, %port.013.i.i
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %106 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pn.i.i.i.i = load ptr, ptr %.pn22.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %ports.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit.i.i

cleanup.split.loop.exit18.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -448
  br label %dsa_is_cpu_port.exit.i.i

dsa_is_cpu_port.exit.i.i:                         ; preds = %cleanup.split.loop.exit18.i.i.i.i, %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, %for.body.i.i.dsa_is_cpu_port.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %dp.0.le.i.i.i.i, %cleanup.split.loop.exit18.i.i.i.i ], [ null, %for.body.i.i.dsa_is_cpu_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i.i.dsa_is_cpu_port.exit.i.i_crit_edge ]
  %type.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp.i.i.i = icmp eq i32 %108, 1
  br i1 %cmp.i.i.i, label %dsa_is_cpu_port.exit.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

dsa_is_cpu_port.exit.i.i.for.inc.i.i_crit_edge:   ; preds = %dsa_is_cpu_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %dsa_is_cpu_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %enabled.i.i = getelementptr %struct.bcm_sf2_priv, ptr %96, i32 0, i32 21, i32 %port.013.i.i, i32 2
  %109 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %enabled.i.i, align 4, !range !157
  %111 = zext i8 %110 to i32
  %spec.select.i.i = add i32 %count.016.i.i, %111
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %dsa_is_cpu_port.exit.i.i.for.inc.i.i_crit_edge
  %count.1.i.i = phi i32 [ %count.016.i.i, %dsa_is_cpu_port.exit.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %if.end.i.i ]
  %inc4.i.i = add nuw i32 %port.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc4.i.i, %98
  br i1 %exitcond.not.i.i, label %bcm_sf2_num_active_ports.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

bcm_sf2_num_active_ports.exit.i:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i.i)
  %cmp.i = icmp eq i32 %count.1.i.i, 0
  br i1 %cmp.i, label %bcm_sf2_num_active_ports.exit.i.cleanup_crit_edge, label %lor.lhs.false.i

bcm_sf2_num_active_ports.exit.i.cleanup_crit_edge: ; preds = %bcm_sf2_num_active_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %bcm_sf2_num_active_ports.exit.i
  %clk_mdiv.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %96, i32 0, i32 24
  %112 = ptrtoint ptr %clk_mdiv.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk_mdiv.i, align 4
  %tobool.not.i = icmp eq ptr %113, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count.1.i.i)
  %cmp2.i = icmp ugt i32 %count.1.i.i, 4
  br i1 %cmp2.i, label %if.end.i.if.end4.i_crit_edge, label %if.else.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i49 = add nsw i32 %count.1.i.i, -1
  %arrayidx.i = getelementptr [4 x i32], ptr @bcm_sf2_recalc_clock.rate_table, i32 0, i32 %sub.i49
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.end.i.if.end4.i_crit_edge
  %new_rate.0.i = phi i32 [ %115, %if.else.i ], [ 90000000, %if.end.i.if.end4.i_crit_edge ]
  %call6.i = tail call i32 @clk_set_rate(ptr noundef nonnull %113, i32 noundef %new_rate.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %lor.lhs.false.i.cleanup_crit_edge, %bcm_sf2_num_active_ports.exit.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_set_mac_eee(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_get_mac_eee(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_br_join(ptr noundef, i32 noundef, [4 x i32], ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_br_leave(ptr noundef, i32 noundef, [4 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_br_set_stp_state(ptr noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_br_fast_age(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_br_flags_pre(ptr noundef, i32 noundef, [2 x i32], ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_br_flags(ptr noundef, i32 noundef, [2 x i32], ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_vlan_filtering(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_vlan_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_vlan_del(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_fdb_add(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_fdb_del(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_fdb_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_mdb_add(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_mdb_del(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_get_rxnfc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_set_rxnfc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_mirror_add(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_mirror_del(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_configure_vlan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_setup_devlink_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_brcm_hdr_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_resources_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_eee_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_get_sset_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_sf2_cfp_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_sf2_cfp_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_cfp_get_sset_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_cfp_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_enable_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_disable_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_remove_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_mdio_find_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %addr)
  %cmp = icmp eq i32 %addr, 30
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %indir_phy_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %indir_phy_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %indir_phy_mask, align 4
  %and = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %14 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offsets.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv.i3.i = zext i16 %17 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %13, i32 %conv.i3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %11) #9, !srcloc !153
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 448, %19
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %21, i32 %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 503316480) #9, !srcloc !153
  %shl1.i = shl i32 %regnum, 3
  %or2.i = or i32 %shl1.i, 131072
  %22 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i7.i = shl i32 %or2.i, %23
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %25, i32 %shl.i.i7.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #9, !srcloc !152
  %27 = and i32 %26, -65536
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i.i, align 4
  %31 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_offsets.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 2
  %conv.i14.i = zext i16 %34 to i32
  %add.ptr.i15.i = getelementptr i8, ptr %30, i32 %conv.i14.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #9, !srcloc !152
  %36 = and i32 %35, -16777217
  %37 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i, align 4
  %39 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_offsets.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 2
  %conv.i18.i = zext i16 %42 to i32
  %add.ptr.i19.i = getelementptr i8, ptr %38, i32 %conv.i18.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %36) #9, !srcloc !153
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %master_mii_bus = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 30
  %43 = ptrtoint ptr %master_mii_bus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master_mii_bus, align 4
  %call2 = tail call i32 @mdiobus_read_nested(ptr noundef %44, i32 noundef %addr, i32 noundef %regnum) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %28, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %addr)
  %cmp = icmp eq i32 %addr, 30
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %indir_phy_mask = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %indir_phy_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %indir_phy_mask, align 4
  %and = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %reg.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !152
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %14 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offsets.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv.i3.i = zext i16 %17 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %13, i32 %conv.i3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %11) #9, !srcloc !153
  %core_reg_align.i.i.i = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i.i = shl i32 448, %19
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %21, i32 %shl.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 503316480) #9, !srcloc !153
  %shl1.i = shl i32 %regnum, 3
  %or2.i = or i32 %shl1.i, 131072
  %conv.i = zext i16 %val to i32
  %22 = ptrtoint ptr %core_reg_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_reg_align.i.i.i, align 4
  %shl.i.i10.i = shl i32 %or2.i, %23
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %26, i32 %shl.i.i10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %24) #9, !srcloc !153
  %27 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i.i, align 4
  %29 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_offsets.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv.i14.i = zext i16 %32 to i32
  %add.ptr.i15.i = getelementptr i8, ptr %28, i32 %conv.i14.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #9, !srcloc !152
  %34 = and i32 %33, -16777217
  %35 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.i.i, align 4
  %37 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_offsets.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 2
  %conv.i18.i = zext i16 %40 to i32
  %add.ptr.i19.i = getelementptr i8, ptr %36, i32 %conv.i18.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %34) #9, !srcloc !153
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %master_mii_bus = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 30
  %41 = ptrtoint ptr %master_mii_bus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master_mii_bus, align 4
  %call2 = tail call i32 @mdiobus_write_nested(ptr noundef %42, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_phylink_mac_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_sf2_cfp_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @dsa_switch_suspend(ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_sf2_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @dsa_switch_resume(ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30, !31, !33, !35, !36, !37, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !74, !75, !77, !79, !81, !82, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_bcm_sf2__498_1630_bcm_sf2_driver_init6, !1, !"__initcall__kmod_bcm_sf2__498_1630_bcm_sf2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1630, i32 1}
!2 = !{ptr @__exitcall_bcm_sf2_driver_exit, !1, !"__exitcall_bcm_sf2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author499, !4, !"__UNIQUE_ID_author499", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1632, i32 1}
!5 = !{ptr @__UNIQUE_ID_description500, !6, !"__UNIQUE_ID_description500", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1633, i32 1}
!7 = !{ptr @__UNIQUE_ID_file501, !8, !"__UNIQUE_ID_file501", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1634, i32 1}
!9 = !{ptr @__UNIQUE_ID_license502, !8, !"__UNIQUE_ID_license502", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias503, !11, !"__UNIQUE_ID_alias503", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1635, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1625, i32 11}
!14 = !{ptr @bcm_sf2_driver, !15, !"bcm_sf2_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1620, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1359, i32 44}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1404, i32 9}
!25 = !{ptr @bcm_sf2_sw_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1424, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bcm_sf2_sw_probe.__key.9, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1425, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1436, i32 35}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1449, i32 4}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm_sf2_sw_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm_sf2_sw_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1455, i32 48}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1461, i32 53}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1471, i32 3}
!45 = !{ptr @bcm_sf2_sw_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bcm_sf2_sw_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1481, i32 3}
!49 = !{ptr @bcm_sf2_sw_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm_sf2_sw_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1489, i32 3}
!53 = !{ptr @bcm_sf2_sw_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bcm_sf2_sw_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1497, i32 11}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1499, i32 3}
!59 = !{ptr @bcm_sf2_sw_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bcm_sf2_sw_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1504, i32 11}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1506, i32 3}
!65 = !{ptr @bcm_sf2_sw_probe._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bcm_sf2_sw_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1523, i32 31}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1539, i32 2}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @bcm_sf2_sw_probe._entry.35, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @bcm_sf2_sw_probe._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @bcm_sf2_io_ops, !76, !"bcm_sf2_io_ops", i1 false, i1 false}
!76 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1170, i32 32}
!77 = !{ptr @bcm_sf2_ops, !78, !"bcm_sf2_ops", i1 false, i1 false}
!78 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1215, i32 36}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 730, i32 4}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @bcm_sf2_sw_validate._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @bcm_sf2_sw_validate._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 59, i32 2}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 985, i32 3}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @bcm_sf2_sw_resume._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @bcm_sf2_sw_resume._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @bcm_sf2_recalc_clock.rate_table, !94, !"rate_table", i1 false, i1 false}
!94 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 119, i32 29}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 568, i32 4}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @bcm_sf2_identify_ports._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @bcm_sf2_identify_ports._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 589, i32 35}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 597, i32 34}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 526, i32 12}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 538, i32 3}
!108 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @bcm_sf2_crossbar_setup.__UNIQUE_ID_ddebug497, !107, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 91, i32 2}
!113 = !{ptr @bcm_sf2_mdio_register.index, !114, !"index", i1 false, i1 false}
!114 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 610, i32 13}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 614, i32 43}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 631, i32 30}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 634, i32 53}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 648, i32 31}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 670, i32 34}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 674, i32 34}
!127 = !{ptr @bcm_sf2_of_match, !128, !"bcm_sf2_of_match", i1 false, i1 false}
!128 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1340, i32 34}
!129 = !{ptr @bcm_sf2_4908_data, !130, !"bcm_sf2_4908_data", i1 false, i1 false}
!130 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1285, i32 37}
!131 = !{ptr @bcm_sf2_4908_reg_offsets, !132, !"bcm_sf2_4908_reg_offsets", i1 false, i1 false}
!132 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1265, i32 18}
!133 = !{ptr @bcm_sf2_7445_data, !134, !"bcm_sf2_7445_data", i1 false, i1 false}
!134 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1310, i32 37}
!135 = !{ptr @bcm_sf2_7445_reg_offsets, !136, !"bcm_sf2_7445_reg_offsets", i1 false, i1 false}
!136 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1294, i32 18}
!137 = !{ptr @bcm_sf2_7278_data, !138, !"bcm_sf2_7278_data", i1 false, i1 false}
!138 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1333, i32 37}
!139 = !{ptr @bcm_sf2_7278_reg_offsets, !140, !"bcm_sf2_7278_reg_offsets", i1 false, i1 false}
!140 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1317, i32 18}
!141 = !{ptr @bcm_sf2_pm_ops, !142, !"bcm_sf2_pm_ops", i1 false, i1 false}
!142 = !{!"../drivers/net/dsa/bcm_sf2.c", i32 1616, i32 8}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 6750098}
!153 = !{i64 6749680}
!154 = !{!"auto-init"}
!155 = !{i64 2148993881, i64 2148993886, i64 2148993899, i64 2148993943, i64 2148993977, i64 2148993998}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i8 0, i8 2}
