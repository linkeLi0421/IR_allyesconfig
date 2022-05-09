; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mscc/ocelot_net.c_pt.bc'
source_filename = "../drivers/net/ethernet/mscc/ocelot_net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.130 }
%struct.atomic_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.phylink_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.4 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.4 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ocelot_port_private = type { %struct.ocelot_port, ptr, ptr, %struct.phylink_config, i8, %struct.ocelot_port_tc }
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.81, i32, %struct.spinlock }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.ocelot_port_tc = type { i8, i32, i32 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.166, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.166 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_notifier_changelowerstate_info = type { %struct.netdev_notifier_info, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.177 }
%union.anon.177 = type { %struct.switchdev_brport_flags }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.sk_buff = type { %union.anon.55, %union.anon.58, %union.anon.59, [48 x i8], %union.anon.60, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.62, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr, %union.anon.57 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { ptr }
%union.anon.59 = type { i64 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { i32, ptr }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.64, i32, i32, i32, i16, i16, %union.anon.66, i32, %union.anon.67, %union.anon.68, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.64 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.ocelot_dump_ctx = type { ptr, ptr, ptr, i32 }
%struct.ocelot_mact_work_ctx = type { %struct.work_struct, ptr, i32, %union.anon.178 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { [6 x i8], i16, i32, i32 }
%struct.ocelot_policer = type { i32, i32 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.149, ptr }
%union.anon.149 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, i64, i64, i64, i32 }

@ocelot_devlink_ops = dso_local constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_devlink_sb_pool_get, ptr @ocelot_devlink_sb_pool_set, ptr @ocelot_devlink_sb_port_pool_get, ptr @ocelot_devlink_sb_port_pool_set, ptr @ocelot_devlink_sb_tc_pool_bind_get, ptr @ocelot_devlink_sb_tc_pool_bind_set, ptr @ocelot_devlink_sb_occ_snapshot, ptr @ocelot_devlink_sb_occ_max_clear, ptr @ocelot_devlink_sb_occ_port_pool_get, ptr @ocelot_devlink_sb_occ_tc_port_bind_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ocelot_netdevice_nb = dso_local local_unnamed_addr global %struct.notifier_block { ptr @ocelot_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@ocelot_switchdev_nb = dso_local global %struct.notifier_block { ptr @ocelot_switchdev_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@ocelot_switchdev_blocking_nb = dso_local global %struct.notifier_block { ptr @ocelot_switchdev_blocking_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@ocelot_port_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ocelot_port_open, ptr @ocelot_port_stop, ptr @ocelot_port_xmit, ptr null, ptr null, ptr null, ptr @ocelot_set_rx_mode, ptr @ocelot_port_set_mac_address, ptr null, ptr null, ptr @ocelot_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_change_mtu, ptr null, ptr null, ptr @ocelot_get_stats64, ptr null, ptr null, ptr null, ptr @ocelot_vlan_rx_add_vid, ptr @ocelot_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_set_features, ptr null, ptr null, ptr @ocelot_port_fdb_add, ptr @ocelot_port_fdb_del, ptr @ocelot_port_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_get_devlink_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ocelot_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_port_get_strings, ptr null, ptr @ocelot_port_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_port_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocelot_port_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ocelot_probe_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1716, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register_netdev failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ocelot_probe_port\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/mscc/ocelot_net.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocelot_probe_port._entry_ptr = internal global ptr @ocelot_probe_port._entry, section ".printk_index", align 4
@ocelot_netdevice_lag_join.__msg = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mscc_ocelot: Offloading not supported\00", [58 x i8] zeroinitializer }, align 32
@ocelot_fdma_enabled = external dso_local global %struct.static_key_false, align 4
@ocelot_enqueue_mact_action.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&w->work)\00", [36 x i8] zeroinitializer }, align 32
@ocelot_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ocelot_block_cb_list, ptr @ocelot_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mscc_ocelot: Only ingress is supported\00", [57 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mscc_ocelot: Only one action is supported\00", [54 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mscc_ocelot: Rate limit is not supported on shared blocks\00", [38 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mscc_ocelot: Unsupported action\00", [32 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mscc_ocelot: Only one policer per port is supported\00", [44 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mscc_ocelot: QoS offload not support packets per second\00", [40 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mscc_ocelot: Could not add policer\00", [61 x i8] zeroinitializer }, align 32
@ocelot_setup_tc_cls_matchall.__msg.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mscc_ocelot: Could not delete policer\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Cannot disable HW TC offload while offloads active\0A\00", [44 x i8] zeroinitializer }, align 32
@ocelot_port_phylink_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported phy mode %s for port %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ocelot_port_phylink_create\00", [37 x i8] zeroinitializer }, align 32
@ocelot_port_phylink_create._entry_ptr = internal global ptr @ocelot_port_phylink_create._entry, section ".printk_index", align 4
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing SerDes phys for port %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ocelot_port_phylink_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 1633, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not SerDes mode on port %d: %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@ocelot_port_phylink_create._entry_ptr.19 = internal global ptr @ocelot_port_phylink_create._entry.17, section ".printk_index", align 4
@ocelot_phylink_ops = internal constant { %struct.phylink_mac_ops, [60 x i8] } { %struct.phylink_mac_ops { ptr @phylink_generic_validate, ptr null, ptr null, ptr null, ptr @vsc7514_phylink_mac_config, ptr null, ptr null, ptr @vsc7514_phylink_mac_link_down, ptr @vsc7514_phylink_mac_link_up }, [60 x i8] zeroinitializer }, align 32
@ocelot_port_phylink_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.2, i32 1653, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not create phylink (%pe)\0A\00", [32 x i8] zeroinitializer }, align 32
@ocelot_port_phylink_create._entry_ptr.22 = internal global ptr @ocelot_port_phylink_create._entry.20, section ".printk_index", align 4
@ocelot_port_phylink_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 1661, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not connect to PHY: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@ocelot_port_phylink_create._entry_ptr.25 = internal global ptr @ocelot_port_phylink_create._entry.23, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 21, i64 26, i64 27]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.59 = internal global [32 x i64] [i64 30, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"ocelot_devlink_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 148, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"ocelot_port_netdev_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 785, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"ocelot_ethtool_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 878, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1716, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1254, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 548, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"ocelot_block_cb_list\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 333, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 676, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 664, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 230, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 237, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 243, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 251, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 256, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 262, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 272, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 285, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 742, i32 7 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1604, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1624, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1632, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"ocelot_phylink_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1577, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1653, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private constant [42 x i8] c"../drivers/net/ethernet/mscc/ocelot_net.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1661, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 215, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 217, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 221, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 223, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 225, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 227, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 229, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 231, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 233, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 235, i32 10 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 237, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 239, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 241, i32 10 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 243, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 245, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 249, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 251, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 253, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 255, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 257, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 259, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 261, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 263, i32 10 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 265, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 267, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 269, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 271, i32 10 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @ocelot_port_phylink_create._entry, ptr @ocelot_port_phylink_create._entry.17, ptr @ocelot_port_phylink_create._entry.20, ptr @ocelot_port_phylink_create._entry.23, ptr @ocelot_port_phylink_create._entry_ptr, ptr @ocelot_port_phylink_create._entry_ptr.19, ptr @ocelot_port_phylink_create._entry_ptr.22, ptr @ocelot_port_phylink_create._entry_ptr.25, ptr @ocelot_probe_port._entry, ptr @ocelot_probe_port._entry_ptr, ptr @ocelot_devlink_ops, ptr @ocelot_port_netdev_ops, ptr @ocelot_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ocelot_netdevice_lag_join.__msg, ptr @ocelot_enqueue_mact_action.__key, ptr @.str.5, ptr @ocelot_block_cb_list, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg, ptr @ocelot_setup_tc_cls_matchall.__msg, ptr @ocelot_setup_tc_cls_matchall.__msg.6, ptr @ocelot_setup_tc_cls_matchall.__msg.7, ptr @ocelot_setup_tc_cls_matchall.__msg.8, ptr @ocelot_setup_tc_cls_matchall.__msg.9, ptr @ocelot_setup_tc_cls_matchall.__msg.10, ptr @ocelot_setup_tc_cls_matchall.__msg.11, ptr @ocelot_setup_tc_cls_matchall.__msg.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @ocelot_phylink_ops, ptr @.str.21, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_port_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_probe_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_netdevice_lag_join.__msg to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_enqueue_mact_action.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_setup_tc_cls_matchall.__msg.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_port_phylink_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_port_phylink_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_phylink_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_port_phylink_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_port_phylink_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_pool_get(ptr noundef %dl, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #6
  %call1 = tail call i32 @ocelot_sb_pool_get(ptr noundef %call, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_pool_set(ptr noundef %dl, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #6
  %call1 = tail call i32 @ocelot_sb_pool_set(ptr noundef %call, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr noundef %extack) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_port_pool_get(ptr noundef %dlp, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_threshold) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #6
  %2 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink.i, align 4
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %3) #6
  %devlink_ports.i = getelementptr inbounds %struct.ocelot, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %devlink_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_ports.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dlp to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 356
  %call2 = tail call i32 @ocelot_sb_port_pool_get(ptr noundef %call.i, i32 noundef %sub.ptr.div.i, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_threshold) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_port_pool_set(ptr noundef %dlp, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #6
  %2 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink.i, align 4
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %3) #6
  %devlink_ports.i = getelementptr inbounds %struct.ocelot, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %devlink_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_ports.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dlp to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 356
  %call2 = tail call i32 @ocelot_sb_port_pool_set(ptr noundef %call.i, i32 noundef %sub.ptr.div.i, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_tc_pool_bind_get(ptr noundef %dlp, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_pool_index, ptr noundef %p_threshold) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #6
  %2 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink.i, align 4
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %3) #6
  %devlink_ports.i = getelementptr inbounds %struct.ocelot, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %devlink_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_ports.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dlp to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 356
  %call2 = tail call i32 @ocelot_sb_tc_pool_bind_get(ptr noundef %call.i, i32 noundef %sub.ptr.div.i, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_pool_index, ptr noundef %p_threshold) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_tc_pool_bind_set(ptr noundef %dlp, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #6
  %2 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink.i, align 4
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %3) #6
  %devlink_ports.i = getelementptr inbounds %struct.ocelot, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %devlink_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_ports.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dlp to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 356
  %call2 = tail call i32 @ocelot_sb_tc_pool_bind_set(ptr noundef %call.i, i32 noundef %sub.ptr.div.i, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_occ_snapshot(ptr noundef %dl, i32 noundef %sb_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #6
  %call1 = tail call i32 @ocelot_sb_occ_snapshot(ptr noundef %call, i32 noundef %sb_index) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_occ_max_clear(ptr noundef %dl, i32 noundef %sb_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #6
  %call1 = tail call i32 @ocelot_sb_occ_max_clear(ptr noundef %call, i32 noundef %sb_index) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_occ_port_pool_get(ptr noundef %dlp, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_cur, ptr noundef %p_max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #6
  %2 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink.i, align 4
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %3) #6
  %devlink_ports.i = getelementptr inbounds %struct.ocelot, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %devlink_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_ports.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dlp to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 356
  %call2 = tail call i32 @ocelot_sb_occ_port_pool_get(ptr noundef %call.i, i32 noundef %sub.ptr.div.i, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_cur, ptr noundef %p_max) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_devlink_sb_occ_tc_port_bind_get(ptr noundef %dlp, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_cur, ptr noundef %p_max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %dlp, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #6
  %2 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink.i, align 4
  %call.i.i = tail call ptr @devlink_priv(ptr noundef %3) #6
  %devlink_ports.i = getelementptr inbounds %struct.ocelot, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %devlink_ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_ports.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %dlp to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 356
  %call2 = tail call i32 @ocelot_sb_occ_tc_port_bind_get(ptr noundef %call.i, i32 noundef %sub.ptr.div.i, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_cur, ptr noundef %p_max) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_port_devlink_init(ptr nocapture noundef readonly %ocelot, i32 noundef %port, i32 noundef %flavour) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.devlink_port_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 2
  %0 = ptrtoint ptr %devlink_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink_ports, align 4
  %arrayidx = getelementptr %struct.devlink_port, ptr %1, i32 %port
  %devlink = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 1
  %2 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devlink, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs) #6
  %4 = call ptr @memset(ptr %attrs, i32 0, i32 60)
  %5 = call ptr @memset(ptr %arrayidx, i32 0, i32 356)
  %switch_id = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3
  %base_mac = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 14
  %6 = call ptr @memcpy(ptr %switch_id, ptr %base_mac, i32 6)
  %id_len2 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %id_len2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %id_len2, align 4
  %8 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %port, ptr %8, align 4
  %flavour3 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 2
  %10 = ptrtoint ptr %flavour3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flavour, ptr %flavour3, align 4
  call void @devlink_port_attrs_set(ptr noundef %arrayidx, ptr noundef nonnull %attrs) #6
  %call = call i32 @devlink_port_register(ptr noundef %3, ptr noundef %arrayidx, i32 noundef %port) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocelot_port_devlink_teardown(ptr nocapture noundef readonly %ocelot, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 2
  %0 = ptrtoint ptr %devlink_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink_ports, align 4
  %arrayidx = getelementptr %struct.devlink_port, ptr %1, i32 %port
  tail call void @devlink_port_unregister(ptr noundef %arrayidx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_setup_tc_cls_flower(ptr nocapture noundef readonly %priv, ptr noundef %f, i1 noundef zeroext %ingress) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %chip_port = getelementptr inbounds %struct.ocelot_port_private, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  br i1 %ingress, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %command, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @ocelot_cls_flower_replace(ptr noundef %1, i32 noundef %conv, ptr noundef %f, i1 noundef zeroext true) #6
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @ocelot_cls_flower_destroy(ptr noundef %1, i32 noundef %conv, ptr noundef %f, i1 noundef zeroext true) #6
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @ocelot_cls_flower_stats(ptr noundef %1, i32 noundef %conv, ptr noundef %f, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_cls_flower_replace(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_cls_flower_destroy(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_cls_flower_stats(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ocelot_port_to_netdev(ptr nocapture noundef readonly %ocelot, i32 noundef %port) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ocelot_port_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocelot_netdev_to_port(ptr noundef readonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %1, @ocelot_port_netdev_ops
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ocelot_netdevice_dev_check(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @ocelot_port_netdev_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_netdevice_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %iter.i62 = alloca ptr, align 4
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %event, label %entry.cleanup27_crit_edge [
    i32 26, label %sw.bb
    i32 21, label %sw.bb7
    i32 27, label %sw.bb19
  ]

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

sw.bb:                                            ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %4, @ocelot_port_netdev_ops
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ocelot_netdevice_prechangeupper(ptr noundef %1, ptr noundef %1, ptr noundef %ptr)
  br label %cleanup27

if.end:                                           ; preds = %sw.bb
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

if.end.netif_is_lag_master.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %if.end
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %8, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then4_crit_edge

netif_is_bond_master.exit.i.if.then4_crit_edge:   ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %if.end.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.cleanup27_crit_edge, label %netif_is_lag_master.exit.if.then4_crit_edge

netif_is_lag_master.exit.if.then4_crit_edge:      ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

netif_is_lag_master.exit.cleanup27_crit_edge:     ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.then4:                                         ; preds = %netif_is_lag_master.exit.if.then4_crit_edge, %netif_is_bond_master.exit.i.if.then4_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #6
  %lower1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %lower1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lower1.i, align 8
  %13 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #6
  %tobool.not19.i = icmp eq ptr %call.i, null
  br i1 %tobool.not19.i, label %if.then4.ocelot_netdevice_lag_prechangeupper.exit_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.ocelot_netdevice_lag_prechangeupper.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_netdevice_lag_prechangeupper.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %lower.020.i = phi ptr [ %call8.i, %if.end.i.for.body.i_crit_edge ], [ %call.i, %if.then4.for.body.i_crit_edge ]
  %bond.i = getelementptr i8, ptr %lower.020.i, i32 2400
  %14 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bond.i, align 4
  %cmp.not.i = icmp eq ptr %15, %1
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge

for.body.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_netdevice_lag_prechangeupper.exit

if.end.i:                                         ; preds = %for.body.i
  call fastcc void @ocelot_netdevice_prechangeupper(ptr noundef %1, ptr noundef nonnull %lower.020.i, ptr noundef %ptr) #6
  %call8.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #6
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_netdevice_lag_prechangeupper.exit

ocelot_netdevice_lag_prechangeupper.exit:         ; preds = %if.end.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge, %for.body.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge, %if.then4.ocelot_netdevice_lag_prechangeupper.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %if.then4.ocelot_netdevice_lag_prechangeupper.exit_crit_edge ], [ 0, %if.end.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge ], [ 1, %for.body.i.ocelot_netdevice_lag_prechangeupper.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #6
  br label %cleanup27

sw.bb7:                                           ; preds = %entry
  %netdev_ops.i48 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %netdev_ops.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev_ops.i48, align 8
  %cmp.i49 = icmp eq ptr %17, @ocelot_port_netdev_ops
  br i1 %cmp.i49, label %if.then10, label %if.end12

if.then10:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @ocelot_netdevice_changeupper(ptr noundef %1, ptr noundef %1, ptr noundef %ptr)
  br label %cleanup27

if.end12:                                         ; preds = %sw.bb7
  %flags.i.i50 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %flags.i.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i50, align 8
  %and.i.i51 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %and.i.i51, 0
  br i1 %tobool.not.i.i52, label %if.end12.netif_is_lag_master.exit61_crit_edge, label %netif_is_bond_master.exit.i56

if.end12.netif_is_lag_master.exit61_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit61

netif_is_bond_master.exit.i56:                    ; preds = %if.end12
  %priv_flags.i.i53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %priv_flags.i.i53 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i.i53, align 16
  %and1.i.i54 = and i64 %21, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i54)
  %tobool2.i.not.i55 = icmp eq i64 %and1.i.i54, 0
  br i1 %tobool2.i.not.i55, label %netif_is_bond_master.exit.i56.netif_is_lag_master.exit61_crit_edge, label %netif_is_bond_master.exit.i56.if.then14_crit_edge

netif_is_bond_master.exit.i56.if.then14_crit_edge: ; preds = %netif_is_bond_master.exit.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

netif_is_bond_master.exit.i56.netif_is_lag_master.exit61_crit_edge: ; preds = %netif_is_bond_master.exit.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit61

netif_is_lag_master.exit61:                       ; preds = %netif_is_bond_master.exit.i56.netif_is_lag_master.exit61_crit_edge, %if.end12.netif_is_lag_master.exit61_crit_edge
  %priv_flags.i3.i57 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i3.i57 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i3.i57, align 16
  %and.i4.i58 = and i64 %23, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i58)
  %tobool.i.i59.not = icmp eq i64 %and.i4.i58, 0
  br i1 %tobool.i.i59.not, label %netif_is_lag_master.exit61.cleanup27_crit_edge, label %netif_is_lag_master.exit61.if.then14_crit_edge

netif_is_lag_master.exit61.if.then14_crit_edge:   ; preds = %netif_is_lag_master.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

netif_is_lag_master.exit61.cleanup27_crit_edge:   ; preds = %netif_is_lag_master.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.then14:                                        ; preds = %netif_is_lag_master.exit61.if.then14_crit_edge, %netif_is_bond_master.exit.i56.if.then14_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i62) #6
  %lower1.i63 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %lower1.i63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lower1.i63, align 8
  %26 = ptrtoint ptr %iter.i62 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %iter.i62, align 4
  %call.i64 = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i62) #6
  %tobool.not22.i = icmp eq ptr %call.i64, null
  br i1 %tobool.not22.i, label %if.then14.ocelot_netdevice_lag_changeupper.exit_crit_edge, label %if.then14.for.body.i67_crit_edge

if.then14.for.body.i67_crit_edge:                 ; preds = %if.then14
  br label %for.body.i67

if.then14.ocelot_netdevice_lag_changeupper.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_netdevice_lag_changeupper.exit

for.body.i67:                                     ; preds = %for.inc.i.for.body.i67_crit_edge, %if.then14.for.body.i67_crit_edge
  %lower.023.i = phi ptr [ %call9.i, %for.inc.i.for.body.i67_crit_edge ], [ %call.i64, %if.then14.for.body.i67_crit_edge ]
  %bond.i65 = getelementptr i8, ptr %lower.023.i, i32 2400
  %27 = ptrtoint ptr %bond.i65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bond.i65, align 4
  %cmp.not.i66 = icmp eq ptr %28, %1
  br i1 %cmp.not.i66, label %if.end.i68, label %for.body.i67.ocelot_netdevice_lag_changeupper.exit_crit_edge

for.body.i67.ocelot_netdevice_lag_changeupper.exit_crit_edge: ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_netdevice_lag_changeupper.exit

if.end.i68:                                       ; preds = %for.body.i67
  %call3.i = call fastcc i32 @ocelot_netdevice_changeupper(ptr noundef nonnull %lower.023.i, ptr noundef %1, ptr noundef %ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.inc.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 1, %call3.i
  %or.i.i = or i32 %sub.i.i, 32768
  br label %ocelot_netdevice_lag_changeupper.exit

for.inc.i:                                        ; preds = %if.end.i68
  %call9.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i62) #6
  %tobool.not.i69 = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i69, label %for.inc.i.ocelot_netdevice_lag_changeupper.exit_crit_edge, label %for.inc.i.for.body.i67_crit_edge

for.inc.i.for.body.i67_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i67

for.inc.i.ocelot_netdevice_lag_changeupper.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_netdevice_lag_changeupper.exit

ocelot_netdevice_lag_changeupper.exit:            ; preds = %for.inc.i.ocelot_netdevice_lag_changeupper.exit_crit_edge, %if.then5.i, %for.body.i67.ocelot_netdevice_lag_changeupper.exit_crit_edge, %if.then14.ocelot_netdevice_lag_changeupper.exit_crit_edge
  %retval.2.i70 = phi i32 [ %or.i.i, %if.then5.i ], [ 0, %if.then14.ocelot_netdevice_lag_changeupper.exit_crit_edge ], [ 1, %for.body.i67.ocelot_netdevice_lag_changeupper.exit_crit_edge ], [ 0, %for.inc.i.ocelot_netdevice_lag_changeupper.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i62) #6
  br label %cleanup27

sw.bb19:                                          ; preds = %entry
  %netdev_ops.i71 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %netdev_ops.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev_ops.i71, align 8
  %cmp.i72 = icmp eq ptr %30, @ocelot_port_netdev_ops
  br i1 %cmp.i72, label %if.end23, label %sw.bb19.cleanup27_crit_edge

sw.bb19.cleanup27_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.end23:                                         ; preds = %sw.bb19
  %lower_state_info = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, ptr %ptr, i32 0, i32 1
  %31 = ptrtoint ptr %lower_state_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lower_state_info, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load.i)
  %34 = icmp ugt i8 %bf.load.i, -65
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i, align 4
  %chip_port.i = getelementptr i8, ptr %1, i32 2452
  %37 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chip_port.i, align 4
  %conv7.i = zext i8 %38 to i32
  %bond.i73 = getelementptr i8, ptr %1, i32 2400
  %39 = ptrtoint ptr %bond.i73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bond.i73, align 4
  %tobool8.not.i = icmp eq ptr %40, null
  br i1 %tobool8.not.i, label %if.end23.cleanup27_crit_edge, label %if.end.i75

if.end23.cleanup27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.end.i75:                                       ; preds = %if.end23
  %lag_tx_active.i = getelementptr i8, ptr %1, i32 2404
  %41 = ptrtoint ptr %lag_tx_active.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lag_tx_active.i, align 4, !range !141
  %43 = zext i1 %34 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp.i74 = icmp eq i8 %42, %43
  br i1 %cmp.i74, label %if.end.i75.cleanup27_crit_edge, label %if.end15.i

if.end.i75.cleanup27_crit_edge:                   ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.end15.i:                                       ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ocelot_port_lag_change(ptr noundef %36, i32 noundef %conv7.i, i1 noundef zeroext %34) #6
  br label %cleanup27

cleanup27:                                        ; preds = %if.end15.i, %if.end.i75.cleanup27_crit_edge, %if.end23.cleanup27_crit_edge, %sw.bb19.cleanup27_crit_edge, %ocelot_netdevice_lag_changeupper.exit, %netif_is_lag_master.exit61.cleanup27_crit_edge, %if.then10, %ocelot_netdevice_lag_prechangeupper.exit, %netif_is_lag_master.exit.cleanup27_crit_edge, %if.then, %entry.cleanup27_crit_edge
  %retval.3 = phi i32 [ 0, %sw.bb19.cleanup27_crit_edge ], [ 0, %netif_is_lag_master.exit61.cleanup27_crit_edge ], [ 0, %netif_is_lag_master.exit.cleanup27_crit_edge ], [ 0, %entry.cleanup27_crit_edge ], [ %retval.2.i, %ocelot_netdevice_lag_prechangeupper.exit ], [ 0, %if.then ], [ %retval.2.i70, %ocelot_netdevice_lag_changeupper.exit ], [ %call11, %if.then10 ], [ 0, %if.end.i75.cleanup27_crit_edge ], [ 0, %if.end23.cleanup27_crit_edge ], [ 1, %if.end15.i ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cond = icmp eq i32 %event, 9
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call1 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @ocelot_netdevice_dev_check, ptr noundef nonnull @ocelot_port_attr_set) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_switchdev_blocking_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb3
    i32 9, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @ocelot_netdevice_dev_check, ptr noundef nonnull @ocelot_port_obj_add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @ocelot_netdevice_dev_check, ptr noundef nonnull @ocelot_port_obj_del) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i17 = icmp eq i32 %call4, 0
  %sub.i18 = sub i32 1, %call4
  %or.i19 = or i32 %sub.i18, 32768
  %retval.0.i20 = select i1 %tobool.not.i17, i32 1, i32 %or.i19
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @ocelot_netdevice_dev_check, ptr noundef nonnull @ocelot_port_attr_set) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not.i21 = icmp eq i32 %call7, 0
  %sub.i22 = sub i32 1, %call7
  %or.i23 = or i32 %sub.i22, 32768
  %retval.0.i24 = select i1 %tobool.not.i21, i32 1, i32 %or.i23
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %sw.bb6 ], [ %retval.0.i20, %sw.bb3 ], [ %retval.0.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_probe_port(ptr noundef %ocelot, i32 noundef %port, ptr noundef %target, ptr noundef %portnp) local_unnamed_addr #0 align 64 {
entry:
  %phy_mode.i = alloca i32, align 4
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 164, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev4 = getelementptr i8, ptr %call, i32 2420
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dev4, align 4
  %conv = trunc i32 %port to i8
  %chip_port = getelementptr i8, ptr %call, i32 2452
  %4 = ptrtoint ptr %chip_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %chip_port, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ocelot, ptr %add.ptr.i, align 4
  %target7 = getelementptr i8, ptr %call, i32 2308
  %6 = ptrtoint ptr %target7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %target, ptr %target7, align 4
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %port
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %arrayidx, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %10 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ocelot_port_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ocelot_ethtool_ops, ptr %ethtool_ops, align 16
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %12 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9000, ptr %max_mtu, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %13 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %hw_features, align 8
  %or = or i64 %14, 571746046444032
  store i64 %or, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features, align 16
  %or8 = or i64 %16, 562949953421824
  store i64 %or8, ptr %features, align 16
  %call9 = tail call i32 @of_get_ethdev_address(ptr noundef %portnp, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %base_mac = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 14
  %17 = ptrtoint ptr %base_mac to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %base_mac, align 1
  %conv.i.i = zext i8 %18 to i64
  %arrayidx.1.i.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %20 to i64
  %21 = shl nuw nsw i64 %conv.i.i, 16
  %22 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %22, %21
  %arrayidx.2.i.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 14, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %24 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 14, i32 3
  %25 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %26 to i64
  %arrayidx.4.i.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 14, i32 4
  %27 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %28 to i64
  %29 = shl nuw nsw i64 %or.2.i.i, 24
  %30 = shl nuw nsw i64 %conv.3.i.i, 16
  %31 = shl nuw nsw i64 %conv.4.i.i, 8
  %32 = or i64 %31, %30
  %shl.5.i.i = or i64 %32, %29
  %arrayidx.5.i.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 14, i32 5
  %33 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %34 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #6
  %35 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %36 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %37 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %38 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %39 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %conv.i = zext i32 %port to i64
  %add.i = add i64 %or.5.i.i, %conv.i
  %conv.i3.i = trunc i64 %add.i to i8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i3.i, ptr %39, align 1
  %shr.i.i = lshr i64 %add.i, 8
  %conv.1.i4.i = trunc i64 %shr.i.i to i8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.1.i4.i, ptr %38, align 1
  %shr.1.i.i = lshr i64 %add.i, 16
  %conv.2.i6.i = trunc i64 %shr.1.i.i to i8
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.2.i6.i, ptr %37, align 1
  %shr.2.i.i = lshr i64 %add.i, 24
  %conv.3.i8.i = trunc i64 %shr.2.i.i to i8
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.3.i8.i, ptr %36, align 1
  %shr.3.i.i = lshr i64 %add.i, 32
  %conv.4.i10.i = trunc i64 %shr.3.i.i to i8
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.4.i10.i, ptr %35, align 1
  %shr.4.i.i = lshr i64 %add.i, 40
  %conv.5.i12.i = trunc i64 %shr.4.i.i to i8
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.5.i12.i, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr, align 64
  %call13 = call i32 @ocelot_mact_learn(ptr noundef %ocelot, i32 noundef 58, ptr noundef %47, i32 noundef 0, i32 noundef 1) #6
  call void @ocelot_init_port(ptr noundef %ocelot, i32 noundef %port) #6
  %48 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ports, align 4
  %arrayidx.i = getelementptr ptr, ptr %49, i32 %port
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ocelot, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_mode.i) #6
  %54 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %phy_mode.i, align 4, !annotation !142
  %call.i = call i32 @of_get_phy_mode(ptr noundef %portnp, ptr noundef nonnull %phy_mode.i) #6
  %55 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phy_mode.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %56, label %sw.default.i.i [
    i32 0, label %if.end11.thread.i
    i32 26, label %sw.bb25.i.i
    i32 25, label %sw.bb24.i.i
    i32 24, label %sw.bb23.i.i
    i32 20, label %sw.bb29.i.i
    i32 29, label %sw.bb28.i.i
    i32 2, label %if.end12.phy_modes.exit.i_crit_edge
    i32 3, label %sw.bb3.i.i
    i32 27, label %sw.bb26.i.i
    i32 5, label %sw.bb5.i.i
    i32 6, label %sw.bb6.i.i
    i32 7, label %sw.bb7.i.i
    i32 8, label %sw.bb8.i.i
    i32 9, label %sw.bb9.i.i
    i32 10, label %sw.bb10.i.i
    i32 11, label %sw.bb11.i.i
    i32 12, label %sw.bb12.i.i
    i32 13, label %sw.bb13.i.i
    i32 14, label %sw.bb14.i.i
    i32 15, label %sw.bb15.i.i
    i32 16, label %sw.bb16.i.i
    i32 17, label %sw.bb17.i.i
    i32 28, label %sw.bb27.i.i
    i32 19, label %sw.bb19.i.i
    i32 21, label %sw.bb20.i.i
    i32 22, label %sw.bb21.i.i
    i32 23, label %sw.bb22.i.i
    i32 18, label %if.then10.i
    i32 1, label %if.end12.if.end11.i_crit_edge
    i32 4, label %if.end12.if.end11.i_crit_edge80
  ]

if.end12.if.end11.i_crit_edge80:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end12.if.end11.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.end12.phy_modes.exit.i_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

if.end11.thread.i:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %phy_mode.i, align 4
  %phy_mode12104.i = getelementptr inbounds %struct.ocelot_port, ptr %51, i32 0, i32 8
  %59 = ptrtoint ptr %phy_mode12104.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %phy_mode12104.i, align 4
  br label %if.end28.i

sw.bb3.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb5.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb6.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb7.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb8.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb9.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb10.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb11.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb12.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb13.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb14.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb15.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb16.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb17.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb19.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb20.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb21.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb22.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb23.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb24.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb25.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb26.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb27.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb28.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.bb29.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

sw.default.i.i:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_modes.exit.i

phy_modes.exit.i:                                 ; preds = %sw.default.i.i, %sw.bb29.i.i, %sw.bb28.i.i, %sw.bb27.i.i, %sw.bb26.i.i, %sw.bb25.i.i, %sw.bb24.i.i, %sw.bb23.i.i, %sw.bb22.i.i, %sw.bb21.i.i, %sw.bb20.i.i, %sw.bb19.i.i, %sw.bb17.i.i, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb3.i.i, %if.end12.phy_modes.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.56, %sw.default.i.i ], [ @.str.55, %sw.bb29.i.i ], [ @.str.54, %sw.bb28.i.i ], [ @.str.53, %sw.bb27.i.i ], [ @.str.52, %sw.bb26.i.i ], [ @.str.51, %sw.bb25.i.i ], [ @.str.50, %sw.bb24.i.i ], [ @.str.49, %sw.bb23.i.i ], [ @.str.48, %sw.bb22.i.i ], [ @.str.47, %sw.bb21.i.i ], [ @.str.46, %sw.bb20.i.i ], [ @.str.45, %sw.bb19.i.i ], [ @.str.43, %sw.bb17.i.i ], [ @.str.42, %sw.bb16.i.i ], [ @.str.41, %sw.bb15.i.i ], [ @.str.40, %sw.bb14.i.i ], [ @.str.39, %sw.bb13.i.i ], [ @.str.38, %sw.bb12.i.i ], [ @.str.37, %sw.bb11.i.i ], [ @.str.36, %sw.bb10.i.i ], [ @.str.35, %sw.bb9.i.i ], [ @.str.34, %sw.bb8.i.i ], [ @.str.33, %sw.bb7.i.i ], [ @.str.32, %sw.bb6.i.i ], [ @.str.31, %sw.bb5.i.i ], [ @.str.29, %sw.bb3.i.i ], [ @.str.28, %if.end12.phy_modes.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.14, ptr noundef nonnull %retval.0.i.i, i32 noundef %port) #9
  br label %ocelot_port_phylink_create.exit.thread

if.then10.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @ocelot_port_rmwl(ptr noundef %51, i32 noundef 0, i32 noundef 192, i32 noundef 218103808) #6
  %60 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr.pr.i = load i32, ptr %phy_mode.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end12.if.end11.i_crit_edge, %if.end12.if.end11.i_crit_edge80
  %.pr.i = phi i32 [ %56, %if.end12.if.end11.i_crit_edge ], [ %56, %if.end12.if.end11.i_crit_edge80 ], [ %.pr.pr.i, %if.then10.i ]
  %phy_mode12.i = getelementptr inbounds %struct.ocelot_port, ptr %51, i32 0, i32 8
  %61 = ptrtoint ptr %phy_mode12.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.pr.i, ptr %phy_mode12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp13.not.i = icmp eq i32 %.pr.i, 1
  br i1 %cmp13.not.i, label %if.end11.i.if.end28.i_crit_edge, label %if.then14.i

if.end11.i.if.end28.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then14.i:                                      ; preds = %if.end11.i
  %call15.i = call ptr @of_phy_get(ptr noundef %portnp, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %call15.i to i32
  %call19.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %53, i32 noundef %62, ptr noundef nonnull @.str.16, i32 noundef %port) #6
  br label %ocelot_port_phylink_create.exit

if.end20.i:                                       ; preds = %if.then14.i
  %63 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy_mode.i, align 4
  %call21.i = call i32 @phy_set_mode_ext(ptr noundef %call15.i, i32 noundef 15, i32 noundef %64) #6
  call void @of_phy_put(ptr noundef %call15.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %if.end20.i.if.end28.i_crit_edge, label %do.end25.i

if.end20.i.if.end28.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

do.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = inttoptr i32 %call21.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.18, i32 noundef %port, ptr noundef nonnull %65) #9
  br label %ocelot_port_phylink_create.exit.thread

if.end28.i:                                       ; preds = %if.end20.i.if.end28.i_crit_edge, %if.end11.i.if.end28.i_crit_edge, %if.end11.thread.i
  %phy_mode12106.i = phi ptr [ %phy_mode12104.i, %if.end11.thread.i ], [ %phy_mode12.i, %if.end11.i.if.end28.i_crit_edge ], [ %phy_mode12.i, %if.end20.i.if.end28.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.ocelot_port_private, ptr %51, i32 0, i32 1
  %66 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev29.i, align 4
  %dev30.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 133
  %phylink_config.i = getelementptr inbounds %struct.ocelot_port_private, ptr %51, i32 0, i32 3
  %68 = ptrtoint ptr %phylink_config.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %dev30.i, ptr %phylink_config.i, align 4
  %type.i = getelementptr inbounds %struct.ocelot_port_private, ptr %51, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %type.i, align 4
  %mac_capabilities.i = getelementptr inbounds %struct.ocelot_port_private, ptr %51, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %mac_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 447, ptr %mac_capabilities.i, align 4
  %71 = ptrtoint ptr %phy_mode12106.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phy_mode12106.i, align 4
  %supported_interfaces.i = getelementptr inbounds %struct.ocelot_port_private, ptr %51, i32 0, i32 3, i32 7
  %rem.i.i = and i32 %72, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %72, 5
  %add.ptr.i.i = getelementptr i32, ptr %supported_interfaces.i, i32 %div2.i.i
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %74
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %tobool38.not.i = icmp eq ptr %portnp, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %portnp, i32 0, i32 3
  %spec.select.i = select i1 %tobool38.not.i, ptr null, ptr %fwnode.i
  %75 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %phy_mode.i, align 4
  %call39.i = call ptr @phylink_create(ptr noundef %phylink_config.i, ptr noundef %spec.select.i, i32 noundef %76, ptr noundef nonnull @ocelot_phylink_ops) #6
  %cmp.i102.i = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102.i, label %if.then41.i, label %if.end46.i

if.then41.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %call39.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.21, ptr noundef nonnull %call39.i) #9
  br label %ocelot_port_phylink_create.exit

if.end46.i:                                       ; preds = %if.end28.i
  %phylink47.i = getelementptr inbounds %struct.ocelot_port_private, ptr %51, i32 0, i32 2
  %78 = ptrtoint ptr %phylink47.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call39.i, ptr %phylink47.i, align 4
  %call48.i = call i32 @phylink_of_phy_connect(ptr noundef %call39.i, ptr noundef %portnp, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %ocelot_port_phylink_create.exit.thread77, label %do.end53.i

ocelot_port_phylink_create.exit.thread77:         ; preds = %if.end46.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #6
  %fdma = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 44
  %79 = ptrtoint ptr %fdma to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fdma, align 4
  %tobool18.not = icmp eq ptr %80, null
  br i1 %tobool18.not, label %ocelot_port_phylink_create.exit.thread77.if.end20_crit_edge, label %if.then19

ocelot_port_phylink_create.exit.thread77.if.end20_crit_edge: ; preds = %ocelot_port_phylink_create.exit.thread77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end53.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = inttoptr i32 %call48.i to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.24, ptr noundef nonnull %81) #9
  call void @phylink_destroy(ptr noundef %call39.i) #6
  %82 = ptrtoint ptr %phylink47.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %phylink47.i, align 4
  br label %ocelot_port_phylink_create.exit.thread

ocelot_port_phylink_create.exit.thread:           ; preds = %do.end53.i, %do.end25.i, %phy_modes.exit.i
  %retval.1.i.ph = phi i32 [ %call21.i, %do.end25.i ], [ %call48.i, %do.end53.i ], [ -22, %phy_modes.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #6
  br label %out

ocelot_port_phylink_create.exit:                  ; preds = %if.then41.i, %if.then17.i
  %retval.1.i = phi i32 [ %77, %if.then41.i ], [ %62, %if.then17.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i) #6
  br label %out

if.then19:                                        ; preds = %ocelot_port_phylink_create.exit.thread77
  call void @__sanitizer_cov_trace_pc() #8
  call void @ocelot_fdma_netdev_init(ptr noundef %ocelot, ptr noundef nonnull %call) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %ocelot_port_phylink_create.exit.thread77.if.end20_crit_edge
  %call21 = call i32 @register_netdev(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %do.end

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end20
  %83 = ptrtoint ptr %ocelot to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ocelot, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str) #9
  %85 = ptrtoint ptr %fdma to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fdma, align 4
  %tobool27.not = icmp eq ptr %86, null
  br i1 %tobool27.not, label %do.end.out_crit_edge, label %if.then28

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @ocelot_fdma_netdev_deinit(ptr noundef %ocelot, ptr noundef nonnull %call) #6
  br label %out

out:                                              ; preds = %if.then28, %do.end.out_crit_edge, %ocelot_port_phylink_create.exit, %ocelot_port_phylink_create.exit.thread
  %err.0 = phi i32 [ %retval.1.i, %ocelot_port_phylink_create.exit ], [ %call21, %if.then28 ], [ %call21, %do.end.out_crit_edge ], [ %retval.1.i.ph, %ocelot_port_phylink_create.exit.thread ]
  %87 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ports, align 4
  %arrayidx31 = getelementptr ptr, ptr %88, i32 %port
  %89 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx31, align 4
  call void @free_netdev(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mact_learn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_init_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_fdma_netdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_fdma_netdev_deinit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocelot_release_port(ptr nocapture noundef readonly %ocelot_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ocelot_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot_port, align 4
  %fdma2 = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %fdma2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdma2, align 4
  %dev = getelementptr inbounds %struct.ocelot_port_private, ptr %ocelot_port, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %5) #6
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @ocelot_fdma_netdev_deinit(ptr noundef %1, ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phylink = getelementptr inbounds %struct.ocelot_port_private, ptr %ocelot_port, i32 0, i32 2
  %8 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phylink, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtnl_lock() #6
  %10 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phylink, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %11) #6
  tail call void @rtnl_unlock() #6
  %12 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phylink, align 4
  tail call void @phylink_destroy(ptr noundef %13) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @free_netdev(ptr noundef %15) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_pool_get(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_pool_set(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_port_pool_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_port_pool_set(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_tc_pool_bind_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_tc_pool_bind_set(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_snapshot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_max_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_port_pool_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_tc_port_bind_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocelot_netdevice_prechangeupper(ptr noundef %dev, ptr noundef %brport_dev, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %linking, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %brport_dev, ptr noundef %add.ptr.i.i, ptr noundef nonnull @ocelot_switchdev_nb, ptr noundef nonnull @ocelot_switchdev_blocking_nb) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %upper_dev, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

if.end.netif_is_lag_master.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %if.end
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %11, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.land.lhs.true3_crit_edge

netif_is_bond_master.exit.i.land.lhs.true3_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true3

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %if.end.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %12 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %13, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.if.end8_crit_edge, label %netif_is_lag_master.exit.land.lhs.true3_crit_edge

netif_is_lag_master.exit.land.lhs.true3_crit_edge: ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true3

netif_is_lag_master.exit.if.end8_crit_edge:       ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true3:                                   ; preds = %netif_is_lag_master.exit.land.lhs.true3_crit_edge, %netif_is_bond_master.exit.i.land.lhs.true3_crit_edge
  %linking4 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %linking4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %linking4, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true3.if.end8_crit_edge

land.lhs.true3.if.end8_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true3
  %call.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %7) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then6.if.end8_crit_edge, label %lor.lhs.false.i

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.then6
  %priv_flags.i.i1 = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i.i1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i.i1, align 16
  %and.i.i2 = and i64 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i2)
  %tobool.i.not.i = icmp eq i64 %and.i.i2, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %if.end.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %7, ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @ocelot_switchdev_nb, ptr noundef nonnull @ocelot_switchdev_blocking_nb) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %lor.lhs.false.i.if.end8_crit_edge, %if.then6.if.end8_crit_edge, %land.lhs.true3.if.end8_crit_edge, %netif_is_lag_master.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocelot_netdevice_changeupper(ptr noundef %dev, ptr noundef %brport_dev, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %linking, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @ocelot_netdevice_bridge_join(ptr noundef %dev, ptr noundef %brport_dev, ptr noundef %3, ptr noundef %1)
  br label %if.end8

if.else:                                          ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %chip_port.i = getelementptr i8, ptr %dev, i32 2452
  %10 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %11 to i32
  %call.i.i = tail call i32 @ocelot_port_vlan_filtering(ptr noundef %9, i32 noundef %conv.i, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ocelot_port_bridge_flags(ptr noundef %9, i32 noundef %conv.i, [2 x i32] [i32 18496, i32 18528]) #6
  tail call void @ocelot_bridge_stp_state_set(ptr noundef %9, i32 noundef %conv.i, i8 noundef zeroext 3) #6
  tail call void @ocelot_port_bridge_leave(ptr noundef %9, i32 noundef %conv.i, ptr noundef %3) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %if.else.if.end8_crit_edge, %if.then3, %entry.if.end8_crit_edge
  %err.0 = phi i32 [ %call5, %if.then3 ], [ 0, %entry.if.end8_crit_edge ], [ %call.i.i, %if.else.if.end8_crit_edge ], [ 0, %if.end.i ]
  %12 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %upper_dev, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i37, label %if.end8.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

if.end8.netif_is_lag_master.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %if.end8
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %17, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then11_crit_edge

netif_is_bond_master.exit.i.if.then11_crit_edge:  ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %if.end8.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %19, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.if.end21_crit_edge, label %netif_is_lag_master.exit.if.then11_crit_edge

netif_is_lag_master.exit.if.then11_crit_edge:     ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

netif_is_lag_master.exit.if.end21_crit_edge:      ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then11:                                        ; preds = %netif_is_lag_master.exit.if.then11_crit_edge, %netif_is_bond_master.exit.i.if.then11_crit_edge
  %linking12 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 3
  %20 = ptrtoint ptr %linking12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %linking12, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not = icmp eq i8 %21, 0
  br i1 %tobool13.not, label %if.else17, label %if.then14

if.then14:                                        ; preds = %if.then11
  %upper_info = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 4
  %22 = ptrtoint ptr %upper_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %upper_info, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %dev, i32 2304
  %24 = ptrtoint ptr %add.ptr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i38, align 4
  %chip_port.i39 = getelementptr i8, ptr %dev, i32 2452
  %26 = ptrtoint ptr %chip_port.i39 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chip_port.i39, align 4
  %conv.i40 = zext i8 %27 to i32
  %call3.i = tail call i32 @ocelot_port_lag_join(ptr noundef %25, i32 noundef %conv.i40, ptr noundef %13, ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, -95
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_netdevice_lag_join.__msg) #6
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.if.end21.thread_crit_edge, label %if.then5.i

do.body.i.if.end21.thread_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.thread

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ocelot_netdevice_lag_join.__msg, ptr %1, align 4
  br label %if.end21.thread

if.end6.i:                                        ; preds = %if.then14
  %call7.i = tail call ptr @netdev_master_upper_dev_get(ptr noundef %13) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end21.thread_crit_edge, label %lor.lhs.false.i

if.end6.i.if.end21.thread_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.thread

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %priv_flags.i.i41 = getelementptr inbounds %struct.net_device, ptr %call7.i, i32 0, i32 15
  %29 = ptrtoint ptr %priv_flags.i.i41 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %priv_flags.i.i41, align 16
  %and.i.i42 = and i64 %30, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i42)
  %tobool.i.not.i = icmp eq i64 %and.i.i42, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end21.thread_crit_edge, label %if.end11.i

lor.lhs.false.i.if.end21.thread_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.thread

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %call12.i = tail call fastcc i32 @ocelot_netdevice_bridge_join(ptr noundef %dev, ptr noundef %13, ptr noundef nonnull %call7.i, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end21.thread_crit_edge, label %if.end21.thread59

if.end11.i.if.end21.thread_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.thread

if.end21.thread59:                                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ocelot_port_lag_leave(ptr noundef %25, i32 noundef %conv.i40, ptr noundef %13) #6
  %sub.i62 = sub i32 1, %call12.i
  %or.i63 = or i32 %sub.i62, 32768
  br label %41

if.else17:                                        ; preds = %if.then11
  %add.ptr.i.i43 = getelementptr i8, ptr %dev, i32 2304
  %31 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i.i43, align 4
  %chip_port.i44 = getelementptr i8, ptr %dev, i32 2452
  %33 = ptrtoint ptr %chip_port.i44 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_port.i44, align 4
  %conv.i45 = zext i8 %34 to i32
  tail call void @ocelot_port_lag_leave(ptr noundef %32, i32 noundef %conv.i45, ptr noundef %13) #6
  %call3.i46 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %13) #6
  %tobool.not.i47 = icmp eq ptr %call3.i46, null
  br i1 %tobool.not.i47, label %if.else17.if.end21_crit_edge, label %lor.lhs.false.i51

if.else17.if.end21_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

lor.lhs.false.i51:                                ; preds = %if.else17
  %priv_flags.i.i48 = getelementptr inbounds %struct.net_device, ptr %call3.i46, i32 0, i32 15
  %35 = ptrtoint ptr %priv_flags.i.i48 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %priv_flags.i.i48, align 16
  %and.i.i49 = and i64 %36, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i49)
  %tobool.i.not.i50 = icmp eq i64 %and.i.i49, 0
  br i1 %tobool.i.not.i50, label %lor.lhs.false.i51.if.end21_crit_edge, label %if.end.i52

lor.lhs.false.i51.if.end21_crit_edge:             ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end.i52:                                       ; preds = %lor.lhs.false.i51
  %37 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i43, align 4
  %39 = ptrtoint ptr %chip_port.i44 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %chip_port.i44, align 4
  %conv.i.i = zext i8 %40 to i32
  %call.i.i.i = tail call i32 @ocelot_port_vlan_filtering(ptr noundef %38, i32 noundef %conv.i.i, i1 noundef zeroext false, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %if.end.i52.if.end21_crit_edge

if.end.i52.if.end21_crit_edge:                    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end.i.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ocelot_port_bridge_flags(ptr noundef %38, i32 noundef %conv.i.i, [2 x i32] [i32 18496, i32 18528]) #6
  tail call void @ocelot_bridge_stp_state_set(ptr noundef %38, i32 noundef %conv.i.i, i8 noundef zeroext 3) #6
  tail call void @ocelot_port_bridge_leave(ptr noundef %38, i32 noundef %conv.i.i, ptr noundef nonnull %call3.i46) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end.i.i, %if.end.i52.if.end21_crit_edge, %lor.lhs.false.i51.if.end21_crit_edge, %if.else17.if.end21_crit_edge, %netif_is_lag_master.exit.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i53 = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i53, label %if.end21.if.end21.thread_crit_edge, label %if.end21._crit_edge

if.end21._crit_edge:                              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %41

if.end21.if.end21.thread_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %if.end21.if.end21.thread_crit_edge, %if.end11.i.if.end21.thread_crit_edge, %lor.lhs.false.i.if.end21.thread_crit_edge, %if.end6.i.if.end21.thread_crit_edge, %if.then5.i, %do.body.i.if.end21.thread_crit_edge
  br label %41

41:                                               ; preds = %if.end21.thread, %if.end21._crit_edge, %if.end21.thread59
  %42 = phi i32 [ 1, %if.end21.thread ], [ %or.i, %if.end21._crit_edge ], [ %or.i63, %if.end21.thread59 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocelot_netdevice_bridge_join(ptr noundef %dev, ptr noundef %brport_dev, ptr noundef %bridge, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %flags.i.i = alloca %struct.switchdev_brport_flags, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  tail call void @ocelot_port_bridge_join(ptr noundef %1, i32 noundef %conv, ptr noundef %bridge) #6
  %call3 = tail call i32 @switchdev_bridge_port_offload(ptr noundef %brport_dev, ptr noundef %dev, ptr noundef %add.ptr.i, ptr noundef nonnull @ocelot_switchdev_nb, ptr noundef nonnull @ocelot_switchdev_blocking_nb, i1 noundef zeroext false, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.err_switchdev_offload_crit_edge

entry.err_switchdev_offload_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_switchdev_offload

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags.i.i) #6
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 18528, ptr %flags.i.i, align 8
  %mask.i.i = getelementptr inbounds %struct.switchdev_brport_flags, ptr %flags.i.i, i32 0, i32 1
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef %mask.i.i, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 32
  br i1 %cmp9.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.ocelot_switchdev_sync.exit_crit_edge

if.end.ocelot_switchdev_sync.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_switchdev_sync.exit

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %flag.010.i.i = phi i32 [ %call5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %flag.010.i.i
  %call2.i.i = call zeroext i1 @br_port_flag_is_set(ptr noundef %brport_dev, i32 noundef %shl.i.i) #6
  br i1 %call2.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 8
  %or.i.i = or i32 %6, %shl.i.i
  store i32 %or.i.i, ptr %flags.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %add.i.i = add nsw i32 %flag.010.i.i, 1
  %call5.i.i = call i32 @_find_next_bit_be(ptr noundef %mask.i.i, i32 noundef 32, i32 noundef %add.i.i) #6
  %cmp.i.i = icmp slt i32 %call5.i.i, 32
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ocelot_switchdev_sync.exit_crit_edge

for.inc.i.i.ocelot_switchdev_sync.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_switchdev_sync.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

ocelot_switchdev_sync.exit:                       ; preds = %for.inc.i.i.ocelot_switchdev_sync.exit_crit_edge, %if.end.ocelot_switchdev_sync.exit_crit_edge
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load.i.i = load i32, ptr %flags.i.i, align 8
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %.fca.0.load.i.i, 0
  %8 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.1.load.i.i = load i32, ptr %mask.i.i, align 4
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %.fca.1.load.i.i, 1
  call void @ocelot_port_bridge_flags(ptr noundef %1, i32 noundef %conv, [2 x i32] %.fca.1.insert.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags.i.i) #6
  %call.i = call zeroext i8 @br_port_get_stp_state(ptr noundef %brport_dev) #6
  call void @ocelot_bridge_stp_state_set(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %call.i) #6
  %call1.i = call i32 @br_get_ageing_time(ptr noundef %bridge) #6
  %call.i12.i = call i32 @clock_t_to_jiffies(i32 noundef %call1.i) #6
  %call1.i.i = call i32 @jiffies_to_msecs(i32 noundef %call.i12.i) #6
  call void @ocelot_set_ageing_time(ptr noundef %1, i32 noundef %call1.i.i) #6
  %call2.i = call zeroext i1 @br_vlan_enabled(ptr noundef %bridge) #6
  %call3.i = call i32 @ocelot_port_vlan_filtering(ptr noundef %1, i32 noundef %conv, i1 noundef zeroext %call2.i, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool5.not = icmp eq i32 %call3.i, 0
  br i1 %tobool5.not, label %ocelot_switchdev_sync.exit.cleanup_crit_edge, label %err_switchdev_sync

ocelot_switchdev_sync.exit.cleanup_crit_edge:     ; preds = %ocelot_switchdev_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_switchdev_sync:                               ; preds = %ocelot_switchdev_sync.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @switchdev_bridge_port_unoffload(ptr noundef %brport_dev, ptr noundef %add.ptr.i, ptr noundef nonnull @ocelot_switchdev_nb, ptr noundef nonnull @ocelot_switchdev_blocking_nb) #6
  br label %err_switchdev_offload

err_switchdev_offload:                            ; preds = %err_switchdev_sync, %entry.err_switchdev_offload_crit_edge
  %err.0 = phi i32 [ %call3, %entry.err_switchdev_offload_crit_edge ], [ %call3.i, %err_switchdev_sync ]
  call void @ocelot_port_bridge_leave(ptr noundef %1, i32 noundef %conv, ptr noundef %bridge) #6
  br label %cleanup

cleanup:                                          ; preds = %err_switchdev_offload, %ocelot_switchdev_sync.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_switchdev_offload ], [ 0, %ocelot_switchdev_sync.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_bridge_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_bridge_leave(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @br_port_get_stp_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_bridge_stp_state_set(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_get_ageing_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_vlan_filtering(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_port_flag_is_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_bridge_flags(ptr noundef, i32 noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_set_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_lag_join(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_lag_leave(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_lag_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_attr_set(ptr noundef readonly %dev, ptr noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %add.ptr.i, %ctx
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 8, label %sw.bb10
    i32 3, label %sw.bb13
    i32 2, label %sw.bb16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %u, align 4
  tail call void @ocelot_bridge_stp_state_set(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %8) #6
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u5 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %9 = ptrtoint ptr %u5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u5, align 4
  %call.i = tail call i32 @clock_t_to_jiffies(i32 noundef %10) #6
  %call1.i = tail call i32 @jiffies_to_msecs(i32 noundef %call.i) #6
  tail call void @ocelot_set_ageing_time(ptr noundef %1, i32 noundef %call1.i) #6
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u7 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %11 = ptrtoint ptr %u7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %u7, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8 = icmp ne i8 %12, 0
  %call9 = tail call i32 @ocelot_port_vlan_filtering(ptr noundef %1, i32 noundef %conv, i1 noundef zeroext %tobool8, ptr noundef %extack) #6
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u11 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %13 = ptrtoint ptr %u11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %u11, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  %spec.select.i = select i1 %tobool12.not, i32 112, i32 0
  %mul.i = shl nuw nsw i32 %conv, 8
  tail call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef %spec.select.i, i32 noundef 112, i32 noundef 16777277, i32 noundef %mul.i) #6
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u14 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %15 = ptrtoint ptr %u14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack42 = load i32, ptr %u14, align 4
  %16 = insertvalue [2 x i32] undef, i32 %.unpack42, 0
  %.elt43 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %.elt43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack44 = load i32, ptr %.elt43, align 4
  %18 = insertvalue [2 x i32] %16, i32 %.unpack44, 1
  %call15 = tail call i32 @ocelot_port_pre_bridge_flags(ptr noundef %1, i32 noundef %conv, [2 x i32] %18) #6
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u17 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %19 = ptrtoint ptr %u17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %u17, align 4
  %20 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt40 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %.elt40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack41 = load i32, ptr %.elt40, align 4
  %22 = insertvalue [2 x i32] %20, i32 %.unpack41, 1
  tail call void @ocelot_port_bridge_flags(ptr noundef %1, i32 noundef %conv, [2 x i32] %22) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb16 ], [ %call15, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_pre_bridge_flags(ptr noundef, i32 noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_rmw_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_obj_add(ptr noundef readonly %dev, ptr noundef readnone %ctx, ptr noundef %obj, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %add.ptr.i, %ctx
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb7
    i32 6, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i, align 4
  %conv.i = zext i16 %4 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %5 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid.i, align 2
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %chip_port.i.i = getelementptr i8, ptr %dev, i32 2452
  %9 = ptrtoint ptr %chip_port.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_port.i.i, align 4
  %conv.i.i = zext i8 %10 to i32
  %call5.i.i = tail call i32 @ocelot_vlan_prepare(ptr noundef %8, i32 noundef %conv.i.i, i16 noundef zeroext %6, i1 noundef zeroext %tobool4.i, i1 noundef zeroext %tobool.i, ptr noundef %extack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool8.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool8.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid.i, align 2
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %chip_port.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_port.i.i, align 4
  %conv.i24.i = zext i8 %16 to i32
  %call5.i25.i = tail call i32 @ocelot_vlan_add(ptr noundef %14, i32 noundef %conv.i24.i, i16 noundef zeroext %12, i1 noundef zeroext %tobool4.i, i1 noundef zeroext %tobool.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i25.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i25.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr.i.i, align 64
  %conv7.i.i = zext i16 %12 to i32
  %call8.i.i = tail call i32 @ocelot_mact_learn(ptr noundef %14, i32 noundef 58, ptr noundef %18, i32 noundef %conv7.i.i, i32 noundef 1) #6
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %chip_port.i = getelementptr i8, ptr %dev, i32 2452
  %21 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_port.i, align 4
  %conv.i27 = zext i8 %22 to i32
  %call3.i = tail call i32 @ocelot_port_mdb_add(ptr noundef %20, i32 noundef %conv.i27, ptr noundef %obj) #6
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %chip_port.i29 = getelementptr i8, ptr %dev, i32 2452
  %25 = ptrtoint ptr %chip_port.i29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chip_port.i29, align 4
  %conv.i30 = zext i8 %26 to i32
  %call3.i31 = tail call i32 @ocelot_mrp_add(ptr noundef %24, i32 noundef %conv.i30, ptr noundef %obj) #6
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %chip_port.i33 = getelementptr i8, ptr %dev, i32 2452
  %29 = ptrtoint ptr %chip_port.i33 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_port.i33, align 4
  %conv.i34 = zext i8 %30 to i32
  %call3.i35 = tail call i32 @ocelot_mrp_add_ring_role(ptr noundef %28, i32 noundef %conv.i34, ptr noundef %obj) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb7, %sw.bb2, %if.end.i.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call3.i35, %sw.bb12 ], [ %call3.i31, %sw.bb7 ], [ %call3.i, %sw.bb2 ], [ %call5.i.i, %sw.bb.cleanup_crit_edge ], [ %call5.i25.i, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_obj_del(ptr noundef readonly %dev, ptr noundef readnone %ctx, ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %add.ptr.i, %ctx
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb7
    i32 6, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %3 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vid, align 2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %conv3.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i = icmp eq i16 %4, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %chip_port.i = getelementptr i8, ptr %dev, i32 2452
  %7 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %8 to i32
  %call5.i = tail call i32 @ocelot_vlan_del(ptr noundef %6, i32 noundef %conv.i, i16 noundef zeroext %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr.i, align 64
  %call9.i = tail call i32 @ocelot_mact_forget(ptr noundef %6, ptr noundef %10, i32 noundef %conv3.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %chip_port.i28 = getelementptr i8, ptr %dev, i32 2452
  %13 = ptrtoint ptr %chip_port.i28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_port.i28, align 4
  %conv.i29 = zext i8 %14 to i32
  %call3.i = tail call i32 @ocelot_port_mdb_del(ptr noundef %12, i32 noundef %conv.i29, ptr noundef %obj) #6
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %chip_port.i31 = getelementptr i8, ptr %dev, i32 2452
  %17 = ptrtoint ptr %chip_port.i31 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_port.i31, align 4
  %conv.i32 = zext i8 %18 to i32
  %call3.i33 = tail call i32 @ocelot_mrp_del(ptr noundef %16, i32 noundef %conv.i32, ptr noundef %obj) #6
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %chip_port.i35 = getelementptr i8, ptr %dev, i32 2452
  %21 = ptrtoint ptr %chip_port.i35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_port.i35, align 4
  %conv.i36 = zext i8 %22 to i32
  %call3.i37 = tail call i32 @ocelot_mrp_del_ring_role(ptr noundef %20, i32 noundef %conv.i36, ptr noundef %obj) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb7, %sw.bb2, %if.end7.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call3.i37, %sw.bb12 ], [ %call3.i33, %sw.bb7 ], [ %call3.i, %sw.bb2 ], [ 0, %if.end7.i ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call5.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vlan_prepare(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vlan_add(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_mdb_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mrp_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mrp_add_ring_role(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vlan_del(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mact_forget(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_mdb_del(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mrp_del(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mrp_del_ring_role(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2424
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  tail call void @phylink_start(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2424
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  tail call void @phylink_stop(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %clone = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ocelot_fdma_enabled, ptr blockaddress(@ocelot_port_xmit, %if.end)) #6
          to label %land.lhs.true [label %if.end], !srcloc !143

land.lhs.true:                                    ; preds = %entry
  %call6 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %1, i32 noundef 0) #6
  br i1 %call6, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup38_crit_edge

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup38

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry
  %ptp = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ptp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.end.if.end23_crit_edge, label %land.lhs.true9

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true9:                                   ; preds = %if.end
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_flags, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %land.lhs.true9.if.end23_crit_edge, label %if.then13

land.lhs.true9.if.end23_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then13:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clone) #6
  %10 = ptrtoint ptr %clone to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %clone, align 4
  %call14 = call i32 @ocelot_port_txtstamp_request(ptr noundef %1, i32 noundef %conv, ptr noundef %skb, ptr noundef nonnull %clone) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.then13
  %11 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clone, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %13 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %cb, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb.i, align 8
  %ptp_cmd4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %ptp_cmd4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ptp_cmd4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp.i = icmp ne i8 %17, 3
  %tobool.not.i = icmp eq ptr %15, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %ts_id.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 13
  %18 = ptrtoint ptr %ts_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ts_id.i, align 1
  %conv9.i = zext i8 %19 to i32
  %shl.i = shl nuw nsw i32 %conv9.i, 3
  %or.i = or i32 %shl.i, 3
  br label %cleanup.thread

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp11.i = icmp eq i8 %17, 5
  %spec.select.i = select i1 %cmp11.i, i32 5, i32 0
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else.i, %if.then.i
  %rew_op.0.ph = phi i32 [ %spec.select.i, %if.else.i ], [ %or.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone) #6
  br label %if.end23

cleanup:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone) #6
  br label %cleanup38

if.end23:                                         ; preds = %cleanup.thread, %land.lhs.true9.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %rew_op.1 = phi i32 [ 0, %land.lhs.true9.if.end23_crit_edge ], [ 0, %if.end.if.end23_crit_edge ], [ %rew_op.0.ph, %cleanup.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ocelot_fdma_enabled, ptr blockaddress(@ocelot_port_xmit, %if.then35)) #6
          to label %if.else [label %if.then35], !srcloc !143

if.then35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 @ocelot_fdma_inject_frame(ptr noundef %1, i32 noundef %conv, i32 noundef %rew_op.1, ptr noundef %skb, ptr noundef %dev) #6
  br label %cleanup38

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void @ocelot_port_inject_frame(ptr noundef %1, i32 noundef %conv, i32 noundef 0, i32 noundef %rew_op.1, ptr noundef %skb) #6
  call void @consume_skb(ptr noundef %skb) #6
  br label %cleanup38

cleanup38:                                        ; preds = %if.else, %if.then35, %cleanup, %land.lhs.true.cleanup38_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 16, %land.lhs.true.cleanup38_crit_edge ], [ 0, %if.else ], [ 0, %if.then35 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %3 to i32
  %sub2 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub2
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %3)
  %cmp14 = icmp ult i8 %3, 56
  br i1 %cmp14, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %i.013 = add nuw nsw i32 %conv, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.015 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.013, %for.body.preheader ]
  %mul = shl i32 %i.015, 2
  tail call void @__ocelot_write_ix(ptr noundef %1, i32 noundef %shr, i32 noundef 16777236, i32 noundef %mul) #6
  %i.0 = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %i.0, 57
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %call.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i, ptr noundef %dev, ptr noundef nonnull @ocelot_mc_sync, ptr noundef nonnull @ocelot_mc_unsync) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_set_mac_address(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %call2 = tail call i32 @ocelot_mact_learn(ptr noundef %1, i32 noundef 58, ptr noundef %sa_data, i32 noundef 0, i32 noundef 1) #6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call3 = tail call i32 @ocelot_mact_forget(ptr noundef %1, ptr noundef %3, i32 noundef 0) #6
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.land.lhs.true_crit_edge, label %land.lhs.true.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %entry
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_ts.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %phy_has_hwtstamp.exit

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

phy_has_hwtstamp.exit:                            ; preds = %land.lhs.true.i
  %hwtstamp.i = getelementptr inbounds %struct.mii_timestamper, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %hwtstamp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwtstamp.i, align 4
  %tobool3.i.not = icmp eq ptr %9, null
  br i1 %tobool3.i.not, label %phy_has_hwtstamp.exit.land.lhs.true_crit_edge, label %phy_has_hwtstamp.exit.if.end_crit_edge

phy_has_hwtstamp.exit.if.end_crit_edge:           ; preds = %phy_has_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

phy_has_hwtstamp.exit.land.lhs.true_crit_edge:    ; preds = %phy_has_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %phy_has_hwtstamp.exit.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %ptp = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %ptp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %cmd, label %if.then.if.end_crit_edge [
    i32 35248, label %sw.bb
    i32 35249, label %sw.bb6
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @ocelot_hwstamp_set(ptr noundef %1, i32 noundef %conv, ptr noundef %ifr) #6
  br label %cleanup

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @ocelot_hwstamp_get(ptr noundef %1, i32 noundef %conv, ptr noundef %ifr) #6
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %phy_has_hwtstamp.exit.if.end_crit_edge
  %call9 = tail call i32 @phy_mii_ioctl(ptr noundef %5, ptr noundef %ifr, i32 noundef %cmd) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb6, %sw.bb
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  tail call void @ocelot_port_set_maxlen(ptr noundef %1, i32 noundef %conv, i32 noundef %new_mtu) #6
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %new_mtu, ptr %mtu, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  tail call void @__ocelot_write_ix(ptr noundef %1, i32 noundef %conv, i32 noundef 83886119, i32 noundef 0) #6
  %call3 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886080, i32 noundef 0) #6
  %conv4 = zext i32 %call3 to i64
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %4 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv4, ptr %rx_bytes, align 8
  %call5 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886084, i32 noundef 0) #6
  %call6 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886085, i32 noundef 0) #6
  %add = add i32 %call6, %call5
  %call7 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886086, i32 noundef 0) #6
  %add8 = add i32 %add, %call7
  %call9 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886097, i32 noundef 0) #6
  %add10 = add i32 %add8, %call9
  %call11 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886089, i32 noundef 0) #6
  %add12 = add i32 %add10, %call11
  %call13 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886090, i32 noundef 0) #6
  %add14 = add i32 %add12, %call13
  %call15 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886091, i32 noundef 0) #6
  %add16 = add i32 %add14, %call15
  %call17 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886092, i32 noundef 0) #6
  %add18 = add i32 %add16, %call17
  %call19 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886093, i32 noundef 0) #6
  %add20 = add i32 %add18, %call19
  %call21 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886094, i32 noundef 0) #6
  %add22 = add i32 %add20, %call21
  %conv23 = zext i32 %add22 to i64
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv23, ptr %stats, align 8
  %call24 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886082, i32 noundef 0) #6
  %conv25 = zext i32 %call24 to i64
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %6 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv25, ptr %multicast, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %7 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_dropped, align 8
  %conv27 = zext i32 %8 to i64
  %rx_dropped28 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %9 = ptrtoint ptr %rx_dropped28 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv27, ptr %rx_dropped28, align 8
  %call29 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886099, i32 noundef 0) #6
  %conv30 = zext i32 %call29 to i64
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv30, ptr %tx_bytes, align 8
  %call31 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886106, i32 noundef 0) #6
  %call32 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886107, i32 noundef 0) #6
  %add33 = add i32 %call32, %call31
  %call34 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886108, i32 noundef 0) #6
  %add35 = add i32 %add33, %call34
  %call36 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886109, i32 noundef 0) #6
  %add37 = add i32 %add35, %call36
  %call38 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886110, i32 noundef 0) #6
  %add39 = add i32 %add37, %call38
  %call40 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886111, i32 noundef 0) #6
  %add41 = add i32 %add39, %call40
  %conv42 = zext i32 %add41 to i64
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %11 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv42, ptr %tx_packets, align 8
  %call43 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886104, i32 noundef 0) #6
  %call44 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886112, i32 noundef 0) #6
  %add45 = add i32 %call44, %call43
  %conv46 = zext i32 %add45 to i64
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %12 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv46, ptr %tx_dropped, align 8
  %call47 = tail call i32 @__ocelot_read_ix(ptr noundef %1, i32 noundef 83886103, i32 noundef 0) #6
  %conv48 = zext i32 %call47 to i64
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %13 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv48, ptr %collisions, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_vlan_rx_add_vid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %chip_port.i = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %3 to i32
  %call5.i = tail call i32 @ocelot_vlan_add(ptr noundef %1, i32 noundef %conv.i, i16 noundef zeroext %vid, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i, label %entry.ocelot_vlan_vid_add.exit_crit_edge

entry.ocelot_vlan_vid_add.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_vlan_vid_add.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr.i, align 64
  %conv7.i = zext i16 %vid to i32
  %call8.i = tail call i32 @ocelot_mact_learn(ptr noundef %1, i32 noundef 58, ptr noundef %5, i32 noundef %conv7.i, i32 noundef 1) #6
  br label %ocelot_vlan_vid_add.exit

ocelot_vlan_vid_add.exit:                         ; preds = %if.end.i, %entry.ocelot_vlan_vid_add.exit_crit_edge
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_vlan_rx_kill_vid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %conv3.i = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp.i = icmp eq i16 %vid, 0
  br i1 %cmp.i, label %entry.ocelot_vlan_vid_del.exit_crit_edge, label %if.end.i

entry.ocelot_vlan_vid_del.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_vlan_vid_del.exit

if.end.i:                                         ; preds = %entry
  %chip_port.i = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %3 to i32
  %call5.i = tail call i32 @ocelot_vlan_del(ptr noundef %1, i32 noundef %conv.i, i16 noundef zeroext %vid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.ocelot_vlan_vid_del.exit_crit_edge

if.end.i.ocelot_vlan_vid_del.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_vlan_vid_del.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr.i, align 64
  %call9.i = tail call i32 @ocelot_mact_forget(ptr noundef %1, ptr noundef %5, i32 noundef %conv3.i) #6
  br label %ocelot_vlan_vid_del.exit

ocelot_vlan_vid_del.exit:                         ; preds = %if.end7.i, %if.end.i.ocelot_vlan_vid_del.exit_crit_edge, %entry.ocelot_vlan_vid_del.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end7.i ], [ 0, %entry.ocelot_vlan_vid_del.exit_crit_edge ], [ %call5.i, %if.end.i.ocelot_vlan_vid_del.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 1
  %0 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %binder_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %1, label %sw.bb.cleanup_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %sw.bb.if.end6.i_crit_edge
  ]

sw.bb.if.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %block_shared.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 2
  %3 = ptrtoint ptr %block_shared.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %block_shared.i, align 4, !range !141
  %tc.i = getelementptr i8, ptr %dev, i32 2456
  %5 = ptrtoint ptr %tc.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tc.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i, %sw.bb.if.end6.i_crit_edge
  %cb.0.i = phi ptr [ @ocelot_setup_tc_block_cb_ig, %if.then.i ], [ @ocelot_setup_tc_block_cb_eg, %sw.bb.if.end6.i_crit_edge ]
  %driver_block_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 7
  %6 = ptrtoint ptr %driver_block_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ocelot_block_cb_list, ptr %driver_block_list.i, align 4
  %7 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type_data, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %8, label %if.end6.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb15.i
  ]

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end6.i
  %call.i = tail call zeroext i1 @flow_block_cb_is_busy(ptr noundef nonnull %cb.0.i, ptr noundef %add.ptr.i, ptr noundef nonnull @ocelot_block_cb_list) #6
  br i1 %call.i, label %sw.bb.i.cleanup_crit_edge, label %if.end8.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %sw.bb.i
  %call9.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull %cb.0.i, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call9.i to i32
  br label %cleanup

if.end13.i:                                       ; preds = %if.end8.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call9.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %12, ptr noundef %cb_list.i.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end13.i.flow_block_cb_add.exit.i_crit_edge

if.end13.i.flow_block_cb_add.exit.i_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flow_block_cb_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call9.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list.i.i, ptr %12, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.end13.i.flow_block_cb_add.exit.i_crit_edge
  %17 = ptrtoint ptr %driver_block_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_block_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call9.i, ptr noundef %20, ptr noundef %18) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %flow_block_cb_add.exit.i.cleanup_crit_edge

flow_block_cb_add.exit.i.cleanup_crit_edge:       ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %call9.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call9.i, ptr %20, align 4
  br label %cleanup

sw.bb15.i:                                        ; preds = %if.end6.i
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %25 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %block.i, align 4
  %call16.i = tail call ptr @flow_block_cb_lookup(ptr noundef %26, ptr noundef nonnull %cb.0.i, ptr noundef %add.ptr.i) #6
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %sw.bb15.i.cleanup_crit_edge, label %if.end19.i

sw.bb15.i.cleanup_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19.i:                                       ; preds = %sw.bb15.i
  %list.i42.i = getelementptr inbounds %struct.flow_block_cb, ptr %call16.i, i32 0, i32 1
  %cb_list.i43.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %call.i.i.i44.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i42.i) #6
  br i1 %call.i.i.i44.i, label %if.end.i.i.i45.i, label %if.end19.i.__list_del_entry.exit.i.i.i_crit_edge

if.end19.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i45.i:                                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call16.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %list.i42.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list.i42.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i45.i, %if.end19.i.__list_del_entry.exit.i.i.i_crit_edge
  %33 = ptrtoint ptr %cb_list.i43.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cb_list.i43.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i42.i, ptr noundef %cb_list.i43.i, ptr noundef %34) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flow_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list.i42.i, ptr %prev1.i.i2.i.i.i, align 4
  %36 = ptrtoint ptr %list.i42.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %list.i42.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call16.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cb_list.i43.i, ptr %prev3.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %cb_list.i43.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list.i42.i, ptr %cb_list.i43.i, align 4
  br label %flow_block_cb_remove.exit.i

flow_block_cb_remove.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge
  %call.i.i46.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call16.i) #6
  br i1 %call.i.i46.i, label %if.end.i.i48.i, label %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge

flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i48.i:                                   ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i47.i = getelementptr inbounds %struct.list_head, ptr %call16.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i47.i, align 4
  %41 = ptrtoint ptr %call16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call16.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i48.i, %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %call16.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %call16.i, align 4
  %prev.i49.i = getelementptr inbounds %struct.list_head, ptr %call16.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i49.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i49.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i, %sw.bb15.i.cleanup_crit_edge, %if.end.i.i.i, %flow_block_cb_add.exit.i.cleanup_crit_edge, %if.then11.i, %sw.bb.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %list_del.exit.i ], [ %10, %if.then11.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ -16, %sw.bb.i.cleanup_crit_edge ], [ -2, %sw.bb15.i.cleanup_crit_edge ], [ -95, %if.end6.i.cleanup_crit_edge ], [ 0, %flow_block_cb_add.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_set_features(ptr noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %4 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %5 to i32
  %and = and i64 %1, 562949953421312
  %and5 = and i64 %features, 562949953421312
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %and5)
  %cmp = icmp ugt i64 %and, %and5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %offload_cnt = getelementptr i8, ptr %dev, i32 2460
  %6 = ptrtoint ptr %offload_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offload_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and7 = and i64 %xor, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__ocelot_read_ix(ptr noundef %3, i32 noundef 16777217, i32 noundef 0) #6
  %and.i = and i64 %features, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %shl1.i = shl nuw i32 1, %conv
  %or.i = or i32 %call.i, %shl1.i
  %neg.i = xor i32 %shl1.i, -1
  %and2.i = and i32 %call.i, %neg.i
  %val.0.i = select i1 %tobool.not.i, i32 %and2.i, i32 %or.i
  tail call void @__ocelot_write_ix(ptr noundef %3, i32 noundef %val.0.i, i32 noundef 16777217, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_fdb_add(ptr nocapture noundef readnone %ndm, ptr nocapture noundef readnone %tb, ptr nocapture noundef readonly %dev, ptr noundef %addr, i16 noundef zeroext %vid, i16 noundef zeroext %flags, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %call3 = tail call i32 @ocelot_fdb_add(ptr noundef %1, i32 noundef %conv, ptr noundef %addr, i16 noundef zeroext %vid) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_fdb_del(ptr nocapture noundef readnone %ndm, ptr nocapture noundef readnone %tb, ptr nocapture noundef readonly %dev, ptr noundef %addr, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %call3 = tail call i32 @ocelot_fdb_del(ptr noundef %1, i32 noundef %conv, ptr noundef %addr, i16 noundef zeroext %vid) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_fdb_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %dev, ptr nocapture noundef readnone %filter_dev, ptr nocapture noundef %idx) #0 align 64 {
entry:
  %dump = alloca %struct.ocelot_dump_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dump) #6
  %2 = getelementptr inbounds %struct.ocelot_dump_ctx, ptr %dump, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ocelot_dump_ctx, ptr %dump, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ocelot_dump_ctx, ptr %dump, i32 0, i32 3
  %5 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dump, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cb, ptr %3, align 4
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %4, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %11 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %12 to i32
  %call7 = call i32 @ocelot_fdb_dump(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull @ocelot_port_fdb_do_dump, ptr noundef nonnull %dump) #6
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %idx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dump) #6
  ret i32 %call7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ocelot_get_devlink_port(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %devlink_ports = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %devlink_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink_ports, align 4
  %arrayidx = getelementptr %struct.devlink_port, ptr %5, i32 %conv
  ret ptr %arrayidx
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ocelot_can_inject(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_txtstamp_request(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_fdma_inject_frame(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_inject_frame(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_write_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_mc_sync(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  %w = alloca %struct.ocelot_mact_work_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %w) #6
  %2 = call ptr @memset(ptr %w, i32 255, i32 48)
  %3 = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %addr, i32 4
  %7 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i4, align 2
  %add.ptr1.i = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 4
  %vid = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %vid, align 2
  %pgid = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %pgid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 58, ptr %pgid, align 4
  %entry_type = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %entry_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %entry_type, align 4
  %type = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %w, i32 noundef 68, i32 noundef 2592) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ocelot_enqueue_mact_action.exit_crit_edge, label %if.end.i

entry.ocelot_enqueue_mact_action.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_enqueue_mact_action.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ocelot1.i = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %ocelot1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %ocelot1.i, align 4
  call void @__init_work(ptr noundef nonnull %call.i, i32 noundef 0) #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %call.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @ocelot_enqueue_mact_action.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ocelot_mact_work, ptr %func.i, align 4
  %owq.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 34
  %19 = ptrtoint ptr %owq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owq.i, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef nonnull %call.i) #6
  br label %ocelot_enqueue_mact_action.exit

ocelot_enqueue_mact_action.exit:                  ; preds = %if.end.i, %entry.ocelot_enqueue_mact_action.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.ocelot_enqueue_mact_action.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %w) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_mc_unsync(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  %w = alloca %struct.ocelot_mact_work_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %w) #6
  %2 = call ptr @memset(ptr %w, i32 255, i32 68)
  %3 = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %addr, i32 4
  %7 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i4, align 2
  %add.ptr1.i = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 4
  %vid = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %vid, align 2
  %type = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %w, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull %w, i32 noundef 68, i32 noundef 2592) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ocelot_enqueue_mact_action.exit_crit_edge, label %if.end.i

entry.ocelot_enqueue_mact_action.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_enqueue_mact_action.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ocelot1.i = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %ocelot1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %ocelot1.i, align 4
  call void @__init_work(ptr noundef nonnull %call.i, i32 noundef 0) #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %call.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @ocelot_enqueue_mact_action.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ocelot_mact_work, ptr %func.i, align 4
  %owq.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 34
  %17 = ptrtoint ptr %owq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %owq.i, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef nonnull %call.i) #6
  br label %ocelot_enqueue_mact_action.exit

ocelot_enqueue_mact_action.exit:                  ; preds = %if.end.i, %entry.ocelot_enqueue_mact_action.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.ocelot_enqueue_mact_action.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %w) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_mact_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ocelot1 = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %ocelot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocelot1, align 4
  %type = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 3
  %pgid = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %pgid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgid, align 4
  %vid = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid, align 2
  %conv = zext i16 %9 to i32
  %entry_type = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %entry_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entry_type, align 4
  %call = tail call i32 @ocelot_mact_learn(ptr noundef %1, i32 noundef %7, ptr noundef %5, i32 noundef %conv, i32 noundef %11) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 3
  %vid5 = getelementptr inbounds %struct.ocelot_mact_work_ctx, ptr %work, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %vid5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid5, align 2
  %conv6 = zext i16 %14 to i32
  %call7 = tail call i32 @ocelot_mact_forget(ptr noundef %1, ptr noundef %12, i32 noundef %conv6) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_hwstamp_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_hwstamp_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_set_maxlen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocelot_read_ix(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_setup_tc_block_cb_ig(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef %cb_priv) #0 align 64 {
entry:
  %pol.i.i = alloca %struct.ocelot_policer, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %extack.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %2 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack.i.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %5, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %do.body.i.i.i, label %if.end.i.i

do.body.i.i.i:                                    ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #6
  %tobool1.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i.i, label %do.body.i.i.i.ocelot_setup_tc_block_cb.exit_crit_edge, label %if.then2.i.i.i

do.body.i.i.i.ocelot_setup_tc_block_cb.exit_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

if.then2.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tc_can_offload_extack.__msg, ptr %3, align 4
  br label %ocelot_setup_tc_block_cb.exit

if.end.i.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #6
  %tobool3.not.i.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.ocelot_setup_tc_block_cb.exit_crit_edge, label %if.then4.i.i

do.body.i.i.ocelot_setup_tc_block_cb.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %3, align 4
  br label %ocelot_setup_tc_block_cb.exit

if.end.i:                                         ; preds = %if.end.i.i
  %10 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %type, label %if.end.i.ocelot_setup_tc_block_cb.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.end.i.ocelot_setup_tc_block_cb.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

sw.bb.i:                                          ; preds = %if.end.i
  %11 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pol.i.i) #6
  %chip_port.i.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 4
  %13 = ptrtoint ptr %chip_port.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_port.i.i, align 4
  %conv.i.i = zext i8 %14 to i32
  %command.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 1
  %15 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %command.i.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %16, label %sw.bb.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb88.i.i
  ]

sw.bb.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %rule.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 2
  %18 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule.i.i, align 4
  %action7.i.i = getelementptr inbounds %struct.flow_rule, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %action7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %action7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i.i = icmp eq i32 %21, 1
  br i1 %cmp.i.i.i, label %if.end17.i.i, label %do.body9.i.i

do.body9.i.i:                                     ; preds = %sw.bb.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg.6) #6
  %tobool11.not.i.i = icmp eq ptr %3, null
  br i1 %tobool11.not.i.i, label %do.body9.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, label %if.then12.i.i

do.body9.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.then12.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ocelot_setup_tc_cls_matchall.__msg.6, ptr %3, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end17.i.i:                                     ; preds = %sw.bb.i.i
  %tc.i.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 5
  %23 = ptrtoint ptr %tc.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tc.i.i, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool18.not.i.i, label %if.end28.i.i, label %do.body20.i.i

do.body20.i.i:                                    ; preds = %if.end17.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg.7) #6
  %tobool22.not.i.i = icmp eq ptr %3, null
  br i1 %tobool22.not.i.i, label %do.body20.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, label %if.then23.i.i

do.body20.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.then23.i.i:                                    ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ocelot_setup_tc_cls_matchall.__msg.7, ptr %3, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end28.i.i:                                     ; preds = %if.end17.i.i
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %19, i32 1
  %26 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %27)
  %cmp.not.i.i = icmp eq i32 %27, 22
  br i1 %cmp.not.i.i, label %if.end41.i.i, label %do.body33.i.i

do.body33.i.i:                                    ; preds = %if.end28.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg.8) #6
  %tobool35.not.i.i = icmp eq ptr %3, null
  br i1 %tobool35.not.i.i, label %do.body33.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, label %if.then36.i.i

do.body33.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.then36.i.i:                                    ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ocelot_setup_tc_cls_matchall.__msg.8, ptr %3, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end41.i.i:                                     ; preds = %if.end28.i.i
  %police_id.i.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %police_id.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %police_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool43.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool43.not.i.i, label %if.end41.i.i.if.end57.i.i_crit_edge, label %land.lhs.true.i.i

if.end41.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i

land.lhs.true.i.i:                                ; preds = %if.end41.i.i
  %cookie.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %31 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cookie.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp46.not.i.i = icmp eq i32 %30, %32
  br i1 %cmp46.not.i.i, label %land.lhs.true.i.i.if.end57.i.i_crit_edge, label %do.body49.i.i

land.lhs.true.i.i.if.end57.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i.i

do.body49.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg.9) #6
  %tobool51.not.i.i = icmp eq ptr %3, null
  br i1 %tobool51.not.i.i, label %do.body49.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, label %if.then52.i.i

do.body49.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.then52.i.i:                                    ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ocelot_setup_tc_cls_matchall.__msg.9, ptr %3, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end57.i.i:                                     ; preds = %land.lhs.true.i.i.if.end57.i.i_crit_edge, %if.end41.i.i.if.end57.i.i_crit_edge
  %rate_pkt_ps.i.i = getelementptr inbounds %struct.flow_rule, ptr %19, i32 3
  %34 = ptrtoint ptr %rate_pkt_ps.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rate_pkt_ps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool58.not.i.i = icmp eq i64 %35, 0
  br i1 %tobool58.not.i.i, label %if.end68.i.i, label %do.body60.i.i

do.body60.i.i:                                    ; preds = %if.end57.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg.10) #6
  %tobool62.not.i.i = icmp eq ptr %3, null
  br i1 %tobool62.not.i.i, label %do.body60.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, label %if.then63.i.i

do.body60.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.then63.i.i:                                    ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ocelot_setup_tc_cls_matchall.__msg.10, ptr %3, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end68.i.i:                                     ; preds = %if.end57.i.i
  %37 = getelementptr inbounds %struct.flow_rule, ptr %19, i32 2
  %rate_bytes_ps.i.i = getelementptr inbounds %struct.flow_rule, ptr %19, i32 2, i32 0, i32 2
  %38 = ptrtoint ptr %rate_bytes_ps.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rate_bytes_ps.i.i, align 8
  %40 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %39, i32 0) #10, !srcloc !144
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %40, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %40, 1
  %41 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %39, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #10, !srcloc !145
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %41, 0
  %sh.diff.i.i = lshr i64 %asmresult10.i.i.i.i.i, 6
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %mul.i.i = and i32 %tr.sh.diff.i.i, -8
  %42 = ptrtoint ptr %pol.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul.i.i, ptr %pol.i.i, align 8
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %37, align 8
  %burst71.i.i = getelementptr inbounds %struct.ocelot_policer, ptr %pol.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %burst71.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %burst71.i.i, align 4
  %call72.i.i = call i32 @ocelot_port_policer_add(ptr noundef %12, i32 noundef %conv.i.i, ptr noundef nonnull %pol.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %tobool73.not.i.i = icmp eq i32 %call72.i.i, 0
  br i1 %tobool73.not.i.i, label %if.end83.i.i, label %do.body75.i.i

do.body75.i.i:                                    ; preds = %if.end68.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg.11) #6
  %tobool77.not.i.i = icmp eq ptr %3, null
  br i1 %tobool77.not.i.i, label %do.body75.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, label %if.then78.i.i

do.body75.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %do.body75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.then78.i.i:                                    ; preds = %do.body75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ocelot_setup_tc_cls_matchall.__msg.11, ptr %3, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end83.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cookie84.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %47 = ptrtoint ptr %cookie84.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cookie84.i.i, align 8
  %49 = ptrtoint ptr %police_id.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %police_id.i.i, align 4
  %offload_cnt.i.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %offload_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offload_cnt.i.i, align 4
  %inc.i.i = add i32 %51, 1
  store i32 %inc.i.i, ptr %offload_cnt.i.i, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

sw.bb88.i.i:                                      ; preds = %sw.bb.i
  %police_id90.i.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %police_id90.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %police_id90.i.i, align 4
  %cookie91.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %54 = ptrtoint ptr %cookie91.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cookie91.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp92.not.i.i = icmp eq i32 %53, %55
  br i1 %cmp92.not.i.i, label %if.end95.i.i, label %sw.bb88.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge

sw.bb88.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %sw.bb88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end95.i.i:                                     ; preds = %sw.bb88.i.i
  %call96.i.i = tail call i32 @ocelot_port_policer_del(ptr noundef %12, i32 noundef %conv.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i.i)
  %tobool97.not.i.i = icmp eq i32 %call96.i.i, 0
  br i1 %tobool97.not.i.i, label %if.end107.i.i, label %do.body99.i.i

do.body99.i.i:                                    ; preds = %if.end95.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg.12) #6
  %tobool101.not.i.i = icmp eq ptr %3, null
  br i1 %tobool101.not.i.i, label %do.body99.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, label %if.then102.i.i

do.body99.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge: ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.then102.i.i:                                   ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ocelot_setup_tc_cls_matchall.__msg.12, ptr %3, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

if.end107.i.i:                                    ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %police_id90.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %police_id90.i.i, align 4
  %offload_cnt111.i.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %offload_cnt111.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offload_cnt111.i.i, align 4
  %dec.i.i = add i32 %59, -1
  store i32 %dec.i.i, ptr %offload_cnt111.i.i, align 4
  br label %ocelot_setup_tc_cls_matchall.exit.i

ocelot_setup_tc_cls_matchall.exit.i:              ; preds = %if.end107.i.i, %if.then102.i.i, %do.body99.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %sw.bb88.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %if.end83.i.i, %if.then78.i.i, %do.body75.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %if.then63.i.i, %do.body60.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %if.then52.i.i, %do.body49.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %if.then36.i.i, %do.body33.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %if.then23.i.i, %do.body20.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %if.then12.i.i, %do.body9.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge, %sw.bb.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge
  %retval.0.i11.i = phi i32 [ 0, %if.end107.i.i ], [ 0, %if.end83.i.i ], [ -95, %if.then12.i.i ], [ -95, %do.body9.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ -95, %if.then23.i.i ], [ -95, %do.body20.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ -95, %if.then36.i.i ], [ -95, %do.body33.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ -17, %if.then52.i.i ], [ -17, %do.body49.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ -95, %if.then63.i.i ], [ -95, %do.body60.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ %call72.i.i, %if.then78.i.i ], [ %call72.i.i, %do.body75.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ -2, %sw.bb88.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ %call96.i.i, %if.then102.i.i ], [ %call96.i.i, %do.body99.i.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ], [ -95, %sw.bb.i.ocelot_setup_tc_cls_matchall.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pol.i.i) #6
  br label %ocelot_setup_tc_block_cb.exit

sw.bb2.i:                                         ; preds = %if.end.i
  %60 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cb_priv, align 4
  %chip_port.i12.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 4
  %62 = ptrtoint ptr %chip_port.i12.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %chip_port.i12.i, align 4
  %conv.i13.i = zext i8 %63 to i32
  %command.i14.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %64 = ptrtoint ptr %command.i14.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %command.i14.i, align 8
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %65, label %sw.bb2.i.ocelot_setup_tc_block_cb.exit_crit_edge [
    i32 0, label %sw.bb.i16.i
    i32 1, label %sw.bb4.i.i
    i32 2, label %sw.bb7.i.i
  ]

sw.bb2.i.ocelot_setup_tc_block_cb.exit_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

sw.bb.i16.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @ocelot_cls_flower_replace(ptr noundef %61, i32 noundef %conv.i13.i, ptr noundef %type_data, i1 noundef zeroext true) #6
  br label %ocelot_setup_tc_block_cb.exit

sw.bb4.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = tail call i32 @ocelot_cls_flower_destroy(ptr noundef %61, i32 noundef %conv.i13.i, ptr noundef %type_data, i1 noundef zeroext true) #6
  br label %ocelot_setup_tc_block_cb.exit

sw.bb7.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = tail call i32 @ocelot_cls_flower_stats(ptr noundef %61, i32 noundef %conv.i13.i, ptr noundef %type_data, i1 noundef zeroext true) #6
  br label %ocelot_setup_tc_block_cb.exit

ocelot_setup_tc_block_cb.exit:                    ; preds = %sw.bb7.i.i, %sw.bb4.i.i, %sw.bb.i16.i, %sw.bb2.i.ocelot_setup_tc_block_cb.exit_crit_edge, %ocelot_setup_tc_cls_matchall.exit.i, %if.end.i.ocelot_setup_tc_block_cb.exit_crit_edge, %if.then4.i.i, %do.body.i.i.ocelot_setup_tc_block_cb.exit_crit_edge, %if.then2.i.i.i, %do.body.i.i.i.ocelot_setup_tc_block_cb.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i11.i, %ocelot_setup_tc_cls_matchall.exit.i ], [ -95, %if.end.i.ocelot_setup_tc_block_cb.exit_crit_edge ], [ %call9.i.i, %sw.bb7.i.i ], [ %call6.i.i, %sw.bb4.i.i ], [ %call.i.i, %sw.bb.i16.i ], [ -95, %sw.bb2.i.ocelot_setup_tc_block_cb.exit_crit_edge ], [ -95, %if.then4.i.i ], [ -95, %do.body.i.i.ocelot_setup_tc_block_cb.exit_crit_edge ], [ -95, %do.body.i.i.i.ocelot_setup_tc_block_cb.exit_crit_edge ], [ -95, %if.then2.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_setup_tc_block_cb_eg(i32 noundef %type, ptr nocapture noundef readonly %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.ocelot_port_private, ptr %cb_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %extack.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %2 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack.i.i, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %5, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %do.body.i.i.i, label %if.end.i.i

do.body.i.i.i:                                    ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #6
  %tobool1.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i.i, label %do.body.i.i.i.ocelot_setup_tc_block_cb.exit_crit_edge, label %do.body.i.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge

do.body.i.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit.sink.split

do.body.i.i.i.ocelot_setup_tc_block_cb.exit_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

if.end.i.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #6
  %tobool3.not.i.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.ocelot_setup_tc_block_cb.exit_crit_edge, label %do.body.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge

do.body.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit.sink.split

do.body.i.i.ocelot_setup_tc_block_cb.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cond = icmp eq i32 %type, 3
  br i1 %cond, label %sw.bb.i, label %if.end.i.ocelot_setup_tc_block_cb.exit_crit_edge

if.end.i.ocelot_setup_tc_block_cb.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

sw.bb.i:                                          ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_setup_tc_cls_matchall.__msg) #6
  %tobool4.not.i.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i.i, label %sw.bb.i.ocelot_setup_tc_block_cb.exit_crit_edge, label %sw.bb.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge

sw.bb.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit.sink.split

sw.bb.i.ocelot_setup_tc_block_cb.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_setup_tc_block_cb.exit

ocelot_setup_tc_block_cb.exit.sink.split:         ; preds = %sw.bb.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge, %do.body.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge, %do.body.i.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge
  %ocelot_setup_tc_cls_matchall.__msg.sink = phi ptr [ @tc_can_offload_extack.__msg, %do.body.i.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge ], [ @tc_cls_can_offload_and_chain0.__msg, %do.body.i.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge ], [ @ocelot_setup_tc_cls_matchall.__msg, %sw.bb.i.ocelot_setup_tc_block_cb.exit.sink.split_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ocelot_setup_tc_cls_matchall.__msg.sink, ptr %3, align 4
  br label %ocelot_setup_tc_block_cb.exit

ocelot_setup_tc_block_cb.exit:                    ; preds = %ocelot_setup_tc_block_cb.exit.sink.split, %sw.bb.i.ocelot_setup_tc_block_cb.exit_crit_edge, %if.end.i.ocelot_setup_tc_block_cb.exit_crit_edge, %do.body.i.i.ocelot_setup_tc_block_cb.exit_crit_edge, %do.body.i.i.i.ocelot_setup_tc_block_cb.exit_crit_edge
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flow_block_cb_is_busy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_policer_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_policer_del(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_fdb_add(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_fdb_del(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_fdb_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_fdb_do_dump(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_port_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %sset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %netdev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  tail call void @ocelot_get_strings(ptr noundef %1, i32 noundef %conv, i32 noundef %sset, ptr noundef %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocelot_port_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  tail call void @ocelot_get_ethtool_stats(ptr noundef %1, i32 noundef %conv, ptr noundef %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %call3 = tail call i32 @ocelot_get_sset_count(ptr noundef %1, i32 noundef %conv, i32 noundef %sset) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocelot_port_get_ts_info(ptr noundef %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %ptp = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ptp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %dev, ptr noundef %info) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chip_port = getelementptr i8, ptr %dev, i32 2452
  %3 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %4 to i32
  %call4 = tail call i32 @ocelot_get_ts_info(ptr noundef %1, i32 noundef %conv, ptr noundef %info) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_get_sset_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_get_ts_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_rmwl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_generic_validate(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc7514_phylink_mac_config(ptr nocapture noundef readonly %config, i32 noundef %link_an_mode, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1200
  tail call void @ocelot_port_writel(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 218103809) #6
  tail call void @ocelot_port_writel(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 218103827) #6
  tail call void @ocelot_port_writel(ptr noundef %add.ptr.i, i32 noundef 256, i32 noundef 218103828) #6
  tail call void @ocelot_port_writel(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 218103826) #6
  tail call void @ocelot_port_writel(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 218103829) #6
  tail call void @ocelot_port_writel(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 218103831) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc7514_phylink_mac_link_down(ptr nocapture noundef readonly %config, i32 noundef %link_an_mode, i32 noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1200
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %1, i32 1348
  %4 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %5 to i32
  tail call void @ocelot_phylink_mac_link_down(ptr noundef %3, i32 noundef %conv, i32 noundef %link_an_mode, i32 noundef %interface, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc7514_phylink_mac_link_up(ptr nocapture noundef readonly %config, ptr noundef %phydev, i32 noundef %link_an_mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1200
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %chip_port = getelementptr i8, ptr %1, i32 1348
  %4 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %5 to i32
  tail call void @ocelot_phylink_mac_link_up(ptr noundef %3, i32 noundef %conv, ptr noundef %phydev, i32 noundef %link_an_mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_phylink_mac_link_down(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_phylink_mac_link_up(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @ocelot_devlink_ops, !1, !"ocelot_devlink_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 148, i32 26}
!2 = !{ptr @ocelot_netdevice_nb, !3, !"ocelot_netdevice_nb", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1463, i32 23}
!4 = !{ptr @ocelot_switchdev_nb, !5, !"ocelot_switchdev_nb", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1484, i32 23}
!6 = !{ptr @ocelot_switchdev_blocking_nb, !7, !"ocelot_switchdev_blocking_nb", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1516, i32 23}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1716, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ocelot_probe_port._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @ocelot_probe_port._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ocelot_netdevice_lag_join.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1254, i32 3}
!18 = !{ptr @ocelot_port_netdev_ops, !19, !"ocelot_port_netdev_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 785, i32 36}
!20 = !{ptr @ocelot_enqueue_mact_action.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 548, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !24, !"__msg", i1 false, i1 false}
!24 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!25 = !{ptr @tc_can_offload_extack.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!27 = !{ptr @ocelot_setup_tc_cls_matchall.__msg, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 230, i32 3}
!29 = !{ptr @ocelot_setup_tc_cls_matchall.__msg.6, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 237, i32 4}
!31 = !{ptr @ocelot_setup_tc_cls_matchall.__msg.7, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 243, i32 4}
!33 = !{ptr @ocelot_setup_tc_cls_matchall.__msg.8, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 251, i32 4}
!35 = !{ptr @ocelot_setup_tc_cls_matchall.__msg.9, !36, !"__msg", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 256, i32 4}
!37 = !{ptr @ocelot_setup_tc_cls_matchall.__msg.10, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 262, i32 4}
!39 = !{ptr @ocelot_setup_tc_cls_matchall.__msg.11, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 272, i32 4}
!41 = !{ptr @ocelot_setup_tc_cls_matchall.__msg.12, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 285, i32 4}
!43 = !{ptr @ocelot_block_cb_list, !44, !"ocelot_block_cb_list", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 333, i32 8}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 742, i32 7}
!47 = !{ptr @ocelot_ethtool_ops, !48, !"ocelot_ethtool_ops", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 878, i32 33}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1604, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ocelot_port_phylink_create._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ocelot_port_phylink_create._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1624, i32 11}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1632, i32 4}
!58 = !{ptr @ocelot_port_phylink_create._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ocelot_port_phylink_create._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1653, i32 3}
!62 = !{ptr @ocelot_port_phylink_create._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ocelot_port_phylink_create._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1661, i32 3}
!66 = !{ptr @ocelot_port_phylink_create._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ocelot_port_phylink_create._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 211, i32 10}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 213, i32 10}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 215, i32 10}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 217, i32 10}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 219, i32 10}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 221, i32 10}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 223, i32 10}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 225, i32 10}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 227, i32 10}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/phy.h", i32 229, i32 10}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/phy.h", i32 231, i32 10}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/phy.h", i32 233, i32 10}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/phy.h", i32 235, i32 10}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/phy.h", i32 237, i32 10}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/phy.h", i32 239, i32 10}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/phy.h", i32 241, i32 10}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/phy.h", i32 243, i32 10}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/phy.h", i32 245, i32 10}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/phy.h", i32 247, i32 10}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/phy.h", i32 249, i32 10}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/phy.h", i32 251, i32 10}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/phy.h", i32 253, i32 10}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/phy.h", i32 255, i32 10}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/phy.h", i32 257, i32 10}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/phy.h", i32 259, i32 10}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/phy.h", i32 261, i32 10}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/phy.h", i32 263, i32 10}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/phy.h", i32 265, i32 10}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/phy.h", i32 267, i32 10}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/phy.h", i32 269, i32 10}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/phy.h", i32 271, i32 10}
!130 = !{ptr @ocelot_phylink_ops, !131, !"ocelot_phylink_ops", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mscc/ocelot_net.c", i32 1577, i32 37}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i8 0, i8 2}
!142 = !{!"auto-init"}
!143 = !{i64 2148308311, i64 2148308316, i64 2148308329, i64 2148308373, i64 2148308407, i64 2148308428}
!144 = !{i64 847954, i64 847981, i64 848003, i64 848031}
!145 = !{i64 848362, i64 848389, i64 848422, i64 848443, i64 848470, i64 848496}
