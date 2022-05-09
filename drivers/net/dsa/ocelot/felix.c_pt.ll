; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/ocelot/felix.c_pt.bc'
source_filename = "../drivers/net/dsa/ocelot/felix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.felix_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i16, i16, i16, i16, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.felix = type { ptr, ptr, %struct.ocelot, ptr, ptr, i32, i32, i32, ptr }
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.ocelot_policer = type { i32, i32 }
%struct.dsa_mall_policer_tc_entry = type { i32, i64 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.timespec64 = type { i64, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vcap_props = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x %struct.anon.169], i16, i16, i32, ptr, ptr }
%struct.anon.169 = type { i16, i16 }
%struct.vcap_field = type { i32, i32 }
%struct.ocelot_vcap_filter = type { %struct.list_head, i32, i32, i32, i32, i8, i16, %struct.ocelot_vcap_id, %struct.ocelot_vcap_action, %struct.ocelot_vcap_stats, i32, %struct.ocelot_vcap_port, %struct.ocelot_vcap_port, i32, i32, %struct.ocelot_vcap_key_vlan, i32, %union.anon.177 }
%struct.ocelot_vcap_id = type { i32, i8 }
%struct.ocelot_vcap_action = type { %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i8, i8 }
%struct.ocelot_vcap_stats = type { i64, i64, i64 }
%struct.ocelot_vcap_port = type { i8, i8 }
%struct.ocelot_vcap_key_vlan = type { %struct.ocelot_vcap_vid, %struct.ocelot_vcap_u8, i32, i32 }
%struct.ocelot_vcap_vid = type { i16, i16 }
%struct.ocelot_vcap_u8 = type { [1 x i8], [1 x i8] }
%union.anon.177 = type { %struct.ocelot_vcap_key_ipv6 }
%struct.ocelot_vcap_key_ipv6 = type { %struct.ocelot_vcap_u8, %struct.ocelot_vcap_u128, %struct.ocelot_vcap_u128, i32, %struct.ocelot_vcap_u8, %struct.ocelot_vcap_u48, %struct.ocelot_vcap_udp_tcp, %struct.ocelot_vcap_udp_tcp, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocelot_vcap_u128 = type { [16 x i8], [16 x i8] }
%struct.ocelot_vcap_u48 = type { [6 x i8], [6 x i8] }
%struct.ocelot_vcap_udp_tcp = type { i16, i16 }
%struct.anon.175 = type { i8, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8 }

@felix_switch_ops = dso_local constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @felix_get_tag_protocol, ptr @felix_change_tag_protocol, ptr @felix_connect_tag_protocol, ptr @felix_setup, ptr @felix_teardown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @felix_phylink_validate, ptr null, ptr @felix_phylink_mac_config, ptr null, ptr @felix_phylink_mac_link_down, ptr @felix_phylink_mac_link_up, ptr null, ptr @felix_get_strings, ptr @felix_get_ethtool_stats, ptr @felix_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @felix_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @felix_set_ageing_time, ptr @felix_bridge_join, ptr @felix_bridge_leave, ptr @felix_bridge_stp_state_set, ptr @felix_port_fast_age, ptr @felix_pre_bridge_flags, ptr @felix_bridge_flags, ptr @felix_vlan_filtering, ptr @felix_vlan_add, ptr @felix_vlan_del, ptr @felix_fdb_add, ptr @felix_fdb_del, ptr @felix_fdb_dump, ptr @felix_mdb_add, ptr @felix_mdb_del, ptr null, ptr null, ptr @felix_cls_flower_add, ptr @felix_cls_flower_del, ptr @felix_cls_flower_stats, ptr null, ptr null, ptr @felix_port_policer_add, ptr @felix_port_policer_del, ptr @felix_port_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @felix_hwtstamp_get, ptr @felix_hwtstamp_set, ptr @felix_txtstamp, ptr @felix_rxtstamp, ptr null, ptr null, ptr null, ptr @felix_sb_pool_get, ptr @felix_sb_pool_set, ptr @felix_sb_port_pool_get, ptr @felix_sb_port_pool_set, ptr @felix_sb_tc_pool_bind_get, ptr @felix_sb_tc_pool_bind_set, ptr @felix_sb_occ_snapshot, ptr @felix_sb_occ_max_clear, ptr @felix_sb_occ_port_pool_get, ptr @felix_sb_occ_tc_port_bind_get, ptr @felix_change_mtu, ptr @felix_get_max_mtu, ptr @felix_lag_change, ptr @felix_lag_join, ptr @felix_lag_leave, ptr null, ptr null, ptr @felix_mrp_add, ptr @felix_mrp_del, ptr @felix_mrp_add_ring_role, ptr @felix_mrp_del_ring_role, ptr @felix_tag_8021q_vlan_add, ptr @felix_tag_8021q_vlan_del }, [96 x i8] zeroinitializer }, align 32
@felix_teardown_tag_8021q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"felix_teardown_mmio_filtering returned %d\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"felix_teardown_tag_8021q\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/dsa/ocelot/felix.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@felix_teardown_tag_8021q._entry_ptr = internal global ptr @felix_teardown_tag_8021q._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@felix_port_deferred_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port %d failed to inject skb\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"felix_port_deferred_xmit\00", [39 x i8] zeroinitializer }, align 32
@felix_port_deferred_xmit._entry_ptr = internal global ptr @felix_port_deferred_xmit._entry, section ".printk_index", align 4
@ocelot_port_purge_txtstamp_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not find skb clone in TX timestamping list\0A\00", [46 x i8] zeroinitializer }, align 32
@felix_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timestamp initialization failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"felix_setup\00", [20 x i8] zeroinitializer }, align 32
@felix_setup._entry_ptr = internal global ptr @felix_setup._entry, section ".printk_index", align 4
@felix_init_structs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1047, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to map device memory space\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"felix_init_structs\00", [45 x i8] zeroinitializer }, align 32
@felix_init_structs._entry_ptr = internal global ptr @felix_init_structs._entry, section ".printk_index", align 4
@felix_init_structs._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 1057, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init reg fields map\0A\00", [33 x i8] zeroinitializer }, align 32
@felix_init_structs._entry_ptr.14 = internal global ptr @felix_init_structs._entry.12, section ".printk_index", align 4
@felix_init_structs._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 1071, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate port memory\0A\00", [32 x i8] zeroinitializer }, align 32
@felix_init_structs._entry_ptr.17 = internal global ptr @felix_init_structs._entry.15, section ".printk_index", align 4
@felix_init_structs._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 1085, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to map memory space for port %d\0A\00", [56 x i8] zeroinitializer }, align 32
@felix_init_structs._entry_ptr.20 = internal global ptr @felix_init_structs._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@felix_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 985, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Incorrect bindings: absent \22ports\22 or \22ethernet-ports\22 node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"felix_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@felix_parse_dt._entry_ptr = internal global ptr @felix_parse_dt._entry, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@felix_parse_ports_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 943, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Port number not defined in device tree (property \22reg\22)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"felix_parse_ports_node\00", [41 x i8] zeroinitializer }, align 32
@felix_parse_ports_node._entry_ptr = internal global ptr @felix_parse_ports_node._entry, section ".printk_index", align 4
@felix_parse_ports_node._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 953, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to read phy-mode or phy-interface-type property for port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@felix_parse_ports_node._entry_ptr.30 = internal global ptr @felix_parse_ports_node._entry.28, section ".printk_index", align 4
@felix_parse_ports_node._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 961, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported PHY mode %s on port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@felix_parse_ports_node._entry_ptr.33 = internal global ptr @felix_parse_ports_node._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@felix_port_fast_age._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 650, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Flushing MAC table on port %d returned %pe\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"felix_port_fast_age\00", [44 x i8] zeroinitializer }, align 32
@felix_port_fast_age._entry_ptr = internal global ptr @felix_port_fast_age._entry, section ".printk_index", align 4
@felix_txtstamp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.felix_txtstamp = private unnamed_addr constant [15 x i8] c"felix_txtstamp\00", align 1
@felix_txtstamp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.felix_txtstamp, ptr @.str.2, i32 1405, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"port %d delivering skb without TX timestamp\0A\00", [51 x i8] zeroinitializer }, align 32
@felix_txtstamp._entry_ptr = internal global ptr @felix_txtstamp._entry, section ".printk_index", align 4
@switch.table.felix_setup = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.63, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 20, i64 21]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 20, i64 21]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 20, i64 21]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 20, i64 21]
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"felix_switch_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1621, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 459, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1155, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1130, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1208, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1046, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1057, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1070, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1083, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 981, i32 49 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 983, i32 50 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 985, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 941, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 942, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 951, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 960, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 211, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 213, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 215, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 217, i32 10 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 219, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 221, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 223, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 225, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 227, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 229, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 231, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 233, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 235, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 237, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 239, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 241, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 243, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 245, i32 10 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 247, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 249, i32 10 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 251, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 253, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 255, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 257, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 259, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 261, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 263, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 265, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 267, i32 10 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 269, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 271, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 649, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [34 x i8] c"../drivers/net/dsa/ocelot/felix.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1403, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [25 x i8] c"switch.table.felix_setup\00", align 1
@llvm.compiler.used = appending global [88 x ptr] [ptr @felix_init_structs._entry, ptr @felix_init_structs._entry.12, ptr @felix_init_structs._entry.15, ptr @felix_init_structs._entry.18, ptr @felix_init_structs._entry_ptr, ptr @felix_init_structs._entry_ptr.14, ptr @felix_init_structs._entry_ptr.17, ptr @felix_init_structs._entry_ptr.20, ptr @felix_parse_dt._entry, ptr @felix_parse_dt._entry_ptr, ptr @felix_parse_ports_node._entry, ptr @felix_parse_ports_node._entry.28, ptr @felix_parse_ports_node._entry.31, ptr @felix_parse_ports_node._entry_ptr, ptr @felix_parse_ports_node._entry_ptr.30, ptr @felix_parse_ports_node._entry_ptr.33, ptr @felix_port_deferred_xmit._entry, ptr @felix_port_deferred_xmit._entry_ptr, ptr @felix_port_fast_age._entry, ptr @felix_port_fast_age._entry_ptr, ptr @felix_setup._entry, ptr @felix_setup._entry_ptr, ptr @felix_teardown_tag_8021q._entry, ptr @felix_teardown_tag_8021q._entry_ptr, ptr @felix_txtstamp._entry, ptr @felix_txtstamp._entry_ptr, ptr @felix_switch_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @felix_txtstamp._rs, ptr @.str.67, ptr @.str.68, ptr @switch.table.felix_setup], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_switch_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_teardown_tag_8021q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_port_deferred_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_init_structs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_init_structs._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_init_structs._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_init_structs._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_parse_ports_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_parse_ports_node._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_parse_ports_node._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_port_fast_age._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_txtstamp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @felix_txtstamp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.felix_setup to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @felix_get_tag_protocol(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tag_proto = getelementptr i8, ptr %1, i32 1600
  %2 = ptrtoint ptr %tag_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag_proto, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_change_tag_protocol(ptr noundef %ds, i32 noundef %cpu, i32 noundef %proto) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tag_proto = getelementptr i8, ptr %1, i32 1600
  %2 = ptrtoint ptr %tag_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag_proto, align 4
  %4 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %proto, label %entry.cleanup_crit_edge [
    i32 21, label %entry.if.end_crit_edge
    i32 15, label %entry.if.end_crit_edge23
    i32 20, label %entry.if.end_crit_edge24
  ]

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge23, %entry.if.end_crit_edge24
  tail call fastcc void @felix_del_tag_protocol(ptr noundef %ds, i32 noundef %cpu, i32 noundef %3)
  %call = tail call fastcc i32 @felix_set_tag_protocol(ptr noundef %ds, i32 noundef %cpu, i32 noundef %proto)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @felix_set_tag_protocol(ptr noundef %ds, i32 noundef %cpu, i32 noundef %3)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %tag_proto to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %proto, ptr %tag_proto, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ 0, %if.end6 ], [ -93, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_connect_tag_protocol(ptr nocapture noundef readonly %ds, i32 noundef %proto) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %proto, label %sw.default [
    i32 20, label %sw.bb
    i32 15, label %entry.cleanup_crit_edge
    i32 21, label %entry.cleanup_crit_edge2
  ]

entry.cleanup_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dst.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %1 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tag_ops.i, align 4
  %proto.i = getelementptr inbounds %struct.dsa_device_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 20
  br i1 %cmp.not.i, label %ocelot_8021q_tagger_data.exit, label %do.body2.i, !prof !147

do.body2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dsa/ocelot.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #9, !srcloc !148
  unreachable

ocelot_8021q_tagger_data.exit:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %tagger_data.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 6
  %7 = ptrtoint ptr %tagger_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tagger_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @felix_port_deferred_xmit, ptr %8, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %ocelot_8021q_tagger_data.exit, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge2
  %retval.0 = phi i32 [ -93, %sw.default ], [ 0, %ocelot_8021q_tagger_data.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_setup(ptr noundef %ds) #1 align 64 {
entry:
  %phy_mode.i.i.i = alloca i32, align 4
  %port.i.i.i = alloca i32, align 4
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #9
  %4 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 3
  %conv.i = trunc i32 %3 to i8
  %num_phys_ports2.i = getelementptr i8, ptr %1, i32 376
  %6 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %7 = ptrtoint ptr %num_phys_ports2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %num_phys_ports2.i, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #9
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !149

devm_kcalloc.exit.thread.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ports213.i = getelementptr i8, ptr %1, i32 352
  %10 = ptrtoint ptr %ports213.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ports213.i, align 4
  br label %felix_init_structs.exit.thread

devm_kcalloc.exit.i:                              ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = extractvalue { i32, i1 } %8, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef %13, i32 noundef 3520) #9
  %ports.i = getelementptr i8, ptr %1, i32 352
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i, ptr %ports.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.felix_init_structs.exit.thread_crit_edge, label %if.end.i.i207.i

devm_kcalloc.exit.i.felix_init_structs.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_init_structs.exit.thread

if.end.i.i207.i:                                  ; preds = %devm_kcalloc.exit.i
  %info.i = getelementptr i8, ptr %1, i32 -4
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i, align 4
  %map.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i, align 4
  %map4.i = getelementptr i8, ptr %1, i32 312
  %19 = ptrtoint ptr %map4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %map4.i, align 4
  %stats_layout.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 7
  %20 = ptrtoint ptr %stats_layout.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stats_layout.i, align 4
  %stats_layout6.i = getelementptr i8, ptr %1, i32 316
  %22 = ptrtoint ptr %stats_layout6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %stats_layout6.i, align 4
  %num_stats.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 8
  %23 = ptrtoint ptr %num_stats.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_stats.i, align 4
  %num_stats8.i = getelementptr i8, ptr %1, i32 320
  %25 = ptrtoint ptr %num_stats8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_stats8.i, align 4
  %num_mact_rows.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 6
  %26 = ptrtoint ptr %num_mact_rows.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_mact_rows.i, align 4
  %num_mact_rows10.i = getelementptr i8, ptr %1, i32 348
  %28 = ptrtoint ptr %num_mact_rows10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_mact_rows10.i, align 4
  %vcap.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 11
  %29 = ptrtoint ptr %vcap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vcap.i, align 4
  %vcap12.i = getelementptr i8, ptr %1, i32 468
  %31 = ptrtoint ptr %vcap12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %vcap12.i, align 4
  %vcap_pol_base.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 12
  %32 = ptrtoint ptr %vcap_pol_base.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vcap_pol_base.i, align 4
  %base.i = getelementptr i8, ptr %1, i32 460
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %base.i, align 4
  %vcap_pol_max.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 13
  %35 = ptrtoint ptr %vcap_pol_max.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vcap_pol_max.i, align 2
  %max.i = getelementptr i8, ptr %1, i32 462
  %37 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %max.i, align 2
  %vcap_pol_base2.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 14
  %38 = ptrtoint ptr %vcap_pol_base2.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vcap_pol_base2.i, align 4
  %base2.i = getelementptr i8, ptr %1, i32 464
  %40 = ptrtoint ptr %base2.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %base2.i, align 4
  %vcap_pol_max2.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 15
  %41 = ptrtoint ptr %vcap_pol_max2.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vcap_pol_max2.i, align 2
  %max2.i = getelementptr i8, ptr %1, i32 466
  %43 = ptrtoint ptr %max2.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %max2.i, align 2
  %ops.i = getelementptr inbounds %struct.felix_info, ptr %16, i32 0, i32 5
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %ops21.i = getelementptr i8, ptr %1, i32 12
  %46 = ptrtoint ptr %ops21.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %ops21.i, align 4
  %npi_inj_prefix.i = getelementptr i8, ptr %1, i32 384
  %47 = ptrtoint ptr %npi_inj_prefix.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %npi_inj_prefix.i, align 4
  %npi_xtr_prefix.i = getelementptr i8, ptr %1, i32 388
  %48 = ptrtoint ptr %npi_xtr_prefix.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %npi_xtr_prefix.i, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  %devlink.i = getelementptr inbounds %struct.dsa_switch, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %devlink.i, align 4
  %devlink22.i = getelementptr i8, ptr %1, i32 4
  %53 = ptrtoint ptr %devlink22.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %devlink22.i, align 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #12
  %tobool24.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool24.not.i, label %if.end.i.i207.i.felix_init_structs.exit.thread_crit_edge, label %if.end26.i

if.end.i.i207.i.felix_init_structs.exit.thread_crit_edge: ; preds = %if.end.i.i207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_init_structs.exit.thread

if.end26.i:                                       ; preds = %if.end.i.i207.i
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i = tail call ptr @of_get_child_by_name(ptr noundef %57, ptr noundef nonnull @.str.21) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.i.if.end5.i.i_crit_edge

if.end26.i.if.end5.i.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.end.i.i:                                       ; preds = %if.end26.i
  %call2.i.i = tail call ptr @of_get_child_by_name(ptr noundef %57, ptr noundef nonnull @.str.22) #9
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %felix_parse_dt.exit.thread.i, label %if.end.i.i.if.end5.i.i_crit_edge

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

felix_parse_dt.exit.thread.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.23) #13
  br label %if.then29.i

if.end5.i.i:                                      ; preds = %if.end.i.i.if.end5.i.i_crit_edge, %if.end26.i.if.end5.i.i_crit_edge
  %ports_node.018.i.i = phi ptr [ %call2.i.i, %if.end.i.i.if.end5.i.i_crit_edge ], [ %call.i.i, %if.end26.i.if.end5.i.i_crit_edge ]
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %ports_node.018.i.i, ptr noundef null) #9
  %cmp.not44.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.not44.i.i.i, label %if.end5.i.i.felix_parse_dt.exit.i_crit_edge, label %if.end5.i.i.for.body.i.i.i_crit_edge

if.end5.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.end5.i.i
  br label %for.body.i.i.i

if.end5.i.i.felix_parse_dt.exit.i_crit_edge:      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_parse_dt.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end5.i.i.for.body.i.i.i_crit_edge
  %child.045.i.i.i = phi ptr [ %call22.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.end5.i.i.for.body.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_mode.i.i.i) #9
  %60 = ptrtoint ptr %phy_mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %phy_mode.i.i.i, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i.i.i) #9
  %61 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %port.i.i.i, align 4, !annotation !150
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.045.i.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %port.i.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp5.i.i.i, label %do.end.i.i.i, label %if.end.i.i209.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.26) #13
  br label %felix_parse_dt.exit.thread221.i

if.end.i.i209.i:                                  ; preds = %for.body.i.i.i
  %call6.i.i.i = call i32 @of_get_phy_mode(ptr noundef nonnull %child.045.i.i.i, ptr noundef nonnull %phy_mode.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end11.i.i.i, label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.end.i.i209.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.29, i32 noundef %63) #13
  br label %felix_parse_dt.exit.thread221.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i209.i
  %64 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info.i, align 4
  %prevalidate_phy_mode.i.i.i = getelementptr inbounds %struct.felix_info, ptr %65, i32 0, i32 21
  %66 = ptrtoint ptr %prevalidate_phy_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prevalidate_phy_mode.i.i.i, align 4
  %68 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port.i.i.i, align 4
  %70 = ptrtoint ptr %phy_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %phy_mode.i.i.i, align 4
  %call12.i.i.i = call i32 %67(ptr noundef %1, i32 noundef %69, i32 noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call12.i.i.i, 0
  %72 = ptrtoint ptr %phy_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %phy_mode.i.i.i, align 4
  br i1 %cmp13.i.i.i, label %do.end17.i.i.i, label %for.inc.i.i.i

do.end17.i.i.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %73)
  %74 = icmp ult i32 %73, 30
  br i1 %74, label %switch.lookup, label %do.end17.i.i.i.phy_modes.exit.i.i.i_crit_edge

do.end17.i.i.i.phy_modes.exit.i.i.i_crit_edge:    ; preds = %do.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %phy_modes.exit.i.i.i

switch.lookup:                                    ; preds = %do.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.felix_setup, i32 0, i32 %73
  %75 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %75)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit.i.i.i

phy_modes.exit.i.i.i:                             ; preds = %switch.lookup, %do.end17.i.i.i.phy_modes.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.64, %do.end17.i.i.i.phy_modes.exit.i.i.i_crit_edge ]
  %76 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.32, ptr noundef nonnull %retval.0.i.i.i.i, i32 noundef %77) #13
  br label %felix_parse_dt.exit.thread221.i

felix_parse_dt.exit.thread221.i:                  ; preds = %phy_modes.exit.i.i.i, %do.end10.i.i.i, %do.end.i.i.i
  %retval.1.ph.i.i.i = phi i32 [ -19, %do.end.i.i.i ], [ -19, %do.end10.i.i.i ], [ %call12.i.i.i, %phy_modes.exit.i.i.i ]
  call void @of_node_put(ptr noundef nonnull %child.045.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i.i.i) #9
  call void @of_node_put(ptr noundef nonnull %ports_node.018.i.i) #9
  br label %if.then29.i

for.inc.i.i.i:                                    ; preds = %if.end11.i.i.i
  %78 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %call8.i.i.i, i32 %79
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %73, ptr %arrayidx.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode.i.i.i) #9
  %call22.i.i.i = call ptr @of_get_next_available_child(ptr noundef %ports_node.018.i.i, ptr noundef nonnull %child.045.i.i.i) #9
  %cmp.not.i.i.i = icmp eq ptr %call22.i.i.i, null
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.felix_parse_dt.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.felix_parse_dt.exit.i_crit_edge:    ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_parse_dt.exit.i

felix_parse_dt.exit.i:                            ; preds = %for.inc.i.i.i.felix_parse_dt.exit.i_crit_edge, %if.end5.i.i.felix_parse_dt.exit.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %ports_node.018.i.i) #9
  %switch_base.i = getelementptr i8, ptr %1, i32 1592
  br label %for.body.i

if.then29.i:                                      ; preds = %felix_parse_dt.exit.thread221.i, %felix_parse_dt.exit.thread.i
  %retval.0.i220.i = phi i32 [ -19, %felix_parse_dt.exit.thread.i ], [ %retval.1.ph.i.i.i, %felix_parse_dt.exit.thread221.i ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  br label %felix_init_structs.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %felix_parse_dt.exit.i
  %i.0236.i = phi i32 [ 0, %felix_parse_dt.exit.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %81 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %info.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %name.i = getelementptr %struct.resource, ptr %84, i32 %i.0236.i, i32 2
  %85 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name.i, align 4
  %tobool33.not.i = icmp eq ptr %86, null
  br i1 %tobool33.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end35.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end35.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.resource, ptr %84, i32 %i.0236.i
  %87 = call ptr @memcpy(ptr %res.i, ptr %arrayidx.i, i32 32)
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 512, ptr %5, align 4
  %89 = ptrtoint ptr %switch_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %switch_base.i, align 4
  %91 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %res.i, align 4
  %add.i = add i32 %92, %90
  store i32 %add.i, ptr %res.i, align 4
  %93 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %4, align 4
  %add40.i = add i32 %94, %90
  store i32 %add40.i, ptr %4, align 4
  %init_regmap.i = getelementptr inbounds %struct.felix_info, ptr %82, i32 0, i32 24
  %95 = ptrtoint ptr %init_regmap.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_regmap.i, align 4
  %call42.i = call ptr %96(ptr noundef %1, ptr noundef nonnull %res.i) #9
  %cmp.i.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i, label %if.end47.i

if.end47.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx48.i = getelementptr %struct.felix, ptr %add.ptr, i32 0, i32 2, i32 4, i32 %i.0236.i
  %97 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call42.i, ptr %arrayidx48.i, align 4
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.10) #13
  br label %felix_init_structs.exit

for.inc.i:                                        ; preds = %if.end47.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0236.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %100 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %info.i, align 4
  %regfields.i = getelementptr inbounds %struct.felix_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %regfields.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regfields.i, align 4
  %call50.i = call i32 @ocelot_regfields_init(ptr noundef %1, ptr noundef %103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %for.cond58.preheader.i, label %do.end55.i

for.cond58.preheader.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp59238.i = icmp sgt i32 %3, 0
  br i1 %cmp59238.i, label %for.cond58.preheader.i.for.body61.i_crit_edge, label %for.cond58.preheader.i.for.end103.i_crit_edge

for.cond58.preheader.i.for.end103.i_crit_edge:    ; preds = %for.cond58.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103.i

for.cond58.preheader.i.for.body61.i_crit_edge:    ; preds = %for.cond58.preheader.i
  br label %for.body61.i

do.end55.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.13) #13
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  br label %felix_init_structs.exit.thread

for.body61.i:                                     ; preds = %for.inc101.i.for.body61.i_crit_edge, %for.cond58.preheader.i.for.body61.i_crit_edge
  %port.0239.i = phi i32 [ %inc102.i, %for.inc101.i.for.body61.i_crit_edge ], [ 0, %for.cond58.preheader.i.for.body61.i_crit_edge ]
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %call.i210.i = call noalias ptr @devm_kmalloc(ptr noundef %107, i32 noundef 116, i32 noundef 3520) #9
  %tobool65.not.i = icmp eq ptr %call.i210.i, null
  br i1 %tobool65.not.i, label %do.end69.i, label %if.end71.i

do.end69.i:                                       ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.16) #13
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  br label %felix_init_structs.exit.thread

if.end71.i:                                       ; preds = %for.body61.i
  %110 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %info.i, align 4
  %port_io_res.i = getelementptr inbounds %struct.felix_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %port_io_res.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %port_io_res.i, align 4
  %arrayidx73.i = getelementptr %struct.resource, ptr %113, i32 %port.0239.i
  %114 = call ptr @memcpy(ptr %res.i, ptr %arrayidx73.i, i32 32)
  %115 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 512, ptr %5, align 4
  %116 = ptrtoint ptr %switch_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %switch_base.i, align 4
  %118 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %res.i, align 4
  %add77.i = add i32 %119, %117
  store i32 %add77.i, ptr %res.i, align 4
  %120 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %4, align 4
  %add80.i = add i32 %121, %117
  store i32 %add80.i, ptr %4, align 4
  %init_regmap82.i = getelementptr inbounds %struct.felix_info, ptr %111, i32 0, i32 24
  %122 = ptrtoint ptr %init_regmap82.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_regmap82.i, align 4
  %call83.i = call ptr %123(ptr noundef %1, ptr noundef nonnull %res.i) #9
  %cmp.i211.i = icmp ugt ptr %call83.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211.i, label %do.end88.i, label %for.inc101.i

do.end88.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.19, i32 noundef %port.0239.i) #13
  br label %felix_init_structs.exit

for.inc101.i:                                     ; preds = %if.end71.i
  %arrayidx92.i = getelementptr i32, ptr %call8.i.i.i, i32 %port.0239.i
  %126 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx92.i, align 4
  %phy_mode.i = getelementptr inbounds %struct.ocelot_port, ptr %call.i210.i, i32 0, i32 8
  %128 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %phy_mode.i, align 4
  %129 = ptrtoint ptr %call.i210.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %1, ptr %call.i210.i, align 4
  %target94.i = getelementptr inbounds %struct.ocelot_port, ptr %call.i210.i, i32 0, i32 1
  %130 = ptrtoint ptr %target94.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call83.i, ptr %target94.i, align 4
  %131 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ports.i, align 4
  %arrayidx96.i = getelementptr ptr, ptr %132, i32 %port.0239.i
  %133 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i210.i, ptr %arrayidx96.i, align 4
  %inc102.i = add nuw nsw i32 %port.0239.i, 1
  %exitcond248.not.i = icmp eq i32 %inc102.i, %3
  br i1 %exitcond248.not.i, label %for.inc101.i.for.end103.i_crit_edge, label %for.inc101.i.for.body61.i_crit_edge

for.inc101.i.for.body61.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body61.i

for.inc101.i.for.end103.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103.i

for.end103.i:                                     ; preds = %for.inc101.i.for.end103.i_crit_edge, %for.cond58.preheader.i.for.end103.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  %134 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %info.i, align 4
  %mdio_bus_alloc.i = getelementptr inbounds %struct.felix_info, ptr %135, i32 0, i32 18
  %136 = ptrtoint ptr %mdio_bus_alloc.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mdio_bus_alloc.i, align 4
  %tobool105.not.i = icmp eq ptr %137, null
  br i1 %tobool105.not.i, label %for.end103.i.felix_init_structs.exit.thread143_crit_edge, label %if.then106.i

for.end103.i.felix_init_structs.exit.thread143_crit_edge: ; preds = %for.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_init_structs.exit.thread143

if.then106.i:                                     ; preds = %for.end103.i
  %call109.i = call i32 %137(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %cmp110.i = icmp slt i32 %call109.i, 0
  br i1 %cmp110.i, label %if.then106.i.felix_init_structs.exit.thread_crit_edge, label %if.then106.i.felix_init_structs.exit.thread143_crit_edge

if.then106.i.felix_init_structs.exit.thread143_crit_edge: ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_init_structs.exit.thread143

if.then106.i.felix_init_structs.exit.thread_crit_edge: ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_init_structs.exit.thread

felix_init_structs.exit.thread143:                ; preds = %if.then106.i.felix_init_structs.exit.thread143_crit_edge, %for.end103.i.felix_init_structs.exit.thread143_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  %call1 = call i32 @ocelot_init(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %felix_init_structs.exit.thread143.out_mdiobus_free_crit_edge

felix_init_structs.exit.thread143.out_mdiobus_free_crit_edge: ; preds = %felix_init_structs.exit.thread143
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mdiobus_free

felix_init_structs.exit.thread:                   ; preds = %if.then106.i.felix_init_structs.exit.thread_crit_edge, %do.end69.i, %do.end55.i, %if.then29.i, %if.end.i.i207.i.felix_init_structs.exit.thread_crit_edge, %devm_kcalloc.exit.i.felix_init_structs.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i
  %retval.4.i.ph = phi i32 [ -12, %do.end69.i ], [ -12, %devm_kcalloc.exit.thread.i ], [ %call109.i, %if.then106.i.felix_init_structs.exit.thread_crit_edge ], [ -12, %if.end.i.i207.i.felix_init_structs.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.felix_init_structs.exit.thread_crit_edge ], [ %call50.i, %do.end55.i ], [ %retval.0.i220.i, %if.then29.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  br label %cleanup

felix_init_structs.exit:                          ; preds = %do.end88.i, %cleanup.i
  %retval.4.i.in = phi ptr [ %call42.i, %cleanup.i ], [ %call83.i, %do.end88.i ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #9
  %retval.4.i = ptrtoint ptr %retval.4.i.in to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  br label %cleanup

if.end4:                                          ; preds = %felix_init_structs.exit.thread143
  %ptp = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 35
  %138 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load = load i8, ptr %ptp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  %139 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %info.i, align 4
  %ptp_caps = getelementptr inbounds %struct.felix_info, ptr %140, i32 0, i32 16
  %141 = ptrtoint ptr %ptp_caps to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ptp_caps, align 4
  %call7 = call i32 @ocelot_init_timestamp(ptr noundef %1, ptr noundef %142) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end13_crit_edge, label %do.end

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.8) #13
  %145 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load11 = load i8, ptr %ptp, align 4
  %bf.clear = and i8 %bf.load11, 127
  store i8 %bf.clear, ptr %ptp, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then6.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %146 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp158.not = icmp eq i32 %147, 0
  br i1 %cmp158.not, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %148 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_unused_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_unused_port.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %151 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %152, %ds
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %153 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %port.0159)
  %cmp5.i.i = icmp eq i32 %154, %port.0159
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %155 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.dsa_is_unused_port.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge, %for.body.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_unused_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %156 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i = icmp eq i32 %157, 0
  br i1 %cmp.i, label %dsa_is_unused_port.exit.for.inc_crit_edge, label %if.end17

dsa_is_unused_port.exit.for.inc_crit_edge:        ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end17:                                         ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @ocelot_init_port(ptr noundef %1, i32 noundef %port.0159) #9
  %mul.i = shl i32 %port.0159, 8
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 8, i32 noundef 8, i32 noundef 16777272, i32 noundef %mul.i) #9
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 0, i32 noundef 15, i32 noundef 16777276, i32 noundef %mul.i) #9
  %add.1.i = or i32 %mul.i, 4
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 1, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.1.i) #9
  %add.2.i = or i32 %mul.i, 8
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 2, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.2.i) #9
  %add.3.i = or i32 %mul.i, 12
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.3.i) #9
  %add.4.i = or i32 %mul.i, 16
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 4, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.4.i) #9
  %add.5.i = or i32 %mul.i, 20
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 5, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.5.i) #9
  %add.6.i = or i32 %mul.i, 24
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 6, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.6.i) #9
  %add.7.i = or i32 %mul.i, 28
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 7, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.7.i) #9
  %add.8.i = or i32 %mul.i, 32
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.8.i) #9
  %add.9.i = or i32 %mul.i, 36
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 9, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.9.i) #9
  %add.10.i = or i32 %mul.i, 40
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 10, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.10.i) #9
  %add.11.i = or i32 %mul.i, 44
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 11, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.11.i) #9
  %add.12.i = or i32 %mul.i, 48
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 12, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.12.i) #9
  %add.13.i = or i32 %mul.i, 52
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 13, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.13.i) #9
  %add.14.i = or i32 %mul.i, 56
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 14, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.14.i) #9
  %add.15.i = or i32 %mul.i, 60
  call void @__ocelot_rmw_ix(ptr noundef %1, i32 noundef 15, i32 noundef 15, i32 noundef 16777276, i32 noundef %add.15.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %dsa_is_unused_port.exit.for.inc_crit_edge
  %inc = add nuw i32 %port.0159, 1
  %158 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %159
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  %call18 = call i32 @ocelot_devlink_sb_register(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond22.preheader, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.end
  %160 = ptrtoint ptr %num_phys_ports2.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %num_phys_ports2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp40162.not = icmp eq i8 %161, 0
  br i1 %cmp40162.not, label %for.cond39.preheader.for.end48_crit_edge, label %for.body42.lr.ph

for.cond39.preheader.for.end48_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %dst1.i.i121 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body42

for.cond22.preheader:                             ; preds = %for.end
  %162 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp24165.not = icmp eq i32 %163, 0
  br i1 %cmp24165.not, label %for.cond22.preheader.for.end32_crit_edge, label %for.body25.lr.ph

for.cond22.preheader.for.end32_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %dst1.i.i102 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %164 = ptrtoint ptr %dst1.i.i102 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dst1.i.i102, align 4
  %ports.i.i103 = getelementptr inbounds %struct.dsa_switch_tree, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %ports.i.i103 to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pn20.i.i104 = load ptr, ptr %ports.i.i103, align 4
  %cmp.not21.i.i105 = icmp eq ptr %.pn20.i.i104, %ports.i.i103
  br label %for.body25

for.body25:                                       ; preds = %for.inc30.for.body25_crit_edge, %for.body25.lr.ph
  %port.1166 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc31, %for.inc30.for.body25_crit_edge ]
  br i1 %cmp.not21.i.i105, label %for.body25.dsa_is_cpu_port.exit_crit_edge, label %for.body25.for.body.i.i109_crit_edge

for.body25.for.body.i.i109_crit_edge:             ; preds = %for.body25
  br label %for.body.i.i109

for.body25.dsa_is_cpu_port.exit_crit_edge:        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

for.body.i.i109:                                  ; preds = %for.inc.i.i115.for.body.i.i109_crit_edge, %for.body25.for.body.i.i109_crit_edge
  %.pn22.i.i106 = phi ptr [ %.pn.i.i113, %for.inc.i.i115.for.body.i.i109_crit_edge ], [ %.pn20.i.i104, %for.body25.for.body.i.i109_crit_edge ]
  %ds3.i.i107 = getelementptr i8, ptr %.pn22.i.i106, i32 -432
  %167 = ptrtoint ptr %ds3.i.i107 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ds3.i.i107, align 4
  %cmp4.i.i108 = icmp eq ptr %168, %ds
  br i1 %cmp4.i.i108, label %land.lhs.true.i.i112, label %for.body.i.i109.for.inc.i.i115_crit_edge

for.body.i.i109.for.inc.i.i115_crit_edge:         ; preds = %for.body.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i115

land.lhs.true.i.i112:                             ; preds = %for.body.i.i109
  %index.i.i110 = getelementptr i8, ptr %.pn22.i.i106, i32 -428
  %169 = ptrtoint ptr %index.i.i110 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %index.i.i110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %port.1166)
  %cmp5.i.i111 = icmp eq i32 %170, %port.1166
  br i1 %cmp5.i.i111, label %cleanup.split.loop.exit18.i.i117, label %land.lhs.true.i.i112.for.inc.i.i115_crit_edge

land.lhs.true.i.i112.for.inc.i.i115_crit_edge:    ; preds = %land.lhs.true.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i115

for.inc.i.i115:                                   ; preds = %land.lhs.true.i.i112.for.inc.i.i115_crit_edge, %for.body.i.i109.for.inc.i.i115_crit_edge
  %171 = ptrtoint ptr %.pn22.i.i106 to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pn.i.i113 = load ptr, ptr %.pn22.i.i106, align 4
  %cmp.not.i.i114 = icmp eq ptr %.pn.i.i113, %ports.i.i103
  br i1 %cmp.not.i.i114, label %for.inc.i.i115.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i115.for.body.i.i109_crit_edge

for.inc.i.i115.for.body.i.i109_crit_edge:         ; preds = %for.inc.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i109

for.inc.i.i115.dsa_is_cpu_port.exit_crit_edge:    ; preds = %for.inc.i.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i117:                 ; preds = %land.lhs.true.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i116 = getelementptr i8, ptr %.pn22.i.i106, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i117, %for.inc.i.i115.dsa_is_cpu_port.exit_crit_edge, %for.body25.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i118 = phi ptr [ %dp.0.le.i.i116, %cleanup.split.loop.exit18.i.i117 ], [ null, %for.body25.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i115.dsa_is_cpu_port.exit_crit_edge ]
  %type.i119 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i118, i32 0, i32 6
  %172 = ptrtoint ptr %type.i119 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %type.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %173)
  %cmp.i120 = icmp eq i32 %173, 1
  br i1 %cmp.i120, label %if.end28, label %for.inc30

if.end28:                                         ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tag_proto = getelementptr i8, ptr %1, i32 1600
  %174 = ptrtoint ptr %tag_proto to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tag_proto, align 4
  %call29 = call fastcc i32 @felix_set_tag_protocol(ptr noundef %ds, i32 noundef %port.1166, i32 noundef %175)
  br label %for.end32

for.inc30:                                        ; preds = %dsa_is_cpu_port.exit
  %inc31 = add nuw i32 %port.1166, 1
  %exitcond.not = icmp eq i32 %inc31, %163
  br i1 %exitcond.not, label %for.inc30.for.end32_crit_edge, label %for.inc30.for.body25_crit_edge

for.inc30.for.body25_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %if.end28, %for.cond22.preheader.for.end32_crit_edge
  %mtu_enforcement_ingress = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 3
  %176 = ptrtoint ptr %mtu_enforcement_ingress to i32
  call void @__asan_load2_noabort(i32 %176)
  %bf.load33 = load i16, ptr %mtu_enforcement_ingress, align 4
  %bf.set38 = or i16 %bf.load33, 1152
  store i16 %bf.set38, ptr %mtu_enforcement_ingress, align 4
  br label %cleanup

for.body42:                                       ; preds = %for.inc46.for.body42_crit_edge, %for.body42.lr.ph
  %port.2163 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc47, %for.inc46.for.body42_crit_edge ]
  %177 = ptrtoint ptr %dst1.i.i121 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dst1.i.i121, align 4
  %ports.i.i122 = getelementptr inbounds %struct.dsa_switch_tree, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %ports.i.i122 to i32
  call void @__asan_load4_noabort(i32 %179)
  %.pn20.i.i123 = load ptr, ptr %ports.i.i122, align 4
  %cmp.not21.i.i124 = icmp eq ptr %.pn20.i.i123, %ports.i.i122
  br i1 %cmp.not21.i.i124, label %for.body42.dsa_is_unused_port.exit140_crit_edge, label %for.body42.for.body.i.i128_crit_edge

for.body42.for.body.i.i128_crit_edge:             ; preds = %for.body42
  br label %for.body.i.i128

for.body42.dsa_is_unused_port.exit140_crit_edge:  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit140

for.body.i.i128:                                  ; preds = %for.inc.i.i134.for.body.i.i128_crit_edge, %for.body42.for.body.i.i128_crit_edge
  %.pn22.i.i125 = phi ptr [ %.pn.i.i132, %for.inc.i.i134.for.body.i.i128_crit_edge ], [ %.pn20.i.i123, %for.body42.for.body.i.i128_crit_edge ]
  %ds3.i.i126 = getelementptr i8, ptr %.pn22.i.i125, i32 -432
  %180 = ptrtoint ptr %ds3.i.i126 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ds3.i.i126, align 4
  %cmp4.i.i127 = icmp eq ptr %181, %ds
  br i1 %cmp4.i.i127, label %land.lhs.true.i.i131, label %for.body.i.i128.for.inc.i.i134_crit_edge

for.body.i.i128.for.inc.i.i134_crit_edge:         ; preds = %for.body.i.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i134

land.lhs.true.i.i131:                             ; preds = %for.body.i.i128
  %index.i.i129 = getelementptr i8, ptr %.pn22.i.i125, i32 -428
  %182 = ptrtoint ptr %index.i.i129 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %index.i.i129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %port.2163)
  %cmp5.i.i130 = icmp eq i32 %183, %port.2163
  br i1 %cmp5.i.i130, label %cleanup.split.loop.exit18.i.i136, label %land.lhs.true.i.i131.for.inc.i.i134_crit_edge

land.lhs.true.i.i131.for.inc.i.i134_crit_edge:    ; preds = %land.lhs.true.i.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i134

for.inc.i.i134:                                   ; preds = %land.lhs.true.i.i131.for.inc.i.i134_crit_edge, %for.body.i.i128.for.inc.i.i134_crit_edge
  %184 = ptrtoint ptr %.pn22.i.i125 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.pn.i.i132 = load ptr, ptr %.pn22.i.i125, align 4
  %cmp.not.i.i133 = icmp eq ptr %.pn.i.i132, %ports.i.i122
  br i1 %cmp.not.i.i133, label %for.inc.i.i134.dsa_is_unused_port.exit140_crit_edge, label %for.inc.i.i134.for.body.i.i128_crit_edge

for.inc.i.i134.for.body.i.i128_crit_edge:         ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i128

for.inc.i.i134.dsa_is_unused_port.exit140_crit_edge: ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit140

cleanup.split.loop.exit18.i.i136:                 ; preds = %land.lhs.true.i.i131
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i135 = getelementptr i8, ptr %.pn22.i.i125, i32 -448
  br label %dsa_is_unused_port.exit140

dsa_is_unused_port.exit140:                       ; preds = %cleanup.split.loop.exit18.i.i136, %for.inc.i.i134.dsa_is_unused_port.exit140_crit_edge, %for.body42.dsa_is_unused_port.exit140_crit_edge
  %retval.0.i.i137 = phi ptr [ %dp.0.le.i.i135, %cleanup.split.loop.exit18.i.i136 ], [ null, %for.body42.dsa_is_unused_port.exit140_crit_edge ], [ null, %for.inc.i.i134.dsa_is_unused_port.exit140_crit_edge ]
  %type.i138 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i137, i32 0, i32 6
  %185 = ptrtoint ptr %type.i138 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %type.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i139 = icmp eq i32 %186, 0
  br i1 %cmp.i139, label %dsa_is_unused_port.exit140.for.inc46_crit_edge, label %if.end45

dsa_is_unused_port.exit140.for.inc46_crit_edge:   ; preds = %dsa_is_unused_port.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

if.end45:                                         ; preds = %dsa_is_unused_port.exit140
  call void @__sanitizer_cov_trace_pc() #11
  call void @ocelot_deinit_port(ptr noundef %1, i32 noundef %port.2163) #9
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45, %dsa_is_unused_port.exit140.for.inc46_crit_edge
  %inc47 = add nuw nsw i32 %port.2163, 1
  %187 = ptrtoint ptr %num_phys_ports2.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %num_phys_ports2.i, align 4
  %conv = zext i8 %188 to i32
  %cmp40 = icmp ult i32 %inc47, %conv
  br i1 %cmp40, label %for.inc46.for.body42_crit_edge, label %for.inc46.for.end48_crit_edge

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.inc46.for.body42_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %for.cond39.preheader.for.end48_crit_edge
  %call49 = call i32 @ocelot_deinit_timestamp(ptr noundef %1) #9
  call void @ocelot_deinit(ptr noundef %1) #9
  br label %out_mdiobus_free

out_mdiobus_free:                                 ; preds = %for.end48, %felix_init_structs.exit.thread143.out_mdiobus_free_crit_edge
  %err.0 = phi i32 [ %call1, %felix_init_structs.exit.thread143.out_mdiobus_free_crit_edge ], [ %call18, %for.end48 ]
  %189 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %info.i, align 4
  %mdio_bus_free = getelementptr inbounds %struct.felix_info, ptr %190, i32 0, i32 19
  %191 = ptrtoint ptr %mdio_bus_free to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mdio_bus_free, align 4
  %tobool51.not = icmp eq ptr %192, null
  br i1 %tobool51.not, label %out_mdiobus_free.cleanup_crit_edge, label %if.then52

out_mdiobus_free.cleanup_crit_edge:               ; preds = %out_mdiobus_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then52:                                        ; preds = %out_mdiobus_free
  call void @__sanitizer_cov_trace_pc() #11
  call void %192(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %out_mdiobus_free.cleanup_crit_edge, %for.end32, %felix_init_structs.exit, %felix_init_structs.exit.thread
  %retval.0 = phi i32 [ 0, %for.end32 ], [ %retval.4.i, %felix_init_structs.exit ], [ %err.0, %if.then52 ], [ %err.0, %out_mdiobus_free.cleanup_crit_edge ], [ %retval.4.i.ph, %felix_init_structs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_teardown(ptr noundef %ds) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp57.not = icmp eq i32 %3, 0
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_cpu_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_cpu_port.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
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
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %port.058)
  %cmp5.i.i = icmp eq i32 %10, %port.058
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.dsa_is_cpu_port.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_cpu_port.exit

dsa_is_cpu_port.exit:                             ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge, %for.body.dsa_is_cpu_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_cpu_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_cpu_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.end, label %for.inc

if.end:                                           ; preds = %dsa_is_cpu_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tag_proto = getelementptr i8, ptr %1, i32 1600
  %14 = ptrtoint ptr %tag_proto to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tag_proto, align 4
  tail call fastcc void @felix_del_tag_protocol(ptr noundef %ds, i32 noundef %port.058, i32 noundef %15)
  br label %for.end

for.inc:                                          ; preds = %dsa_is_cpu_port.exit
  %inc = add nuw i32 %port.058, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end, %entry.for.end_crit_edge
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp260.not = icmp eq i8 %17, 0
  br i1 %cmp260.not, label %for.end.for.end10_crit_edge, label %for.body4.lr.ph

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.body4.lr.ph:                                  ; preds = %for.end
  %dst1.i.i35 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body4

for.body4:                                        ; preds = %for.inc8.for.body4_crit_edge, %for.body4.lr.ph
  %port.161 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc9, %for.inc8.for.body4_crit_edge ]
  %18 = ptrtoint ptr %dst1.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst1.i.i35, align 4
  %ports.i.i36 = getelementptr inbounds %struct.dsa_switch_tree, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ports.i.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn20.i.i37 = load ptr, ptr %ports.i.i36, align 4
  %cmp.not21.i.i38 = icmp eq ptr %.pn20.i.i37, %ports.i.i36
  br i1 %cmp.not21.i.i38, label %for.body4.dsa_is_unused_port.exit_crit_edge, label %for.body4.for.body.i.i42_crit_edge

for.body4.for.body.i.i42_crit_edge:               ; preds = %for.body4
  br label %for.body.i.i42

for.body4.dsa_is_unused_port.exit_crit_edge:      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit

for.body.i.i42:                                   ; preds = %for.inc.i.i48.for.body.i.i42_crit_edge, %for.body4.for.body.i.i42_crit_edge
  %.pn22.i.i39 = phi ptr [ %.pn.i.i46, %for.inc.i.i48.for.body.i.i42_crit_edge ], [ %.pn20.i.i37, %for.body4.for.body.i.i42_crit_edge ]
  %ds3.i.i40 = getelementptr i8, ptr %.pn22.i.i39, i32 -432
  %21 = ptrtoint ptr %ds3.i.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds3.i.i40, align 4
  %cmp4.i.i41 = icmp eq ptr %22, %ds
  br i1 %cmp4.i.i41, label %land.lhs.true.i.i45, label %for.body.i.i42.for.inc.i.i48_crit_edge

for.body.i.i42.for.inc.i.i48_crit_edge:           ; preds = %for.body.i.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i48

land.lhs.true.i.i45:                              ; preds = %for.body.i.i42
  %index.i.i43 = getelementptr i8, ptr %.pn22.i.i39, i32 -428
  %23 = ptrtoint ptr %index.i.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %port.161)
  %cmp5.i.i44 = icmp eq i32 %24, %port.161
  br i1 %cmp5.i.i44, label %cleanup.split.loop.exit18.i.i50, label %land.lhs.true.i.i45.for.inc.i.i48_crit_edge

land.lhs.true.i.i45.for.inc.i.i48_crit_edge:      ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i48

for.inc.i.i48:                                    ; preds = %land.lhs.true.i.i45.for.inc.i.i48_crit_edge, %for.body.i.i42.for.inc.i.i48_crit_edge
  %25 = ptrtoint ptr %.pn22.i.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i.i46 = load ptr, ptr %.pn22.i.i39, align 4
  %cmp.not.i.i47 = icmp eq ptr %.pn.i.i46, %ports.i.i36
  br i1 %cmp.not.i.i47, label %for.inc.i.i48.dsa_is_unused_port.exit_crit_edge, label %for.inc.i.i48.for.body.i.i42_crit_edge

for.inc.i.i48.for.body.i.i42_crit_edge:           ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i42

for.inc.i.i48.dsa_is_unused_port.exit_crit_edge:  ; preds = %for.inc.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit

cleanup.split.loop.exit18.i.i50:                  ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i49 = getelementptr i8, ptr %.pn22.i.i39, i32 -448
  br label %dsa_is_unused_port.exit

dsa_is_unused_port.exit:                          ; preds = %cleanup.split.loop.exit18.i.i50, %for.inc.i.i48.dsa_is_unused_port.exit_crit_edge, %for.body4.dsa_is_unused_port.exit_crit_edge
  %retval.0.i.i51 = phi ptr [ %dp.0.le.i.i49, %cleanup.split.loop.exit18.i.i50 ], [ null, %for.body4.dsa_is_unused_port.exit_crit_edge ], [ null, %for.inc.i.i48.dsa_is_unused_port.exit_crit_edge ]
  %type.i52 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i51, i32 0, i32 6
  %26 = ptrtoint ptr %type.i52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i53 = icmp eq i32 %27, 0
  br i1 %cmp.i53, label %dsa_is_unused_port.exit.for.inc8_crit_edge, label %if.end7

dsa_is_unused_port.exit.for.inc8_crit_edge:       ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc8

if.end7:                                          ; preds = %dsa_is_unused_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocelot_deinit_port(ptr noundef %1, i32 noundef %port.161) #9
  br label %for.inc8

for.inc8:                                         ; preds = %if.end7, %dsa_is_unused_port.exit.for.inc8_crit_edge
  %inc9 = add nuw nsw i32 %port.161, 1
  %28 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_phys_ports, align 4
  %conv = zext i8 %29 to i32
  %cmp2 = icmp ult i32 %inc9, %conv
  br i1 %cmp2, label %for.inc8.for.body4_crit_edge, label %for.inc8.for.end10_crit_edge

for.inc8.for.end10_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.inc8.for.body4_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end10:                                        ; preds = %for.inc8.for.end10_crit_edge, %for.end.for.end10_crit_edge
  tail call void @ocelot_devlink_sb_unregister(ptr noundef %1) #9
  %call11 = tail call i32 @ocelot_deinit_timestamp(ptr noundef %1) #9
  tail call void @ocelot_deinit(ptr noundef %1) #9
  %info = getelementptr i8, ptr %1, i32 -4
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 4
  %mdio_bus_free = getelementptr inbounds %struct.felix_info, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %mdio_bus_free to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio_bus_free, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %for.end10.if.end15_crit_edge, label %if.then12

for.end10.if.end15_crit_edge:                     ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %33(ptr noundef %1) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.end10.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_phylink_validate(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %info = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %phylink_validate = getelementptr inbounds %struct.felix_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %phylink_validate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink_validate, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %1, i32 noundef %port, ptr noundef %supported, ptr noundef %state) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_phylink_mac_config(ptr noundef readonly %ds, i32 noundef %port, i32 noundef %link_an_mode, ptr nocapture noundef readnone %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
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
  %5 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %6, %ds
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i = icmp eq i32 %8, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %9)
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
  %pcs = getelementptr i8, ptr %1, i32 1588
  %10 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcs, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %dsa_to_port.exit.if.end_crit_edge, label %land.lhs.true

dsa_to_port.exit.if.end_crit_edge:                ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %dsa_to_port.exit
  %arrayidx = getelementptr ptr, ptr %11, i32 %port
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %pl = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 16
  %14 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pl, align 4
  tail call void @phylink_set_pcs(ptr noundef %15, ptr noundef nonnull %13) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %dsa_to_port.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_phylink_mac_link_down(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %link_an_mode, i32 noundef %interface) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_phylink_mac_link_down(ptr noundef %1, i32 noundef %port, i32 noundef %link_an_mode, i32 noundef %interface, i32 noundef 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_phylink_mac_link_up(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %link_an_mode, i32 noundef %interface, ptr noundef %phydev, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_phylink_mac_link_up(ptr noundef %1, i32 noundef %port, ptr noundef %phydev, i32 noundef %link_an_mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex, i1 noundef zeroext %tx_pause, i1 noundef zeroext %rx_pause, i32 noundef 1) #9
  %info = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %port_sched_speed_set = getelementptr inbounds %struct.felix_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %port_sched_speed_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_sched_speed_set, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %1, i32 noundef %port, i32 noundef %speed) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_get_strings(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_get_strings(ptr noundef %1, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_get_ethtool_stats(ptr noundef %1, i32 noundef %port, ptr noundef %data) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_get_sset_count(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_get_sset_count(ptr noundef %1, i32 noundef %port, i32 noundef %sset) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_get_ts_info(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_get_ts_info(ptr noundef %1, i32 noundef %port, ptr noundef %info) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_set_ageing_time(ptr nocapture noundef readonly %ds, i32 noundef %ageing_time) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_set_ageing_time(ptr noundef %1, i32 noundef %ageing_time) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_bridge_join(ptr nocapture noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce, ptr nocapture noundef readnone %tx_fwd_offload) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  tail call void @ocelot_port_bridge_join(ptr noundef %2, i32 noundef %port, ptr noundef %0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_bridge_leave(ptr nocapture noundef readonly %ds, i32 noundef %port, [4 x i32] %bridge.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.coerce.fca.0.extract = extractvalue [4 x i32] %bridge.coerce, 0
  %0 = inttoptr i32 %bridge.coerce.fca.0.extract to ptr
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  tail call void @ocelot_port_bridge_leave(ptr noundef %2, i32 noundef %port, ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_bridge_stp_state_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_bridge_stp_state_set(ptr noundef %1, i32 noundef %port, i8 noundef zeroext %state) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_port_fast_age(ptr nocapture noundef readonly %ds, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_mact_flush(ptr noundef %1, i32 noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %4 = inttoptr i32 %call to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.65, i32 noundef %port, ptr noundef nonnull %4) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_pre_bridge_flags(ptr nocapture noundef readonly %ds, i32 noundef %port, [2 x i32] %val.coerce, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_port_pre_bridge_flags(ptr noundef %1, i32 noundef %port, [2 x i32] %val.coerce) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_bridge_flags(ptr nocapture noundef readonly %ds, i32 noundef %port, [2 x i32] %val.coerce, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_port_bridge_flags(ptr noundef %1, i32 noundef %port, [2 x i32] %val.coerce) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_vlan_filtering(ptr nocapture noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %enabled, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_port_vlan_filtering(ptr noundef %1, i32 noundef %port, i1 noundef zeroext %enabled, ptr noundef %extack) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_vlan_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags1 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 1
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags1, align 4
  %npi.i = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %npi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %port)
  %cmp.i = icmp eq i32 %5, %port
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %felix_vlan_prepare.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = zext i16 %3 to i32
  %.pre17 = and i32 %.pre, 2
  %.pre18 = and i32 %.pre, 4
  br label %if.end

felix_vlan_prepare.exit:                          ; preds = %entry
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %6 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid.i, align 2
  %conv.i = zext i16 %3 to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %call.i = tail call i32 @ocelot_vlan_prepare(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %7, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool4.i, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %felix_vlan_prepare.exit.if.end_crit_edge, label %felix_vlan_prepare.exit.cleanup_crit_edge

felix_vlan_prepare.exit.cleanup_crit_edge:        ; preds = %felix_vlan_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

felix_vlan_prepare.exit.if.end_crit_edge:         ; preds = %felix_vlan_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %felix_vlan_prepare.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %and4.pre-phi = phi i32 [ %.pre18, %entry.if.end_crit_edge ], [ %and3.i, %felix_vlan_prepare.exit.if.end_crit_edge ]
  %and.pre-phi = phi i32 [ %.pre17, %entry.if.end_crit_edge ], [ %and.i, %felix_vlan_prepare.exit.if.end_crit_edge ]
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %8 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.pre-phi)
  %tobool2 = icmp ne i32 %and.pre-phi, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.pre-phi)
  %tobool5 = icmp ne i32 %and4.pre-phi, 0
  %call6 = tail call i32 @ocelot_vlan_add(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %9, i1 noundef zeroext %tobool2, i1 noundef zeroext %tobool5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %felix_vlan_prepare.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call.i, %felix_vlan_prepare.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_vlan_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %vlan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %vid = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %call = tail call i32 @ocelot_vlan_del(ptr noundef %1, i32 noundef %port, i16 noundef zeroext %3) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_fdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_fdb_add(ptr noundef %1, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_fdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_fdb_del(ptr noundef %1, i32 noundef %port, ptr noundef %addr, i16 noundef zeroext %vid) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_fdb_dump(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %cb, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_fdb_dump(ptr noundef %1, i32 noundef %port, ptr noundef %cb, ptr noundef %data) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_mdb_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mdb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_port_mdb_add(ptr noundef %1, i32 noundef %port, ptr noundef %mdb) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_mdb_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mdb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_port_mdb_del(ptr noundef %1, i32 noundef %port, ptr noundef %mdb) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_cls_flower_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %cls, i1 noundef zeroext %ingress) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_cls_flower_replace(ptr noundef %1, i32 noundef %port, ptr noundef %cls, i1 noundef zeroext %ingress) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_cls_flower_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %cls, i1 noundef zeroext %ingress) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_cls_flower_destroy(ptr noundef %1, i32 noundef %port, ptr noundef %cls, i1 noundef zeroext %ingress) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_cls_flower_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %cls, i1 noundef zeroext %ingress) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_cls_flower_stats(ptr noundef %1, i32 noundef %port, ptr noundef %cls, i1 noundef zeroext %ingress) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_port_policer_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %policer) #1 align 64 {
entry:
  %pol = alloca %struct.ocelot_policer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pol) #9
  %2 = getelementptr inbounds %struct.ocelot_policer, ptr %pol, i32 0, i32 1
  %rate_bytes_per_sec = getelementptr inbounds %struct.dsa_mall_policer_tc_entry, ptr %policer, i32 0, i32 1
  %3 = ptrtoint ptr %rate_bytes_per_sec to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rate_bytes_per_sec, align 8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #14, !srcloc !151
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !152
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %sh.diff = lshr i64 %asmresult10.i.i.i, 6
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %conv = and i32 %tr.sh.diff, -8
  %7 = ptrtoint ptr %pol to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %pol, align 4
  %8 = ptrtoint ptr %policer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %policer, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %call2 = call i32 @ocelot_port_policer_add(ptr noundef %1, i32 noundef %port, ptr noundef nonnull %pol) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pol) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_port_policer_del(ptr nocapture noundef readonly %ds, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_port_policer_del(ptr noundef %1, i32 noundef %port) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_port_setup_tc(ptr noundef %ds, i32 noundef %port, i32 noundef %type, ptr noundef %type_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %info = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %port_setup_tc = getelementptr inbounds %struct.felix_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %port_setup_tc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_setup_tc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %5(ptr noundef %ds, i32 noundef %port, i32 noundef %type, ptr noundef %type_data) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_hwtstamp_get(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %ifr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_hwstamp_get(ptr noundef %1, i32 noundef %port, ptr noundef %ifr) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_hwtstamp_set(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %ifr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_hwstamp_set(ptr noundef %1, i32 noundef %port, ptr noundef %ifr) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_txtstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %skb) #1 align 64 {
entry:
  %clone = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clone) #9
  %2 = ptrtoint ptr %clone to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %clone, align 4
  %ptp = getelementptr inbounds %struct.ocelot, ptr %1, i32 0, i32 35
  %3 = ptrtoint ptr %ptp to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %ptp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ocelot_port_txtstamp_request(ptr noundef %1, i32 noundef %port, ptr noundef %skb, ptr noundef nonnull %clone) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @felix_txtstamp._rs, ptr noundef nonnull @__func__.felix_txtstamp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef %port) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clone, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %cb, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @felix_rxtstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %skb, i32 noundef %type) #1 align 64 {
entry:
  %skb.i = alloca ptr, align 4
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tstamp_lo1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %tstamp_lo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tstamp_lo1, align 8
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #9
  %4 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %tag_proto.i = getelementptr i8, ptr %3, i32 1600
  %5 = ptrtoint ptr %tag_proto.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tag_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 20
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %info.i = getelementptr i8, ptr %3, i32 -4
  %7 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info.i, align 4
  %quirk_no_xtr_irq.i = getelementptr inbounds %struct.felix_info, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %quirk_no_xtr_irq.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %quirk_no_xtr_irq.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp3.i = icmp eq i32 %type, 0
  %or.cond.i = or i1 %cmp3.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.if.end_crit_edge, label %while.cond.preheader.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.cond.preheader.i:                           ; preds = %if.end.i
  %call38.i = tail call i32 @__ocelot_read_ix(ptr noundef %3, i32 noundef 33554436, i32 noundef 0) #9
  %and39.i = and i32 %call38.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool6.not40.i = icmp eq i32 %and39.i, 0
  br i1 %tobool6.not40.i, label %while.cond.preheader.i.if.then20.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.then20.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #9
  %11 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb.i, align 4, !annotation !150
  %call7.i = call i32 @ocelot_xtr_poll_frame(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %skb.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %out.i

if.end10.i:                                       ; preds = %while.body.i
  %12 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -14
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i.i, align 4
  %add.i.i = add i32 %17, 14
  store i32 %add.i.i, ptr %len1.i.i, align 4
  %call12.i = call i32 @ptp_classify_raw(ptr noundef %13) #9
  %18 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb.i, align 4
  %len1.i31.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %len1.i31.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len1.i31.i, align 4
  %sub.i.i = add i32 %21, -14
  store i32 %sub.i.i, ptr %len1.i31.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %23)
  %cmp.i.i = icmp ult i32 %sub.i.i, %23
  br i1 %cmp.i.i, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !149

do.body4.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #9, !srcloc !154
  unreachable

__skb_pull.exit.i:                                ; preds = %if.end10.i
  %data.i32.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %24 = ptrtoint ptr %data.i32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i32.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %25, i32 14
  store ptr %add.ptr.i33.i, ptr %data.i32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp14.i = icmp eq i32 %call12.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_skb_reason(ptr noundef %19, i32 noundef 0) #9
  br label %cleanup.i

if.end16.i:                                       ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = call i32 @netif_rx(ptr noundef %19) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end16.i, %if.then15.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #9
  %call.i = call i32 @__ocelot_read_ix(ptr noundef %3, i32 noundef 33554436, i32 noundef 0) #9
  %and.i = and i32 %call.i, 1
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %cleanup.i.if.then_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.if.then_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

out.i:                                            ; preds = %while.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp slt i32 %call7.i, 0
  br i1 %phi.cmp.i, label %out.i.if.then20.i_crit_edge, label %out.i.if.then_crit_edge

out.i.if.then_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

out.i.if.then20.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

if.then20.i:                                      ; preds = %out.i.if.then20.i_crit_edge, %while.cond.preheader.i.if.then20.i_crit_edge
  call void @ocelot_drain_cpu_queue(ptr noundef %3, i32 noundef 0) #9
  br label %if.then

if.then:                                          ; preds = %if.then20.i, %out.i.if.then_crit_edge, %cleanup.i.if.then_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ptp_info = getelementptr inbounds %struct.ocelot, ptr %3, i32 0, i32 37
  %call2 = call i32 @ocelot_ptp_gettime64(ptr noundef %ptp_info, ptr noundef nonnull %ts) #9
  %26 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %27)
  %cmp.i = icmp sgt i64 %27, 9223372035
  br i1 %cmp.i, label %if.end.ktime_set.exit_crit_edge, label %if.end.i24, !prof !149

if.end.ktime_set.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ktime_set.exit

if.end.i24:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %28 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec, align 8
  %mul.i = mul i64 %27, 1000000000
  %conv.i = zext i32 %29 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %ktime_set.exit

ktime_set.exit:                                   ; preds = %if.end.i24, %if.end.ktime_set.exit_crit_edge
  %retval.0.i25 = phi i64 [ %add.i, %if.end.i24 ], [ 9223372036854775807, %if.end.ktime_set.exit_crit_edge ]
  %shr = lshr i64 %retval.0.i25, 32
  %conv = trunc i64 %shr to i32
  %and = and i64 %retval.0.i25, 4294967295
  %conv4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv4)
  %cmp = icmp ult i64 %and, %conv4
  %dec = sext i1 %cmp to i32
  %spec.select = add i32 %dec, %conv
  %conv8 = zext i32 %spec.select to i64
  %shl = shl nuw i64 %conv8, 32
  %or = or i64 %shl, %conv4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %30 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or, ptr %hwtstamps.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ktime_set.exit, %if.then
  %retval.0.i27 = phi i1 [ false, %ktime_set.exit ], [ true, %if.then ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #9
  ret i1 %retval.0.i27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_pool_get(ptr nocapture noundef readonly %ds, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_pool_get(ptr noundef %1, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_pool_set(ptr nocapture noundef readonly %ds, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_pool_set(ptr noundef %1, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr noundef %extack) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_port_pool_get(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_threshold) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_port_pool_get(ptr noundef %1, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_threshold) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_port_pool_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_port_pool_set(ptr noundef %1, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_tc_pool_bind_get(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_pool_index, ptr noundef %p_threshold) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_tc_pool_bind_get(ptr noundef %1, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_pool_index, ptr noundef %p_threshold) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_tc_pool_bind_set(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_tc_pool_bind_set(ptr noundef %1, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, i16 noundef zeroext %pool_index, i32 noundef %threshold, ptr noundef %extack) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_occ_snapshot(ptr nocapture noundef readonly %ds, i32 noundef %sb_index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_occ_snapshot(ptr noundef %1, i32 noundef %sb_index) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_occ_max_clear(ptr nocapture noundef readonly %ds, i32 noundef %sb_index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_occ_max_clear(ptr noundef %1, i32 noundef %sb_index) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_occ_port_pool_get(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_cur, ptr noundef %p_max) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_occ_port_pool_get(ptr noundef %1, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %p_cur, ptr noundef %p_max) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_sb_occ_tc_port_bind_get(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_cur, ptr noundef %p_max) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_sb_occ_tc_port_bind_get(ptr noundef %1, i32 noundef %port, i32 noundef %sb_index, i16 noundef zeroext %tc_index, i32 noundef %pool_type, ptr noundef %p_cur, ptr noundef %p_max) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_change_mtu(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %new_mtu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_port_set_maxlen(ptr noundef %1, i32 noundef %port, i32 noundef %new_mtu) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_get_max_mtu(ptr nocapture noundef readonly %ds, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_get_max_mtu(ptr noundef %1, i32 noundef %port) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_lag_change(ptr noundef readonly %ds, i32 noundef %port) #1 align 64 {
entry:
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
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %lag_tx_enabled = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %10 = ptrtoint ptr %lag_tx_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %lag_tx_enabled, align 1
  %11 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool = icmp ne i8 %11, 0
  tail call void @ocelot_port_lag_change(ptr noundef %9, i32 noundef %port, i1 noundef zeroext %tobool) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_lag_join(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %bond, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_port_lag_join(ptr noundef %1, i32 noundef %port, ptr noundef %bond, ptr noundef %info) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_lag_leave(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %bond) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @ocelot_port_lag_leave(ptr noundef %1, i32 noundef %port, ptr noundef %bond) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_mrp_add(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mrp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_mrp_add(ptr noundef %1, i32 noundef %port, ptr noundef %mrp) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_mrp_del(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mrp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_mrp_add(ptr noundef %1, i32 noundef %port, ptr noundef %mrp) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_mrp_add_ring_role(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mrp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_mrp_add_ring_role(ptr noundef %1, i32 noundef %port, ptr noundef %mrp) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_mrp_del_ring_role(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %mrp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ocelot_mrp_del_ring_role(ptr noundef %1, i32 noundef %port, ptr noundef %mrp) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_tag_8021q_vlan_add(ptr nocapture noundef readonly %ds, i32 noundef %port, i16 noundef zeroext %vid, i16 noundef zeroext %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call zeroext i1 @vid_is_dsa_8021q_rxvlan(i16 noundef zeroext %vid) #9
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = and i16 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool3.not = icmp eq i16 %2, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %vcap.i = getelementptr i8, ptr %1, i32 468
  %5 = ptrtoint ptr %vcap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vcap.i, align 4
  %keys.i = getelementptr inbounds %struct.vcap_props, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %keys.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %keys.i, align 4
  %length.i = getelementptr %struct.vcap_field, ptr %8, i32 1, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %if.end.i.dsa_to_port.exit.i.i_crit_edge, label %if.end.i.for.body.i.i.i_crit_edge

if.end.i.for.body.i.i.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i.i.i

if.end.i.dsa_to_port.exit.i.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %if.end.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %14 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %15, %4
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %16 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %port)
  %cmp5.i.i.i = icmp eq i32 %17, %port
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %18 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit.i.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_to_port.exit.i.i

dsa_to_port.exit.i.i:                             ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge, %if.end.i.dsa_to_port.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %if.end.i.dsa_to_port.exit.i.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_to_port.exit.i.i_crit_edge ]
  %cpu_dp1.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %cpu_dp1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpu_dp1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge, label %if.end.i.i

dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge: ; preds = %dsa_to_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_upstream_port.exit.i

if.end.i.i:                                       ; preds = %dsa_to_port.exit.i.i
  %ds2.i.i = getelementptr inbounds %struct.dsa_port, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ds2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds2.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.dsa_switch, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i, align 4
  %index3.i.i = getelementptr inbounds %struct.dsa_port, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index3.i.i, align 4
  %index.i10.i.i = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 2
  %27 = ptrtoint ptr %index.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp.i.i.i = icmp eq i32 %28, %24
  br i1 %cmp.i.i.i, label %if.end.i.i.dsa_upstream_port.exit.i_crit_edge, label %if.else.i.i.i

if.end.i.i.dsa_upstream_port.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_upstream_port.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  %rtable.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 10
  %29 = ptrtoint ptr %rtable.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn22.i.i.i.i = load ptr, ptr %rtable.i.i.i.i, align 4
  %cmp.not23.i.i.i.i = icmp eq ptr %.pn22.i.i.i.i, %rtable.i.i.i.i
  br i1 %cmp.not23.i.i.i.i, label %if.else.i.i.i.for.end.i.i.i.i_crit_edge, label %if.else.i.i.i.for.body.i.i.i.i_crit_edge

if.else.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  br label %for.body.i.i.i.i

if.else.i.i.i.for.end.i.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn24.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn22.i.i.i.i, %if.else.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dl.0.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i, i32 -8
  %30 = ptrtoint ptr %dl.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dl.0.i.i.i.i, align 4
  %ds3.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %33, %4
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %link_dp.i.i.i.i = getelementptr i8, ptr %.pn24.i.i.i.i, i32 -4
  %34 = ptrtoint ptr %link_dp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link_dp.i.i.i.i, align 4
  %ds5.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ds5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ds5.i.i.i.i, align 4
  %index.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %24)
  %cmp6.i.i.i.i = icmp eq i32 %39, %24
  br i1 %cmp6.i.i.i.i, label %if.then.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %index8.i.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %31, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %40 = ptrtoint ptr %.pn24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i.i.i.i = load ptr, ptr %.pn24.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %rtable.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.else.i.i.i.for.end.i.i.i.i_crit_edge
  %num_ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 18
  br label %dsa_routing_port.exit.i.i.i

dsa_routing_port.exit.i.i.i:                      ; preds = %for.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.in.i.i.i.i = phi ptr [ %index8.i.i.i.i, %if.then.i.i.i.i ], [ %num_ports.i.i.i.i, %for.end.i.i.i.i ]
  %41 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i.i.i.i = load i32, ptr %retval.0.in.i.i.i.i, align 4
  br label %dsa_upstream_port.exit.i

dsa_upstream_port.exit.i:                         ; preds = %dsa_routing_port.exit.i.i.i, %if.end.i.i.dsa_upstream_port.exit.i_crit_edge, %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %port, %dsa_to_port.exit.i.i.dsa_upstream_port.exit.i_crit_edge ], [ %retval.0.i.i.i.i, %dsa_routing_port.exit.i.i.i ], [ %26, %if.end.i.i.dsa_upstream_port.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 272) #15
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %dsa_upstream_port.exit.i.cleanup_crit_edge, label %if.end8.i

dsa_upstream_port.exit.i.cleanup_crit_edge:       ; preds = %dsa_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %dsa_upstream_port.exit.i
  %key_type.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 16
  %43 = ptrtoint ptr %key_type.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %key_type.i, align 8
  %prio.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %prio.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %prio.i, align 2
  %id.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 7
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %port, ptr %id.i, align 4
  %tc_offload.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %tc_offload.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %tc_offload.i, align 8
  %block_id.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %block_id.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %block_id.i, align 4
  %type.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %type.i, align 8
  %lookup.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %lookup.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %lookup.i, align 4
  %conv.i = trunc i32 %port to i8
  %ingress_port.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 11
  %50 = ptrtoint ptr %ingress_port.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i, ptr %ingress_port.i, align 4
  %sub10.i = sub i32 32, %10
  %shr.i = lshr i32 -1, %sub10.i
  %conv11.i = trunc i32 %shr.i to i8
  %mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %mask.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv11.i, ptr %mask.i, align 1
  %conv13.i = trunc i32 %retval.0.i.i to i8
  %egress_port.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 12
  %52 = ptrtoint ptr %egress_port.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv13.i, ptr %egress_port.i, align 2
  %mask22.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %53 = ptrtoint ptr %mask22.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv11.i, ptr %mask22.i, align 1
  %action.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8
  %54 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %action.i, align 4
  %tag_a_tpid_sel.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 2
  %55 = ptrtoint ptr %tag_a_tpid_sel.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %tag_a_tpid_sel.i, align 4
  %tag_a_vid_sel.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 3
  %56 = ptrtoint ptr %tag_a_vid_sel.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %tag_a_vid_sel.i, align 8
  %vid_a_val.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 5
  %57 = ptrtoint ptr %vid_a_val.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %vid, ptr %vid_a_val.i, align 8
  %call26.i = tail call i32 @ocelot_vcap_filter_add(ptr noundef %1, ptr noundef nonnull %call7.i.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.cleanup.sink.split_crit_edge

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call zeroext i1 @vid_is_dsa_8021q_txvlan(i16 noundef zeroext %vid) #9
  br i1 %call8, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %add.ptr12 = getelementptr i8, ptr %1, i32 -8
  %58 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr12, align 4
  %ports.i = getelementptr i8, ptr %1, i32 352
  %60 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %61, i32 %port
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %is_dsa_8021q_cpu.i = getelementptr inbounds %struct.ocelot_port, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %is_dsa_8021q_cpu.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_dsa_8021q_cpu.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i, label %if.end.i29, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i29:                                       ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 272) #15
  %tobool4.not.i = icmp eq ptr %call7.i.i.i28, null
  br i1 %tobool4.not.i, label %if.end.i29.cleanup_crit_edge, label %if.end6.i

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 272) #15
  %tobool8.not.i = icmp eq ptr %call7.i.i1.i, null
  br i1 %tobool8.not.i, label %if.end6.i.cleanup.sink.split_crit_edge, label %if.end10.i

if.end6.i.cleanup.sink.split_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end10.i:                                       ; preds = %if.end6.i
  %dst1.i.i.i30 = getelementptr inbounds %struct.dsa_switch, ptr %59, i32 0, i32 1
  %68 = ptrtoint ptr %dst1.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dst1.i.i.i30, align 4
  %ports.i.i.i31 = getelementptr inbounds %struct.dsa_switch_tree, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ports.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn20.i.i.i32 = load ptr, ptr %ports.i.i.i31, align 4
  %cmp.not21.i.i.i33 = icmp eq ptr %.pn20.i.i.i32, %ports.i.i.i31
  br i1 %cmp.not21.i.i.i33, label %if.end10.i.dsa_to_port.exit.i.i49_crit_edge, label %if.end10.i.for.body.i.i.i37_crit_edge

if.end10.i.for.body.i.i.i37_crit_edge:            ; preds = %if.end10.i
  br label %for.body.i.i.i37

if.end10.i.dsa_to_port.exit.i.i49_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit.i.i49

for.body.i.i.i37:                                 ; preds = %for.inc.i.i.i43.for.body.i.i.i37_crit_edge, %if.end10.i.for.body.i.i.i37_crit_edge
  %.pn22.i.i.i34 = phi ptr [ %.pn.i.i.i41, %for.inc.i.i.i43.for.body.i.i.i37_crit_edge ], [ %.pn20.i.i.i32, %if.end10.i.for.body.i.i.i37_crit_edge ]
  %ds3.i.i.i35 = getelementptr i8, ptr %.pn22.i.i.i34, i32 -432
  %71 = ptrtoint ptr %ds3.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ds3.i.i.i35, align 4
  %cmp4.i.i.i36 = icmp eq ptr %72, %59
  br i1 %cmp4.i.i.i36, label %land.lhs.true.i.i.i40, label %for.body.i.i.i37.for.inc.i.i.i43_crit_edge

for.body.i.i.i37.for.inc.i.i.i43_crit_edge:       ; preds = %for.body.i.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i43

land.lhs.true.i.i.i40:                            ; preds = %for.body.i.i.i37
  %index.i.i.i38 = getelementptr i8, ptr %.pn22.i.i.i34, i32 -428
  %73 = ptrtoint ptr %index.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %index.i.i.i38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %port)
  %cmp5.i.i.i39 = icmp eq i32 %74, %port
  br i1 %cmp5.i.i.i39, label %cleanup.split.loop.exit18.i.i.i45, label %land.lhs.true.i.i.i40.for.inc.i.i.i43_crit_edge

land.lhs.true.i.i.i40.for.inc.i.i.i43_crit_edge:  ; preds = %land.lhs.true.i.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i43

for.inc.i.i.i43:                                  ; preds = %land.lhs.true.i.i.i40.for.inc.i.i.i43_crit_edge, %for.body.i.i.i37.for.inc.i.i.i43_crit_edge
  %75 = ptrtoint ptr %.pn22.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn.i.i.i41 = load ptr, ptr %.pn22.i.i.i34, align 4
  %cmp.not.i.i.i42 = icmp eq ptr %.pn.i.i.i41, %ports.i.i.i31
  br i1 %cmp.not.i.i.i42, label %for.inc.i.i.i43.dsa_to_port.exit.i.i49_crit_edge, label %for.inc.i.i.i43.for.body.i.i.i37_crit_edge

for.inc.i.i.i43.for.body.i.i.i37_crit_edge:       ; preds = %for.inc.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i37

for.inc.i.i.i43.dsa_to_port.exit.i.i49_crit_edge: ; preds = %for.inc.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit.i.i49

cleanup.split.loop.exit18.i.i.i45:                ; preds = %land.lhs.true.i.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i.i44 = getelementptr i8, ptr %.pn22.i.i.i34, i32 -448
  br label %dsa_to_port.exit.i.i49

dsa_to_port.exit.i.i49:                           ; preds = %cleanup.split.loop.exit18.i.i.i45, %for.inc.i.i.i43.dsa_to_port.exit.i.i49_crit_edge, %if.end10.i.dsa_to_port.exit.i.i49_crit_edge
  %retval.0.i.i.i46 = phi ptr [ %dp.0.le.i.i.i44, %cleanup.split.loop.exit18.i.i.i45 ], [ null, %if.end10.i.dsa_to_port.exit.i.i49_crit_edge ], [ null, %for.inc.i.i.i43.dsa_to_port.exit.i.i49_crit_edge ]
  %cpu_dp1.i.i47 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i46, i32 0, i32 8
  %76 = ptrtoint ptr %cpu_dp1.i.i47 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cpu_dp1.i.i47, align 4
  %tobool.not.i.i48 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i48, label %dsa_to_port.exit.i.i49.dsa_upstream_port.exit.i91_crit_edge, label %if.end.i.i55

dsa_to_port.exit.i.i49.dsa_upstream_port.exit.i91_crit_edge: ; preds = %dsa_to_port.exit.i.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_upstream_port.exit.i91

if.end.i.i55:                                     ; preds = %dsa_to_port.exit.i.i49
  %ds2.i.i50 = getelementptr inbounds %struct.dsa_port, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %ds2.i.i50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ds2.i.i50, align 4
  %index.i.i51 = getelementptr inbounds %struct.dsa_switch, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %index.i.i51 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index.i.i51, align 4
  %index3.i.i52 = getelementptr inbounds %struct.dsa_port, ptr %77, i32 0, i32 5
  %82 = ptrtoint ptr %index3.i.i52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %index3.i.i52, align 4
  %index.i10.i.i53 = getelementptr inbounds %struct.dsa_switch, ptr %59, i32 0, i32 2
  %84 = ptrtoint ptr %index.i10.i.i53 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index.i10.i.i53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %81)
  %cmp.i.i.i54 = icmp eq i32 %85, %81
  br i1 %cmp.i.i.i54, label %if.end.i.i55.dsa_upstream_port.exit.i91_crit_edge, label %if.else.i.i.i59

if.end.i.i55.dsa_upstream_port.exit.i91_crit_edge: ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_upstream_port.exit.i91

if.else.i.i.i59:                                  ; preds = %if.end.i.i55
  %rtable.i.i.i.i56 = getelementptr inbounds %struct.dsa_switch_tree, ptr %69, i32 0, i32 10
  %86 = ptrtoint ptr %rtable.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn22.i.i.i.i57 = load ptr, ptr %rtable.i.i.i.i56, align 4
  %cmp.not23.i.i.i.i58 = icmp eq ptr %.pn22.i.i.i.i57, %rtable.i.i.i.i56
  br i1 %cmp.not23.i.i.i.i58, label %if.else.i.i.i59.for.end.i.i.i.i76_crit_edge, label %if.else.i.i.i59.for.body.i.i.i.i64_crit_edge

if.else.i.i.i59.for.body.i.i.i.i64_crit_edge:     ; preds = %if.else.i.i.i59
  br label %for.body.i.i.i.i64

if.else.i.i.i59.for.end.i.i.i.i76_crit_edge:      ; preds = %if.else.i.i.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i76

for.body.i.i.i.i64:                               ; preds = %for.inc.i.i.i.i74.for.body.i.i.i.i64_crit_edge, %if.else.i.i.i59.for.body.i.i.i.i64_crit_edge
  %.pn24.i.i.i.i60 = phi ptr [ %.pn.i.i.i.i72, %for.inc.i.i.i.i74.for.body.i.i.i.i64_crit_edge ], [ %.pn22.i.i.i.i57, %if.else.i.i.i59.for.body.i.i.i.i64_crit_edge ]
  %dl.0.i.i.i.i61 = getelementptr i8, ptr %.pn24.i.i.i.i60, i32 -8
  %87 = ptrtoint ptr %dl.0.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dl.0.i.i.i.i61, align 4
  %ds3.i.i.i.i62 = getelementptr inbounds %struct.dsa_port, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %ds3.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ds3.i.i.i.i62, align 4
  %cmp4.i.i.i.i63 = icmp eq ptr %90, %59
  br i1 %cmp4.i.i.i.i63, label %land.lhs.true.i.i.i.i69, label %for.body.i.i.i.i64.for.inc.i.i.i.i74_crit_edge

for.body.i.i.i.i64.for.inc.i.i.i.i74_crit_edge:   ; preds = %for.body.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i74

land.lhs.true.i.i.i.i69:                          ; preds = %for.body.i.i.i.i64
  %link_dp.i.i.i.i65 = getelementptr i8, ptr %.pn24.i.i.i.i60, i32 -4
  %91 = ptrtoint ptr %link_dp.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %link_dp.i.i.i.i65, align 4
  %ds5.i.i.i.i66 = getelementptr inbounds %struct.dsa_port, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %ds5.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ds5.i.i.i.i66, align 4
  %index.i.i.i.i67 = getelementptr inbounds %struct.dsa_switch, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %index.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %index.i.i.i.i67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %81)
  %cmp6.i.i.i.i68 = icmp eq i32 %96, %81
  br i1 %cmp6.i.i.i.i68, label %if.then.i.i.i.i71, label %land.lhs.true.i.i.i.i69.for.inc.i.i.i.i74_crit_edge

land.lhs.true.i.i.i.i69.for.inc.i.i.i.i74_crit_edge: ; preds = %land.lhs.true.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i74

if.then.i.i.i.i71:                                ; preds = %land.lhs.true.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  %index8.i.i.i.i70 = getelementptr inbounds %struct.dsa_port, ptr %88, i32 0, i32 5
  br label %dsa_routing_port.exit.i.i.i79

for.inc.i.i.i.i74:                                ; preds = %land.lhs.true.i.i.i.i69.for.inc.i.i.i.i74_crit_edge, %for.body.i.i.i.i64.for.inc.i.i.i.i74_crit_edge
  %97 = ptrtoint ptr %.pn24.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn.i.i.i.i72 = load ptr, ptr %.pn24.i.i.i.i60, align 4
  %cmp.not.i.i.i.i73 = icmp eq ptr %.pn.i.i.i.i72, %rtable.i.i.i.i56
  br i1 %cmp.not.i.i.i.i73, label %for.inc.i.i.i.i74.for.end.i.i.i.i76_crit_edge, label %for.inc.i.i.i.i74.for.body.i.i.i.i64_crit_edge

for.inc.i.i.i.i74.for.body.i.i.i.i64_crit_edge:   ; preds = %for.inc.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i64

for.inc.i.i.i.i74.for.end.i.i.i.i76_crit_edge:    ; preds = %for.inc.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i76

for.end.i.i.i.i76:                                ; preds = %for.inc.i.i.i.i74.for.end.i.i.i.i76_crit_edge, %if.else.i.i.i59.for.end.i.i.i.i76_crit_edge
  %num_ports.i.i.i.i75 = getelementptr inbounds %struct.dsa_switch, ptr %59, i32 0, i32 18
  br label %dsa_routing_port.exit.i.i.i79

dsa_routing_port.exit.i.i.i79:                    ; preds = %for.end.i.i.i.i76, %if.then.i.i.i.i71
  %retval.0.in.i.i.i.i77 = phi ptr [ %index8.i.i.i.i70, %if.then.i.i.i.i71 ], [ %num_ports.i.i.i.i75, %for.end.i.i.i.i76 ]
  %98 = ptrtoint ptr %retval.0.in.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %98)
  %retval.0.i.i.i.i78 = load i32, ptr %retval.0.in.i.i.i.i77, align 4
  br label %dsa_upstream_port.exit.i91

dsa_upstream_port.exit.i91:                       ; preds = %dsa_routing_port.exit.i.i.i79, %if.end.i.i55.dsa_upstream_port.exit.i91_crit_edge, %dsa_to_port.exit.i.i49.dsa_upstream_port.exit.i91_crit_edge
  %retval.0.i.i80 = phi i32 [ %port, %dsa_to_port.exit.i.i49.dsa_upstream_port.exit.i91_crit_edge ], [ %retval.0.i.i.i.i78, %dsa_routing_port.exit.i.i.i79 ], [ %83, %if.end.i.i55.dsa_upstream_port.exit.i91_crit_edge ]
  %key_type.i81 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 16
  %99 = ptrtoint ptr %key_type.i81 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %key_type.i81, align 8
  %shl.i = shl nuw i32 1, %retval.0.i.i80
  %ingress_port_mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 10
  %100 = ptrtoint ptr %ingress_port_mask.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %shl.i, ptr %ingress_port_mask.i, align 8
  %vlan.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 15
  %101 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %vid, ptr %vlan.i, align 8
  %mask.i82 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 15, i32 0, i32 1
  %102 = ptrtoint ptr %mask.i82 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 4095, ptr %mask.i82, align 2
  %prio.i83 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 6
  %103 = ptrtoint ptr %prio.i83 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %prio.i83, align 2
  %id.i84 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 7
  %104 = ptrtoint ptr %id.i84 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %port, ptr %id.i84, align 4
  %tc_offload.i85 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 7, i32 1
  %105 = ptrtoint ptr %tc_offload.i85 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %tc_offload.i85, align 8
  %block_id.i86 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 2
  %106 = ptrtoint ptr %block_id.i86 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %block_id.i86, align 4
  %type.i87 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 1
  %107 = ptrtoint ptr %type.i87 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2, ptr %type.i87, align 8
  %lookup.i88 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 4
  %108 = ptrtoint ptr %lookup.i88 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %lookup.i88, align 4
  %action.i89 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 8
  %vlan_pop_cnt_ena.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 8, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %vlan_pop_cnt_ena.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %vlan_pop_cnt_ena.i, align 8
  %vlan_pop_cnt.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i28, i32 0, i32 8, i32 0, i32 0, i32 2
  %110 = ptrtoint ptr %vlan_pop_cnt.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %vlan_pop_cnt.i, align 4
  %pag_override_mask.i = getelementptr inbounds %struct.anon.175, ptr %action.i89, i32 0, i32 9
  %111 = ptrtoint ptr %pag_override_mask.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %pag_override_mask.i, align 1
  %conv.i90 = trunc i32 %port to i8
  %pag_val.i = getelementptr inbounds %struct.anon.175, ptr %action.i89, i32 0, i32 10
  %112 = ptrtoint ptr %pag_val.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv.i90, ptr %pag_val.i, align 2
  %call19.i = tail call i32 @ocelot_vcap_filter_add(ptr noundef %1, ptr noundef nonnull %call7.i.i.i28, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.then21.i

if.then21.i:                                      ; preds = %dsa_upstream_port.exit.i91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i28) #9
  br label %cleanup.sink.split

if.end22.i:                                       ; preds = %dsa_upstream_port.exit.i91
  %key_type23.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 16
  %113 = ptrtoint ptr %key_type23.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %key_type23.i, align 8
  %ingress_port_mask25.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 10
  %114 = ptrtoint ptr %ingress_port_mask25.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shl.i, ptr %ingress_port_mask25.i, align 8
  %pag.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 5
  %115 = ptrtoint ptr %pag.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i90, ptr %pag.i, align 8
  %prio27.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 6
  %116 = ptrtoint ptr %prio27.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %prio27.i, align 2
  %id28.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 7
  %117 = ptrtoint ptr %id28.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %port, ptr %id28.i, align 4
  %tc_offload31.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 7, i32 1
  %118 = ptrtoint ptr %tc_offload31.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %tc_offload31.i, align 8
  %block_id32.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 2
  %119 = ptrtoint ptr %block_id32.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2, ptr %block_id32.i, align 4
  %type33.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 1
  %120 = ptrtoint ptr %type33.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %type33.i, align 8
  %lookup34.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 4
  %121 = ptrtoint ptr %lookup34.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %lookup34.i, align 4
  %mask_mode.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %122 = ptrtoint ptr %mask_mode.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 3, ptr %mask_mode.i, align 8
  %shl36.i = shl nuw i32 1, %port
  %port_mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i1.i, i32 0, i32 8, i32 0, i32 0, i32 2
  %123 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %shl36.i, ptr %port_mask.i, align 4
  %call38.i = tail call i32 @ocelot_vcap_filter_add(ptr noundef %1, ptr noundef nonnull %call7.i.i1.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end22.i.cleanup_crit_edge, label %if.then40.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i = tail call i32 @ocelot_vcap_filter_del(ptr noundef %1, ptr noundef nonnull %call7.i.i.i28) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then40.i, %if.then21.i, %if.end6.i.cleanup.sink.split_crit_edge, %if.end8.i.cleanup.sink.split_crit_edge
  %call7.i.i1.sink.i.sink = phi ptr [ %call7.i.i.i, %if.end8.i.cleanup.sink.split_crit_edge ], [ %call7.i.i1.i, %if.then40.i ], [ %call7.i.i1.i, %if.then21.i ], [ %call7.i.i.i28, %if.end6.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call26.i, %if.end8.i.cleanup.sink.split_crit_edge ], [ %call38.i, %if.then40.i ], [ %call19.i, %if.then21.i ], [ -12, %if.end6.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i1.sink.i.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22.i.cleanup_crit_edge, %if.end.i29.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %dsa_upstream_port.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %dsa_upstream_port.exit.i.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ -12, %if.end.i29.cleanup_crit_edge ], [ 0, %if.end22.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @felix_tag_8021q_vlan_del(ptr nocapture noundef readonly %ds, i32 noundef %port, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call zeroext i1 @vid_is_dsa_8021q_rxvlan(i16 noundef zeroext %vid) #9
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %block.i = getelementptr i8, ptr %1, i32 416
  %call.i = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %block.i, i32 noundef %port, i1 noundef zeroext false) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @vid_is_dsa_8021q_txvlan(i16 noundef zeroext %vid) #9
  br i1 %call2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %ports.i = getelementptr i8, ptr %1, i32 352
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %port
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %is_dsa_8021q_cpu.i = getelementptr inbounds %struct.ocelot_port, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %is_dsa_8021q_cpu.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_dsa_8021q_cpu.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i15 = icmp eq i8 %7, 0
  br i1 %tobool.not.i15, label %if.end.i17, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i17:                                       ; preds = %if.then3
  %arrayidx2.i = getelementptr i8, ptr %1, i32 428
  %arrayidx4.i = getelementptr i8, ptr %1, i32 440
  %call.i16 = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx2.i, i32 noundef %port, i1 noundef zeroext false) #9
  %tobool5.not.i = icmp eq ptr %call.i16, null
  br i1 %tobool5.not.i, label %if.end.i17.cleanup_crit_edge, label %if.end7.i

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i17
  %call8.i = tail call i32 @ocelot_vcap_filter_del(ptr noundef %1, ptr noundef nonnull %call.i16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx4.i, i32 noundef %port, i1 noundef zeroext false) #9
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end11.i.cleanup.sink.split_crit_edge

if.end11.i.cleanup.sink.split_crit_edge:          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end11.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call12.i.sink = phi ptr [ %call.i, %if.then.cleanup.sink.split_crit_edge ], [ %call12.i, %if.end11.i.cleanup.sink.split_crit_edge ]
  %call16.i = tail call i32 @ocelot_vcap_filter_del(ptr noundef %1, ptr noundef nonnull %call12.i.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i17.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end.i17.cleanup_crit_edge ], [ %call8.i, %if.end7.i.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ], [ %call16.i, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @felix_port_to_netdev(ptr nocapture noundef readonly %ocelot, i32 noundef %port) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ocelot, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %dsa_is_user_port.exit.thread, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %entry.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %5 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %6, %1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
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
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %dsa_is_user_port.exit.for.body.i_crit_edge, label %dsa_is_user_port.exit.cleanup_crit_edge

dsa_is_user_port.exit.cleanup_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dsa_is_user_port.exit.for.body.i_crit_edge:       ; preds = %dsa_is_user_port.exit
  br label %for.body.i

dsa_is_user_port.exit.thread:                     ; preds = %entry
  call void @__asan_load4_noabort(i32 24)
  %12 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i8 = icmp eq i32 %12, 3
  br i1 %cmp.i8, label %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge, label %dsa_is_user_port.exit.thread.cleanup_crit_edge

dsa_is_user_port.exit.thread.cleanup_crit_edge:   ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge: ; preds = %dsa_is_user_port.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dsa_is_user_port.exit.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i.i, %dsa_is_user_port.exit.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %13 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %14, %1
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %15 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %port)
  %cmp5.i = icmp eq i32 %16, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i.i
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

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %dsa_is_user_port.exit.thread.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %retval.0.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dsa_to_port.exit, %dsa_is_user_port.exit.thread.cleanup_crit_edge, %dsa_is_user_port.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %dsa_to_port.exit ], [ null, %dsa_is_user_port.exit.cleanup_crit_edge ], [ null, %dsa_is_user_port.exit.thread.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @felix_netdev_to_port(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dsa_port_from_netdev(ptr noundef %dev) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.dsa_port, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_port_from_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @felix_del_tag_protocol(ptr noundef %ds, i32 noundef %cpu, i32 noundef %proto) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %proto, label %entry.sw.epilog_crit_edge [
    i32 21, label %entry.sw.bb_crit_edge
    i32 15, label %entry.sw.bb_crit_edge15
    i32 20, label %sw.bb1
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %num_phys_ports.i.i = getelementptr inbounds %struct.ocelot, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %num_phys_ports.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_phys_ports.i.i, align 4
  %conv.i.i = zext i8 %4 to i32
  %npi.i.i = getelementptr inbounds %struct.ocelot, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %npi.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %npi.i.i, align 4
  %add.i.i = shl nuw nsw i32 %conv.i.i, 8
  %shl.i.i = add nuw nsw i32 %add.i.i, 512
  %and.i.i = and i32 %shl.i.i, 7936
  tail call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %and.i.i, i32 noundef 50331656, i32 noundef 0) #9
  %arrayidx.i.i = getelementptr %struct.ocelot, ptr %2, i32 0, i32 5, i32 49
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %7, i32 noundef %cpu, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx2.i.i = getelementptr %struct.ocelot, ptr %2, i32 0, i32 5, i32 48
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i.i, align 4
  %call.i14.i.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %9, i32 noundef %cpu, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx5.i.i = getelementptr %struct.ocelot, ptr %2, i32 0, i32 5, i32 59
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.i.i, align 4
  %call.i15.i.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %11, i32 noundef %cpu, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %priv.i4 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %12 = ptrtoint ptr %priv.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i4, align 4
  %arrayidx.i.i5 = getelementptr i8, ptr %13, i32 428
  %arrayidx3.i.i = getelementptr i8, ptr %13, i32 440
  %num_phys_ports.i.i6 = getelementptr i8, ptr %13, i32 376
  %14 = ptrtoint ptr %num_phys_ports.i.i6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_phys_ports.i.i6, align 4
  %conv.i.i7 = zext i8 %15 to i32
  %call.i.i = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx.i.i5, i32 noundef %conv.i.i7, i1 noundef zeroext false) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb1.do.end.i_crit_edge, label %if.end.i.i

sw.bb1.do.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.i:                                       ; preds = %sw.bb1
  %call4.i.i = tail call i32 @ocelot_vcap_filter_del(ptr noundef %13, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %num_phys_ports.i.i6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_phys_ports.i.i6, align 4
  %conv9.i.i = zext i8 %17 to i32
  %call10.i.i = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx3.i.i, i32 noundef %conv9.i.i, i1 noundef zeroext false) #9
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.i, label %if.end7.i.i.do.end.i_crit_edge, label %felix_teardown_mmio_filtering.exit.i

if.end7.i.i.do.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

felix_teardown_mmio_filtering.exit.i:             ; preds = %if.end7.i.i
  %call14.i.i = tail call i32 @ocelot_vcap_filter_del(ptr noundef %13, ptr noundef nonnull %call10.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool.not.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool.not.i, label %felix_teardown_mmio_filtering.exit.i.if.end.i_crit_edge, label %felix_teardown_mmio_filtering.exit.i.do.end.i_crit_edge

felix_teardown_mmio_filtering.exit.i.do.end.i_crit_edge: ; preds = %felix_teardown_mmio_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

felix_teardown_mmio_filtering.exit.i.if.end.i_crit_edge: ; preds = %felix_teardown_mmio_filtering.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %felix_teardown_mmio_filtering.exit.i.do.end.i_crit_edge, %if.end7.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge, %sw.bb1.do.end.i_crit_edge
  %retval.0.i19.i = phi i32 [ %call14.i.i, %felix_teardown_mmio_filtering.exit.i.do.end.i_crit_edge ], [ -2, %if.end7.i.i.do.end.i_crit_edge ], [ %call4.i.i, %if.end.i.i.do.end.i_crit_edge ], [ -2, %sw.bb1.do.end.i_crit_edge ]
  %18 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %retval.0.i19.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %felix_teardown_mmio_filtering.exit.i.if.end.i_crit_edge
  tail call void @dsa_tag_8021q_unregister(ptr noundef %ds) #9
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %20 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp21.not.i = icmp eq i32 %21, 0
  br i1 %cmp21.not.i, label %if.end.i.felix_teardown_tag_8021q.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.felix_teardown_tag_8021q.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_teardown_tag_8021q.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_unused_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_unused_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %25 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %26, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %27 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %port.022.i)
  %cmp5.i.i.i = icmp eq i32 %28, %port.022.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %29 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i

dsa_is_unused_port.exit.i:                        ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, %for.body.i.dsa_is_unused_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_unused_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %dsa_is_unused_port.exit.i.for.inc.i_crit_edge, label %if.end3.i

dsa_is_unused_port.exit.i.for.inc.i_crit_edge:    ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end3.i:                                        ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %port.022.i, 8
  tail call void @__ocelot_write_ix(ptr noundef %13, i32 noundef 65535, i32 noundef 16777278, i32 noundef %mul.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %dsa_is_unused_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %port.022.i, 1
  %32 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.felix_teardown_tag_8021q.exit_crit_edge

for.inc.i.felix_teardown_tag_8021q.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %felix_teardown_tag_8021q.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

felix_teardown_tag_8021q.exit:                    ; preds = %for.inc.i.felix_teardown_tag_8021q.exit_crit_edge, %if.end.i.felix_teardown_tag_8021q.exit_crit_edge
  %fwd_domain_lock.i.i = getelementptr inbounds %struct.ocelot, ptr %13, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %fwd_domain_lock.i.i, i32 noundef 0) #9
  %ports.i.i = getelementptr inbounds %struct.ocelot, ptr %13, i32 0, i32 13
  %34 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i14.i = getelementptr ptr, ptr %35, i32 %cpu
  %36 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i14.i, align 4
  %is_dsa_8021q_cpu.i.i = getelementptr inbounds %struct.ocelot_port, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %is_dsa_8021q_cpu.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %is_dsa_8021q_cpu.i.i, align 4
  %39 = ptrtoint ptr %num_phys_ports.i.i6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_phys_ports.i.i6, align 4
  %conv.i16.i = zext i8 %40 to i32
  %shl.i.i8 = shl nuw i32 1, %conv.i16.i
  tail call void @__ocelot_write_ix(ptr noundef %13, i32 noundef %shl.i.i8, i32 noundef 16777236, i32 noundef 232) #9
  tail call void @ocelot_apply_bridge_fwd_mask(ptr noundef %13, i1 noundef zeroext true) #9
  tail call void @mutex_unlock(ptr noundef %fwd_domain_lock.i.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %felix_teardown_tag_8021q.exit, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @felix_set_tag_protocol(ptr noundef %ds, i32 noundef %cpu, i32 noundef %proto) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %proto, label %entry.sw.epilog_crit_edge [
    i32 21, label %entry.sw.bb_crit_edge
    i32 15, label %entry.sw.bb_crit_edge31
    i32 20, label %sw.bb1
  ]

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge31
  %priv.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %npi.i.i = getelementptr inbounds %struct.ocelot, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %npi.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cpu, ptr %npi.i.i, align 4
  %shl.i.i = shl i32 %cpu, 8
  %and.i.i = and i32 %shl.i.i, 7936
  %or.i.i = or i32 %and.i.i, 255
  tail call void @__ocelot_write_ix(ptr noundef %2, i32 noundef %or.i.i, i32 noundef 50331656, i32 noundef 0) #9
  %arrayidx.i.i = getelementptr %struct.ocelot, ptr %2, i32 0, i32 5, i32 49
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %npi_xtr_prefix.i.i = getelementptr inbounds %struct.ocelot, ptr %2, i32 0, i32 20
  %6 = ptrtoint ptr %npi_xtr_prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npi_xtr_prefix.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %5, i32 noundef %cpu, i32 noundef -1, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx2.i.i = getelementptr %struct.ocelot, ptr %2, i32 0, i32 5, i32 48
  %8 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i.i, align 4
  %npi_inj_prefix.i.i = getelementptr inbounds %struct.ocelot, ptr %2, i32 0, i32 19
  %10 = ptrtoint ptr %npi_inj_prefix.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npi_inj_prefix.i.i, align 4
  %call.i17.i.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %9, i32 noundef %cpu, i32 noundef -1, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx5.i.i = getelementptr %struct.ocelot, ptr %2, i32 0, i32 5, i32 59
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i.i, align 4
  %call.i18.i.i = tail call i32 @regmap_fields_update_bits_base(ptr noundef %13, i32 noundef %cpu, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %num_phys_ports.i = getelementptr inbounds %struct.ocelot, ptr %2, i32 0, i32 17
  %14 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_phys_ports.i, align 4
  %conv.i = zext i8 %15 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, 4095
  tail call void @__ocelot_rmw_ix(ptr noundef %2, i32 noundef %and.i, i32 noundef %and.i, i32 noundef 16777236, i32 noundef 236) #9
  tail call void @__ocelot_rmw_ix(ptr noundef %2, i32 noundef %and.i, i32 noundef %and.i, i32 noundef 16777236, i32 noundef 240) #9
  tail call void @__ocelot_rmw_ix(ptr noundef %2, i32 noundef %and.i, i32 noundef %and.i, i32 noundef 16777236, i32 noundef 252) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %priv.i5 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %16 = ptrtoint ptr %priv.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i5, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 -8
  %fwd_domain_lock.i.i = getelementptr inbounds %struct.ocelot, ptr %17, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %fwd_domain_lock.i.i, i32 noundef 0) #9
  %ports.i.i = getelementptr inbounds %struct.ocelot, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports.i.i, align 4
  %arrayidx.i.i6 = getelementptr ptr, ptr %19, i32 %cpu
  %20 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i6, align 4
  %is_dsa_8021q_cpu.i.i = getelementptr inbounds %struct.ocelot_port, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %is_dsa_8021q_cpu.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_dsa_8021q_cpu.i.i, align 4
  %npi.i.i7 = getelementptr inbounds %struct.ocelot, ptr %17, i32 0, i32 18
  %23 = ptrtoint ptr %npi.i.i7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %npi.i.i7, align 4
  %shl.i.i8 = shl nuw i32 1, %cpu
  tail call void @__ocelot_write_ix(ptr noundef %17, i32 noundef %shl.i.i8, i32 noundef 16777236, i32 noundef 232) #9
  tail call void @ocelot_apply_bridge_fwd_mask(ptr noundef %17, i1 noundef zeroext true) #9
  tail call void @mutex_unlock(ptr noundef %fwd_domain_lock.i.i) #9
  %num_ports.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 18
  %24 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp47.not.i = icmp eq i32 %25, 0
  br i1 %cmp47.not.i, label %sw.bb1.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb1.for.end.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb1
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %port.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %for.body.i.dsa_is_unused_port.exit.i_crit_edge, label %for.body.i.for.body.i.i.i_crit_edge

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.dsa_is_unused_port.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %for.body.i.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %29 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %30, %ds
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %31 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %port.048.i)
  %cmp5.i.i.i = icmp eq i32 %32, %port.048.i
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %33 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_unused_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_unused_port.exit.i

dsa_is_unused_port.exit.i:                        ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge, %for.body.i.dsa_is_unused_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %for.body.i.dsa_is_unused_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_unused_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i, label %dsa_is_unused_port.exit.i.for.inc.i_crit_edge, label %if.end.i

dsa_is_unused_port.exit.i.for.inc.i_crit_edge:    ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %dsa_is_unused_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %port.048.i, 8
  tail call void @__ocelot_write_ix(ptr noundef %17, i32 noundef 0, i32 noundef 16777278, i32 noundef %mul.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %dsa_is_unused_port.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %port.048.i, 1
  %36 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb1.for.end.i_crit_edge
  %num_phys_ports.i9 = getelementptr %struct.ocelot, ptr %17, i32 0, i32 17
  %38 = ptrtoint ptr %num_phys_ports.i9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_phys_ports.i9, align 4
  %conv.i10 = zext i8 %39 to i32
  %shl.i11 = shl nuw i32 1, %conv.i10
  %and.i12 = and i32 %shl.i11, 4095
  tail call void @__ocelot_rmw_ix(ptr noundef %17, i32 noundef 0, i32 noundef %and.i12, i32 noundef 16777236, i32 noundef 236) #9
  tail call void @__ocelot_rmw_ix(ptr noundef %17, i32 noundef 0, i32 noundef %and.i12, i32 noundef 16777236, i32 noundef 240) #9
  tail call void @__ocelot_rmw_ix(ptr noundef %17, i32 noundef 0, i32 noundef %and.i12, i32 noundef 16777236, i32 noundef 252) #9
  %call1.i = tail call i32 @dsa_tag_8021q_register(ptr noundef %ds, i16 noundef zeroext -30552) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end3.i:                                        ; preds = %for.end.i
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  %dst.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dst.i.i.i, align 4
  %ports.i.i30.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ports.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn19.i.i.i = load ptr, ptr %ports.i.i30.i, align 4
  %cmp.not20.i.i.i = icmp eq ptr %.pn19.i.i.i, %ports.i.i30.i
  br i1 %cmp.not20.i.i.i, label %if.end3.i.dsa_user_ports.exit.i.i_crit_edge, label %if.end3.i.for.body.i.i34.i_crit_edge

if.end3.i.for.body.i.i34.i_crit_edge:             ; preds = %if.end3.i
  br label %for.body.i.i34.i

if.end3.i.dsa_user_ports.exit.i.i_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_user_ports.exit.i.i

for.body.i.i34.i:                                 ; preds = %for.inc.i.i38.i.for.body.i.i34.i_crit_edge, %if.end3.i.for.body.i.i34.i_crit_edge
  %.pn22.i.i31.i = phi ptr [ %.pn.i.i36.i, %for.inc.i.i38.i.for.body.i.i34.i_crit_edge ], [ %.pn19.i.i.i, %if.end3.i.for.body.i.i34.i_crit_edge ]
  %mask.021.i.i.i = phi i32 [ %mask.1.i.i.i, %for.inc.i.i38.i.for.body.i.i34.i_crit_edge ], [ 0, %if.end3.i.for.body.i.i34.i_crit_edge ]
  %ds3.i.i32.i = getelementptr i8, ptr %.pn22.i.i31.i, i32 -432
  %45 = ptrtoint ptr %ds3.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ds3.i.i32.i, align 4
  %cmp4.i.i33.i = icmp eq ptr %46, %41
  br i1 %cmp4.i.i33.i, label %if.then.i.i.i, label %for.body.i.i34.i.for.inc.i.i38.i_crit_edge

for.body.i.i34.i.for.inc.i.i38.i_crit_edge:       ; preds = %for.body.i.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i38.i

if.then.i.i.i:                                    ; preds = %for.body.i.i34.i
  %type.i.i.i.i = getelementptr i8, ptr %.pn22.i.i31.i, i32 -424
  %47 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.i.i.i.i = icmp eq i32 %48, 3
  br i1 %cmp.i.i.i.i, label %if.then5.i.i.i, label %if.then.i.i.i.for.inc.i.i38.i_crit_edge

if.then.i.i.i.for.inc.i.i38.i_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i38.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %index.i.i35.i = getelementptr i8, ptr %.pn22.i.i31.i, i32 -428
  %49 = ptrtoint ptr %index.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i.i35.i, align 4
  %shl.i.i.i = shl nuw i32 1, %50
  %or.i.i.i = or i32 %shl.i.i.i, %mask.021.i.i.i
  br label %for.inc.i.i38.i

for.inc.i.i38.i:                                  ; preds = %if.then5.i.i.i, %if.then.i.i.i.for.inc.i.i38.i_crit_edge, %for.body.i.i34.i.for.inc.i.i38.i_crit_edge
  %mask.1.i.i.i = phi i32 [ %or.i.i.i, %if.then5.i.i.i ], [ %mask.021.i.i.i, %if.then.i.i.i.for.inc.i.i38.i_crit_edge ], [ %mask.021.i.i.i, %for.body.i.i34.i.for.inc.i.i38.i_crit_edge ]
  %51 = ptrtoint ptr %.pn22.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i.i36.i = load ptr, ptr %.pn22.i.i31.i, align 4
  %cmp.not.i.i37.i = icmp eq ptr %.pn.i.i36.i, %ports.i.i30.i
  br i1 %cmp.not.i.i37.i, label %for.inc.i.i38.i.dsa_user_ports.exit.i.i_crit_edge, label %for.inc.i.i38.i.for.body.i.i34.i_crit_edge

for.inc.i.i38.i.for.body.i.i34.i_crit_edge:       ; preds = %for.inc.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i34.i

for.inc.i.i38.i.dsa_user_ports.exit.i.i_crit_edge: ; preds = %for.inc.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_user_ports.exit.i.i

dsa_user_ports.exit.i.i:                          ; preds = %for.inc.i.i38.i.dsa_user_ports.exit.i.i_crit_edge, %if.end3.i.dsa_user_ports.exit.i.i_crit_edge
  %mask.0.lcssa.i.i.i = phi i32 [ 0, %if.end3.i.dsa_user_ports.exit.i.i_crit_edge ], [ %mask.1.i.i.i, %for.inc.i.i38.i.dsa_user_ports.exit.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 272) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %dsa_user_ports.exit.i.i.out_tag_8021q_unregister.i_crit_edge, label %if.end.i.i

dsa_user_ports.exit.i.i.out_tag_8021q_unregister.i_crit_edge: ; preds = %dsa_user_ports.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_tag_8021q_unregister.i

if.end.i.i:                                       ; preds = %dsa_user_ports.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i118.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 272) #15
  %tobool6.not.i.i = icmp eq ptr %call7.i.i118.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.out_tag_8021q_unregister.sink.split.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.out_tag_8021q_unregister.sink.split.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_tag_8021q_unregister.sink.split.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %54 = ptrtoint ptr %num_phys_ports.i9 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_phys_ports.i9, align 4
  %conv.i.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp126.not.i.i = icmp eq i8 %55, 0
  br i1 %cmp126.not.i.i, label %for.cond.preheader.i.i.if.then15.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.then15.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %56 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dst.i.i.i, align 4
  %ports.i.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn20.i.i.i.i = load ptr, ptr %ports.i.i.i.i, align 4
  %cmp.not21.i.i.i.i = icmp eq ptr %.pn20.i.i.i.i, %ports.i.i.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %port.0127.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  br i1 %cmp.not21.i.i.i.i, label %for.body.i.i.dsa_is_cpu_port.exit.i.i_crit_edge, label %for.body.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.for.body.i.i.i.i_crit_edge:          ; preds = %for.body.i.i
  br label %for.body.i.i.i.i

for.body.i.i.dsa_is_cpu_port.exit.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsa_is_cpu_port.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.i.for.body.i.i.i.i_crit_edge
  %.pn22.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn20.i.i.i.i, %for.body.i.i.for.body.i.i.i.i_crit_edge ]
  %ds3.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -432
  %59 = ptrtoint ptr %ds3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ds3.i.i.i.i, align 4
  %cmp4.i.i.i.i = icmp eq ptr %60, %41
  br i1 %cmp4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %index.i.i.i.i = getelementptr i8, ptr %.pn22.i.i.i.i, i32 -428
  %61 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %port.0127.i.i)
  %cmp5.i.i.i.i = icmp eq i32 %62, %port.0127.i.i
  br i1 %cmp5.i.i.i.i, label %cleanup.split.loop.exit18.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %63 = ptrtoint ptr %.pn22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
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
  %64 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i.i.i = icmp eq i32 %65, 1
  br i1 %cmp.i.i.i, label %if.end16.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %dsa_is_cpu_port.exit.i.i
  %inc.i.i = add nuw nsw i32 %port.0127.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then15.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.then15.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %for.inc.i.i.if.then15.i.i_crit_edge, %for.cond.preheader.i.i.if.then15.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %out_tag_8021q_unregister.sink.split.i

if.end16.i.i:                                     ; preds = %dsa_is_cpu_port.exit.i.i
  %key_type.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %key_type.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %key_type.i.i, align 8
  %etype.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %67 = ptrtoint ptr %etype.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -30473, ptr %etype.i.i, align 4
  %mask.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 8
  %68 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %mask.i.i, align 2
  %ingress_port_mask.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 10
  %69 = ptrtoint ptr %ingress_port_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mask.0.lcssa.i.i.i, ptr %ingress_port_mask.i.i, align 8
  %prio.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %prio.i.i, align 2
  %id.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv.i.i, ptr %id.i.i, align 4
  %tc_offload.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %tc_offload.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %tc_offload.i.i, align 8
  %block_id.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %block_id.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %block_id.i.i, align 4
  %type.i39.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %type.i39.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %type.i39.i, align 8
  %lookup.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %lookup.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %lookup.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i.i, i32 0, i32 8
  %pag_override_mask.i.i = getelementptr inbounds %struct.anon.175, ptr %action.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %pag_override_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %pag_override_mask.i.i, align 1
  %pag_val.i.i = getelementptr inbounds %struct.anon.175, ptr %action.i.i, i32 0, i32 10
  %77 = ptrtoint ptr %pag_val.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %55, ptr %pag_val.i.i, align 2
  %call25.i.i = tail call i32 @ocelot_vcap_filter_add(ptr noundef %17, ptr noundef nonnull %call7.i.i.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %out_tag_8021q_unregister.sink.split.i

if.end28.i.i:                                     ; preds = %if.end16.i.i
  %key_type29.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 16
  %78 = ptrtoint ptr %key_type29.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %key_type29.i.i, align 8
  %ingress_port_mask30.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 10
  %79 = ptrtoint ptr %ingress_port_mask30.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mask.0.lcssa.i.i.i, ptr %ingress_port_mask30.i.i, align 8
  %80 = ptrtoint ptr %num_phys_ports.i9 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_phys_ports.i9, align 4
  %pag.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %pag.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %pag.i.i, align 8
  %prio32.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %prio32.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %prio32.i.i, align 2
  %conv34.i.i = zext i8 %81 to i32
  %id35.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 7
  %84 = ptrtoint ptr %id35.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv34.i.i, ptr %id35.i.i, align 4
  %tc_offload38.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 7, i32 1
  %85 = ptrtoint ptr %tc_offload38.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %tc_offload38.i.i, align 8
  %block_id39.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %block_id39.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %block_id39.i.i, align 4
  %type40.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %type40.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2, ptr %type40.i.i, align 8
  %lookup41.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 4
  %88 = ptrtoint ptr %lookup41.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %lookup41.i.i, align 4
  %action42.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 8
  %89 = ptrtoint ptr %action42.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %action42.i.i, align 4
  %info.i.i = getelementptr i8, ptr %17, i32 -4
  %90 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %info.i.i, align 4
  %quirk_no_xtr_irq.i.i = getelementptr inbounds %struct.felix_info, ptr %91, i32 0, i32 17
  %92 = ptrtoint ptr %quirk_no_xtr_irq.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %quirk_no_xtr_irq.i.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool43.not.i.i = icmp eq i8 %93, 0
  %shl.i40.i = shl nuw i32 1, %port.0127.i.i
  %spec.select.i.i = select i1 %tobool43.not.i.i, i32 1, i32 3
  %spec.select132.i.i = select i1 %tobool43.not.i.i, i32 0, i32 %shl.i40.i
  %94 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %spec.select.i.i, ptr %94, align 8
  %96 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i118.i.i, i32 0, i32 8, i32 0, i32 0, i32 2
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %spec.select132.i.i, ptr %96, align 4
  %call52.i.i = tail call i32 @ocelot_vcap_filter_add(ptr noundef %17, ptr noundef nonnull %call7.i.i118.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i.i)
  %tobool53.not.i.i = icmp eq i32 %call52.i.i, 0
  br i1 %tobool53.not.i.i, label %felix_setup_mmio_filtering.exit.i, label %if.then54.i.i

if.then54.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call55.i.i = tail call i32 @ocelot_vcap_filter_del(ptr noundef %17, ptr noundef nonnull %call7.i.i.i.i) #9
  br label %out_tag_8021q_unregister.sink.split.i

felix_setup_mmio_filtering.exit.i:                ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ocelot_drain_cpu_queue(ptr noundef %17, i32 noundef 0) #9
  br label %sw.epilog

out_tag_8021q_unregister.sink.split.i:            ; preds = %if.then54.i.i, %if.then27.i.i, %if.then15.i.i, %if.end.i.i.out_tag_8021q_unregister.sink.split.i_crit_edge
  %call7.i.i118.i.sink.i = phi ptr [ %call7.i.i118.i.i, %if.then15.i.i ], [ %call7.i.i118.i.i, %if.then27.i.i ], [ %call7.i.i118.i.i, %if.then54.i.i ], [ %call7.i.i.i.i, %if.end.i.i.out_tag_8021q_unregister.sink.split.i_crit_edge ]
  %retval.0.i.ph.ph.i = phi i32 [ -22, %if.then15.i.i ], [ %call25.i.i, %if.then27.i.i ], [ %call52.i.i, %if.then54.i.i ], [ -12, %if.end.i.i.out_tag_8021q_unregister.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i118.i.sink.i) #9
  br label %out_tag_8021q_unregister.i

out_tag_8021q_unregister.i:                       ; preds = %out_tag_8021q_unregister.sink.split.i, %dsa_user_ports.exit.i.i.out_tag_8021q_unregister.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %dsa_user_ports.exit.i.i.out_tag_8021q_unregister.i_crit_edge ], [ %retval.0.i.ph.ph.i, %out_tag_8021q_unregister.sink.split.i ]
  tail call void @dsa_tag_8021q_unregister(ptr noundef %ds) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %out_tag_8021q_unregister.i, %felix_setup_mmio_filtering.exit.i, %for.end.i.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb ], [ -93, %entry.sw.epilog_crit_edge ], [ %retval.0.i.ph.i, %out_tag_8021q_unregister.i ], [ %call1.i, %for.end.i.sw.epilog_crit_edge ], [ 0, %felix_setup_mmio_filtering.exit.i ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_write_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_fields_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_8021q_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_apply_bridge_fwd_mask(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_rmw_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_tag_8021q_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_drain_cpu_queue(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @felix_port_deferred_xmit(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %skb2 = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb2, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb.i, align 8
  %ptp_cmd4.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %ptp_cmd4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ptp_cmd4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp ne i8 %9, 3
  %tobool.not.i = icmp eq ptr %7, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ts_id.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 13
  %10 = ptrtoint ptr %ts_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ts_id.i, align 1
  %conv9.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv9.i, 3
  %or.i = or i32 %shl.i, 3
  br label %ocelot_ptp_rew_op.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp11.i = icmp eq i8 %9, 5
  %spec.select.i = select i1 %cmp11.i, i32 5, i32 0
  br label %ocelot_ptp_rew_op.exit

ocelot_ptp_rew_op.exit:                           ; preds = %if.else.i, %if.then.i
  %rew_op.0.i = phi i32 [ %or.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %call4 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4, label %ocelot_ptp_rew_op.exit.if.end19_crit_edge, label %do.end

ocelot_ptp_rew_op.exit.if.end19_crit_edge:        ; preds = %ocelot_ptp_rew_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end:                                           ; preds = %ocelot_ptp_rew_op.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.1 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.1, label %do.end.if.end19_crit_edge, label %do.end.1

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.1:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.2 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.2, label %do.end.1.if.end19_crit_edge, label %do.end.2

do.end.1.if.end19_crit_edge:                      ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.2:                                         ; preds = %do.end.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.3 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.3, label %do.end.2.if.end19_crit_edge, label %do.end.3

do.end.2.if.end19_crit_edge:                      ; preds = %do.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.3:                                         ; preds = %do.end.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.4 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.4, label %do.end.3.if.end19_crit_edge, label %do.end.4

do.end.3.if.end19_crit_edge:                      ; preds = %do.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.4:                                         ; preds = %do.end.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.5 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.5, label %do.end.4.if.end19_crit_edge, label %do.end.5

do.end.4.if.end19_crit_edge:                      ; preds = %do.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.5:                                         ; preds = %do.end.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.6 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.6, label %do.end.5.if.end19_crit_edge, label %do.end.6

do.end.5.if.end19_crit_edge:                      ; preds = %do.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.6:                                         ; preds = %do.end.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.7 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.7, label %do.end.6.if.end19_crit_edge, label %do.end.7

do.end.6.if.end19_crit_edge:                      ; preds = %do.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.7:                                         ; preds = %do.end.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.8 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.8, label %do.end.7.if.end19_crit_edge, label %do.end.8

do.end.7.if.end19_crit_edge:                      ; preds = %do.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.8:                                         ; preds = %do.end.7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %call4.9 = tail call zeroext i1 @ocelot_can_inject(ptr noundef %13, i32 noundef 0) #9
  br i1 %call4.9, label %do.end.8.if.end19_crit_edge, label %do.end.9

do.end.8.if.end19_crit_edge:                      ; preds = %do.end.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.9:                                         ; preds = %do.end.8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !156
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %15) #13
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb.i, align 8
  %tobool.not.i40 = icmp eq ptr %19, null
  br i1 %tobool.not.i40, label %do.end.9.ocelot_port_purge_txtstamp_skb.exit_crit_edge, label %do.body2.i

do.end.9.ocelot_port_purge_txtstamp_skb.exit_crit_edge: ; preds = %do.end.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocelot_port_purge_txtstamp_skb.exit

do.body2.i:                                       ; preds = %do.end.9
  %ports.i = getelementptr inbounds %struct.ocelot, ptr %13, i32 0, i32 13
  %20 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tx_skbs.i = getelementptr inbounds %struct.ocelot_port, ptr %23, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.ocelot_port, ptr %23, i32 0, i32 6, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body2.i
  %skb.addr.0.in.i = phi ptr [ %tx_skbs.i, %do.body2.i ], [ %skb.addr.0.i, %for.body.i.for.cond.i_crit_edge ]
  %24 = ptrtoint ptr %skb.addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %skb.addr.0.i = load ptr, ptr %skb.addr.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %skb.addr.0.i, %tx_skbs.i
  br i1 %cmp9.not.i, label %land.rhs.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %cmp11.not.i = icmp eq ptr %skb.addr.0.i, %19
  br i1 %cmp11.not.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %qlen.i.i = getelementptr inbounds %struct.ocelot_port, ptr %23, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %19, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %19, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %prev17.i.i, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %28, ptr %30, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  br label %ocelot_port_purge_txtstamp_skb.exit

land.rhs.i:                                       ; preds = %for.cond.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %.b80.i = load i1, ptr @ocelot_port_purge_txtstamp_skb.__already_done, align 1
  br i1 %.b80.i, label %land.rhs.i.ocelot_port_purge_txtstamp_skb.exit_crit_edge, label %if.then29.i, !prof !147

land.rhs.i.ocelot_port_purge_txtstamp_skb.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ocelot_port_purge_txtstamp_skb.exit

if.then29.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ocelot_port_purge_txtstamp_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1131, i32 noundef 9, ptr noundef nonnull @.str.7) #9
  br label %ocelot_port_purge_txtstamp_skb.exit

ocelot_port_purge_txtstamp_skb.exit:              ; preds = %if.then29.i, %land.rhs.i.ocelot_port_purge_txtstamp_skb.exit_crit_edge, %for.end.i, %do.end.9.ocelot_port_purge_txtstamp_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #9
  br label %cleanup

if.end19:                                         ; preds = %do.end.8.if.end19_crit_edge, %do.end.7.if.end19_crit_edge, %do.end.6.if.end19_crit_edge, %do.end.5.if.end19_crit_edge, %do.end.4.if.end19_crit_edge, %do.end.3.if.end19_crit_edge, %do.end.2.if.end19_crit_edge, %do.end.1.if.end19_crit_edge, %do.end.if.end19_crit_edge, %ocelot_ptp_rew_op.exit.if.end19_crit_edge
  tail call void @ocelot_port_inject_frame(ptr noundef %13, i32 noundef %15, i32 noundef 0, i32 noundef %rew_op.0.i, ptr noundef %5) #9
  tail call void @consume_skb(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %ocelot_port_purge_txtstamp_skb.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ocelot_can_inject(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_inject_frame(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_init_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_init_port(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_devlink_sb_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_deinit_port(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_deinit_timestamp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_deinit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_regfields_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_devlink_sb_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_pcs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_phylink_mac_link_down(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_phylink_mac_link_up(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_get_sset_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_get_ts_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_set_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_bridge_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_bridge_leave(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_bridge_stp_state_set(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mact_flush(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_pre_bridge_flags(ptr noundef, i32 noundef, [2 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_bridge_flags(ptr noundef, i32 noundef, [2 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_vlan_filtering(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vlan_add(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vlan_prepare(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vlan_del(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_fdb_add(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_fdb_del(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_fdb_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_mdb_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_mdb_del(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_cls_flower_replace(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_cls_flower_destroy(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_cls_flower_stats(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_policer_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_policer_del(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_hwstamp_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_hwstamp_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_txtstamp_request(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_ptp_gettime64(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocelot_read_ix(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_xtr_poll_frame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_pool_get(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_pool_set(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_port_pool_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_port_pool_set(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_tc_pool_bind_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_tc_pool_bind_set(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_snapshot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_max_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_port_pool_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_sb_occ_tc_port_bind_get(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_set_maxlen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_get_max_mtu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_lag_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_port_lag_join(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocelot_port_lag_leave(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mrp_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mrp_add_ring_role(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mrp_del_ring_role(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vid_is_dsa_8021q_rxvlan(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vid_is_dsa_8021q_txvlan(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @felix_switch_ops, !1, !"felix_switch_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1621, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 459, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @felix_teardown_tag_8021q._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @felix_teardown_tag_8021q._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1155, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @felix_port_deferred_xmit._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @felix_port_deferred_xmit._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1130, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1208, i32 4}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @felix_setup._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @felix_setup._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1046, i32 4}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @felix_init_structs._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @felix_init_structs._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1057, i32 3}
!30 = !{ptr @felix_init_structs._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @felix_init_structs._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1070, i32 4}
!34 = !{ptr @felix_init_structs._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @felix_init_structs._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1083, i32 4}
!38 = !{ptr @felix_init_structs._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @felix_init_structs._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 981, i32 49}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 983, i32 50}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 985, i32 3}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @felix_parse_dt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @felix_parse_dt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 941, i32 35}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 942, i32 4}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @felix_parse_ports_node._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @felix_parse_ports_node._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 951, i32 4}
!58 = !{ptr @felix_parse_ports_node._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @felix_parse_ports_node._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 960, i32 4}
!62 = !{ptr @felix_parse_ports_node._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @felix_parse_ports_node._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/phy.h", i32 211, i32 10}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/phy.h", i32 213, i32 10}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 215, i32 10}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 217, i32 10}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 219, i32 10}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 221, i32 10}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 223, i32 10}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 225, i32 10}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 227, i32 10}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 229, i32 10}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 231, i32 10}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/phy.h", i32 233, i32 10}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/phy.h", i32 235, i32 10}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/phy.h", i32 237, i32 10}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/phy.h", i32 239, i32 10}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/phy.h", i32 241, i32 10}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/phy.h", i32 243, i32 10}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/phy.h", i32 245, i32 10}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/phy.h", i32 247, i32 10}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/phy.h", i32 249, i32 10}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/phy.h", i32 251, i32 10}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/phy.h", i32 253, i32 10}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/phy.h", i32 255, i32 10}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/phy.h", i32 257, i32 10}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/phy.h", i32 259, i32 10}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/phy.h", i32 261, i32 10}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/phy.h", i32 263, i32 10}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/phy.h", i32 265, i32 10}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/phy.h", i32 267, i32 10}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/phy.h", i32 269, i32 10}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/phy.h", i32 271, i32 10}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 649, i32 3}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @felix_port_fast_age._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @felix_port_fast_age._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/dsa/ocelot/felix.c", i32 1403, i32 3}
!133 = !{ptr @felix_txtstamp._rs, !132, !"_rs", i1 false, i1 false}
!134 = !{ptr @__func__.felix_txtstamp, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @felix_txtstamp._entry, !132, !"_entry", i1 false, i1 false}
!137 = !{ptr @felix_txtstamp._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 2158291668, i64 2158292159, i64 2158291705, i64 2158291761, i64 2158291795, i64 2158291819, i64 2158291860, i64 2158291881, i64 2158291909, i64 2158291943}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{!"auto-init"}
!151 = !{i64 1319189, i64 1319216, i64 1319238, i64 1319266}
!152 = !{i64 1319597, i64 1319624, i64 1319657, i64 1319678, i64 1319705, i64 1319731}
!153 = !{i8 0, i8 2}
!154 = !{i64 2154629998, i64 2154630486, i64 2154630035, i64 2154630091, i64 2154630125, i64 2154630149, i64 2154630190, i64 2154630211, i64 2154630239, i64 2154630273}
!155 = !{i64 2158882972}
!156 = !{i64 2158882814}
