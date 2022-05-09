; ModuleID = '/llk/IR_all_yes/net/dsa/slave.c_pt.bc'
source_filename = "../net/dsa/slave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dsa_enqueue_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_enqueue_skb\09\09\09\09"
module asm "\09.long\09__crc_dsa_enqueue_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_enqueue_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_enqueue_skb\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_enqueue_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dsa_port_phylink_mac_change\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_port_phylink_mac_change\09\09\09\09"
module asm "\09.long\09__crc_dsa_port_phylink_mac_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_phylink_mac_change:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_phylink_mac_change\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_phylink_mac_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dsa_slave_dev_check\22, \22a\22\09"
module asm "\09.weak\09__crc_dsa_slave_dev_check\09\09\09\09"
module asm "\09.long\09__crc_dsa_slave_dev_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_slave_dev_check:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_slave_dev_check\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_slave_dev_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon.148, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.148 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.137 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.137 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.dsa_hw_port = type { %struct.list_head, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.dsa_slave_dump_ctx = type { ptr, ptr, ptr, i32 }
%struct.net_device_path = type { i32, ptr, %union.anon.141 }
%union.anon.141 = type { %struct.anon.143, [4 x i8] }
%struct.anon.143 = type { i32, i16, i16 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.154, ptr }
%union.anon.154 = type { %struct.anon.159 }
%struct.anon.159 = type { i32, i64, i64, i64, i32 }
%struct.dsa_mall_tc_entry = type { %struct.list_head, i32, i32, %union.anon.171 }
%union.anon.171 = type { %struct.dsa_mall_policer_tc_entry }
%struct.dsa_mall_policer_tc_entry = type { i32, i64 }
%struct.dsa_mall_mirror_tc_entry = type { i8, i8 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.132 }
%union.anon.132 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.172 }
%union.anon.172 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.dsa_switchdev_event_work = type { ptr, i32, ptr, %struct.work_struct, i32, [6 x i8], i16, i8 }
%struct.bridge_vlan_info = type { i16, i16 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_changelowerstate_info = type { %struct.netdev_notifier_info, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsa slave smi\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsa-%d.%d\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_dsa_enqueue_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_enqueue_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_enqueue_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_enqueue_skb to i32), ptr @__kstrtab_dsa_enqueue_skb, ptr @__kstrtabns_dsa_enqueue_skb }, section "___ksymtab_gpl+dsa_enqueue_skb", align 4
@__kstrtab_dsa_port_phylink_mac_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_phylink_mac_change = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_phylink_mac_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_phylink_mac_change to i32), ptr @__kstrtab_dsa_port_phylink_mac_change, ptr @__kstrtabns_dsa_port_phylink_mac_change }, section "___ksymtab_gpl+dsa_port_phylink_mac_change", align 4
@dsa_slave_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dsa_slave_get_drvinfo, ptr @dsa_slave_get_regs_len, ptr @dsa_slave_get_regs, ptr @dsa_slave_get_wol, ptr @dsa_slave_set_wol, ptr null, ptr null, ptr @dsa_slave_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @dsa_slave_get_eeprom_len, ptr @dsa_slave_get_eeprom, ptr @dsa_slave_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_pauseparam, ptr @dsa_slave_set_pauseparam, ptr @dsa_slave_net_selftest, ptr @dsa_slave_get_strings, ptr null, ptr @dsa_slave_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_sset_count, ptr @dsa_slave_get_rxnfc, ptr @dsa_slave_set_rxnfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_ts_info, ptr null, ptr null, ptr @dsa_slave_get_eee, ptr @dsa_slave_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_link_ksettings, ptr @dsa_slave_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_eth_phy_stats, ptr @dsa_slave_get_eth_mac_stats, ptr @dsa_slave_get_eth_ctrl_stats, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@dsa_slave_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @dsa_slave_open, ptr @dsa_slave_close, ptr @dsa_slave_xmit, ptr null, ptr null, ptr @dsa_slave_change_rx_flags, ptr @dsa_slave_set_rx_mode, ptr @dsa_slave_set_mac_address, ptr null, ptr null, ptr @dsa_slave_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_change_mtu, ptr null, ptr null, ptr @dsa_slave_get_stats64, ptr null, ptr null, ptr null, ptr @dsa_slave_vlan_rx_add_vid, ptr @dsa_slave_vlan_rx_kill_vid, ptr @dsa_slave_poll_controller, ptr @dsa_slave_netpoll_setup, ptr @dsa_slave_netpoll_cleanup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_fdb_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_port_parent_id, ptr @dsa_slave_get_phys_port_name, ptr null, ptr null, ptr null, ptr @dsa_slave_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsa_slave_get_devlink_port, ptr null, ptr null, ptr @dsa_slave_fill_forward_path }, [80 x i8] zeroinitializer }, align 32
@dsa_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dsa_slave_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"error %d setting up PHY for tree %d, switch %d, port %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dsa_slave_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2029, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nonfatal error %d setting MTU to %d on port %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsa_slave_create\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/dsa/slave.c\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dsa_slave_create._entry_ptr = internal global ptr @dsa_slave_create._entry, section ".printk_index", align 4
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error %d registering interface %s\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_dsa_slave_dev_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_slave_dev_check = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_slave_dev_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_slave_dev_check to i32), ptr @__kstrtab_dsa_slave_dev_check, ptr @__kstrtabns_dsa_slave_dev_check }, section "___ksymtab_gpl+dsa_slave_dev_check", align 4
@dsa_slave_switchdev_notifier = dso_local global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dsa_slave_switchdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dsa_slave_switchdev_blocking_notifier = dso_local global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dsa_slave_switchdev_blocking_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dsa_slave_nb = internal global %struct.notifier_block { ptr @dsa_slave_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@dsa_slave_unregister_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 2619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013DSA: failed to unregister switchdev blocking notifier (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dsa_slave_unregister_notifier\00", [34 x i8] zeroinitializer }, align 32
@dsa_slave_unregister_notifier._entry_ptr = internal global ptr @dsa_slave_unregister_notifier._entry, section ".printk_index", align 4
@dsa_slave_unregister_notifier._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.6, i32 2623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013DSA: failed to unregister switchdev notifier (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@dsa_slave_unregister_notifier._entry_ptr.14 = internal global ptr @dsa_slave_unregister_notifier._entry.12, section ".printk_index", align 4
@dsa_slave_unregister_notifier._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.6, i32 2627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DSA: failed to unregister slave notifier (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@dsa_slave_unregister_notifier._entry_ptr.17 = internal global ptr @dsa_slave_unregister_notifier._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPU port %d: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@dsa_tree_list = external dso_local global %struct.list_head, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to restore MTU\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsa\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to open master %s\0A\00", [38 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@dsa_slave_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dsa_slave_block_cb_list, ptr @dsa_slave_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg = internal constant [59 x i8] c"dsa_core: Driver supports only default HW stats type \22any\22\00", align 1
@dsa_slave_add_cls_matchall_police.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dsa_core: Policing offload not implemented\00", [53 x i8] zeroinitializer }, align 32
@dsa_slave_add_cls_matchall_police.__msg.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dsa_core: Only supported on ingress qdisc\00", [54 x i8] zeroinitializer }, align 32
@dsa_slave_add_cls_matchall_police.__msg.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dsa_core: Only one port policer allowed\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p%d\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&dsa_slave_netdev_xmit_lock_key\00", [32 x i8] zeroinitializer }, align 32
@dsa_slave_netdev_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to connect to PHY: %pe\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no phy at %d\0A\00", [18 x i8] zeroinitializer }, align 32
@dsa_slave_fdb_event.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.6, ptr @.str.41, i8 2, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsa_core\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dsa_slave_fdb_event\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s FDB entry towards %s, addr %pM vid %d%s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adding\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Deleting\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" as host address\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dsa_slave_fdb_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&switchdev_work->work)\00", [55 x i8] zeroinitializer }, align 32
@dsa_slave_switchdev_event_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 2418, ptr @.str.49, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"port %d failed to add %pM vid %d to fdb: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dsa_slave_switchdev_event_work\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dsa_slave_switchdev_event_work._entry_ptr = internal global ptr @dsa_slave_switchdev_event_work._entry, section ".printk_index", align 4
@dsa_slave_switchdev_event_work._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.6, i32 2435, ptr @.str.49, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"port %d failed to delete %pM vid %d from fdb: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dsa_slave_switchdev_event_work._entry_ptr.52 = internal global ptr @dsa_slave_switchdev_event_work._entry.50, section ".printk_index", align 4
@dsa_slave_vlan_add.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dsa_core: skipping configuration of VLAN\00", [55 x i8] zeroinitializer }, align 32
@dsa_slave_vlan_add.__msg.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"dsa_core: Port already has a VLAN upper with this VID\00", [42 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dsa_prevent_bridging_8021q_upper.__msg = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"dsa_core: Cannot enslave VLAN device into VLAN aware bridge\00", [36 x i8] zeroinitializer }, align 32
@dsa_slave_check_8021q_upper.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"dsa_core: This VLAN is already configured by the bridge\00", [40 x i8] zeroinitializer }, align 32
@dsa_slave_changeupper.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dsa_core: Offloading not supported\00", [61 x i8] zeroinitializer }, align 32
@dsa_slave_changeupper.__msg.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dsa_core: Offloading not supported\00", [61 x i8] zeroinitializer }, align 32
@dsa_slave_changeupper.__msg.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dsa_core: Offloading not supported\00", [61 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 14]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 21, i64 26, i64 27]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 50, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 53, i32 51 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"dsa_slave_ethtool_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1717, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"dsa_slave_netdev_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1780, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"dsa_type\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1806, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1999, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2019, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2028, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2033, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [29 x i8] c"dsa_slave_switchdev_notifier\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2576, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant [38 x i8] c"dsa_slave_switchdev_blocking_notifier\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2580, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2619, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2623, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2627, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1403, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1411, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1541, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 647, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 648, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 649, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 74, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 271, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [24 x i8] c"dsa_slave_block_cb_list\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1274, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 354, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1075, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1081, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1092, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 991, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 988, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1925, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [31 x i8] c"dsa_slave_netdev_xmit_lock_key\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1920, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1884, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1840, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2497, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2502, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2415, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2432, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 357, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 371, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 695, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 723, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2241, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2272, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2104, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2118, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.282 = private constant [19 x i8] c"../net/dsa/slave.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2131, i32 5 }
@___asan_gen_.284 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"str.59\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"str.60\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"str.61\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__ksymtab_dsa_enqueue_skb, ptr @__ksymtab_dsa_port_phylink_mac_change, ptr @__ksymtab_dsa_slave_dev_check, ptr @dsa_slave_create._entry, ptr @dsa_slave_create._entry_ptr, ptr @dsa_slave_switchdev_event_work._entry, ptr @dsa_slave_switchdev_event_work._entry.50, ptr @dsa_slave_switchdev_event_work._entry_ptr, ptr @dsa_slave_switchdev_event_work._entry_ptr.52, ptr @dsa_slave_unregister_notifier._entry, ptr @dsa_slave_unregister_notifier._entry.12, ptr @dsa_slave_unregister_notifier._entry.15, ptr @dsa_slave_unregister_notifier._entry_ptr, ptr @dsa_slave_unregister_notifier._entry_ptr.14, ptr @dsa_slave_unregister_notifier._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @dsa_slave_ethtool_ops, ptr @dsa_slave_netdev_ops, ptr @dsa_type, ptr @dsa_slave_create.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dsa_slave_switchdev_notifier, ptr @dsa_slave_switchdev_blocking_notifier, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.28, ptr @.str.29, ptr @dsa_slave_block_cb_list, ptr @.str.30, ptr @dsa_slave_add_cls_matchall_police.__msg, ptr @dsa_slave_add_cls_matchall_police.__msg.32, ptr @dsa_slave_add_cls_matchall_police.__msg.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @dsa_slave_netdev_xmit_lock_key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @dsa_slave_fdb_event.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @dsa_slave_vlan_add.__msg, ptr @dsa_slave_vlan_add.__msg.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @dsa_prevent_bridging_8021q_upper.__msg, ptr @dsa_slave_check_8021q_upper.__msg, ptr @dsa_slave_changeupper.__msg, ptr @dsa_slave_changeupper.__msg.57, ptr @dsa_slave_changeupper.__msg.58, ptr @str, ptr @str.59, ptr @str.60, ptr @str.61], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_switchdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_switchdev_blocking_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_unregister_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_unregister_notifier._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_unregister_notifier._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_add_cls_matchall_police.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_add_cls_matchall_police.__msg.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_add_cls_matchall_police.__msg.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_netdev_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_fdb_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_switchdev_event_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_switchdev_event_work._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_vlan_add.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_vlan_add.__msg.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_prevent_bridging_8021q_upper.__msg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_check_8021q_upper.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_changeupper.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_changeupper.__msg.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_slave_changeupper.__msg.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_slave_mii_bus_init(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_mii_bus = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 10
  %0 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_mii_bus, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ds, ptr %priv, align 8
  %3 = load ptr, ptr %slave_mii_bus, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %name, align 4
  %5 = load ptr, ptr %slave_mii_bus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dsa_slave_phy_read, ptr %read, align 4
  %7 = load ptr, ptr %slave_mii_bus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dsa_slave_phy_write, ptr %write, align 8
  %9 = load ptr, ptr %slave_mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 2
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 1
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %index5 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 2
  %14 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index5, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %15)
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 4
  %18 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave_mii_bus, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %parent, align 4
  %phys_mii_mask = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 9
  %21 = ptrtoint ptr %phys_mii_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys_mii_mask, align 4
  %neg = xor i32 %22, -1
  %23 = load ptr, ptr %slave_mii_bus, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %neg, ptr %phy_mask, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_phy_read(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phys_mii_mask = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %phys_mii_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_mii_mask, align 4
  %shl = shl nuw i32 1, %addr
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %phy_read = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_read, align 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %addr, i32 noundef %reg) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 65535, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_phy_write(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phys_mii_mask = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %phys_mii_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_mii_mask, align 4
  %shl = shl nuw i32 1, %addr
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %phy_write = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %phy_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_write, align 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_enqueue_skb(ptr noundef %skb, ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !157
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then, !prof !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %netpoll.i = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %netpoll.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netpoll.i, align 4
  %call1.i = tail call i32 @netpoll_send_skb(ptr noundef %2, ptr noundef %skb) #19
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu_dp.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %9, align 8
  %call4 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #19
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1.i, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_manage_vlan_filtering(ptr noundef %slave, i1 noundef zeroext %vlan_filtering) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %vlan_filtering, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %features = getelementptr inbounds %struct.net_device, ptr %slave, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 16
  %or = or i64 %1, 512
  store i64 %or, ptr %features, align 16
  %call = tail call i32 @vlan_for_each(ptr noundef %slave, ptr noundef nonnull @dsa_slave_restore_vlan, ptr noundef %slave) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = tail call i32 @vlan_for_each(ptr noundef %slave, ptr noundef nonnull @dsa_slave_clear_vlan, ptr noundef %slave) #19
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @vlan_for_each(ptr noundef %slave, ptr noundef nonnull @dsa_slave_clear_vlan, ptr noundef %slave) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  %features9 = getelementptr inbounds %struct.net_device, ptr %slave, i32 0, i32 23
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.then2
  %features9.sink23 = phi ptr [ %features9, %if.end8 ], [ %features, %if.then2 ]
  %retval.0.ph = phi i32 [ 0, %if.end8 ], [ %call, %if.then2 ]
  %2 = ptrtoint ptr %features9.sink23 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features9.sink23, align 16
  %and10 = and i64 %3, -513
  store i64 %and10, ptr %features9.sink23, align 16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.else.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_restore_vlan(ptr noundef %vdev, i32 noundef %vid, ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call zeroext i16 @vlan_dev_vlan_proto(ptr noundef nonnull %vdev) #19
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %call, %cond.true ], [ -32512, %entry.cond.end_crit_edge ]
  %conv2 = trunc i32 %vid to i16
  %call3 = tail call i32 @dsa_slave_vlan_rx_add_vid(ptr noundef %arg, i16 noundef zeroext %cond, i16 noundef zeroext %conv2)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_clear_vlan(ptr noundef %vdev, i32 noundef %vid, ptr nocapture noundef readonly %arg) #1 align 64 {
entry:
  %vlan.i = alloca %struct.switchdev_obj_port_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call = tail call zeroext i16 @vlan_dev_vlan_proto(ptr noundef nonnull %vdev) #19
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %call, %cond.true ], [ -32512, %entry.cond.end_crit_edge ]
  %conv2 = trunc i32 %vid to i16
  %dp.i.i.i = getelementptr i8, ptr %arg, i32 2312
  %0 = ptrtoint ptr %dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i.i, align 4
  %cpu_dp.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan.i) #19
  %6 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan.i, i32 0, i32 2
  %7 = call ptr @memset(ptr %vlan.i, i32 0, i32 32)
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2, ptr %6, align 2
  %call3.i = call i32 @dsa_port_vlan_del(ptr noundef %1, ptr noundef nonnull %vlan.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.end.dsa_slave_vlan_rx_kill_vid.exit_crit_edge

cond.end.dsa_slave_vlan_rx_kill_vid.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_rx_kill_vid.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @vlan_vid_del(ptr noundef %5, i16 noundef zeroext %cond, i16 noundef zeroext %conv2) #19
  br label %dsa_slave_vlan_rx_kill_vid.exit

dsa_slave_vlan_rx_kill_vid.exit:                  ; preds = %if.end.i, %cond.end.dsa_slave_vlan_rx_kill_vid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan.i) #19
  ret i32 %call3.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ds4 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ds4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds4, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %port_change_mtu = getelementptr inbounds %struct.dsa_switch_ops, ptr %11, i32 0, i32 91
  %12 = ptrtoint ptr %port_change_mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_change_mtu, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.end:                                           ; preds = %entry
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn128 = load ptr, ptr %ports, align 4
  %cmp.not130 = icmp eq ptr %.pn128, %ports
  br i1 %cmp.not130, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn132 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn128, %if.end.for.body_crit_edge ]
  %largest_mtu.0131 = phi i32 [ %largest_mtu.2, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %dp_iter.0133 = getelementptr i8, ptr %.pn132, i32 -448
  %type.i = getelementptr i8, ptr %.pn132, i32 -424
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i = icmp eq i32 %18, 3
  br i1 %cmp.i, label %if.end10, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %19 = ptrtoint ptr %dp_iter.0133 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dp_iter.0133, align 4
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp eq ptr %dp_iter.0133, %1
  br i1 %cmp14, label %if.end13.if.end16_crit_edge, label %if.else

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %mtu = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end13.if.end16_crit_edge
  %slave_mtu.0 = phi i32 [ %22, %if.else ], [ %new_mtu, %if.end13.if.end16_crit_edge ]
  %23 = tail call i32 @llvm.smax.i32(i32 %largest_mtu.0131, i32 %slave_mtu.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %largest_mtu.2 = phi i32 [ %23, %if.end16 ], [ %largest_mtu.0131, %for.body.cleanup_crit_edge ], [ %largest_mtu.0131, %if.end10.cleanup_crit_edge ]
  %24 = ptrtoint ptr %.pn132 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn132, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %largest_mtu.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %largest_mtu.2, %cleanup.for.end_crit_edge ]
  %25 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn20.i = load ptr, ptr %ports, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports
  br i1 %cmp.not21.i, label %for.end.dsa_to_port.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.dsa_to_port.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %for.end.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %26 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %27, %7
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %9)
  %cmp5.i = icmp eq i32 %29, %9
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %30 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %for.end.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %for.end.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %cpu_dp26 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 8
  %31 = ptrtoint ptr %cpu_dp26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_dp26, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 31
  %33 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_mtu, align 4
  %max_mtu27 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %35 = ptrtoint ptr %max_mtu27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_mtu27, align 4
  %37 = tail call i32 @llvm.smin.i32(i32 %34, i32 %36)
  %mtu30 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %38 = ptrtoint ptr %mtu30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mtu30, align 4
  %tag_ops = getelementptr inbounds %struct.dsa_port, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %tag_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tag_ops, align 4
  %needed_headroom.i = getelementptr inbounds %struct.dsa_device_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %needed_headroom.i, align 4
  %needed_tailroom.i = getelementptr inbounds %struct.dsa_device_ops, ptr %41, i32 0, i32 6
  %44 = ptrtoint ptr %needed_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %needed_tailroom.i, align 4
  %add.i = add i32 %43, %largest_mtu.0.lcssa
  %add = add i32 %add.i, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %37)
  %cmp32 = icmp sgt i32 %add, %37
  br i1 %cmp32, label %dsa_to_port.exit.cleanup61_crit_edge, label %if.end34

dsa_to_port.exit.cleanup61_crit_edge:             ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.end34:                                         ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %39)
  %cmp35.not = icmp eq i32 %add, %39
  br i1 %cmp35.not, label %if.end45, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call37 = tail call i32 @dev_set_mtu(ptr noundef %5, i32 noundef %add) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then36.cleanup61_crit_edge, label %if.end40

if.then36.cleanup61_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.end40:                                         ; preds = %if.then36
  %call41 = tail call i32 @dsa_port_mtu_change(ptr noundef %32, i32 noundef %largest_mtu.0.lcssa, i1 noundef zeroext false) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end45.thread, label %if.end40.if.then58_crit_edge

if.end40.if.then58_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then58

if.end45:                                         ; preds = %if.end34
  %call46 = tail call i32 @dsa_port_mtu_change(ptr noundef %1, i32 noundef %new_mtu, i1 noundef zeroext true) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.end45.cleanup61_crit_edge

if.end45.cleanup61_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup61

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end49

if.end45.thread:                                  ; preds = %if.end40
  %call46119 = tail call i32 @dsa_port_mtu_change(ptr noundef %1, i32 noundef %new_mtu, i1 noundef zeroext true) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46119)
  %tobool47.not120 = icmp eq i32 %call46119, 0
  br i1 %tobool47.not120, label %if.end45.thread.if.end49_crit_edge, label %if.then52

if.end45.thread.if.end49_crit_edge:               ; preds = %if.end45.thread
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end49

if.end49:                                         ; preds = %if.end45.thread.if.end49_crit_edge, %if.end45.if.end49_crit_edge
  %mtu50 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %46 = ptrtoint ptr %mtu50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %new_mtu, ptr %mtu50, align 4
  tail call fastcc void @dsa_bridge_mtu_normalization(ptr noundef %1)
  br label %cleanup61

if.then52:                                        ; preds = %if.end45.thread
  call void @__sanitizer_cov_trace_pc() #21
  %47 = ptrtoint ptr %tag_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tag_ops, align 4
  %needed_headroom.i116 = getelementptr inbounds %struct.dsa_device_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %needed_headroom.i116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %needed_headroom.i116, align 4
  %needed_tailroom.i117 = getelementptr inbounds %struct.dsa_device_ops, ptr %48, i32 0, i32 6
  %51 = ptrtoint ptr %needed_tailroom.i117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %needed_tailroom.i117, align 4
  %53 = add i32 %50, %52
  %sub = sub i32 %39, %53
  %call55 = tail call i32 @dsa_port_mtu_change(ptr noundef %32, i32 noundef %sub, i1 noundef zeroext false) #19
  br label %if.then58

if.then58:                                        ; preds = %if.then52, %if.end40.if.then58_crit_edge
  %err.0.ph = phi i32 [ %call46119, %if.then52 ], [ %call41, %if.end40.if.then58_crit_edge ]
  %call59 = tail call i32 @dev_set_mtu(ptr noundef %5, i32 noundef %39) #19
  br label %cleanup61

cleanup61:                                        ; preds = %if.then58, %if.end49, %if.end45.cleanup61_crit_edge, %if.then36.cleanup61_crit_edge, %dsa_to_port.exit.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -95, %entry.cleanup61_crit_edge ], [ -34, %dsa_to_port.exit.cleanup61_crit_edge ], [ %call37, %if.then36.cleanup61_crit_edge ], [ %err.0.ph, %if.then58 ], [ %call46, %if.end45.cleanup61_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mtu_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsa_bridge_mtu_normalization(ptr nocapture noundef readonly %dp) unnamed_addr #1 align 64 {
entry:
  %hw_port_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_port_list) #19
  %0 = getelementptr inbounds %struct.list_head, ptr %hw_port_list, i32 0, i32 1
  %ds = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 4
  %1 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ds, align 4
  %mtu_enforcement_ingress = getelementptr inbounds %struct.dsa_switch, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %mtu_enforcement_ingress to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %mtu_enforcement_ingress, align 4
  %4 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

if.end:                                           ; preds = %entry
  %bridge = getelementptr inbounds %struct.dsa_port, ptr %dp, i32 0, i32 14
  %5 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bridge, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.cleanup56_crit_edge, label %if.end3

if.end.cleanup56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %hw_port_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %hw_port_list, ptr %hw_port_list, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hw_port_list, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsa_tree_list to i32))
  %dst.098 = load ptr, ptr @dsa_tree_list, align 4
  %cmp.not99 = icmp eq ptr %dst.098, @dsa_tree_list
  br i1 %cmp.not99, label %if.end3.for.end49_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end49_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end49

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %min_mtu.1.lcssa = phi i32 [ %min_mtu.0100, %for.body.for.cond.loopexit_crit_edge ], [ %min_mtu.3.ph, %for.inc.for.cond.loopexit_crit_edge ]
  %9 = ptrtoint ptr %dst.0101 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dst.0 = load ptr, ptr %dst.0101, align 4
  %cmp.not = icmp eq ptr %dst.0, @dsa_tree_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end49_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond.loopexit.for.end49_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end49

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end3.for.body_crit_edge
  %dst.0101 = phi ptr [ %dst.0, %for.cond.loopexit.for.body_crit_edge ], [ %dst.098, %if.end3.for.body_crit_edge ]
  %min_mtu.0100 = phi i32 [ %min_mtu.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 65535, %if.end3.for.body_crit_edge ]
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %dst.0101, i32 0, i32 1
  %10 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn92 = load ptr, ptr %ports, align 4
  %cmp10.not94 = icmp eq ptr %.pn92, %ports
  br i1 %cmp10.not94, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body12_crit_edge

for.body.for.body12_crit_edge:                    ; preds = %for.body
  br label %for.body12

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.loopexit

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body.for.body12_crit_edge
  %.pn96 = phi ptr [ %.pn, %for.inc.for.body12_crit_edge ], [ %.pn92, %for.body.for.body12_crit_edge ]
  %min_mtu.195 = phi i32 [ %min_mtu.3.ph, %for.inc.for.body12_crit_edge ], [ %min_mtu.0100, %for.body.for.body12_crit_edge ]
  %other_dp.097 = getelementptr i8, ptr %.pn96, i32 -448
  %type = getelementptr i8, ptr %.pn96, i32 -424
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp13.not = icmp eq i32 %12, 3
  br i1 %cmp13.not, label %if.end15, label %for.body12.for.inc_crit_edge

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end15:                                         ; preds = %for.body12
  %13 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bridge, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end15.dsa_port_bridge_dev_get.exit.i_crit_edge, label %cond.true.i.i

if.end15.dsa_port_bridge_dev_get.exit.i_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_bridge_dev_get.exit.i

cond.true.i.i:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  br label %dsa_port_bridge_dev_get.exit.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %cond.true.i.i, %if.end15.dsa_port_bridge_dev_get.exit.i_crit_edge
  %cond.i.i = phi ptr [ %16, %cond.true.i.i ], [ null, %if.end15.dsa_port_bridge_dev_get.exit.i_crit_edge ]
  %bridge.i6.i = getelementptr i8, ptr %.pn96, i32 -396
  %17 = ptrtoint ptr %bridge.i6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge.i6.i, align 4
  %tobool.not.i7.i = icmp eq ptr %18, null
  br i1 %tobool.not.i7.i, label %dsa_port_bridge_dev_get.exit.i.for.inc_crit_edge, label %dsa_port_bridge_same.exit

dsa_port_bridge_dev_get.exit.i.for.inc_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

dsa_port_bridge_same.exit:                        ; preds = %dsa_port_bridge_dev_get.exit.i
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i = icmp ne ptr %cond.i.i, null
  %tobool2.not.i = icmp ne ptr %20, null
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool2.not.i, i1 false
  %cmp.i = icmp eq ptr %cond.i.i, %20
  %spec.select.i = select i1 %or.cond.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %if.end17, label %dsa_port_bridge_same.exit.for.inc_crit_edge

dsa_port_bridge_same.exit.for.inc_crit_edge:      ; preds = %dsa_port_bridge_same.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end17:                                         ; preds = %dsa_port_bridge_same.exit
  %ds18 = getelementptr i8, ptr %.pn96, i32 -432
  %21 = ptrtoint ptr %ds18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds18, align 4
  %mtu_enforcement_ingress19 = getelementptr inbounds %struct.dsa_switch, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %mtu_enforcement_ingress19 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load20 = load i16, ptr %mtu_enforcement_ingress19, align 4
  %24 = and i16 %bf.load20, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool24.not = icmp eq i16 %24, 0
  br i1 %tobool24.not, label %if.end17.for.inc_crit_edge, label %if.end26

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end26:                                         ; preds = %if.end17
  %25 = ptrtoint ptr %other_dp.097 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %other_dp.097, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mtu, align 4
  %29 = call i32 @llvm.umin.i32(i32 %min_mtu.195, i32 %28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 16) #22
  %tobool32.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool32.not, label %if.end26.out_crit_edge, label %if.end34

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end34:                                         ; preds = %if.end26
  %dev = getelementptr inbounds %struct.dsa_hw_port, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %26, ptr %dev, align 8
  %32 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mtu, align 4
  %old_mtu = getelementptr inbounds %struct.dsa_hw_port, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %old_mtu to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %old_mtu, align 4
  %35 = ptrtoint ptr %hw_port_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_port_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %hw_port_list, ptr noundef %36) #19
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #21
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hw_port_list, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %hw_port_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i, ptr %hw_port_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end34.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %dsa_port_bridge_same.exit.for.inc_crit_edge, %dsa_port_bridge_dev_get.exit.i.for.inc_crit_edge, %for.body12.for.inc_crit_edge
  %min_mtu.3.ph = phi i32 [ %29, %if.end.i.i ], [ %29, %if.end34.for.inc_crit_edge ], [ %min_mtu.195, %if.end17.for.inc_crit_edge ], [ %min_mtu.195, %dsa_port_bridge_same.exit.for.inc_crit_edge ], [ %min_mtu.195, %for.body12.for.inc_crit_edge ], [ %min_mtu.195, %dsa_port_bridge_dev_get.exit.i.for.inc_crit_edge ]
  %41 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load ptr, ptr %.pn96, align 4
  %cmp10.not = icmp eq ptr %.pn, %ports
  br i1 %cmp10.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body12

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.loopexit

for.end49:                                        ; preds = %for.cond.loopexit.for.end49_crit_edge, %if.end3.for.end49_crit_edge
  %min_mtu.0.lcssa = phi i32 [ 65535, %if.end3.for.end49_crit_edge ], [ %min_mtu.1.lcssa, %for.cond.loopexit.for.end49_crit_edge ]
  %42 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dp, align 4
  %mtu50 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %mtu50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mtu50, align 4
  %call51 = call fastcc i32 @dsa_hw_port_list_set_mtu(ptr noundef nonnull %hw_port_list, i32 noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.end49.out_crit_edge, label %if.end54

for.end49.out_crit_edge:                          ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end54:                                         ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #21
  %call55 = call fastcc i32 @dsa_hw_port_list_set_mtu(ptr noundef nonnull %hw_port_list, i32 noundef %min_mtu.0.lcssa)
  br label %out

out:                                              ; preds = %if.end54, %for.end49.out_crit_edge, %if.end26.out_crit_edge
  %46 = ptrtoint ptr %hw_port_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_port_list, align 4
  %cmp.not15.i = icmp eq ptr %47, %hw_port_list
  br i1 %cmp.not15.i, label %out.cleanup56_crit_edge, label %out.for.body.i_crit_edge

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

out.cleanup56_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %p.016.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %47, %out.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %p.016.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %n.0.i = load ptr, ptr %p.016.i, align 4
  call void @kfree(ptr noundef %p.016.i) #19
  %cmp.not.i = icmp eq ptr %n.0.i, %hw_port_list
  br i1 %cmp.not.i, label %for.body.i.cleanup56_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.cleanup56_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup56

cleanup56:                                        ; preds = %for.body.i.cleanup56_crit_edge, %out.cleanup56_crit_edge, %if.end.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_port_list) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_port_phylink_mac_change(ptr noundef readonly %ds, i32 noundef %port, i1 noundef zeroext %up) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %pl = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 16
  %8 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pl, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %dsa_to_port.exit.if.end_crit_edge, label %if.then

dsa_to_port.exit.if.end_crit_edge:                ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @phylink_mac_change(ptr noundef nonnull %9, i1 noundef zeroext %up) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %dsa_to_port.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mac_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dsa_slave_setup_tagger(ptr nocapture noundef %slave) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %slave, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %add.ptr.i = getelementptr i8, ptr %slave, i32 2304
  %cpu_dp2 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ds3 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3, align 4
  %tag_ops = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %tag_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tag_ops, align 4
  %needed_headroom = getelementptr inbounds %struct.dsa_device_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %needed_headroom, align 4
  %conv = trunc i32 %11 to i16
  %needed_headroom4 = getelementptr inbounds %struct.net_device, ptr %slave, i32 0, i32 21
  %12 = ptrtoint ptr %needed_headroom4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %needed_headroom4, align 8
  %13 = load ptr, ptr %tag_ops, align 4
  %needed_tailroom = getelementptr inbounds %struct.dsa_device_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %needed_tailroom, align 4
  %conv6 = trunc i32 %15 to i16
  %needed_tailroom7 = getelementptr inbounds %struct.net_device, ptr %slave, i32 0, i32 22
  %16 = ptrtoint ptr %needed_tailroom7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6, ptr %needed_tailroom7, align 2
  %needed_headroom8 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 21
  %17 = ptrtoint ptr %needed_headroom8 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %needed_headroom8, align 8
  %add = add i16 %18, %conv
  store i16 %add, ptr %needed_headroom4, align 8
  %needed_tailroom13 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 22
  %19 = ptrtoint ptr %needed_tailroom13 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %needed_tailroom13, align 2
  %add17 = add i16 %20, %conv6
  store i16 %add17, ptr %needed_tailroom7, align 2
  %21 = load ptr, ptr %tag_ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %add.ptr.i, align 4
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 26
  %25 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vlan_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %slave, i32 0, i32 23
  %hw_features = getelementptr inbounds %struct.net_device, ptr %slave, i32 0, i32 24
  %27 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %hw_features, align 8
  %or21 = or i64 %28, 562949953421312
  store i64 %or21, ptr %hw_features, align 8
  %or23 = or i64 %26, 562949953425408
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add17)
  %tobool.not = icmp eq i16 %add17, 0
  %and = and i64 %or23, -66
  %spec.select = select i1 %tobool.not, i64 %or23, i64 %and
  %29 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %spec.select, ptr %features, align 16
  %needs_standalone_vlan_filtering = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 3
  %30 = ptrtoint ptr %needs_standalone_vlan_filtering to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %needs_standalone_vlan_filtering, align 4
  %31 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool26.not = icmp eq i16 %31, 0
  br i1 %tobool26.not, label %entry.if.end30_crit_edge, label %if.then27

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features, align 16
  %or29 = or i64 %33, 512
  store i64 %or29, ptr %features, align 16
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_suspend(ptr noundef %slave_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %slave_dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @netif_device_detach(ptr noundef %slave_dev) #19
  tail call void @rtnl_lock() #19
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pl, align 4
  tail call void @phylink_stop(ptr noundef %5) #19
  tail call void @rtnl_unlock() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_resume(ptr noundef %slave_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %slave_dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @netif_device_attach(ptr noundef %slave_dev) #19
  tail call void @rtnl_lock() #19
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pl, align 4
  tail call void @phylink_start(ptr noundef %5) #19
  tail call void @rtnl_unlock() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsa_slave_create(ptr noundef %port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_dp1 = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %cpu_dp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_dp1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ds2 = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %ds2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds2, align 4
  %name3 = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 7
  %6 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name3, align 4
  %num_tx_queues = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_tx_queues, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_tx_queues, align 4
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 24, ptr noundef %7, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef %12, i32 noundef 1) #19
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dsa_slave_ethtool_ops, ptr %ethtool_ops, align 16
  %mac = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 9
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac, align 4
  %add.ptr.i = getelementptr %struct.dsa_port, ptr %port, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %17 to i32
  %or.i = or i32 %15, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.else, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 55
  %18 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_assign_type.i, align 4
  %addr_assign_type1.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %20 = ptrtoint ptr %addr_assign_type1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %addr_assign_type1.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr.i, align 64
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end7.if.end12_crit_edge
  %.sink = phi ptr [ %22, %if.else ], [ %mac, %if.end7.if.end12_crit_edge ]
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %.sink, i32 noundef 6) #19
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %23 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %priv_flags, align 16
  %or = or i64 %24, 524288
  store i64 %or, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %25 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dsa_slave_netdev_ops, ptr %netdev_ops, align 8
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %port_max_mtu = getelementptr inbounds %struct.dsa_switch_ops, ptr %27, i32 0, i32 92
  %28 = ptrtoint ptr %port_max_mtu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_max_mtu, align 4
  %tobool13.not = icmp eq ptr %29, null
  br i1 %tobool13.not, label %if.end12.if.end18_crit_edge, label %if.then14

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end18

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 5
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  %call17 = tail call i32 %29(ptr noundef %5, i32 noundef %31) #19
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %32 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call17, ptr %max_mtu, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12.if.end18_crit_edge
  %type = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 4
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dsa_type, ptr %type, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 104
  %34 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1.not.i = icmp eq i32 %35, 0
  br i1 %cmp1.not.i, label %if.end18.netdev_for_each_tx_queue.exit_crit_edge, label %for.body.lr.ph.i

if.end18.netdev_for_each_tx_queue.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_for_each_tx_queue.exit

for.body.lr.ph.i:                                 ; preds = %if.end18
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i, align 128
  %dep_map.i.i = getelementptr %struct.netdev_queue, ptr %37, i32 %i.02.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner.i.i = getelementptr %struct.netdev_queue, ptr %37, i32 %i.02.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %38 = ptrtoint ptr %wait_type_inner.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wait_type_inner.i.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @dsa_slave_netdev_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %39, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %inc.i = add nuw i32 %i.02.i, 1
  %40 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i149 = icmp ult i32 %inc.i, %41
  br i1 %cmp.i149, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netdev_for_each_tx_queue.exit_crit_edge

for.body.i.netdev_for_each_tx_queue.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netdev_for_each_tx_queue.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

netdev_for_each_tx_queue.exit:                    ; preds = %for.body.i.netdev_for_each_tx_queue.exit_crit_edge, %if.end18.netdev_for_each_tx_queue.exit_crit_edge
  %42 = ptrtoint ptr %ds2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ds2, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %46 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %parent, align 8
  %dn = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 12
  %47 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dn, align 4
  %of_node = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %of_node, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 26
  %50 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %vlan_features, align 8
  %vlan_features23 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %52 = ptrtoint ptr %vlan_features23 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %vlan_features23, align 8
  %add.ptr.i150 = getelementptr i8, ptr %call, i32 2304
  %call25 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #23
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %netdev_for_each_tx_queue.exit
  %call28158 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %53 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28158, i32 %53)
  %cmp29159 = icmp ult i32 %call28158, %53
  br i1 %cmp29159, label %for.body.lr.ph, label %for.cond.preheader.if.end38_crit_edge

for.cond.preheader.if.end38_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %54 = ptrtoint ptr %call25 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call28160 = phi i32 [ %call28158, %for.body.lr.ph ], [ %call28, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call28160
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  %add = add i32 %56, %54
  %57 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %57, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %57, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @dsa_slave_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %58 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %syncp, align 4
  %call28 = tail call i32 @cpumask_next(i32 noundef %call28160, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %59 = load i32, ptr @nr_cpu_ids, align 4
  %cmp29 = icmp ult i32 %call28, %59
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.if.end38_crit_edge

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

if.then37:                                        ; preds = %netdev_for_each_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #21
  %60 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 130
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %60, align 64
  tail call void @free_netdev(ptr noundef %call) #19
  br label %cleanup

if.end38:                                         ; preds = %for.body.if.end38_crit_edge, %for.cond.preheader.if.end38_crit_edge
  %62 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 130
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call25, ptr %62, align 64
  %gcells = getelementptr i8, ptr %call, i32 2308
  %call39 = tail call i32 @gro_cells_init(ptr noundef %gcells, ptr noundef %call) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.out_free_crit_edge

if.end38.out_free_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %out_free

if.end42:                                         ; preds = %if.end38
  %dp = getelementptr i8, ptr %call, i32 2312
  %64 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %port, ptr %dp, align 4
  %mall_tc_list = getelementptr i8, ptr %call, i32 2320
  %65 = ptrtoint ptr %mall_tc_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %mall_tc_list, ptr %mall_tc_list, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2324
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %mall_tc_list, ptr %prev.i, align 4
  %67 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call, ptr %port, align 4
  %68 = load ptr, ptr %dp, align 4
  %cpu_dp2.i = getelementptr inbounds %struct.dsa_port, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %cpu_dp2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cpu_dp2.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %ds3.i = getelementptr inbounds %struct.dsa_port, ptr %68, i32 0, i32 4
  %73 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ds3.i, align 4
  %tag_ops.i = getelementptr inbounds %struct.dsa_port, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %tag_ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tag_ops.i, align 4
  %needed_headroom.i = getelementptr inbounds %struct.dsa_device_ops, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %needed_headroom.i, align 4
  %conv.i151 = trunc i32 %78 to i16
  %needed_headroom4.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 21
  %79 = ptrtoint ptr %needed_headroom4.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i151, ptr %needed_headroom4.i, align 8
  %80 = load ptr, ptr %tag_ops.i, align 4
  %needed_tailroom.i = getelementptr inbounds %struct.dsa_device_ops, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %needed_tailroom.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %needed_tailroom.i, align 4
  %conv6.i = trunc i32 %82 to i16
  %needed_tailroom7.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 22
  %83 = ptrtoint ptr %needed_tailroom7.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv6.i, ptr %needed_tailroom7.i, align 2
  %needed_headroom8.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 21
  %84 = ptrtoint ptr %needed_headroom8.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %needed_headroom8.i, align 8
  %add.i = add i16 %85, %conv.i151
  store i16 %add.i, ptr %needed_headroom4.i, align 8
  %needed_tailroom13.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 22
  %86 = ptrtoint ptr %needed_tailroom13.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %needed_tailroom13.i, align 2
  %add17.i = add i16 %87, %conv6.i
  store i16 %add17.i, ptr %needed_tailroom7.i, align 2
  %88 = load ptr, ptr %tag_ops.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %add.ptr.i150, align 4
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 26
  %92 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %vlan_features.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %94 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %hw_features.i, align 8
  %or21.i = or i64 %95, 562949953421312
  store i64 %or21.i, ptr %hw_features.i, align 8
  %or23.i = or i64 %93, 562949953425408
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add17.i)
  %tobool.not.i = icmp eq i16 %add17.i, 0
  %and.i = and i64 %or23.i, -66
  %spec.select.i = select i1 %tobool.not.i, i64 %or23.i, i64 %and.i
  %96 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %spec.select.i, ptr %features.i, align 16
  %needs_standalone_vlan_filtering.i = getelementptr inbounds %struct.dsa_switch, ptr %74, i32 0, i32 3
  %97 = ptrtoint ptr %needs_standalone_vlan_filtering.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i = load i16, ptr %needs_standalone_vlan_filtering.i, align 4
  %98 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool26.not.i = icmp eq i16 %98, 0
  br i1 %tobool26.not.i, label %if.end42.dsa_slave_setup_tagger.exit_crit_edge, label %if.then27.i

if.end42.dsa_slave_setup_tagger.exit_crit_edge:   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_setup_tagger.exit

if.then27.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  %or29.i = or i64 %spec.select.i, 512
  %99 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %or29.i, ptr %features.i, align 16
  br label %dsa_slave_setup_tagger.exit

dsa_slave_setup_tagger.exit:                      ; preds = %if.then27.i, %if.end42.dsa_slave_setup_tagger.exit_crit_edge
  tail call void @netif_carrier_off(ptr noundef %call) #19
  %100 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dp, align 4
  %dn.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 12
  %102 = ptrtoint ptr %dn.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dn.i, align 4
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 4
  %104 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ds1.i, align 4
  %dev.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133
  %pl_config.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 17
  %106 = ptrtoint ptr %pl_config.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %dev.i, ptr %pl_config.i, align 4
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 17, i32 1
  %107 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %type.i, align 4
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %105, i32 0, i32 8
  %108 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i, align 4
  %phylink_fixed_state.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %109, i32 0, i32 19
  %110 = ptrtoint ptr %phylink_fixed_state.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %phylink_fixed_state.i, align 4
  %tobool.not.i153 = icmp eq ptr %111, null
  br i1 %tobool.not.i153, label %dsa_slave_setup_tagger.exit.if.end.i_crit_edge, label %if.then.i

dsa_slave_setup_tagger.exit.if.end.i_crit_edge:   ; preds = %dsa_slave_setup_tagger.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %dsa_slave_setup_tagger.exit
  call void @__sanitizer_cov_trace_pc() #21
  %get_fixed_state.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 17, i32 6
  %112 = ptrtoint ptr %get_fixed_state.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @dsa_slave_phylink_fixed_state, ptr %get_fixed_state.i, align 4
  %poll_fixed_state.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 17, i32 4
  %113 = ptrtoint ptr %poll_fixed_state.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %poll_fixed_state.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %dsa_slave_setup_tagger.exit.if.end.i_crit_edge
  %call6.i = tail call i32 @dsa_port_phylink_create(ptr noundef %101) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.if.then45_crit_edge

if.end.i.if.then45_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then45

if.end9.i:                                        ; preds = %if.end.i
  %114 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i, align 4
  %get_phy_flags.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %115, i32 0, i32 7
  %116 = ptrtoint ptr %get_phy_flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %get_phy_flags.i, align 4
  %tobool11.not.i = icmp eq ptr %117, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #21
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 5
  %118 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %index.i, align 4
  %call15.i = tail call i32 %117(ptr noundef %105, i32 noundef %119) #19
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %phy_flags.0.i = phi i32 [ %call15.i, %if.then12.i ], [ 0, %if.end9.i.if.end16.i_crit_edge ]
  %pl.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 16
  %120 = ptrtoint ptr %pl.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pl.i, align 4
  %call17.i = tail call i32 @phylink_of_phy_connect(ptr noundef %121, ptr noundef %103, i32 noundef %phy_flags.0.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call17.i)
  %cmp.i154 = icmp eq i32 %call17.i, -19
  br i1 %cmp.i154, label %land.lhs.true.i, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %slave_mii_bus.i = getelementptr inbounds %struct.dsa_switch, ptr %105, i32 0, i32 10
  %122 = ptrtoint ptr %slave_mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %slave_mii_bus.i, align 4
  %tobool18.not.i = icmp eq ptr %123, null
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.then24.i_crit_edge, label %if.then19.i

land.lhs.true.i.if.then24.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  %index20.i = getelementptr inbounds %struct.dsa_port, ptr %101, i32 0, i32 5
  %124 = ptrtoint ptr %index20.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %index20.i, align 4
  %126 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dp, align 4
  %ds1.i.i = getelementptr inbounds %struct.dsa_port, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %ds1.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ds1.i.i, align 4
  %slave_mii_bus.i.i = getelementptr inbounds %struct.dsa_switch, ptr %129, i32 0, i32 10
  %130 = ptrtoint ptr %slave_mii_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %slave_mii_bus.i.i, align 4
  %call2.i.i = tail call ptr @mdiobus_get_phy(ptr noundef %131, i32 noundef %125) #19
  %phydev.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 145
  %132 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call2.i.i, ptr %phydev.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %call, ptr noundef nonnull @.str.38, i32 noundef %125) #25
  br label %if.then24.i

if.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #21
  %dev_flags.i.i = getelementptr inbounds %struct.phy_device, ptr %call2.i.i, i32 0, i32 6
  %133 = ptrtoint ptr %dev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dev_flags.i.i, align 8
  %or.i.i = or i32 %134, %phy_flags.0.i
  store i32 %or.i.i, ptr %dev_flags.i.i, align 8
  %pl.i.i = getelementptr inbounds %struct.dsa_port, ptr %127, i32 0, i32 16
  %135 = ptrtoint ptr %pl.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pl.i.i, align 4
  %137 = ptrtoint ptr %phydev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %phydev.i.i, align 16
  %call6.i.i = tail call i32 @phylink_connect_phy(ptr noundef %136, ptr noundef %138) #19
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i.i, %if.end16.i.if.end22.i_crit_edge
  %ret.0.i = phi i32 [ %call17.i, %if.end16.i.if.end22.i_crit_edge ], [ %call6.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool23.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool23.not.i, label %if.end49, label %if.end22.i.if.then24.i_crit_edge

if.end22.i.if.then24.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.end22.i.if.then24.i_crit_edge, %if.then.i.i, %land.lhs.true.i.if.then24.i_crit_edge
  %ret.057.i = phi i32 [ %ret.0.i, %if.end22.i.if.then24.i_crit_edge ], [ -19, %land.lhs.true.i.if.then24.i_crit_edge ], [ -19, %if.then.i.i ]
  %139 = inttoptr i32 %ret.057.i to ptr
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %call, ptr noundef nonnull @.str.37, ptr noundef %139) #25
  %140 = ptrtoint ptr %pl.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pl.i, align 4
  tail call void @phylink_destroy(ptr noundef %141) #19
  br label %if.then45

if.then45:                                        ; preds = %if.then24.i, %if.end.i.if.then45_crit_edge
  %retval.0.i.ph = phi i32 [ %ret.057.i, %if.then24.i ], [ %call6.i, %if.end.i.if.then45_crit_edge ]
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 1
  %142 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dst, align 4
  %index46 = getelementptr inbounds %struct.dsa_switch_tree, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %index46 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %index46, align 4
  %index47 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 2
  %146 = ptrtoint ptr %index47 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %index47, align 4
  %index48 = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 5
  %148 = ptrtoint ptr %index48 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %index48, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %call, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i.ph, i32 noundef %145, i32 noundef %147, i32 noundef %149) #25
  br label %out_gcells

if.end49:                                         ; preds = %if.end22.i
  tail call void @rtnl_lock() #19
  %call50 = tail call i32 @dsa_slave_change_mtu(ptr noundef %call, i32 noundef 1500)
  %150 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call50, label %do.end56 [
    i32 0, label %if.end49.if.end59_crit_edge
    i32 -95, label %if.end49.if.end59_crit_edge161
  ]

if.end49.if.end59_crit_edge161:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end59

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #21
  %151 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %5, align 4
  %index58 = getelementptr inbounds %struct.dsa_port, ptr %port, i32 0, i32 5
  %153 = ptrtoint ptr %index58 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %index58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.4, i32 noundef %call50, i32 noundef 1500, i32 noundef %154) #25
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.end49.if.end59_crit_edge, %if.end49.if.end59_crit_edge161
  %call60 = tail call i32 @register_netdevice(ptr noundef %call) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end65, label %if.then62

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %call60, ptr noundef %call) #25
  tail call void @rtnl_unlock() #19
  br label %out_phy

if.end65:                                         ; preds = %if.end59
  %call66 = tail call i32 @netdev_upper_dev_link(ptr noundef %3, ptr noundef %call, ptr noundef null) #19
  tail call void @rtnl_unlock() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end65.cleanup_crit_edge, label %out_unregister

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

out_unregister:                                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @unregister_netdev(ptr noundef %call) #19
  br label %out_phy

out_phy:                                          ; preds = %out_unregister, %if.then62
  %ret.0 = phi i32 [ %call60, %if.then62 ], [ %call66, %out_unregister ]
  tail call void @rtnl_lock() #19
  %155 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dp, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %156, i32 0, i32 16
  %157 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pl, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %158) #19
  tail call void @rtnl_unlock() #19
  %159 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dp, align 4
  %pl72 = getelementptr inbounds %struct.dsa_port, ptr %160, i32 0, i32 16
  %161 = ptrtoint ptr %pl72 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pl72, align 4
  tail call void @phylink_destroy(ptr noundef %162) #19
  br label %out_gcells

out_gcells:                                       ; preds = %out_phy, %if.then45
  %ret.1 = phi i32 [ %retval.0.i.ph, %if.then45 ], [ %ret.0, %out_phy ]
  tail call void @gro_cells_destroy(ptr noundef %gcells) #19
  br label %out_free

out_free:                                         ; preds = %out_gcells, %if.end38.out_free_crit_edge
  %ret.2 = phi i32 [ %call39, %if.end38.out_free_crit_edge ], [ %ret.1, %out_gcells ]
  %163 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %62, align 64
  tail call void @free_percpu(ptr noundef %164) #19
  tail call void @free_netdev(ptr noundef %call) #19
  %165 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %port, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end65.cleanup_crit_edge, %if.then37, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free ], [ -12, %if.then37 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gro_cells_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_slave_destroy(ptr noundef %slave_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %slave_dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @netif_carrier_off(ptr noundef %slave_dev) #19
  tail call void @rtnl_lock() #19
  tail call void @netdev_upper_dev_unlink(ptr noundef %5, ptr noundef %slave_dev) #19
  tail call void @unregister_netdevice_queue(ptr noundef %slave_dev, ptr noundef null) #19
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pl, align 4
  tail call void @phylink_disconnect_phy(ptr noundef %7) #19
  tail call void @rtnl_unlock() #19
  %8 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pl, align 4
  tail call void @phylink_destroy(ptr noundef %9) #19
  %gcells = getelementptr i8, ptr %slave_dev, i32 2308
  tail call void @gro_cells_destroy(ptr noundef %gcells) #19
  %10 = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 130
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 64
  tail call void @free_percpu(ptr noundef %12) #19
  tail call void @free_netdev(ptr noundef %slave_dev) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dsa_slave_dev_check(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @dsa_slave_netdev_ops
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 9, label %sw.bb
    i32 3, label %entry.sw.bb3_crit_edge
    i32 4, label %entry.sw.bb3_crit_edge16
  ]

entry.sw.bb3_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call1 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_attr_set) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge16
  %call4 = tail call i32 @switchdev_handle_fdb_event_to_device(ptr noundef %1, i32 noundef %event, ptr noundef %ptr, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_foreign_dev_check, ptr noundef nonnull @dsa_slave_fdb_event, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i12 = icmp eq i32 %call4, 0
  %sub.i13 = sub i32 1, %call4
  %or.i14 = or i32 %sub.i13, 32768
  %retval.0.i15 = select i1 %tobool.not.i12, i32 1, i32 %or.i14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i15, %sw.bb3 ], [ %retval.0.i, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_switchdev_blocking_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb3
    i32 9, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call1 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_obj_add) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not.i = icmp eq i32 %call1, 0
  %sub.i = sub i32 1, %call1
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call4 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_obj_del) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not.i17 = icmp eq i32 %call4, 0
  %sub.i18 = sub i32 1, %call4
  %or.i19 = or i32 %sub.i18, 32768
  %retval.0.i20 = select i1 %tobool.not.i17, i32 1, i32 %or.i19
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef nonnull @dsa_slave_dev_check, ptr noundef nonnull @dsa_slave_port_attr_set) #19
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
define dso_local i32 @dsa_slave_register_notifier() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @dsa_slave_nb) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @dsa_slave_switchdev_notifier) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_switchdev_nb_crit_edge

if.end.err_switchdev_nb_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_switchdev_nb

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %err_switchdev_blocking_nb

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

err_switchdev_blocking_nb:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #21
  %call9 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @dsa_slave_switchdev_notifier) #19
  br label %err_switchdev_nb

err_switchdev_nb:                                 ; preds = %err_switchdev_blocking_nb, %if.end.err_switchdev_nb_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err_switchdev_nb_crit_edge ], [ %call5, %err_switchdev_blocking_nb ]
  %call10 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @dsa_slave_nb) #19
  br label %cleanup

cleanup:                                          ; preds = %err_switchdev_nb, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_switchdev_nb ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsa_slave_unregister_notifier() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @dsa_slave_switchdev_blocking_notifier) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call) #25
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @dsa_slave_switchdev_notifier) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call2) #25
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @dsa_slave_nb) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end19_crit_edge, label %do.end16

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call11) #25
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.end10.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_proto(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  %vlan = alloca %struct.switchdev_obj_port_vlan, align 4
  %extack = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan) #19
  %6 = getelementptr inbounds %struct.switchdev_obj, ptr %vlan, i32 0, i32 2
  %7 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %8 = call ptr @memset(ptr %vlan, i32 0, i32 32)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %vid, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack) #19
  %11 = call ptr @memset(ptr %extack, i32 0, i32 36)
  %call3 = call i32 @dsa_port_vlan_add(ptr noundef %1, ptr noundef nonnull %vlan, ptr noundef nonnull %extack) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull %13) #25
  br label %cleanup

if.end7:                                          ; preds = %entry
  %14 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpu_dp.i, align 4
  %call8 = call i32 @dsa_port_vlan_add(ptr noundef %15, ptr noundef nonnull %vlan, ptr noundef nonnull %extack) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %if.end7
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extack, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %if.then13

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_dp.i, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %21, ptr noundef nonnull %17) #25
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  %call18 = call i32 @vlan_vid_add(ptr noundef %5, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then13, %if.then10.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ %call3, %if.then5 ], [ %call3, %if.then.cleanup_crit_edge ], [ %call8, %if.then13 ], [ %call8, %if.then10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_vlan_rx_kill_vid(ptr nocapture noundef readonly %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  %vlan = alloca %struct.switchdev_obj_port_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan) #19
  %6 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan, i32 0, i32 2
  %7 = call ptr @memset(ptr %vlan, i32 0, i32 32)
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %vid, ptr %6, align 2
  %call3 = call i32 @dsa_port_vlan_del(ptr noundef %1, ptr noundef nonnull %vlan) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  call void @vlan_vid_del(ptr noundef %5, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan) #19
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_hw_port_list_set_mtu(ptr noundef readonly %hw_port_list, i32 noundef %mtu) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.057 = load ptr, ptr %hw_port_list, align 4
  %cmp.not58 = icmp eq ptr %p.057, %hw_port_list
  br i1 %cmp.not58, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p.059 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.057, %entry.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.dsa_hw_port, ptr %p.059, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %mtu)
  %cmp2 = icmp eq i32 %4, %mtu
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call i32 @dev_set_mtu(ptr noundef %2, i32 noundef %mtu) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %for.cond15.preheader

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

for.cond15.preheader:                             ; preds = %if.end
  %p.1.in60 = getelementptr inbounds %struct.list_head, ptr %p.059, i32 0, i32 1
  %5 = ptrtoint ptr %p.1.in60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.161 = load ptr, ptr %p.1.in60, align 4
  %cmp17.not62 = icmp eq ptr %p.161, %hw_port_list
  br i1 %cmp17.not62, label %for.cond15.preheader.cleanup_crit_edge, label %for.cond15.preheader.for.body19_crit_edge

for.cond15.preheader.for.body19_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body19

for.cond15.preheader.cleanup_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %p.059 to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0 = load ptr, ptr %p.059, align 4
  %cmp.not = icmp eq ptr %p.0, %hw_port_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body19:                                       ; preds = %for.inc32.for.body19_crit_edge, %for.cond15.preheader.for.body19_crit_edge
  %p.163 = phi ptr [ %p.1, %for.inc32.for.body19_crit_edge ], [ %p.161, %for.cond15.preheader.for.body19_crit_edge ]
  %dev20 = getelementptr inbounds %struct.dsa_hw_port, ptr %p.163, i32 0, i32 1
  %7 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev20, align 4
  %mtu21 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mtu21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu21, align 4
  %old_mtu = getelementptr inbounds %struct.dsa_hw_port, ptr %p.163, i32 0, i32 2
  %11 = ptrtoint ptr %old_mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old_mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp22 = icmp eq i32 %10, %12
  br i1 %cmp22, label %for.body19.for.inc32_crit_edge, label %if.end24

for.body19.for.inc32_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc32

if.end24:                                         ; preds = %for.body19
  %call27 = tail call i32 @dev_set_mtu(ptr noundef %8, i32 noundef %12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end24.for.inc32_crit_edge, label %if.then29

if.end24.for.inc32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  %13 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.20) #25
  br label %for.inc32

for.inc32:                                        ; preds = %if.then29, %if.end24.for.inc32_crit_edge, %for.body19.for.inc32_crit_edge
  %p.1.in = getelementptr inbounds %struct.list_head, ptr %p.163, i32 0, i32 1
  %15 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.1 = load ptr, ptr %p.1.in, align 4
  %cmp17.not = icmp eq ptr %p.1, %hw_port_list
  br i1 %cmp17.not, label %for.inc32.cleanup_crit_edge, label %for.inc32.for.body19_crit_edge

for.inc32.for.body19_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body19

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond15.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.cond15.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %for.inc32.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.21, i32 noundef 32) #19
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call2 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.22, i32 noundef 32) #19
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef nonnull @.str.23, i32 noundef 32) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_regs_len(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_regs_len = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %get_regs_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_regs_len, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_regs(ptr nocapture noundef readonly %dev, ptr noundef %regs, ptr noundef %_p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_regs = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 42
  %6 = ptrtoint ptr %get_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_regs, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9, ptr noundef %regs, ptr noundef %_p) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_wol(ptr nocapture noundef readonly %dev, ptr noundef %w) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pl, align 4
  tail call void @phylink_ethtool_get_wol(ptr noundef %5, ptr noundef %w) #19
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_wol = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %get_wol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_wol, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  tail call void %9(ptr noundef %3, i32 noundef %11, ptr noundef %w) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_wol(ptr nocapture noundef readonly %dev, ptr noundef %w) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pl, align 4
  %call2 = tail call i32 @phylink_ethtool_set_wol(ptr noundef %5, ptr noundef %w) #19
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %set_wol = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %set_wol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_wol, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %call5 = tail call i32 %9(ptr noundef %3, i32 noundef %11, ptr noundef %w) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ -95, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_nway_reset(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pl, align 4
  %call1 = tail call i32 @phylink_ethtool_nway_reset(ptr noundef %3) #19
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_eeprom_len(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %cd = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %eeprom_len = getelementptr inbounds %struct.dsa_chip_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eeprom_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_eeprom_len = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 38
  %10 = ptrtoint ptr %get_eeprom_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_eeprom_len, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call10 = tail call i32 %11(ptr noundef %3) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then7 ], [ %7, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_eeprom(ptr nocapture noundef readonly %dev, ptr noundef %eeprom, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_eeprom = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %get_eeprom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_eeprom, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call4 = tail call i32 %7(ptr noundef %3, ptr noundef %eeprom, ptr noundef %data) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_eeprom(ptr nocapture noundef readonly %dev, ptr noundef %eeprom, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_eeprom = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %set_eeprom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_eeprom, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call4 = tail call i32 %7(ptr noundef %3, ptr noundef %eeprom, ptr noundef %data) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_pauseparam(ptr nocapture noundef readonly %dev, ptr noundef %pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pl, align 4
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %3, ptr noundef %pause) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_pauseparam(ptr nocapture noundef readonly %dev, ptr noundef %pause) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pl, align 4
  %call1 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %3, ptr noundef %pause) #19
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_net_selftest(ptr noundef %ndev, ptr noundef %etest, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %self_test = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %self_test to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %self_test, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9, ptr noundef %etest, ptr noundef %buf) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @net_selftest(ptr noundef %ndev, ptr noundef %etest, ptr noundef %buf) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %4 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %stringset, label %entry.if.end17_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then15
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then:                                          ; preds = %entry
  %5 = call ptr @memcpy(ptr %data, ptr @str, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %6 = call ptr @memcpy(ptr %add.ptr, ptr @str.59, i32 32)
  %add.ptr4 = getelementptr i8, ptr %data, i32 64
  %7 = call ptr @memcpy(ptr %add.ptr4, ptr @str.60, i32 32)
  %add.ptr7 = getelementptr i8, ptr %data, i32 96
  %8 = call ptr @memcpy(ptr %add.ptr7, ptr @str.61, i32 32)
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %get_strings = getelementptr inbounds %struct.dsa_switch_ops, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_strings, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %if.then9

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %add.ptr13 = getelementptr i8, ptr %data, i32 128
  tail call void %12(ptr noundef %3, i32 noundef %14, i32 noundef 1, ptr noundef %add.ptr13) #19
  br label %if.end17

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @net_selftest_get_strings(ptr noundef %data) #19
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then9, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %call243 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call243, i32 %4)
  %cmp44 = icmp ult i32 %call243, %4
  br i1 %cmp44, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %5 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %arrayidx16 = getelementptr i64, ptr %data, i32 1
  %arrayidx18 = getelementptr i64, ptr %data, i32 2
  %arrayidx20 = getelementptr i64, ptr %data, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end13.for.body_crit_edge, %for.body.lr.ph
  %call245 = phi i32 [ %call243, %for.body.lr.ph ], [ %call2, %do.end13.for.body_crit_edge ]
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 64
  %8 = ptrtoint ptr %7 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call245
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %8
  %11 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %11, i32 0, i32 4
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tx_packets6 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %11, i32 0, i32 2
  %tx_bytes7 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %11, i32 0, i32 3
  %rx_bytes9 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %11, i32 0, i32 1
  br label %do.body4

do.body4:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge, %for.body
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !159
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @trace_hardirqs_off() #19
  %13 = tail call ptr @llvm.returnaddress(i32 0) #19
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #19
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %14) #19
  tail call void @trace_hardirqs_on() #19
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #21
  %15 = tail call ptr @llvm.returnaddress(i32 0) #19
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #19
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %16) #19
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !157
  %and.i.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !160

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @warn_bogus_irq_restore() #19
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #19, !srcloc !161
  %18 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !162
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #19, !srcloc !163
  %20 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %21, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %21, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !164
  %22 = ptrtoint ptr %tx_packets6 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_packets6, align 16
  %24 = ptrtoint ptr %tx_bytes7 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_bytes7, align 8
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %11, align 32
  %28 = ptrtoint ptr %rx_bytes9 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_bytes9, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !165
  %30 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %31, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end13, label %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge

u64_stats_fetch_begin_irq.exit.do.body4_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body4

do.end13:                                         ; preds = %u64_stats_fetch_begin_irq.exit
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data, align 8
  %add15 = add i64 %33, %23
  store i64 %add15, ptr %data, align 8
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx16, align 8
  %add17 = add i64 %35, %25
  store i64 %add17, ptr %arrayidx16, align 8
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %37, %27
  store i64 %add19, ptr %arrayidx18, align 8
  %38 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx20, align 8
  %add21 = add i64 %39, %29
  store i64 %add21, ptr %arrayidx20, align 8
  %call2 = tail call i32 @cpumask_next(i32 noundef %call245, ptr noundef nonnull @__cpu_possible_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %40
  br i1 %cmp, label %do.end13.for.body_crit_edge, label %do.end13.for.end_crit_edge

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

do.end13.for.body_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %do.end13.for.end_crit_edge, %entry.for.end_crit_edge
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops, align 4
  %get_ethtool_stats = getelementptr inbounds %struct.dsa_switch_ops, ptr %42, i32 0, i32 21
  %43 = ptrtoint ptr %get_ethtool_stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_ethtool_stats, align 4
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  %add.ptr = getelementptr i64, ptr %data, i32 4
  tail call void %44(ptr noundef %3, i32 noundef %46, ptr noundef %add.ptr) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %4 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %sset, label %entry.cleanup14_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then10
  ]

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %get_sset_count = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_sset_count, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then2

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then2:                                         ; preds = %if.then
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %call5 = tail call i32 %8(ptr noundef %3, i32 noundef %10, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then2.cleanup14_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then2.cleanup14_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup14

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %count.0 = phi i32 [ %call5, %if.then2.if.end8_crit_edge ], [ 0, %if.then.if.end8_crit_edge ]
  %add = add nuw i32 %count.0, 4
  br label %cleanup14

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call11 = tail call i32 @net_selftest_get_count() #19
  br label %cleanup14

cleanup14:                                        ; preds = %if.then10, %if.end8, %if.then2.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ %call11, %if.then10 ], [ %add, %if.end8 ], [ %call5, %if.then2.cleanup14_crit_edge ], [ -95, %entry.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_rxnfc(ptr nocapture noundef readonly %dev, ptr noundef %nfc, ptr noundef %rule_locs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_rxnfc = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 59
  %6 = ptrtoint ptr %get_rxnfc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_rxnfc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, ptr noundef %nfc, ptr noundef %rule_locs) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_rxnfc(ptr nocapture noundef readonly %dev, ptr noundef %nfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_rxnfc = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 60
  %6 = ptrtoint ptr %set_rxnfc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_rxnfc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %call4 = tail call i32 %7(ptr noundef %3, i32 noundef %9, ptr noundef %nfc) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_ts_info(ptr nocapture noundef readonly %dev, ptr noundef %ts) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_ts_info = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %get_ts_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_ts_info, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %call5 = tail call i32 %7(ptr noundef %3, i32 noundef %9, ptr noundef %ts) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_eee(ptr nocapture noundef readonly %dev, ptr noundef %e) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pl, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_mac_eee = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 37
  %10 = ptrtoint ptr %get_mac_eee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_mac_eee, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %call8 = tail call i32 %11(ptr noundef %3, i32 noundef %13, ptr noundef %e) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pl, align 4
  %call13 = tail call i32 @phylink_ethtool_get_eee(ptr noundef %15, ptr noundef %e) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_eee(ptr nocapture noundef readonly %dev, ptr noundef %e) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pl, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %set_mac_eee = getelementptr inbounds %struct.dsa_switch_ops, ptr %9, i32 0, i32 36
  %10 = ptrtoint ptr %set_mac_eee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mac_eee, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %call8 = tail call i32 %11(ptr noundef %3, i32 noundef %13, ptr noundef %e) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pl, align 4
  %call13 = tail call i32 @phylink_ethtool_set_eee(ptr noundef %15, ptr noundef %e) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pl, align 4
  %call1 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef %3, ptr noundef %cmd) #19
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pl, align 4
  %call1 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef %3, ptr noundef %cmd) #19
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_eth_phy_stats(ptr nocapture noundef readonly %dev, ptr noundef %phy_stats) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_eth_phy_stats = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %get_eth_phy_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_eth_phy_stats, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9, ptr noundef %phy_stats) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_eth_mac_stats(ptr nocapture noundef readonly %dev, ptr noundef %mac_stats) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_eth_mac_stats = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %get_eth_mac_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_eth_mac_stats, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9, ptr noundef %mac_stats) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_eth_ctrl_stats(ptr nocapture noundef readonly %dev, ptr noundef %ctrl_stats) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_eth_ctrl_stats = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %get_eth_ctrl_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_eth_ctrl_stats, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9, ptr noundef %ctrl_stats) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_nway_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_selftest_get_strings(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_selftest_get_count() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_open(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @dev_open(ptr noundef %5, ptr noundef null) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %5) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %dev_addr3 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr3, align 64
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %xor.i = xor i32 %13, %11
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %9, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %17, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @dev_uc_add(ptr noundef %5, ptr noundef %7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then5.cleanup_crit_edge, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end11

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11.if.end17_crit_edge, label %if.then12

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then12:                                        ; preds = %if.end11
  %call13 = tail call i32 @dev_set_allmulti(ptr noundef %5, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.del_unicast_crit_edge, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then12.del_unicast_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #21
  br label %del_unicast

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and19 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end26_crit_edge, label %if.then21

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then21:                                        ; preds = %if.end17
  %call22 = tail call i32 @dev_set_promiscuity(ptr noundef %5, i32 noundef 1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then21.clear_allmulti_crit_edge, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then21.clear_allmulti_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #21
  br label %clear_allmulti

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %22 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev, align 16
  %call27 = tail call i32 @dsa_port_enable_rt(ptr noundef %1, ptr noundef %23) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %clear_promisc

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

clear_promisc:                                    ; preds = %if.end26
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %and32 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %clear_promisc.clear_allmulti_crit_edge, label %if.then34

clear_promisc.clear_allmulti_crit_edge:           ; preds = %clear_promisc
  call void @__sanitizer_cov_trace_pc() #21
  br label %clear_allmulti

if.then34:                                        ; preds = %clear_promisc
  call void @__sanitizer_cov_trace_pc() #21
  %call35 = tail call i32 @dev_set_promiscuity(ptr noundef %5, i32 noundef -1) #19
  br label %clear_allmulti

clear_allmulti:                                   ; preds = %if.then34, %clear_promisc.clear_allmulti_crit_edge, %if.then21.clear_allmulti_crit_edge
  %err.0 = phi i32 [ %call22, %if.then21.clear_allmulti_crit_edge ], [ %call27, %if.then34 ], [ %call27, %clear_promisc.clear_allmulti_crit_edge ]
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and38 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %clear_allmulti.del_unicast_crit_edge, label %if.then40

clear_allmulti.del_unicast_crit_edge:             ; preds = %clear_allmulti
  call void @__sanitizer_cov_trace_pc() #21
  br label %del_unicast

if.then40:                                        ; preds = %clear_allmulti
  call void @__sanitizer_cov_trace_pc() #21
  %call41 = tail call i32 @dev_set_allmulti(ptr noundef %5, i32 noundef -1) #19
  br label %del_unicast

del_unicast:                                      ; preds = %if.then40, %clear_allmulti.del_unicast_crit_edge, %if.then12.del_unicast_crit_edge
  %err.1 = phi i32 [ %call13, %if.then12.del_unicast_crit_edge ], [ %err.0, %if.then40 ], [ %err.0, %clear_allmulti.del_unicast_crit_edge ]
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %30 = ptrtoint ptr %dev_addr3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr3, align 64
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %xor.i77 = xor i32 %35, %33
  %add.ptr.i78 = getelementptr i8, ptr %29, i32 4
  %36 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i78, align 2
  %add.ptr1.i79 = getelementptr i8, ptr %31, i32 4
  %38 = ptrtoint ptr %add.ptr1.i79 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr1.i79, align 2
  %xor37.i80 = xor i16 %39, %37
  %xor3.i81 = zext i16 %xor37.i80 to i32
  %or.i82 = or i32 %xor.i77, %xor3.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i82)
  %cmp.i83 = icmp eq i32 %or.i82, 0
  br i1 %cmp.i83, label %del_unicast.cleanup_crit_edge, label %if.then46

del_unicast.cleanup_crit_edge:                    ; preds = %del_unicast
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then46:                                        ; preds = %del_unicast
  call void @__sanitizer_cov_trace_pc() #21
  %call48 = tail call i32 @dev_uc_del(ptr noundef %5, ptr noundef %29) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %del_unicast.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end26.cleanup_crit_edge ], [ %call2, %if.then ], [ %err.1, %del_unicast.cleanup_crit_edge ], [ %err.1, %if.then46 ], [ %call7, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_close(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @dsa_port_disable_rt(ptr noundef %1) #19
  tail call void @dev_mc_unsync(ptr noundef %5, ptr noundef %dev) #19
  tail call void @dev_uc_unsync(ptr noundef %5, ptr noundef %dev) #19
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call2 = tail call i32 @dev_set_allmulti(ptr noundef %5, i32 noundef -1) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and4 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %call7 = tail call i32 @dev_set_promiscuity(ptr noundef %5, i32 noundef -1) #19
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %dev_addr9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr9, align 64
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %xor.i = xor i32 %17, %15
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %13, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %21, %19
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  %call13 = tail call i32 @dev_uc_del(ptr noundef %5, ptr noundef %11) #19
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_xmit(ptr noundef %skb, ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 64
  %5 = tail call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %entry.dev_sw_netstats_tx_add.exit_crit_edge, label %land.lhs.true.i.i.i

entry.dev_sw_netstats_tx_add.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_sw_netstats_tx_add.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !166
  %14 = tail call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %19, ptrtoint (ptr @lockdep_recursion to i32)
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !167
  %23 = tail call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i.i7.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge

land.lhs.true.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_sw_netstats_tx_add.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge

land.rhs.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_sw_netstats_tx_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i.i9.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %34, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !168
  %35 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %38, ptrtoint (ptr @hardirqs_enabled to i32)
  %39 = inttoptr i32 %add47.i.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !169
  %42 = tail call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i.i12.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool54.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_sw_netstats_tx_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, label %if.then.i.i.i, !prof !158

land.rhs58.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_sw_netstats_tx_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 271, i32 noundef 9, ptr noundef null) #19
  br label %dev_sw_netstats_tx_add.exit

dev_sw_netstats_tx_add.exit:                      ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %land.rhs22.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %land.rhs.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %land.lhs.true.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %entry.dev_sw_netstats_tx_add.exit_crit_edge
  %46 = ptrtoint ptr %4 to i32
  %add.i = add i32 %10, %46
  %47 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !170
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %47, i32 0, i32 4, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #19
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %51) #19
  %conv.i = zext i32 %1 to i64
  %tx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tx_bytes.i, align 8
  %add2.i = add i64 %53, %conv.i
  store i64 %add2.i, ptr %tx_bytes.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %47, i32 0, i32 2
  %54 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %tx_packets.i, align 16
  %add4.i = add i64 %55, 1
  store i64 %add4.i, ptr %tx_packets.i, align 16
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %51) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #19, !srcloc !171
  %56 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %58 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %59 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dp.i, align 4
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ds1.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %63 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tx_flags.i, align 1
  %67 = and i8 %66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i, label %dev_sw_netstats_tx_add.exit.dsa_skb_tx_timestamp.exit_crit_edge, label %if.end.i

dev_sw_netstats_tx_add.exit.dsa_skb_tx_timestamp.exit_crit_edge: ; preds = %dev_sw_netstats_tx_add.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_skb_tx_timestamp.exit

if.end.i:                                         ; preds = %dev_sw_netstats_tx_add.exit
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %62, i32 0, i32 8
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %port_txtstamp.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %69, i32 0, i32 76
  %70 = ptrtoint ptr %port_txtstamp.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port_txtstamp.i, align 4
  %tobool2.not.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i, label %if.end.i.dsa_skb_tx_timestamp.exit_crit_edge, label %if.end4.i

if.end.i.dsa_skb_tx_timestamp.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_skb_tx_timestamp.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %60, i32 0, i32 5
  %72 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index.i, align 4
  tail call void %71(ptr noundef %62, i32 noundef %73, ptr noundef %skb) #19
  br label %dsa_skb_tx_timestamp.exit

dsa_skb_tx_timestamp.exit:                        ; preds = %if.end4.i, %if.end.i.dsa_skb_tx_timestamp.exit_crit_edge, %dev_sw_netstats_tx_add.exit.dsa_skb_tx_timestamp.exit_crit_edge
  %needed_headroom1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %74 = ptrtoint ptr %needed_headroom1.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %needed_headroom1.i, align 8
  %conv.i26 = zext i16 %75 to i32
  %needed_tailroom2.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %76 = ptrtoint ptr %needed_tailroom2.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %needed_tailroom2.i, align 2
  %conv3.i = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i27 = icmp eq i16 %77, 0
  br i1 %tobool.not.i27, label %dsa_skb_tx_timestamp.exit.if.end.i29_crit_edge, label %land.rhs.i

dsa_skb_tx_timestamp.exit.if.end.i29_crit_edge:   ; preds = %dsa_skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i29

land.rhs.i:                                       ; preds = %dsa_skb_tx_timestamp.exit
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %79)
  %cmp.i = icmp ult i32 %79, 60
  br i1 %cmp.i, label %if.then.i, label %land.rhs.i.if.end.i29_crit_edge, !prof !160

land.rhs.i.if.end.i29_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i29

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = add nuw nsw i32 %conv3.i, 60
  %add.i28 = sub nuw nsw i32 %sub.i, %79
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.then.i, %land.rhs.i.if.end.i29_crit_edge, %dsa_skb_tx_timestamp.exit.if.end.i29_crit_edge
  %needed_tailroom.0.i = phi i32 [ %add.i28, %if.then.i ], [ %conv3.i, %land.rhs.i.if.end.i29_crit_edge ], [ 0, %dsa_skb_tx_timestamp.exit.if.end.i29_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %82 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %sub8.i = add i32 %sub.ptr.sub.i.neg.i, %conv.i26
  %84 = tail call i32 @llvm.smax.i32(i32 %sub8.i, i32 0) #19
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %85 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end.i29.skb_tailroom.exit.i_crit_edge

if.end.i29.skb_tailroom.exit.i_crit_edge:         ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #21
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #21
  %87 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %89 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i54.i = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i55.i = ptrtoint ptr %90 to i32
  %sub.ptr.sub.i56.neg.i = sub i32 %sub.ptr.rhs.cast.i55.i, %sub.ptr.lhs.cast.i54.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end.i29.skb_tailroom.exit.i_crit_edge
  %cond.i.neg.i = phi i32 [ %sub.ptr.sub.i56.neg.i, %cond.false.i.i ], [ 0, %if.end.i29.skb_tailroom.exit.i_crit_edge ]
  %sub12.i = add i32 %cond.i.neg.i, %needed_tailroom.0.i
  %91 = tail call i32 @llvm.smax.i32(i32 %sub12.i, i32 0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub8.i)
  %tobool20.not.i = icmp slt i32 %sub8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub12.i)
  %tobool21.not.i = icmp slt i32 %sub12.i, 1
  %or.cond.i = select i1 %tobool20.not.i, i1 %tobool21.not.i, i1 false
  br i1 %or.cond.i, label %land.rhs22.i, label %skb_tailroom.exit.i.dsa_realloc_skb.exit_crit_edge, !prof !172

skb_tailroom.exit.i.dsa_realloc_skb.exit_crit_edge: ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_realloc_skb.exit

land.rhs22.i:                                     ; preds = %skb_tailroom.exit.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %92 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %land.rhs22.i.if.end_crit_edge, label %skb_cloned.exit.i

land.rhs22.i.if.end_crit_edge:                    ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

skb_cloned.exit.i:                                ; preds = %land.rhs22.i
  %93 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #19
  %95 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i31 = and i32 %96, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i31)
  %cmp.i.not.i = icmp eq i32 %and.i.i31, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end_crit_edge, label %skb_cloned.exit.i.dsa_realloc_skb.exit_crit_edge, !prof !158

skb_cloned.exit.i.dsa_realloc_skb.exit_crit_edge: ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_realloc_skb.exit

skb_cloned.exit.i.if.end_crit_edge:               ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

dsa_realloc_skb.exit:                             ; preds = %skb_cloned.exit.i.dsa_realloc_skb.exit_crit_edge, %skb_tailroom.exit.i.dsa_realloc_skb.exit_crit_edge
  %call36.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %84, i32 noundef %91, i32 noundef 2592) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool.not = icmp eq i32 %call36.i, 0
  br i1 %tobool.not, label %dsa_realloc_skb.exit.if.end_crit_edge, label %if.then

dsa_realloc_skb.exit.if.end_crit_edge:            ; preds = %dsa_realloc_skb.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %dsa_realloc_skb.exit
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #19
  br label %cleanup

if.end:                                           ; preds = %dsa_realloc_skb.exit.if.end_crit_edge, %skb_cloned.exit.i.if.end_crit_edge, %land.rhs22.i.if.end_crit_edge
  %97 = ptrtoint ptr %needed_tailroom2.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %needed_tailroom2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool2.not = icmp eq i16 %98, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %99 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %100)
  %cmp.i.i.i32 = icmp ult i32 %100, 60
  br i1 %cmp.i.i.i32, label %if.then.i.i.i33, label %if.then3.if.end5_crit_edge, !prof !160

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then.i.i.i33:                                  ; preds = %if.then3
  %sub.i.i.i = sub nuw nsw i32 60, %100
  %call.i.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i.i, i1 noundef zeroext true) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i33.if.end5_crit_edge

if.then.i.i.i33.if.end5_crit_edge:                ; preds = %if.then.i.i.i33
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.end.i.i.i:                                     ; preds = %if.then.i.i.i33
  %101 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.not.i.i.i.i = icmp eq i32 %102, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put.exit.i.i.i, label %do.body3.i.i.i.i, !prof !158

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #19, !srcloc !173
  unreachable

__skb_put.exit.i.i.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %103 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %104, i32 %sub.i.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  %add.i.i.i.i34 = add i32 %106, %sub.i.i.i
  store i32 %add.i.i.i.i34, ptr %len, align 4
  br label %if.end5

if.end5:                                          ; preds = %__skb_put.exit.i.i.i, %if.then.i.i.i33.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 4
  %call6 = tail call ptr %108(ptr noundef %skb, ptr noundef %dev) #19
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #19
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #19, !srcloc !157
  %and.i.i.i = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i36, label %if.then.i35, !prof !158

if.then.i35:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %netpoll.i.i = getelementptr i8, ptr %dev, i32 2316
  %110 = ptrtoint ptr %netpoll.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %netpoll.i.i, align 4
  %call1.i.i = tail call i32 @netpoll_send_skb(ptr noundef %111, ptr noundef nonnull %call6) #19
  br label %cleanup

if.end.i36:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #21
  %112 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dp.i, align 4
  %cpu_dp.i.i = getelementptr inbounds %struct.dsa_port, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %cpu_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cpu_dp.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %118 = getelementptr inbounds %struct.anon.51, ptr %call6, i32 0, i32 2
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %118, align 8
  %call4.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call6) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end.i36, %if.then.i35, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ %call1.i.i, %if.then.i35 ], [ 0, %if.end.i36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_change_rx_flags(ptr nocapture noundef readonly %dev, i32 noundef %change) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then:                                          ; preds = %entry
  %and1 = and i32 %change, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %and5 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond = select i1 %tobool6.not, i32 -1, i32 1
  %call7 = tail call i32 @dev_set_allmulti(ptr noundef %5, i32 noundef %cond) #19
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %and8 = and i32 %change, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and12 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, i32 -1, i32 1
  %call15 = tail call i32 @dev_set_promiscuity(ptr noundef %5, i32 noundef %cond14) #19
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_set_rx_mode(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @dev_mc_sync(ptr noundef %5, ptr noundef %dev) #19
  %call2 = tail call i32 @dev_uc_sync(ptr noundef %5, ptr noundef %dev) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_set_mac_address(ptr noundef %dev, ptr noundef %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sa_data, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %a, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end3:                                          ; preds = %if.end
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %xor.i = xor i32 %16, %7
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %14, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %20, %18
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end3.if.end13_crit_edge, label %if.then7

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then7:                                         ; preds = %if.end3
  %call10 = tail call i32 @dev_uc_add(ptr noundef %5, ptr noundef %sa_data) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %dev_addr14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr14, align 64
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %xor.i36 = xor i32 %28, %26
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 4
  %29 = ptrtoint ptr %add.ptr.i37 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i37, align 2
  %add.ptr1.i38 = getelementptr i8, ptr %24, i32 4
  %31 = ptrtoint ptr %add.ptr1.i38 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i38, align 2
  %xor37.i39 = xor i16 %32, %30
  %xor3.i40 = zext i16 %xor37.i39 to i32
  %or.i41 = or i32 %xor.i36, %xor3.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i41)
  %cmp.i42 = icmp eq i32 %or.i41, 0
  br i1 %cmp.i42, label %if.end13.out_crit_edge, label %if.then17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %call19 = tail call i32 @dev_uc_del(ptr noundef %5, ptr noundef %22) #19
  br label %out

out:                                              ; preds = %if.then17, %if.end13.out_crit_edge, %if.end.out_crit_edge
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call10, %if.then7.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %ifr, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35249, label %sw.bb
    i32 35248, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %port_hwtstamp_get = getelementptr inbounds %struct.dsa_switch_ops, ptr %8, i32 0, i32 74
  %9 = ptrtoint ptr %port_hwtstamp_get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_hwtstamp_get, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %call5 = tail call i32 %10(ptr noundef %3, i32 noundef %5, ptr noundef %ifr) #19
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %ops7 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops7, align 4
  %port_hwtstamp_set = getelementptr inbounds %struct.dsa_switch_ops, ptr %12, i32 0, i32 75
  %13 = ptrtoint ptr %port_hwtstamp_set to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_hwtstamp_set, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then9

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #21
  %call12 = tail call i32 %14(ptr noundef %3, i32 noundef %5, ptr noundef %ifr) #19
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %pl = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pl, align 4
  %call15 = tail call i32 @phylink_mii_ioctl(ptr noundef %16, ptr noundef %ifr, i32 noundef %cmd) #19
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then9, %if.then
  %retval.0 = phi i32 [ %call15, %sw.epilog ], [ %call12, %if.then9 ], [ %call5, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_get_stats64(ptr noundef %dev, ptr noundef %s) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_stats64 = getelementptr inbounds %struct.dsa_switch_ops, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %get_stats64 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_stats64, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void %7(ptr noundef %3, i32 noundef %9, ptr noundef %s) #19
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dev_get_tstats64(ptr noundef %dev, ptr noundef %s) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dsa_slave_poll_controller(ptr nocapture noundef %dev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_netpoll_setup(ptr nocapture noundef %dev, ptr nocapture noundef readnone %ni) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 72) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @__netpoll_setup(ptr noundef nonnull %call7.i.i, ptr noundef %5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %netpoll7 = getelementptr i8, ptr %dev, i32 2316
  %7 = ptrtoint ptr %netpoll7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %netpoll7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6 ], [ %call3, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_netpoll_cleanup(ptr nocapture noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %netpoll1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %netpoll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netpoll1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %2 = ptrtoint ptr %netpoll1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %netpoll1, align 4
  tail call void @__netpoll_free(ptr noundef nonnull %1) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %type, label %sw.epilog [
    i32 5, label %sw.bb
    i32 14, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 1
  %5 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %binder_type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.if.end5.i_crit_edge
    i32 2, label %if.then3.i
  ]

sw.bb.if.end5.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then3.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %sw.bb.if.end5.i_crit_edge
  %cb.0.i = phi ptr [ @dsa_slave_setup_tc_block_cb_eg, %if.then3.i ], [ @dsa_slave_setup_tc_block_cb_ig, %sw.bb.if.end5.i_crit_edge ]
  %driver_block_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 7
  %8 = ptrtoint ptr %driver_block_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dsa_slave_block_cb_list, ptr %driver_block_list.i, align 4
  %9 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type_data, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %10, label %if.end5.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb13.i
  ]

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end5.i
  %call.i = tail call zeroext i1 @flow_block_cb_is_busy(ptr noundef nonnull %cb.0.i, ptr noundef %dev, ptr noundef nonnull @dsa_slave_block_cb_list) #19
  br i1 %call.i, label %sw.bb.i.cleanup_crit_edge, label %if.end7.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7.i:                                        ; preds = %sw.bb.i
  %call8.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull %cb.0.i, ptr noundef %dev, ptr noundef %dev, ptr noundef null) #19
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %call8.i to i32
  br label %cleanup

if.end12.i:                                       ; preds = %if.end7.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call8.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %14, ptr noundef %cb_list.i.i) #19
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end12.i.flow_block_cb_add.exit.i_crit_edge

if.end12.i.flow_block_cb_add.exit.i_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %flow_block_cb_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call8.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i.i, ptr %14, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.end12.i.flow_block_cb_add.exit.i_crit_edge
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_slave_block_cb_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call8.i, ptr noundef %19, ptr noundef nonnull @dsa_slave_block_cb_list) #19
  br i1 %call.i.i.i, label %if.end.i.i.i, label %flow_block_cb_add.exit.i.cleanup_crit_edge

flow_block_cb_add.exit.i.cleanup_crit_edge:       ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i.i:                                     ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  store ptr %call8.i, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_slave_block_cb_list, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dsa_slave_block_cb_list, ptr %call8.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call8.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call8.i, ptr %19, align 4
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.end5.i
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %23 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %block.i, align 4
  %call14.i = tail call ptr @flow_block_cb_lookup(ptr noundef %24, ptr noundef nonnull %cb.0.i, ptr noundef %dev) #19
  %tobool.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i, label %sw.bb13.i.cleanup_crit_edge, label %if.end16.i

sw.bb13.i.cleanup_crit_edge:                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end16.i:                                       ; preds = %sw.bb13.i
  %list.i36.i = getelementptr inbounds %struct.flow_block_cb, ptr %call14.i, i32 0, i32 1
  %cb_list.i37.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %call.i.i.i38.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i36.i) #19
  br i1 %call.i.i.i38.i, label %if.end.i.i.i39.i, label %if.end16.i.__list_del_entry.exit.i.i.i_crit_edge

if.end16.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i39.i:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call14.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %list.i36.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list.i36.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i39.i, %if.end16.i.__list_del_entry.exit.i.i.i_crit_edge
  %31 = ptrtoint ptr %cb_list.i37.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb_list.i37.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i36.i, ptr noundef %cb_list.i37.i, ptr noundef %32) #19
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %flow_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list.i36.i, ptr %prev1.i.i2.i.i.i, align 4
  %34 = ptrtoint ptr %list.i36.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %list.i36.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call14.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cb_list.i37.i, ptr %prev3.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %cb_list.i37.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list.i36.i, ptr %cb_list.i37.i, align 4
  br label %flow_block_cb_remove.exit.i

flow_block_cb_remove.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge
  %call.i.i40.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call14.i) #19
  br i1 %call.i.i40.i, label %if.end.i.i42.i, label %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge

flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit.i

if.end.i.i42.i:                                   ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i41.i = getelementptr inbounds %struct.list_head, ptr %call14.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i41.i, align 4
  %39 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call14.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i42.i, %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge
  %43 = ptrtoint ptr %call14.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %call14.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call14.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %sw.bb3.dsa_to_port.exit.i_crit_edge, label %sw.bb3.for.body.i.i_crit_edge

sw.bb3.for.body.i.i_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i.i

sw.bb3.dsa_to_port.exit.i_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb3.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %sw.bb3.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %50 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %51, %3
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %52 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %46)
  %cmp5.i.i = icmp eq i32 %53, %46
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %54 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %sw.bb3.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %sw.bb3.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %cpu_dp1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %cpu_dp1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cpu_dp1.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %60, i32 0, i32 42
  %61 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i19 = icmp eq ptr %62, null
  br i1 %tobool.not.i19, label %dsa_to_port.exit.i.cleanup_crit_edge, label %if.end.i

dsa_to_port.exit.i.cleanup_crit_edge:             ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %dsa_to_port.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  %call4.i = tail call i32 %62(ptr noundef %58, i32 noundef 14, ptr noundef %type_data) #19
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 8
  %63 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops, align 4
  %port_setup_tc = getelementptr inbounds %struct.dsa_switch_ops, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %port_setup_tc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %port_setup_tc, align 4
  %tobool.not = icmp eq ptr %66, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #21
  %index7 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %index7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index7, align 4
  %call8 = tail call i32 %66(ptr noundef %3, i32 noundef %68, i32 noundef %type, ptr noundef %type_data) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %if.end.i, %dsa_to_port.exit.i.cleanup_crit_edge, %list_del.exit.i, %sw.bb13.i.cleanup_crit_edge, %if.end.i.i.i, %flow_block_cb_add.exit.i.cleanup_crit_edge, %if.then10.i, %sw.bb.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -95, %sw.epilog.cleanup_crit_edge ], [ 0, %list_del.exit.i ], [ %12, %if.then10.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ -16, %sw.bb.i.cleanup_crit_edge ], [ -2, %sw.bb13.i.cleanup_crit_edge ], [ -95, %if.end5.i.cleanup_crit_edge ], [ 0, %flow_block_cb_add.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ], [ %call4.i, %if.end.i ], [ -95, %dsa_to_port.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_fdb_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %dev, ptr nocapture noundef readnone %filter_dev, ptr nocapture noundef %idx) #1 align 64 {
entry:
  %dump = alloca %struct.dsa_slave_dump_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dump) #19
  %2 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %dump, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %dump, i32 0, i32 2
  %4 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %dump, i32 0, i32 3
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
  %call5 = call i32 @dsa_port_fdb_dump(ptr noundef %1, ptr noundef nonnull @dsa_slave_port_fdb_do_dump, ptr noundef nonnull %dump) #19
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %idx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dump) #19
  ret i32 %call5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsa_slave_get_port_parent_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ppid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %devlink = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dst2 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst2, align 4
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %8 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %id_len, align 1
  %index = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %11 = ptrtoint ptr %ppid to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %ppid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_get_phys_port_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %name, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %devlink = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.35, i32 noundef %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp ult i32 %call1, %len
  %. = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsa_slave_get_iflink(ptr nocapture noundef readonly %dev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %cpu_dp.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dp.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dsa_slave_get_devlink_port(ptr nocapture noundef readonly %dev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %devlink = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink, align 4
  %tobool.not = icmp eq ptr %5, null
  %devlink_port = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 15
  %spec.select = select i1 %tobool.not, ptr null, ptr %devlink_port
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsa_slave_fill_forward_path(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %path) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dp.i = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp.i, align 4
  %cpu_dp1 = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cpu_dp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_dp1, align 4
  %dev3 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %dev3, align 4
  %7 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %path, align 4
  %tag_ops = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %tag_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tag_ops, align 4
  %proto = getelementptr inbounds %struct.dsa_device_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %proto, align 4
  %conv = trunc i32 %11 to i16
  %12 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2
  %proto4 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %proto4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %proto4, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %12, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  store ptr %18, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_enable_rt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_disable_rt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_mc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_uc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netpoll_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netpoll_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_setup_tc_block_cb_ig(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dsa_slave_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_setup_tc_block_cb_eg(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dsa_slave_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flow_block_cb_is_busy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_slave_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv, i1 noundef zeroext %ingress) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i = getelementptr inbounds %struct.net_device, ptr %cb_priv, i32 0, i32 23
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i, align 16
  %and.i = and i64 %1, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %3 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %command.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 1
  %5 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %command.i, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %6, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %protocol.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 1
  %8 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %9)
  %cmp.i.i = icmp eq i16 %9, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb.i.if.else.i.i_crit_edge

sw.bb.i.if.else.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i
  %rule.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 2
  %10 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rule.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i.i = icmp eq i32 %13, 1
  br i1 %cmp.i.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %11, i32 1
  %14 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp6.i.i = icmp eq i32 %15, 5
  br i1 %cmp6.i.i, label %if.then.i.i, label %land.lhs.true3.i.i.if.else.i.i_crit_edge

land.lhs.true3.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  %frombool.i.i.i = zext i1 %ingress to i8
  %dp.i.i.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %16 = ptrtoint ptr %dp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dp.i.i.i.i, align 4
  %ds2.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ds2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds2.i.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i.i, align 4
  %port_mirror_add.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %21, i32 0, i32 64
  %22 = ptrtoint ptr %port_mirror_add.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_mirror_add.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %flow_action_first_entry_get.exit.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

flow_action_first_entry_get.exit.i.i.i.i.i:       ; preds = %if.then.i.i
  %extack.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %24 = ptrtoint ptr %extack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extack.i.i.i, align 4
  %hw_stats.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %11, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, label %if.then14.i.i.i.i.i, !prof !158

land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i.i.i.i.i

if.then14.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 354, i32 noundef 9, ptr noundef null) #19
  br label %land.lhs.true.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then14.i.i.i.i.i, %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge
  %28 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  %neg.i.i.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i.i.i.i)
  %tobool46.not.i.i.i.i.i = icmp eq i32 %neg.i.i.i.i.i, 3
  br i1 %tobool46.not.i.i.i.i.i, label %if.end5.i.i.i, label %do.body48.i.i.i.i.i

do.body48.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #19
  %tobool49.not.i.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool49.not.i.i.i.i.i, label %do.body48.i.i.i.i.i.cleanup_crit_edge, label %cleanup.sink.split.i.i.i.i.i

do.body48.i.i.i.i.i.cleanup_crit_edge:            ; preds = %do.body48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup.sink.split.i.i.i.i.i:                     ; preds = %do.body48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @__flow_action_hw_stats_check.__msg, ptr %25, align 4
  br label %cleanup

if.end5.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.i.i
  %31 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rule.i.i, align 4
  %33 = getelementptr inbounds %struct.flow_rule, ptr %32, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %tobool8.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool8.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.end10.i.i.i

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end10.i.i.i:                                   ; preds = %if.end5.i.i.i
  %netdev_ops.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %netdev_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev_ops.i.i.i.i, align 8
  %cmp.i.i.i.i = icmp eq ptr %37, @dsa_slave_netdev_ops
  br i1 %cmp.i.i.i.i, label %if.end13.i.i.i, label %if.end10.i.i.i.cleanup_crit_edge

if.end10.i.i.i.cleanup_crit_edge:                 ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end13.i.i.i:                                   ; preds = %if.end10.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 32) #22
  %tobool15.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %if.end13.i.i.i.cleanup_crit_edge, label %if.end17.i.i.i

if.end13.i.i.i.cleanup_crit_edge:                 ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end17.i.i.i:                                   ; preds = %if.end13.i.i.i
  %cookie.i.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %39 = ptrtoint ptr %cookie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cookie.i.i.i, align 8
  %cookie18.i.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %cookie18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %cookie18.i.i.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %type.i.i.i, align 4
  %43 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %33, align 8
  %dp.i57.i.i.i = getelementptr i8, ptr %45, i32 2312
  %46 = ptrtoint ptr %dp.i57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dp.i57.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i.i.i, align 4
  %conv.i.i.i = trunc i32 %49 to i8
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i.i, ptr %43, align 8
  %ingress21.i.i.i = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, ptr %43, i32 0, i32 1
  %51 = ptrtoint ptr %ingress21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool.i.i.i, ptr %ingress21.i.i.i, align 1
  %52 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i.i, align 4
  %port_mirror_add24.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %53, i32 0, i32 64
  %54 = ptrtoint ptr %port_mirror_add24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port_mirror_add24.i.i.i, align 4
  %index25.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %17, i32 0, i32 5
  %56 = ptrtoint ptr %index25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index25.i.i.i, align 4
  %call27.i.i.i = tail call i32 %55(ptr noundef %19, i32 noundef %57, ptr noundef %43, i1 noundef zeroext %ingress) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end30.i.i.i, label %if.then29.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #19
  br label %cleanup

if.end30.i.i.i:                                   ; preds = %if.end17.i.i.i
  %mall_tc_list.i.i.i = getelementptr i8, ptr %cb_priv, i32 2320
  %prev.i.i.i.i = getelementptr i8, ptr %cb_priv, i32 2324
  %58 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %59, ptr noundef %mall_tc_list.i.i.i) #19
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end30.i.i.i.cleanup_crit_edge

if.end30.i.i.i.cleanup_crit_edge:                 ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i.i.i.i:                                 ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %60 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %61 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %mall_tc_list.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call7.i.i.i.i.i, ptr %59, align 4
  br label %cleanup

if.else.i.i:                                      ; preds = %land.lhs.true3.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %sw.bb.i.if.else.i.i_crit_edge
  %rule9.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 2
  %64 = ptrtoint ptr %rule9.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rule9.i.i, align 4
  %action10.i.i = getelementptr inbounds %struct.flow_rule, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %action10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %action10.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i33.i.i = icmp eq i32 %67, 1
  br i1 %cmp.i33.i.i, label %land.lhs.true13.i.i, label %if.else.i.i.cleanup_crit_edge

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true13.i.i:                              ; preds = %if.else.i.i
  %entries16.i.i = getelementptr inbounds %struct.flow_rule, ptr %65, i32 1
  %68 = ptrtoint ptr %entries16.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %entries16.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %69)
  %cmp19.i.i = icmp eq i32 %69, 22
  br i1 %cmp19.i.i, label %if.then21.i.i, label %land.lhs.true13.i.i.cleanup_crit_edge

land.lhs.true13.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then21.i.i:                                    ; preds = %land.lhs.true13.i.i
  %extack1.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %70 = ptrtoint ptr %extack1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %extack1.i.i.i, align 4
  %dp.i.i34.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %72 = ptrtoint ptr %dp.i.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dp.i.i34.i.i, align 4
  %ds3.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ds3.i.i.i, align 4
  %ops.i35.i.i = getelementptr inbounds %struct.dsa_switch, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %ops.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i35.i.i, align 4
  %port_policer_add.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %77, i32 0, i32 66
  %78 = ptrtoint ptr %port_policer_add.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %port_policer_add.i.i.i, align 4
  %tobool.not.i36.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i36.i.i, label %do.body.i.i.i, label %if.end6.i.i.i

do.body.i.i.i:                                    ; preds = %if.then21.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_add_cls_matchall_police.__msg) #19
  %tobool4.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool4.not.i.i.i, label %do.body.i.i.i.cleanup_crit_edge, label %if.then5.i.i.i

do.body.i.i.i.cleanup_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then5.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @dsa_slave_add_cls_matchall_police.__msg, ptr %71, align 4
  br label %cleanup

if.end6.i.i.i:                                    ; preds = %if.then21.i.i
  br i1 %ingress, label %flow_action_first_entry_get.exit.i.i.i63.i.i, label %do.body9.i.i.i

do.body9.i.i.i:                                   ; preds = %if.end6.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_add_cls_matchall_police.__msg.32) #19
  %tobool11.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool11.not.i.i.i, label %do.body9.i.i.i.cleanup_crit_edge, label %if.then12.i.i.i

do.body9.i.i.i.cleanup_crit_edge:                 ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then12.i.i.i:                                  ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %81 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @dsa_slave_add_cls_matchall_police.__msg.32, ptr %71, align 4
  br label %cleanup

flow_action_first_entry_get.exit.i.i.i63.i.i:     ; preds = %if.end6.i.i.i
  %hw_stats.i.i.i61.i.i = getelementptr inbounds %struct.flow_rule, ptr %65, i32 1, i32 0, i32 2
  %82 = ptrtoint ptr %hw_stats.i.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hw_stats.i.i.i61.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i.i62.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i.i62.i.i, label %land.rhs.i.i.i65.i.i, label %flow_action_first_entry_get.exit.i.i.i63.i.i.land.lhs.true.i.i.i69.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.i63.i.i.land.lhs.true.i.i.i69.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i.i.i69.i.i

land.rhs.i.i.i65.i.i:                             ; preds = %flow_action_first_entry_get.exit.i.i.i63.i.i
  %.b1.i.i.i64.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i.i64.i.i, label %land.rhs.i.i.i65.i.i.land.lhs.true.i.i.i69.i.i_crit_edge, label %if.then14.i.i.i66.i.i, !prof !158

land.rhs.i.i.i65.i.i.land.lhs.true.i.i.i69.i.i_crit_edge: ; preds = %land.rhs.i.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %land.lhs.true.i.i.i69.i.i

if.then14.i.i.i66.i.i:                            ; preds = %land.rhs.i.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 354, i32 noundef 9, ptr noundef null) #19
  br label %land.lhs.true.i.i.i69.i.i

land.lhs.true.i.i.i69.i.i:                        ; preds = %if.then14.i.i.i66.i.i, %land.rhs.i.i.i65.i.i.land.lhs.true.i.i.i69.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.i63.i.i.land.lhs.true.i.i.i69.i.i_crit_edge
  %84 = ptrtoint ptr %hw_stats.i.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hw_stats.i.i.i61.i.i, align 8
  %neg.i.i.i67.i.i = and i32 %85, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i.i67.i.i)
  %tobool46.not.i.i.i68.i.i = icmp eq i32 %neg.i.i.i67.i.i, 3
  br i1 %tobool46.not.i.i.i68.i.i, label %if.end22.i.i.i, label %do.body48.i.i.i71.i.i

do.body48.i.i.i71.i.i:                            ; preds = %land.lhs.true.i.i.i69.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #19
  %tobool49.not.i.i.i70.i.i = icmp eq ptr %71, null
  br i1 %tobool49.not.i.i.i70.i.i, label %do.body48.i.i.i71.i.i.cleanup_crit_edge, label %cleanup.sink.split.i.i.i73.i.i

do.body48.i.i.i71.i.i.cleanup_crit_edge:          ; preds = %do.body48.i.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup.sink.split.i.i.i73.i.i:                   ; preds = %do.body48.i.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %86 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @__flow_action_hw_stats_check.__msg, ptr %71, align 4
  br label %cleanup

if.end22.i.i.i:                                   ; preds = %land.lhs.true.i.i.i69.i.i
  %mall_tc_list.i74.i.i = getelementptr i8, ptr %cb_priv, i32 2320
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end22.i.i.i
  %mall_tc_entry.0.in.i.i.i = phi ptr [ %mall_tc_list.i74.i.i, %if.end22.i.i.i ], [ %mall_tc_entry.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %87 = ptrtoint ptr %mall_tc_entry.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %mall_tc_entry.0.i.i.i = load ptr, ptr %mall_tc_entry.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %mall_tc_entry.0.i.i.i, %mall_tc_list.i74.i.i
  br i1 %cmp.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %type.i75.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %mall_tc_entry.0.i.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %type.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type.i75.i.i, align 4
  %cmp24.i.i.i = icmp eq i32 %89, 1
  br i1 %cmp24.i.i.i, label %do.body26.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i.i.i

do.body26.i.i.i:                                  ; preds = %for.body.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_add_cls_matchall_police.__msg.33) #19
  %tobool28.not.i76.i.i = icmp eq ptr %71, null
  br i1 %tobool28.not.i76.i.i, label %do.body26.i.i.i.cleanup_crit_edge, label %if.then29.i77.i.i

do.body26.i.i.i.cleanup_crit_edge:                ; preds = %do.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then29.i77.i.i:                                ; preds = %do.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %90 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @dsa_slave_add_cls_matchall_police.__msg.33, ptr %71, align 4
  br label %cleanup

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  %91 = ptrtoint ptr %rule9.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rule9.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i78.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 32) #22
  %tobool43.not.i.i.i = icmp eq ptr %call7.i.i.i78.i.i, null
  br i1 %tobool43.not.i.i.i, label %for.end.i.i.i.cleanup_crit_edge, label %if.end45.i.i.i

for.end.i.i.i.cleanup_crit_edge:                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end45.i.i.i:                                   ; preds = %for.end.i.i.i
  %cookie.i79.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %94 = ptrtoint ptr %cookie.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cookie.i79.i.i, align 8
  %cookie46.i.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %call7.i.i.i78.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %cookie46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %cookie46.i.i.i, align 8
  %type47.i.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %call7.i.i.i78.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %type47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type47.i.i.i, align 4
  %98 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %call7.i.i.i78.i.i, i32 0, i32 3
  %99 = getelementptr inbounds %struct.flow_rule, ptr %92, i32 2
  %rate_bytes_ps.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %92, i32 2, i32 0, i32 2
  %100 = ptrtoint ptr %rate_bytes_ps.i.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rate_bytes_ps.i.i.i, align 8
  %rate_bytes_per_sec.i.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %call7.i.i.i78.i.i, i32 0, i32 3, i32 0, i32 1
  %102 = ptrtoint ptr %rate_bytes_per_sec.i.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %rate_bytes_per_sec.i.i.i, align 8
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %99, align 8
  %105 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %98, align 8
  %106 = ptrtoint ptr %ops.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i35.i.i, align 4
  %port_policer_add50.i.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %107, i32 0, i32 66
  %108 = ptrtoint ptr %port_policer_add50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port_policer_add50.i.i.i, align 4
  %index.i80.i.i = getelementptr inbounds %struct.dsa_port, ptr %73, i32 0, i32 5
  %110 = ptrtoint ptr %index.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %index.i80.i.i, align 4
  %call51.i.i.i = tail call i32 %109(ptr noundef %75, i32 noundef %111, ptr noundef %98) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i.i)
  %tobool52.not.i.i.i = icmp eq i32 %call51.i.i.i, 0
  br i1 %tobool52.not.i.i.i, label %if.end54.i.i.i, label %if.then53.i.i.i

if.then53.i.i.i:                                  ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i78.i.i) #19
  br label %cleanup

if.end54.i.i.i:                                   ; preds = %if.end45.i.i.i
  %prev.i.i81.i.i = getelementptr i8, ptr %cb_priv, i32 2324
  %112 = ptrtoint ptr %prev.i.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i81.i.i, align 4
  %call.i.i.i82.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i78.i.i, ptr noundef %113, ptr noundef %mall_tc_list.i74.i.i) #19
  br i1 %call.i.i.i82.i.i, label %if.end.i.i.i84.i.i, label %if.end54.i.i.i.cleanup_crit_edge

if.end54.i.i.i.cleanup_crit_edge:                 ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i.i84.i.i:                               ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %114 = ptrtoint ptr %prev.i.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i.i78.i.i, ptr %prev.i.i81.i.i, align 4
  %115 = ptrtoint ptr %call7.i.i.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %mall_tc_list.i74.i.i, ptr %call7.i.i.i78.i.i, align 8
  %prev3.i.i.i83.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i78.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev3.i.i.i83.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %call7.i.i.i78.i.i, ptr %113, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end.i
  %dp.i.i.i = getelementptr i8, ptr %cb_priv, i32 2312
  %118 = ptrtoint ptr %dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dp.i.i.i, align 4
  %ds1.i.i = getelementptr inbounds %struct.dsa_port, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %ds1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ds1.i.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 4
  %122 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cookie.i.i, align 8
  %mall_tc_list.i.i7.i = getelementptr i8, ptr %cb_priv, i32 2320
  br label %for.cond.i.i11.i

for.cond.i.i11.i:                                 ; preds = %for.body.i.i12.i.for.cond.i.i11.i_crit_edge, %sw.bb2.i
  %mall_tc_entry.0.in.i.i8.i = phi ptr [ %mall_tc_list.i.i7.i, %sw.bb2.i ], [ %mall_tc_entry.0.i.i9.i, %for.body.i.i12.i.for.cond.i.i11.i_crit_edge ]
  %124 = ptrtoint ptr %mall_tc_entry.0.in.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %mall_tc_entry.0.i.i9.i = load ptr, ptr %mall_tc_entry.0.in.i.i8.i, align 4
  %cmp.not.i.i10.i = icmp eq ptr %mall_tc_entry.0.i.i9.i, %mall_tc_list.i.i7.i
  br i1 %cmp.not.i.i10.i, label %for.cond.i.i11.i.cleanup_crit_edge, label %for.body.i.i12.i

for.cond.i.i11.i.cleanup_crit_edge:               ; preds = %for.cond.i.i11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.i.i12.i:                                 ; preds = %for.cond.i.i11.i
  %cookie2.i.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %mall_tc_entry.0.i.i9.i, i32 0, i32 1
  %125 = ptrtoint ptr %cookie2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cookie2.i.i.i, align 8
  %cmp3.i.i.i = icmp eq i32 %126, %123
  br i1 %cmp3.i.i.i, label %dsa_slave_mall_tc_entry_find.exit.i.i, label %for.body.i.i12.i.for.cond.i.i11.i_crit_edge

for.body.i.i12.i.for.cond.i.i11.i_crit_edge:      ; preds = %for.body.i.i12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i.i11.i

dsa_slave_mall_tc_entry_find.exit.i.i:            ; preds = %for.body.i.i12.i
  %tobool.not.i.i = icmp eq ptr %mall_tc_entry.0.i.i9.i, null
  br i1 %tobool.not.i.i, label %dsa_slave_mall_tc_entry_find.exit.i.i.cleanup_crit_edge, label %if.end.i.i

dsa_slave_mall_tc_entry_find.exit.i.i.cleanup_crit_edge: ; preds = %dsa_slave_mall_tc_entry_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i:                                       ; preds = %dsa_slave_mall_tc_entry_find.exit.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mall_tc_entry.0.i.i9.i) #19
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %prev.i.i.i13.i = getelementptr inbounds %struct.list_head, ptr %mall_tc_entry.0.i.i9.i, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i.i13.i, align 4
  %129 = ptrtoint ptr %mall_tc_entry.0.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mall_tc_entry.0.i.i9.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %prev1.i.i.i.i.i, align 4
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %130, ptr %128, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %133 = ptrtoint ptr %mall_tc_entry.0.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 256 to ptr), ptr %mall_tc_entry.0.i.i9.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mall_tc_entry.0.i.i9.i, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %mall_tc_entry.0.i.i9.i, i32 0, i32 2
  %135 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %type.i.i, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %136, label %do.end.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb8.i.i
  ]

sw.bb.i.i:                                        ; preds = %list_del.exit.i.i
  %ops.i.i = getelementptr inbounds %struct.dsa_switch, ptr %121, i32 0, i32 8
  %138 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops.i.i, align 4
  %port_mirror_del.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %139, i32 0, i32 65
  %140 = ptrtoint ptr %port_mirror_del.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %port_mirror_del.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %141, null
  br i1 %tobool3.not.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %if.then4.i.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i.i

if.then4.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %index.i.i = getelementptr inbounds %struct.dsa_port, ptr %119, i32 0, i32 5
  %142 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %index.i.i, align 4
  %144 = getelementptr inbounds %struct.dsa_mall_tc_entry, ptr %mall_tc_entry.0.i.i9.i, i32 0, i32 3
  tail call void %141(ptr noundef %121, i32 noundef %143, ptr noundef %144) #19
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %list_del.exit.i.i
  %ops9.i.i = getelementptr inbounds %struct.dsa_switch, ptr %121, i32 0, i32 8
  %145 = ptrtoint ptr %ops9.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops9.i.i, align 4
  %port_policer_del.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %146, i32 0, i32 67
  %147 = ptrtoint ptr %port_policer_del.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %port_policer_del.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %148, null
  br i1 %tobool10.not.i.i, label %sw.bb8.i.i.sw.epilog.i.i_crit_edge, label %if.then11.i.i

sw.bb8.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i.i

if.then11.i.i:                                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %index14.i.i = getelementptr inbounds %struct.dsa_port, ptr %119, i32 0, i32 5
  %149 = ptrtoint ptr %index14.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %index14.i.i, align 4
  tail call void %148(ptr noundef %121, i32 noundef %150) #19
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1162, i32 noundef 9, ptr noundef null) #19
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end.i.i, %if.then11.i.i, %sw.bb8.i.i.sw.epilog.i.i_crit_edge, %if.then4.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %mall_tc_entry.0.i.i9.i) #19
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %command.i9 = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %151 = ptrtoint ptr %command.i9 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %command.i9, align 8
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %152, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb.i14
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb4.i
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb.i14:                                        ; preds = %sw.bb2
  %dp.i.i.i10 = getelementptr i8, ptr %cb_priv, i32 2312
  %154 = ptrtoint ptr %dp.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dp.i.i.i10, align 4
  %ds1.i.i11 = getelementptr inbounds %struct.dsa_port, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %ds1.i.i11 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ds1.i.i11, align 4
  %ops.i.i12 = getelementptr inbounds %struct.dsa_switch, ptr %157, i32 0, i32 8
  %158 = ptrtoint ptr %ops.i.i12 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ops.i.i12, align 4
  %cls_flower_add.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %159, i32 0, i32 61
  %160 = ptrtoint ptr %cls_flower_add.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cls_flower_add.i.i, align 4
  %tobool.not.i.i13 = icmp eq ptr %161, null
  br i1 %tobool.not.i.i13, label %sw.bb.i14.cleanup_crit_edge, label %if.end.i.i16

sw.bb.i14.cleanup_crit_edge:                      ; preds = %sw.bb.i14
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i.i16:                                     ; preds = %sw.bb.i14
  call void @__sanitizer_cov_trace_pc() #21
  %index.i.i15 = getelementptr inbounds %struct.dsa_port, ptr %155, i32 0, i32 5
  %162 = ptrtoint ptr %index.i.i15 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %index.i.i15, align 4
  %call5.i.i = tail call i32 %161(ptr noundef %157, i32 noundef %163, ptr noundef %type_data, i1 noundef zeroext %ingress) #19
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb2
  %dp.i.i14.i = getelementptr i8, ptr %cb_priv, i32 2312
  %164 = ptrtoint ptr %dp.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dp.i.i14.i, align 4
  %ds1.i15.i = getelementptr inbounds %struct.dsa_port, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %ds1.i15.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ds1.i15.i, align 4
  %ops.i16.i = getelementptr inbounds %struct.dsa_switch, ptr %167, i32 0, i32 8
  %168 = ptrtoint ptr %ops.i16.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ops.i16.i, align 4
  %cls_flower_del.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %169, i32 0, i32 62
  %170 = ptrtoint ptr %cls_flower_del.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cls_flower_del.i.i, align 4
  %tobool.not.i17.i = icmp eq ptr %171, null
  br i1 %tobool.not.i17.i, label %sw.bb1.i.cleanup_crit_edge, label %if.end.i20.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i20.i:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #21
  %index.i18.i = getelementptr inbounds %struct.dsa_port, ptr %165, i32 0, i32 5
  %172 = ptrtoint ptr %index.i18.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %index.i18.i, align 4
  %call5.i19.i = tail call i32 %171(ptr noundef %167, i32 noundef %173, ptr noundef %type_data, i1 noundef zeroext %ingress) #19
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb2
  %dp.i.i22.i = getelementptr i8, ptr %cb_priv, i32 2312
  %174 = ptrtoint ptr %dp.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dp.i.i22.i, align 4
  %ds1.i23.i = getelementptr inbounds %struct.dsa_port, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %ds1.i23.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ds1.i23.i, align 4
  %ops.i24.i = getelementptr inbounds %struct.dsa_switch, ptr %177, i32 0, i32 8
  %178 = ptrtoint ptr %ops.i24.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ops.i24.i, align 4
  %cls_flower_stats.i.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %179, i32 0, i32 63
  %180 = ptrtoint ptr %cls_flower_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cls_flower_stats.i.i, align 4
  %tobool.not.i25.i = icmp eq ptr %181, null
  br i1 %tobool.not.i25.i, label %sw.bb4.i.cleanup_crit_edge, label %if.end.i28.i

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i28.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #21
  %index.i26.i = getelementptr inbounds %struct.dsa_port, ptr %175, i32 0, i32 5
  %182 = ptrtoint ptr %index.i26.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %index.i26.i, align 4
  %call5.i27.i = tail call i32 %181(ptr noundef %177, i32 noundef %183, ptr noundef %type_data, i1 noundef zeroext %ingress) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end.i28.i, %sw.bb4.i.cleanup_crit_edge, %if.end.i20.i, %sw.bb1.i.cleanup_crit_edge, %if.end.i.i16, %sw.bb.i14.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.epilog.i.i, %dsa_slave_mall_tc_entry_find.exit.i.i.cleanup_crit_edge, %for.cond.i.i11.i.cleanup_crit_edge, %if.end.i.i.i84.i.i, %if.end54.i.i.i.cleanup_crit_edge, %if.then53.i.i.i, %for.end.i.i.i.cleanup_crit_edge, %if.then29.i77.i.i, %do.body26.i.i.i.cleanup_crit_edge, %cleanup.sink.split.i.i.i73.i.i, %do.body48.i.i.i71.i.i.cleanup_crit_edge, %if.then12.i.i.i, %do.body9.i.i.i.cleanup_crit_edge, %if.then5.i.i.i, %do.body.i.i.i.cleanup_crit_edge, %land.lhs.true13.i.i.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.end.i.i.i.i.i, %if.end30.i.i.i.cleanup_crit_edge, %if.then29.i.i.i, %if.end13.i.i.i.cleanup_crit_edge, %if.end10.i.i.i.cleanup_crit_edge, %if.end5.i.i.i.cleanup_crit_edge, %cleanup.sink.split.i.i.i.i.i, %do.body48.i.i.i.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ], [ -95, %land.lhs.true13.i.i.cleanup_crit_edge ], [ -95, %if.else.i.i.cleanup_crit_edge ], [ %call27.i.i.i, %if.then29.i.i.i ], [ -95, %if.then.i.i.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.cleanup_crit_edge ], [ -95, %if.end10.i.i.i.cleanup_crit_edge ], [ -12, %if.end13.i.i.i.cleanup_crit_edge ], [ 0, %if.end30.i.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i.i.i ], [ -95, %do.body48.i.i.i.i.i.cleanup_crit_edge ], [ -95, %cleanup.sink.split.i.i.i.i.i ], [ %call51.i.i.i, %if.then53.i.i.i ], [ -95, %if.then5.i.i.i ], [ -95, %do.body.i.i.i.cleanup_crit_edge ], [ -95, %if.then12.i.i.i ], [ -95, %do.body9.i.i.i.cleanup_crit_edge ], [ -17, %if.then29.i77.i.i ], [ -17, %do.body26.i.i.i.cleanup_crit_edge ], [ -12, %for.end.i.i.i.cleanup_crit_edge ], [ 0, %if.end54.i.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i84.i.i ], [ -95, %do.body48.i.i.i71.i.i.cleanup_crit_edge ], [ -95, %cleanup.sink.split.i.i.i73.i.i ], [ 0, %dsa_slave_mall_tc_entry_find.exit.i.i.cleanup_crit_edge ], [ 0, %sw.epilog.i.i ], [ -95, %sw.bb2.cleanup_crit_edge ], [ %call5.i.i, %if.end.i.i16 ], [ -95, %sw.bb.i14.cleanup_crit_edge ], [ %call5.i19.i, %if.end.i20.i ], [ -95, %sw.bb1.i.cleanup_crit_edge ], [ %call5.i27.i, %if.end.i28.i ], [ -95, %sw.bb4.i.cleanup_crit_edge ], [ 0, %for.cond.i.i11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_fdb_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_fdb_do_dump(ptr noundef %addr, i16 noundef zeroext %vid, i1 noundef zeroext %is_static, ptr nocapture noundef %data) #1 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %idx = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %entry.skip_crit_edge, label %if.end

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %skip

if.end:                                           ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlmsg_seq, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %portid2 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid2, align 4
  %skb6 = getelementptr inbounds %struct.dsa_slave_dump_ctx, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb6, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %18 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !160

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %15, i32 noundef %13, i32 noundef %9, i32 noundef 28, i32 noundef 12, i32 noundef 2) #19
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end8

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end8:                                          ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 7, ptr %add.ptr.i, align 4
  %ndm_pad1 = getelementptr i8, ptr %call3.i, i32 17
  %23 = ptrtoint ptr %ndm_pad1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ndm_pad1, align 1
  %ndm_pad2 = getelementptr i8, ptr %call3.i, i32 18
  %24 = ptrtoint ptr %ndm_pad2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %ndm_pad2, align 2
  %ndm_flags = getelementptr i8, ptr %call3.i, i32 26
  %25 = ptrtoint ptr %ndm_flags to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %ndm_flags, align 2
  %ndm_type = getelementptr i8, ptr %call3.i, i32 27
  %26 = ptrtoint ptr %ndm_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ndm_type, align 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifindex, align 4
  %ndm_ifindex = getelementptr i8, ptr %call3.i, i32 20
  %31 = ptrtoint ptr %ndm_ifindex to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ndm_ifindex, align 4
  %conv = select i1 %is_static, i16 64, i16 2
  %ndm_state = getelementptr i8, ptr %call3.i, i32 24
  %32 = ptrtoint ptr %ndm_state to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %ndm_state, align 4
  %33 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb6, align 4
  %call12 = tail call i32 @nla_put(ptr noundef %34, i32 noundef 2, i32 noundef 6, ptr noundef %addr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.if.then.i.i_crit_edge

if.end8.if.then.i.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool17.not = icmp eq i16 %vid, 0
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %land.lhs.true

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %35 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #19
  %37 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %vid, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %36, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then.i.i

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %38 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb6, align 4
  %tail.i.i50 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i50, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %42 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %skip

skip:                                             ; preds = %if.end22, %entry.skip_crit_edge
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %idx, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.if.then.i.i_crit_edge, %if.end8.if.then.i.i_crit_edge
  %45 = ptrtoint ptr %skb6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb6, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %48, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !160

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 991, i32 noundef 9, ptr noundef null) #19
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i51 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i52 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i53 = sub i32 %sub.ptr.lhs.cast.i.i51, %sub.ptr.rhs.cast.i.i52
  call void @skb_trim(ptr noundef %46, i32 noundef %sub.ptr.sub.i.i53) #19
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %skip, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skip ], [ -90, %nlmsg_cancel.exit ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_phylink_fixed_state(ptr nocapture noundef readonly %config, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr i8, ptr %config, i32 -400
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phylink_fixed_state = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %phylink_fixed_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink_fixed_state, align 4
  %index = getelementptr i8, ptr %config, i32 -396
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void %5(ptr noundef %1, i32 noundef %7, ptr noundef %state) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_phylink_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_connect_phy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_attr_set(ptr nocapture noundef readonly %dev, ptr noundef readnone %ctx, ptr nocapture noundef readonly %attr, ptr noundef %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %1, %ctx
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb5
    i32 5, label %sw.bb13
    i32 3, label %sw.bb20
    i32 2, label %sw.bb27
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr, align 4
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge, label %if.end.i.i

sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.end.i.i:                                       ; preds = %sw.bb
  %lag_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %lag_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lag_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge

if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %hsr_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %hsr_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsr_dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i.i, label %if.end8.i.i, label %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge

if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.end8.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  br label %dsa_port_offloads_bridge_port.exit

dsa_port_offloads_bridge_port.exit:               ; preds = %if.end8.i.i, %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge, %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge, %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end8.i.i ], [ null, %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge ], [ %10, %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge ], [ %12, %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge ]
  %cmp.i = icmp eq ptr %retval.0.i.i, %6
  br i1 %cmp.i, label %if.end3, label %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge

dsa_port_offloads_bridge_port.exit.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %dsa_port_offloads_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  %u = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %15 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %u, align 4
  %call4 = tail call i32 @dsa_port_set_state(ptr noundef %1, i8 noundef zeroext %16, i1 noundef zeroext true) #19
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr, align 4
  %bridge.i.i63 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %bridge.i.i63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bridge.i.i63, align 4
  %tobool.not.i.i64 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i64, label %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge, label %cond.true.i.i

sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit

cond.true.i.i:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  br label %dsa_port_offloads_bridge_dev.exit

dsa_port_offloads_bridge_dev.exit:                ; preds = %cond.true.i.i, %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge
  %cond.i.i = phi ptr [ %22, %cond.true.i.i ], [ null, %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge ]
  %cmp.i65 = icmp eq ptr %cond.i.i, %18
  br i1 %cmp.i65, label %if.end9, label %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %dsa_port_offloads_bridge_dev.exit
  call void @__sanitizer_cov_trace_pc() #21
  %u10 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %23 = ptrtoint ptr %u10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %u10, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11 = icmp ne i8 %24, 0
  %call12 = tail call i32 @dsa_port_vlan_filtering(ptr noundef %1, i1 noundef zeroext %tobool11, ptr noundef %extack) #19
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %25 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attr, align 4
  %bridge.i.i66 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %bridge.i.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bridge.i.i66, align 4
  %tobool.not.i.i67 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i67, label %sw.bb13.dsa_port_offloads_bridge_dev.exit71_crit_edge, label %cond.true.i.i68

sw.bb13.dsa_port_offloads_bridge_dev.exit71_crit_edge: ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit71

cond.true.i.i68:                                  ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  br label %dsa_port_offloads_bridge_dev.exit71

dsa_port_offloads_bridge_dev.exit71:              ; preds = %cond.true.i.i68, %sw.bb13.dsa_port_offloads_bridge_dev.exit71_crit_edge
  %cond.i.i69 = phi ptr [ %30, %cond.true.i.i68 ], [ null, %sw.bb13.dsa_port_offloads_bridge_dev.exit71_crit_edge ]
  %cmp.i70 = icmp eq ptr %cond.i.i69, %26
  br i1 %cmp.i70, label %if.end17, label %dsa_port_offloads_bridge_dev.exit71.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit71.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit71
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end17:                                         ; preds = %dsa_port_offloads_bridge_dev.exit71
  call void @__sanitizer_cov_trace_pc() #21
  %u18 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %31 = ptrtoint ptr %u18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %u18, align 4
  %call19 = tail call i32 @dsa_port_ageing_time(ptr noundef %1, i32 noundef %32) #19
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %33 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attr, align 4
  %bridge.i.i72 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %bridge.i.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bridge.i.i72, align 4
  %tobool.not.i.i73 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i73, label %sw.bb20.dsa_port_offloads_bridge_port.exit83_crit_edge, label %if.end.i.i76

sw.bb20.dsa_port_offloads_bridge_port.exit83_crit_edge: ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit83

if.end.i.i76:                                     ; preds = %sw.bb20
  %lag_dev.i.i74 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %lag_dev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lag_dev.i.i74, align 4
  %tobool1.not.i.i75 = icmp eq ptr %38, null
  br i1 %tobool1.not.i.i75, label %if.else.i.i79, label %if.end.i.i76.dsa_port_offloads_bridge_port.exit83_crit_edge

if.end.i.i76.dsa_port_offloads_bridge_port.exit83_crit_edge: ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit83

if.else.i.i79:                                    ; preds = %if.end.i.i76
  %hsr_dev.i.i77 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %39 = ptrtoint ptr %hsr_dev.i.i77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hsr_dev.i.i77, align 4
  %tobool4.not.i.i78 = icmp eq ptr %40, null
  br i1 %tobool4.not.i.i78, label %if.end8.i.i80, label %if.else.i.i79.dsa_port_offloads_bridge_port.exit83_crit_edge

if.else.i.i79.dsa_port_offloads_bridge_port.exit83_crit_edge: ; preds = %if.else.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit83

if.end8.i.i80:                                    ; preds = %if.else.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  br label %dsa_port_offloads_bridge_port.exit83

dsa_port_offloads_bridge_port.exit83:             ; preds = %if.end8.i.i80, %if.else.i.i79.dsa_port_offloads_bridge_port.exit83_crit_edge, %if.end.i.i76.dsa_port_offloads_bridge_port.exit83_crit_edge, %sw.bb20.dsa_port_offloads_bridge_port.exit83_crit_edge
  %retval.0.i.i81 = phi ptr [ %42, %if.end8.i.i80 ], [ null, %sw.bb20.dsa_port_offloads_bridge_port.exit83_crit_edge ], [ %38, %if.end.i.i76.dsa_port_offloads_bridge_port.exit83_crit_edge ], [ %40, %if.else.i.i79.dsa_port_offloads_bridge_port.exit83_crit_edge ]
  %cmp.i82 = icmp eq ptr %retval.0.i.i81, %34
  br i1 %cmp.i82, label %if.end24, label %dsa_port_offloads_bridge_port.exit83.cleanup_crit_edge

dsa_port_offloads_bridge_port.exit83.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit83
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end24:                                         ; preds = %dsa_port_offloads_bridge_port.exit83
  call void @__sanitizer_cov_trace_pc() #21
  %u25 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %43 = ptrtoint ptr %u25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack60 = load i32, ptr %u25, align 4
  %44 = insertvalue [2 x i32] undef, i32 %.unpack60, 0
  %.elt61 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %.elt61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack62 = load i32, ptr %.elt61, align 4
  %46 = insertvalue [2 x i32] %44, i32 %.unpack62, 1
  %call26 = tail call i32 @dsa_port_pre_bridge_flags(ptr noundef %1, [2 x i32] %46, ptr noundef %extack) #19
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  %47 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %attr, align 4
  %bridge.i.i84 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %bridge.i.i84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bridge.i.i84, align 4
  %tobool.not.i.i85 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i85, label %sw.bb27.dsa_port_offloads_bridge_port.exit95_crit_edge, label %if.end.i.i88

sw.bb27.dsa_port_offloads_bridge_port.exit95_crit_edge: ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit95

if.end.i.i88:                                     ; preds = %sw.bb27
  %lag_dev.i.i86 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 18
  %51 = ptrtoint ptr %lag_dev.i.i86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lag_dev.i.i86, align 4
  %tobool1.not.i.i87 = icmp eq ptr %52, null
  br i1 %tobool1.not.i.i87, label %if.else.i.i91, label %if.end.i.i88.dsa_port_offloads_bridge_port.exit95_crit_edge

if.end.i.i88.dsa_port_offloads_bridge_port.exit95_crit_edge: ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit95

if.else.i.i91:                                    ; preds = %if.end.i.i88
  %hsr_dev.i.i89 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %53 = ptrtoint ptr %hsr_dev.i.i89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hsr_dev.i.i89, align 4
  %tobool4.not.i.i90 = icmp eq ptr %54, null
  br i1 %tobool4.not.i.i90, label %if.end8.i.i92, label %if.else.i.i91.dsa_port_offloads_bridge_port.exit95_crit_edge

if.else.i.i91.dsa_port_offloads_bridge_port.exit95_crit_edge: ; preds = %if.else.i.i91
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit95

if.end8.i.i92:                                    ; preds = %if.else.i.i91
  call void @__sanitizer_cov_trace_pc() #21
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  br label %dsa_port_offloads_bridge_port.exit95

dsa_port_offloads_bridge_port.exit95:             ; preds = %if.end8.i.i92, %if.else.i.i91.dsa_port_offloads_bridge_port.exit95_crit_edge, %if.end.i.i88.dsa_port_offloads_bridge_port.exit95_crit_edge, %sw.bb27.dsa_port_offloads_bridge_port.exit95_crit_edge
  %retval.0.i.i93 = phi ptr [ %56, %if.end8.i.i92 ], [ null, %sw.bb27.dsa_port_offloads_bridge_port.exit95_crit_edge ], [ %52, %if.end.i.i88.dsa_port_offloads_bridge_port.exit95_crit_edge ], [ %54, %if.else.i.i91.dsa_port_offloads_bridge_port.exit95_crit_edge ]
  %cmp.i94 = icmp eq ptr %retval.0.i.i93, %48
  br i1 %cmp.i94, label %if.end31, label %dsa_port_offloads_bridge_port.exit95.cleanup_crit_edge

dsa_port_offloads_bridge_port.exit95.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit95
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end31:                                         ; preds = %dsa_port_offloads_bridge_port.exit95
  call void @__sanitizer_cov_trace_pc() #21
  %u32 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5
  %57 = ptrtoint ptr %u32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack = load i32, ptr %u32, align 4
  %58 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt58 = getelementptr inbounds %struct.switchdev_attr, ptr %attr, i32 0, i32 5, i32 0, i32 1
  %59 = ptrtoint ptr %.elt58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack59 = load i32, ptr %.elt58, align 4
  %60 = insertvalue [2 x i32] %58, i32 %.unpack59, 1
  %call33 = tail call i32 @dsa_port_bridge_flags(ptr noundef %1, [2 x i32] %60, ptr noundef %extack) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %dsa_port_offloads_bridge_port.exit95.cleanup_crit_edge, %if.end24, %dsa_port_offloads_bridge_port.exit83.cleanup_crit_edge, %if.end17, %dsa_port_offloads_bridge_dev.exit71.cleanup_crit_edge, %if.end9, %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge, %if.end3, %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit71.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_port.exit83.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_port.exit95.cleanup_crit_edge ], [ %call33, %if.end31 ], [ %call26, %if.end24 ], [ %call19, %if.end17 ], [ %call12, %if.end9 ], [ %call4, %if.end3 ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_fdb_event_to_device(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dsa_foreign_dev_check(ptr nocapture noundef readonly %dev, ptr noundef readonly %foreign_dev) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  %dst1 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dst1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %foreign_dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %dsa_port_offloads_bridge_dev.exit.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %ports.i, %if.then ], [ %.pn.i, %dsa_port_offloads_bridge_dev.exit.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %bridge.i.i.i = getelementptr i8, ptr %.pn.i, i32 -396
  %9 = ptrtoint ptr %bridge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %for.body.i.dsa_port_offloads_bridge_dev.exit.i_crit_edge, label %cond.true.i.i.i

for.body.i.dsa_port_offloads_bridge_dev.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit.i

cond.true.i.i.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  br label %dsa_port_offloads_bridge_dev.exit.i

dsa_port_offloads_bridge_dev.exit.i:              ; preds = %cond.true.i.i.i, %for.body.i.dsa_port_offloads_bridge_dev.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %12, %cond.true.i.i.i ], [ null, %for.body.i.dsa_port_offloads_bridge_dev.exit.i_crit_edge ]
  %cmp.i.i = icmp eq ptr %cond.i.i.i, %foreign_dev
  br i1 %cmp.i.i, label %dsa_port_offloads_bridge_dev.exit.i.cleanup_crit_edge, label %dsa_port_offloads_bridge_dev.exit.i.for.cond.i_crit_edge

dsa_port_offloads_bridge_dev.exit.i.for.cond.i_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i

dsa_port_offloads_bridge_dev.exit.i.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i15 = and i64 %7, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i15)
  %tobool.i16.not = icmp eq i64 %and.i15, 0
  br i1 %tobool.i16.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %ports.i17 = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  br label %for.cond.i21

for.cond.i21:                                     ; preds = %dsa_port_offloads_bridge_port.exit.i.for.cond.i21_crit_edge, %if.then5
  %.pn.in.i18 = phi ptr [ %ports.i17, %if.then5 ], [ %.pn.i19, %dsa_port_offloads_bridge_port.exit.i.for.cond.i21_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i19 = load ptr, ptr %.pn.in.i18, align 4
  %cmp.not.i20 = icmp eq ptr %.pn.i19, %ports.i17
  br i1 %cmp.not.i20, label %for.cond.i21.cleanup_crit_edge, label %for.body.i24

for.cond.i21.cleanup_crit_edge:                   ; preds = %for.cond.i21
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.i24:                                     ; preds = %for.cond.i21
  %dp.0.i = getelementptr i8, ptr %.pn.i19, i32 -448
  %bridge.i.i.i22 = getelementptr i8, ptr %.pn.i19, i32 -396
  %14 = ptrtoint ptr %bridge.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bridge.i.i.i22, align 4
  %tobool.not.i.i.i23 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i23, label %for.body.i24.dsa_port_offloads_bridge_port.exit.i_crit_edge, label %if.end.i.i.i

for.body.i24.dsa_port_offloads_bridge_port.exit.i_crit_edge: ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i24
  %lag_dev.i.i.i = getelementptr i8, ptr %.pn.i19, i32 -8
  %16 = ptrtoint ptr %lag_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lag_dev.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.end.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge

if.end.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %hsr_dev.i.i.i = getelementptr i8, ptr %.pn.i19, i32 -4
  %18 = ptrtoint ptr %hsr_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hsr_dev.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i.i.i, label %if.end8.i.i.i, label %if.else.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge

if.else.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit.i

if.end8.i.i.i:                                    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %dp.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dp.0.i, align 4
  br label %dsa_port_offloads_bridge_port.exit.i

dsa_port_offloads_bridge_port.exit.i:             ; preds = %if.end8.i.i.i, %if.else.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge, %if.end.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge, %for.body.i24.dsa_port_offloads_bridge_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %21, %if.end8.i.i.i ], [ null, %for.body.i24.dsa_port_offloads_bridge_port.exit.i_crit_edge ], [ %17, %if.end.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge ], [ %19, %if.else.i.i.i.dsa_port_offloads_bridge_port.exit.i_crit_edge ]
  %cmp.i.i25 = icmp eq ptr %retval.0.i.i.i, %foreign_dev
  br i1 %cmp.i.i25, label %dsa_port_offloads_bridge_port.exit.i.cleanup_crit_edge, label %dsa_port_offloads_bridge_port.exit.i.for.cond.i21_crit_edge

dsa_port_offloads_bridge_port.exit.i.for.cond.i21_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i21

dsa_port_offloads_bridge_port.exit.i.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %dsa_port_offloads_bridge_port.exit.i.cleanup_crit_edge, %for.cond.i21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dsa_port_offloads_bridge_dev.exit.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ %cmp.not.i20, %for.cond.i21.cleanup_crit_edge ], [ %cmp.not.i20, %dsa_port_offloads_bridge_port.exit.i.cleanup_crit_edge ], [ %cmp.not.i, %for.cond.i.cleanup_crit_edge ], [ %cmp.not.i, %dsa_port_offloads_bridge_dev.exit.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_fdb_event(ptr noundef %dev, ptr noundef %orig_dev, i32 noundef %event, ptr noundef readnone %ctx, ptr nocapture noundef readonly %fdb_info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %is_local = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 3
  %2 = ptrtoint ptr %is_local to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_local, align 2
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ds1, align 4
  %tobool2.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %1, %ctx
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %port_fdb_add = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 54
  %7 = ptrtoint ptr %port_fdb_add to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_fdb_add, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %port_fdb_del = getelementptr inbounds %struct.dsa_switch_ops, ptr %6, i32 0, i32 55
  %9 = ptrtoint ptr %port_fdb_del to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_fdb_del, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %orig_dev, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %12, @dsa_slave_netdev_ops
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %13 = icmp ult i8 %bf.load, 64
  br i1 %cmp.i, label %land.lhs.true9, label %if.end12

land.lhs.true9:                                   ; preds = %if.end7
  br i1 %13, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end20_crit_edge

land.lhs.true9.if.end20_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  br i1 %13, label %land.lhs.true14, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

land.lhs.true14:                                  ; preds = %if.end12
  %assisted_learning_on_cpu_port = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %assisted_learning_on_cpu_port to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load15 = load i16, ptr %assisted_learning_on_cpu_port, align 4
  %15 = and i16 %bf.load15, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool18.not = icmp eq i16 %15, 0
  br i1 %tobool18.not, label %land.lhs.true14.cleanup_crit_edge, label %land.lhs.true14.if.end20_crit_edge

land.lhs.true14.if.end20_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true14.if.end20_crit_edge, %if.end12.if.end20_crit_edge, %land.lhs.true9.if.end20_crit_edge
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst1.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %orig_dev, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %19, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end20
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %dsa_port_offloads_bridge_dev.exit.i.i.for.cond.i.i_crit_edge, %if.then.i
  %.pn.in.i.i = phi ptr [ %ports.i.i, %if.then.i ], [ %.pn.i.i, %dsa_port_offloads_bridge_dev.exit.i.i.for.cond.i.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.dsa_foreign_dev_check.exit_crit_edge, label %for.body.i.i

for.cond.i.i.dsa_foreign_dev_check.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_foreign_dev_check.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bridge.i.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 -396
  %21 = ptrtoint ptr %bridge.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bridge.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.dsa_port_offloads_bridge_dev.exit.i.i_crit_edge, label %cond.true.i.i.i.i

for.body.i.i.dsa_port_offloads_bridge_dev.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit.i.i

cond.true.i.i.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  br label %dsa_port_offloads_bridge_dev.exit.i.i

dsa_port_offloads_bridge_dev.exit.i.i:            ; preds = %cond.true.i.i.i.i, %for.body.i.i.dsa_port_offloads_bridge_dev.exit.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %24, %cond.true.i.i.i.i ], [ null, %for.body.i.i.dsa_port_offloads_bridge_dev.exit.i.i_crit_edge ]
  %cmp.i.i.i = icmp eq ptr %cond.i.i.i.i, %orig_dev
  br i1 %cmp.i.i.i, label %dsa_port_offloads_bridge_dev.exit.i.i.dsa_foreign_dev_check.exit_crit_edge, label %dsa_port_offloads_bridge_dev.exit.i.i.for.cond.i.i_crit_edge

dsa_port_offloads_bridge_dev.exit.i.i.for.cond.i.i_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i.i

dsa_port_offloads_bridge_dev.exit.i.i.dsa_foreign_dev_check.exit_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_foreign_dev_check.exit

if.end.i:                                         ; preds = %if.end20
  %and.i15.i = and i64 %19, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i15.i)
  %tobool.i16.not.i = icmp eq i64 %and.i15.i, 0
  br i1 %tobool.i16.not.i, label %if.end.i.dsa_foreign_dev_check.exit_crit_edge, label %if.then5.i

if.end.i.dsa_foreign_dev_check.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_foreign_dev_check.exit

if.then5.i:                                       ; preds = %if.end.i
  %ports.i17.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %17, i32 0, i32 1
  br label %for.cond.i21.i

for.cond.i21.i:                                   ; preds = %dsa_port_offloads_bridge_port.exit.i.i.for.cond.i21.i_crit_edge, %if.then5.i
  %.pn.in.i18.i = phi ptr [ %ports.i17.i, %if.then5.i ], [ %.pn.i19.i, %dsa_port_offloads_bridge_port.exit.i.i.for.cond.i21.i_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i19.i = load ptr, ptr %.pn.in.i18.i, align 4
  %cmp.not.i20.i = icmp eq ptr %.pn.i19.i, %ports.i17.i
  br i1 %cmp.not.i20.i, label %for.cond.i21.i.dsa_foreign_dev_check.exit_crit_edge, label %for.body.i24.i

for.cond.i21.i.dsa_foreign_dev_check.exit_crit_edge: ; preds = %for.cond.i21.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_foreign_dev_check.exit

for.body.i24.i:                                   ; preds = %for.cond.i21.i
  %dp.0.i.i = getelementptr i8, ptr %.pn.i19.i, i32 -448
  %bridge.i.i.i22.i = getelementptr i8, ptr %.pn.i19.i, i32 -396
  %26 = ptrtoint ptr %bridge.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bridge.i.i.i22.i, align 4
  %tobool.not.i.i.i23.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i23.i, label %for.body.i24.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i24.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge: ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i24.i
  %lag_dev.i.i.i.i = getelementptr i8, ptr %.pn.i19.i, i32 -8
  %28 = ptrtoint ptr %lag_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lag_dev.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %if.end.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge

if.end.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %hsr_dev.i.i.i.i = getelementptr i8, ptr %.pn.i19.i, i32 -4
  %30 = ptrtoint ptr %hsr_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hsr_dev.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i.i.i.i, label %if.end8.i.i.i.i, label %if.else.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge

if.else.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit.i.i

if.end8.i.i.i.i:                                  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %32 = ptrtoint ptr %dp.0.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dp.0.i.i, align 4
  br label %dsa_port_offloads_bridge_port.exit.i.i

dsa_port_offloads_bridge_port.exit.i.i:           ; preds = %if.end8.i.i.i.i, %if.else.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge, %if.end.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge, %for.body.i24.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %33, %if.end8.i.i.i.i ], [ null, %for.body.i24.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge ], [ %29, %if.end.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge ], [ %31, %if.else.i.i.i.i.dsa_port_offloads_bridge_port.exit.i.i_crit_edge ]
  %cmp.i.i25.i = icmp eq ptr %retval.0.i.i.i.i, %orig_dev
  br i1 %cmp.i.i25.i, label %dsa_port_offloads_bridge_port.exit.i.i.dsa_foreign_dev_check.exit_crit_edge, label %dsa_port_offloads_bridge_port.exit.i.i.for.cond.i21.i_crit_edge

dsa_port_offloads_bridge_port.exit.i.i.for.cond.i21.i_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i21.i

dsa_port_offloads_bridge_port.exit.i.i.dsa_foreign_dev_check.exit_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_foreign_dev_check.exit

dsa_foreign_dev_check.exit:                       ; preds = %dsa_port_offloads_bridge_port.exit.i.i.dsa_foreign_dev_check.exit_crit_edge, %for.cond.i21.i.dsa_foreign_dev_check.exit_crit_edge, %if.end.i.dsa_foreign_dev_check.exit_crit_edge, %dsa_port_offloads_bridge_dev.exit.i.i.dsa_foreign_dev_check.exit_crit_edge, %for.cond.i.i.dsa_foreign_dev_check.exit_crit_edge
  %retval.0.i100 = phi i1 [ true, %if.end.i.dsa_foreign_dev_check.exit_crit_edge ], [ %cmp.not.i20.i, %dsa_port_offloads_bridge_port.exit.i.i.dsa_foreign_dev_check.exit_crit_edge ], [ %cmp.not.i20.i, %for.cond.i21.i.dsa_foreign_dev_check.exit_crit_edge ], [ %cmp.not.i.i, %dsa_port_offloads_bridge_dev.exit.i.i.dsa_foreign_dev_check.exit_crit_edge ], [ %cmp.not.i.i, %for.cond.i.i.dsa_foreign_dev_check.exit_crit_edge ]
  %34 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %extract.t = icmp ne i8 %34, 0
  %spec.select = select i1 %retval.0.i100, i1 true, i1 %extract.t
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 2848, i32 noundef 72) #22
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %dsa_foreign_dev_check.exit.cleanup_crit_edge, label %do.body28

dsa_foreign_dev_check.exit.cleanup_crit_edge:     ; preds = %dsa_foreign_dev_check.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body28:                                        ; preds = %dsa_foreign_dev_check.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsa_slave_fdb_event.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsa_slave_fdb_event, %if.then34)) #19
          to label %do.body42 [label %if.then34], !srcloc !175

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp35 = icmp eq i32 %event, 3
  %cond = select i1 %cmp35, ptr @.str.42, ptr @.str.43
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 2
  %38 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vid, align 4
  %conv = zext i16 %39 to i32
  %cond38 = select i1 %spec.select, ptr @.str.44, ptr @.str.45
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dsa_slave_fdb_event.__UNIQUE_ID_ddebug528, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond, ptr noundef %orig_dev, ptr noundef %37, i32 noundef %conv, ptr noundef nonnull %cond38) #19
  br label %do.body42

do.body42:                                        ; preds = %if.then34, %do.body28
  %work = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #19
  %40 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.46, ptr noundef nonnull @dsa_slave_fdb_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  %entry46 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry46, ptr %entry46, align 8
  %prev.i = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry46, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @dsa_slave_switchdev_event_work, ptr %func, align 8
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %4, ptr %call7.i.i, align 8
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  %port = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %port, align 4
  %event51 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %event51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %event, ptr %event51, align 8
  %dev52 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %dev52, align 8
  %addr53 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 5
  %addr55 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %50 = ptrtoint ptr %addr55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr55, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = ptrtoint ptr %addr53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %addr53, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 5, i32 4
  %57 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %add.ptr1.i, align 8
  %vid56 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 2
  %58 = ptrtoint ptr %vid56 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vid56, align 4
  %vid57 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %vid57 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %vid57, align 2
  %host_addr59 = getelementptr inbounds %struct.dsa_switchdev_event_work, ptr %call7.i.i, i32 0, i32 7
  %frombool60 = zext i1 %spec.select to i8
  %61 = ptrtoint ptr %host_addr59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool60, ptr %host_addr59, align 4
  %call62 = tail call zeroext i1 @dsa_schedule_work(ptr noundef %work) #19
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %dsa_foreign_dev_check.exit.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body42 ], [ 0, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %land.lhs.true14.cleanup_crit_edge ], [ -12, %dsa_foreign_dev_check.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_set_state(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_vlan_filtering(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_pre_bridge_flags(ptr noundef, [2 x i32], ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_bridge_flags(ptr noundef, [2 x i32], ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsa_slave_switchdev_event_work(ptr noundef %work) #1 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %port = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %7 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %8, %1
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp5.i = icmp eq i32 %10, %3
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %event = getelementptr i8, ptr %work, i32 44
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %13, label %dsa_to_port.exit.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb13
  ]

dsa_to_port.exit.sw.epilog_crit_edge:             ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %dsa_to_port.exit
  %host_addr = getelementptr i8, ptr %work, i32 56
  %15 = ptrtoint ptr %host_addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %host_addr, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %addr3 = getelementptr i8, ptr %work, i32 48
  %vid5 = getelementptr i8, ptr %work, i32 54
  %17 = ptrtoint ptr %vid5 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid5, align 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %call2 = tail call i32 @dsa_port_host_fdb_add(ptr noundef %retval.0.i, ptr noundef %addr3, i16 noundef zeroext %18) #19
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %call6 = tail call i32 @dsa_port_fdb_add(ptr noundef %retval.0.i, ptr noundef %addr3, i16 noundef zeroext %18) #19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call2, %if.then ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool7.not = icmp eq i32 %err.0, 0
  br i1 %tobool7.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 5
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %addr9 = getelementptr i8, ptr %work, i32 48
  %vid11 = getelementptr i8, ptr %work, i32 54
  %23 = ptrtoint ptr %vid11 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid11, align 2
  %conv = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.47, i32 noundef %22, ptr noundef %addr9, i32 noundef %conv, i32 noundef %err.0) #25
  br label %sw.epilog

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #19
  %25 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %dst1.i.i.i = getelementptr inbounds %struct.dsa_switch, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn20.i.i.i = load ptr, ptr %ports.i.i.i, align 4
  %cmp.not21.i.i.i = icmp eq ptr %.pn20.i.i.i, %ports.i.i.i
  br i1 %cmp.not21.i.i.i, label %if.end12.dsa_is_user_port.exit.i_crit_edge, label %if.end12.for.body.i.i.i_crit_edge

if.end12.for.body.i.i.i_crit_edge:                ; preds = %if.end12
  br label %for.body.i.i.i

if.end12.dsa_is_user_port.exit.i_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_is_user_port.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end12.for.body.i.i.i_crit_edge
  %.pn22.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn20.i.i.i, %if.end12.for.body.i.i.i_crit_edge ]
  %ds3.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -432
  %33 = ptrtoint ptr %ds3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds3.i.i.i, align 4
  %cmp4.i.i.i = icmp eq ptr %34, %27
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %index.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -428
  %35 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %29)
  %cmp5.i.i.i = icmp eq i32 %36, %29
  br i1 %cmp5.i.i.i, label %cleanup.split.loop.exit18.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %37 = ptrtoint ptr %.pn22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i.i = load ptr, ptr %.pn22.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %ports.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i.i

for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_is_user_port.exit.i

cleanup.split.loop.exit18.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %dp.0.le.i.i.i = getelementptr i8, ptr %.pn22.i.i.i, i32 -448
  br label %dsa_is_user_port.exit.i

dsa_is_user_port.exit.i:                          ; preds = %cleanup.split.loop.exit18.i.i.i, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge, %if.end12.dsa_is_user_port.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %dp.0.le.i.i.i, %cleanup.split.loop.exit18.i.i.i ], [ null, %if.end12.dsa_is_user_port.exit.i_crit_edge ], [ null, %for.inc.i.i.i.dsa_is_user_port.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 3
  br i1 %cmp.i.i, label %if.end.i, label %dsa_is_user_port.exit.i.dsa_fdb_offload_notify.exit_crit_edge

dsa_is_user_port.exit.i.dsa_fdb_offload_notify.exit_crit_edge: ; preds = %dsa_is_user_port.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_fdb_offload_notify.exit

if.end.i:                                         ; preds = %dsa_is_user_port.exit.i
  %addr.i = getelementptr i8, ptr %work, i32 48
  %addr2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %40 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %addr.i, ptr %addr2.i, align 4
  %vid.i = getelementptr i8, ptr %work, i32 54
  %41 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vid.i, align 2
  %vid3.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %43 = ptrtoint ptr %vid3.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %vid3.i, align 4
  %offloaded.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %44 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %offloaded.i, align 2
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %offloaded.i, align 2
  %45 = ptrtoint ptr %dst1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dst1.i.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %if.end.i.dsa_to_port.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.dsa_to_port.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %48 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %49, %27
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %50 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %29)
  %cmp5.i.i = icmp eq i32 %51, %29
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %52 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_to_port.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

for.inc.i.i.dsa_to_port.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_to_port.exit.i

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_to_port.exit.i

dsa_to_port.exit.i:                               ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_to_port.exit.i_crit_edge, %if.end.i.dsa_to_port.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %if.end.i.dsa_to_port.exit.i_crit_edge ], [ null, %for.inc.i.i.dsa_to_port.exit.i_crit_edge ]
  %53 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %retval.0.i.i, align 4
  %call7.i = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %54, ptr noundef nonnull %info.i, ptr noundef null) #19
  br label %dsa_fdb_offload_notify.exit

dsa_fdb_offload_notify.exit:                      ; preds = %dsa_to_port.exit.i, %dsa_is_user_port.exit.i.dsa_fdb_offload_notify.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #19
  br label %sw.epilog

sw.bb13:                                          ; preds = %dsa_to_port.exit
  %host_addr14 = getelementptr i8, ptr %work, i32 56
  %55 = ptrtoint ptr %host_addr14 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %host_addr14, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool15.not = icmp eq i8 %56, 0
  %addr22 = getelementptr i8, ptr %work, i32 48
  %vid24 = getelementptr i8, ptr %work, i32 54
  %57 = ptrtoint ptr %vid24 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vid24, align 2
  br i1 %tobool15.not, label %if.else21, label %if.then16

if.then16:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #21
  %call20 = tail call i32 @dsa_port_host_fdb_del(ptr noundef %retval.0.i, ptr noundef %addr22, i16 noundef zeroext %58) #19
  br label %if.end26

if.else21:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #21
  %call25 = tail call i32 @dsa_port_fdb_del(ptr noundef %retval.0.i, ptr noundef %addr22, i16 noundef zeroext %58) #19
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then16
  %err.1 = phi i32 [ %call20, %if.then16 ], [ %call25, %if.else21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool27.not = icmp eq i32 %err.1, 0
  br i1 %tobool27.not, label %if.end26.sw.epilog_crit_edge, label %do.end31

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #21
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %index33 = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 5
  %61 = ptrtoint ptr %index33 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index33, align 4
  %addr34 = getelementptr i8, ptr %work, i32 48
  %vid36 = getelementptr i8, ptr %work, i32 54
  %63 = ptrtoint ptr %vid36 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vid36, align 2
  %conv37 = zext i16 %64 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.51, i32 noundef %62, ptr noundef %addr34, i32 noundef %conv37, i32 noundef %err.1) #25
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end31, %if.end26.sw.epilog_crit_edge, %dsa_fdb_offload_notify.exit, %do.end, %dsa_to_port.exit.sw.epilog_crit_edge
  call void @kfree(ptr noundef %add.ptr) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_schedule_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_fdb_add(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_fdb_add(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_fdb_del(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_fdb_del(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_obj_add(ptr noundef %dev, ptr noundef readnone %ctx, ptr noundef %obj, ptr noundef %extack) #1 align 64 {
entry:
  %iter.i.i = alloca ptr, align 4
  %vlan.i = alloca %struct.switchdev_obj_port_vlan, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %1, %ctx
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 1, label %sw.bb14
    i32 4, label %sw.bb20
    i32 6, label %sw.bb29
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_dev, align 4
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge, label %if.end.i.i

sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.end.i.i:                                       ; preds = %sw.bb
  %lag_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %lag_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lag_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge

if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %hsr_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %hsr_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsr_dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i.i, label %if.end8.i.i, label %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge

if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.end8.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  br label %dsa_port_offloads_bridge_port.exit

dsa_port_offloads_bridge_port.exit:               ; preds = %if.end8.i.i, %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge, %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge, %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end8.i.i ], [ null, %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge ], [ %10, %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge ], [ %12, %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge ]
  %cmp.i = icmp eq ptr %retval.0.i.i, %6
  br i1 %cmp.i, label %if.end3, label %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge

dsa_port_offloads_bridge_port.exit.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %dsa_port_offloads_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call4 = tail call i32 @dsa_port_mdb_add(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %orig_dev6 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %15 = ptrtoint ptr %orig_dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %orig_dev6, align 4
  %bridge.i.i60 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %bridge.i.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge.i.i60, align 4
  %tobool.not.i.i61 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i61, label %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge, label %cond.true.i.i

sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit

cond.true.i.i:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %dsa_port_offloads_bridge_dev.exit

dsa_port_offloads_bridge_dev.exit:                ; preds = %cond.true.i.i, %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge
  %cond.i.i = phi ptr [ %20, %cond.true.i.i ], [ null, %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge ]
  %cmp.i62 = icmp eq ptr %cond.i.i, %16
  br i1 %cmp.i62, label %if.end9, label %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %dsa_port_offloads_bridge_dev.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call13 = tail call i32 @dsa_port_host_mdb_add(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %orig_dev15 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %21 = ptrtoint ptr %orig_dev15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %orig_dev15, align 4
  %bridge.i.i63 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %bridge.i.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge.i.i63, align 4
  %tobool.not.i.i64 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i64, label %sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge, label %if.end.i.i67

sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit74

if.end.i.i67:                                     ; preds = %sw.bb14
  %lag_dev.i.i65 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %lag_dev.i.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lag_dev.i.i65, align 4
  %tobool1.not.i.i66 = icmp eq ptr %26, null
  br i1 %tobool1.not.i.i66, label %if.else.i.i70, label %if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge

if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge: ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit74

if.else.i.i70:                                    ; preds = %if.end.i.i67
  %hsr_dev.i.i68 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %hsr_dev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hsr_dev.i.i68, align 4
  %tobool4.not.i.i69 = icmp eq ptr %28, null
  br i1 %tobool4.not.i.i69, label %if.end8.i.i71, label %if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge

if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge: ; preds = %if.else.i.i70
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit74

if.end8.i.i71:                                    ; preds = %if.else.i.i70
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  br label %dsa_port_offloads_bridge_port.exit74

dsa_port_offloads_bridge_port.exit74:             ; preds = %if.end8.i.i71, %if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge, %if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge, %sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge
  %retval.0.i.i72 = phi ptr [ %30, %if.end8.i.i71 ], [ null, %sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge ], [ %26, %if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge ], [ %28, %if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge ]
  %cmp.i73 = icmp eq ptr %retval.0.i.i72, %22
  br i1 %cmp.i73, label %if.end18, label %dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge

dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit74
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end18:                                         ; preds = %dsa_port_offloads_bridge_port.exit74
  %cpu_dp.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %cpu_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_dp.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vlan.i) #19
  %35 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan.i, i32 0, i32 1
  %36 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %vlan.i, i32 0, i32 2
  %call2.i = tail call zeroext i1 @dsa_port_skip_vlan_configuration(ptr noundef %1) #19
  br i1 %call2.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %if.end18
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_vlan_add.__msg) #19
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.dsa_slave_vlan_add.exit_crit_edge, label %if.then3.i

do.body.i.dsa_slave_vlan_add.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_add.exit

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dsa_slave_vlan_add.__msg, ptr %extack, align 4
  br label %dsa_slave_vlan_add.exit

if.end4.i:                                        ; preds = %if.end18
  %38 = call ptr @memcpy(ptr %vlan.i, ptr %obj, i32 32)
  %39 = ptrtoint ptr %bridge.i.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bridge.i.i63, align 4
  %tobool.not.i49.i = icmp eq ptr %40, null
  br i1 %tobool.not.i49.i, label %if.end4.i.dsa_port_bridge_dev_get.exit.i_crit_edge, label %cond.true.i.i76

if.end4.i.dsa_port_bridge_dev_get.exit.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_bridge_dev_get.exit.i

cond.true.i.i76:                                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #21
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  br label %dsa_port_bridge_dev_get.exit.i

dsa_port_bridge_dev_get.exit.i:                   ; preds = %cond.true.i.i76, %if.end4.i.dsa_port_bridge_dev_get.exit.i_crit_edge
  %cond.i.i77 = phi ptr [ %42, %cond.true.i.i76 ], [ null, %if.end4.i.dsa_port_bridge_dev_get.exit.i_crit_edge ]
  %call6.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef %cond.i.i77) #19
  br i1 %call6.i, label %if.then7.i, label %dsa_port_bridge_dev_get.exit.i.if.end20.i_crit_edge

dsa_port_bridge_dev_get.exit.i.if.end20.i_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20.i

if.then7.i:                                       ; preds = %dsa_port_bridge_dev_get.exit.i
  %43 = tail call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !176
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #19
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i.i, label %if.then7.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then7.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then7.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i78 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i78, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 696, ptr noundef nonnull @.str.55) #19
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then7.i.rcu_read_lock.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i.i) #19
  %adj_list.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 13
  %47 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %adj_list.i.i, ptr %iter.i.i, align 4
  %call.i50.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %dev, ptr noundef nonnull %iter.i.i) #19
  %tobool.not16.i.i = icmp eq ptr %call.i50.i, null
  br i1 %tobool.not16.i.i, label %rcu_read_lock.exit.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i.i_crit_edge

rcu_read_lock.exit.i.for.body.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  br label %for.body.i.i

rcu_read_lock.exit.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_check_for_8021q_uppers.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rcu_read_lock.exit.i.for.body.i.i_crit_edge
  %upper_dev.017.i.i = phi ptr [ %call8.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i50.i, %rcu_read_lock.exit.i.for.body.i.i_crit_edge ]
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %upper_dev.017.i.i, i32 0, i32 15
  %48 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %49, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i79

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i

if.end.i.i79:                                     ; preds = %for.body.i.i
  %call2.i.i = call zeroext i16 @vlan_dev_vlan_id(ptr noundef nonnull %upper_dev.017.i.i) #19
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %36, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call2.i.i, i16 %51)
  %cmp.i.i = icmp eq i16 %call2.i.i, %51
  br i1 %cmp.i.i, label %if.end.i.i79.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge, label %if.end.i.i79.for.inc.i.i_crit_edge

if.end.i.i79.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i.i

if.end.i.i79.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge: ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_check_for_8021q_uppers.exit.i

for.inc.i.i:                                      ; preds = %if.end.i.i79.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %call8.i.i = call ptr @netdev_upper_get_next_dev_rcu(ptr noundef %dev, ptr noundef nonnull %iter.i.i) #19
  %tobool.not.i51.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i51.i, label %for.inc.i.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

for.inc.i.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_check_for_8021q_uppers.exit.i

dsa_slave_vlan_check_for_8021q_uppers.exit.i:     ; preds = %for.inc.i.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge, %if.end.i.i79.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge, %rcu_read_lock.exit.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge
  %tobool9.not.i = phi i1 [ true, %rcu_read_lock.exit.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge ], [ false, %if.end.i.i79.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge ], [ true, %for.inc.i.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge ]
  %retval.2.i.i = phi i32 [ 0, %rcu_read_lock.exit.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge ], [ -16, %if.end.i.i79.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge ], [ 0, %for.inc.i.i.dsa_slave_vlan_check_for_8021q_uppers.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i.i) #19
  %call.i52.i = call zeroext i1 @rcu_is_watching() #19
  br i1 %call.i52.i, label %dsa_slave_vlan_check_for_8021q_uppers.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i55.i

dsa_slave_vlan_check_for_8021q_uppers.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %dsa_slave_vlan_check_for_8021q_uppers.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

land.lhs.true.i55.i:                              ; preds = %dsa_slave_vlan_check_for_8021q_uppers.exit.i
  %call1.i53.i = call i32 @debug_lockdep_rcu_enabled() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %rcu_read_unlock.exit.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 724, ptr noundef nonnull @.str.56) #19
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit.i_crit_edge, %dsa_slave_vlan_check_for_8021q_uppers.exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !177
  %52 = call i32 @llvm.read_register.i32(metadata !147) #19
  %and.i.i.i.i.i59.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i60.i, align 4
  call void @rcu_read_unlock_strict() #19
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #19
  br i1 %tobool9.not.i, label %rcu_read_unlock.exit.i.if.end20.i_crit_edge, label %do.body11.i

rcu_read_unlock.exit.i.if.end20.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end20.i

do.body11.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_vlan_add.__msg.53) #19
  %tobool13.not.i = icmp eq ptr %extack, null
  br i1 %tobool13.not.i, label %do.body11.i.dsa_slave_vlan_add.exit_crit_edge, label %if.then14.i

do.body11.i.dsa_slave_vlan_add.exit_crit_edge:    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_add.exit

if.then14.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #21
  %56 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @dsa_slave_vlan_add.__msg.53, ptr %extack, align 4
  br label %dsa_slave_vlan_add.exit

if.end20.i:                                       ; preds = %rcu_read_unlock.exit.i.if.end20.i_crit_edge, %dsa_port_bridge_dev_get.exit.i.if.end20.i_crit_edge
  %call21.i = call i32 @dsa_port_vlan_add(ptr noundef %1, ptr noundef nonnull %vlan.i, ptr noundef %extack) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.dsa_slave_vlan_add.exit_crit_edge

if.end20.i.dsa_slave_vlan_add.exit_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_add.exit

if.end24.i:                                       ; preds = %if.end20.i
  %57 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %35, align 4
  %59 = and i16 %58, -3
  store i16 %59, ptr %35, align 4
  %60 = ptrtoint ptr %cpu_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cpu_dp.i.i, align 4
  %call26.i = call i32 @dsa_port_vlan_add(ptr noundef %61, ptr noundef nonnull %vlan.i, ptr noundef %extack) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i.dsa_slave_vlan_add.exit_crit_edge

if.end24.i.dsa_slave_vlan_add.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_vlan_add.exit

if.end29.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #21
  %62 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %36, align 2
  %call30.i = call i32 @vlan_vid_add(ptr noundef %34, i16 noundef zeroext -32512, i16 noundef zeroext %63) #19
  br label %dsa_slave_vlan_add.exit

dsa_slave_vlan_add.exit:                          ; preds = %if.end29.i, %if.end24.i.dsa_slave_vlan_add.exit_crit_edge, %if.end20.i.dsa_slave_vlan_add.exit_crit_edge, %if.then14.i, %do.body11.i.dsa_slave_vlan_add.exit_crit_edge, %if.then3.i, %do.body.i.dsa_slave_vlan_add.exit_crit_edge
  %retval.0.i = phi i32 [ %call30.i, %if.end29.i ], [ 0, %if.then3.i ], [ 0, %do.body.i.dsa_slave_vlan_add.exit_crit_edge ], [ %retval.2.i.i, %if.then14.i ], [ %retval.2.i.i, %do.body11.i.dsa_slave_vlan_add.exit_crit_edge ], [ %call21.i, %if.end20.i.dsa_slave_vlan_add.exit_crit_edge ], [ %call26.i, %if.end24.i.dsa_slave_vlan_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vlan.i) #19
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %orig_dev21 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %64 = ptrtoint ptr %orig_dev21 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %orig_dev21, align 4
  %bridge.i.i80 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %66 = ptrtoint ptr %bridge.i.i80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bridge.i.i80, align 4
  %tobool.not.i.i81 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i81, label %sw.bb20.dsa_port_offloads_bridge_dev.exit86_crit_edge, label %cond.true.i.i82

sw.bb20.dsa_port_offloads_bridge_dev.exit86_crit_edge: ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit86

cond.true.i.i82:                                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  br label %dsa_port_offloads_bridge_dev.exit86

dsa_port_offloads_bridge_dev.exit86:              ; preds = %cond.true.i.i82, %sw.bb20.dsa_port_offloads_bridge_dev.exit86_crit_edge
  %cond.i.i83 = phi ptr [ %69, %cond.true.i.i82 ], [ null, %sw.bb20.dsa_port_offloads_bridge_dev.exit86_crit_edge ]
  %cmp.i84 = icmp eq ptr %cond.i.i83, %65
  br i1 %cmp.i84, label %if.end24, label %dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit86
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end24:                                         ; preds = %dsa_port_offloads_bridge_dev.exit86
  call void @__sanitizer_cov_trace_pc() #21
  %call28 = tail call i32 @dsa_port_mrp_add(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %orig_dev30 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %70 = ptrtoint ptr %orig_dev30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %orig_dev30, align 4
  %bridge.i.i87 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %72 = ptrtoint ptr %bridge.i.i87 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bridge.i.i87, align 4
  %tobool.not.i.i88 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i88, label %sw.bb29.dsa_port_offloads_bridge_dev.exit93_crit_edge, label %cond.true.i.i89

sw.bb29.dsa_port_offloads_bridge_dev.exit93_crit_edge: ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit93

cond.true.i.i89:                                  ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #21
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  br label %dsa_port_offloads_bridge_dev.exit93

dsa_port_offloads_bridge_dev.exit93:              ; preds = %cond.true.i.i89, %sw.bb29.dsa_port_offloads_bridge_dev.exit93_crit_edge
  %cond.i.i90 = phi ptr [ %75, %cond.true.i.i89 ], [ null, %sw.bb29.dsa_port_offloads_bridge_dev.exit93_crit_edge ]
  %cmp.i91 = icmp eq ptr %cond.i.i90, %71
  br i1 %cmp.i91, label %if.end33, label %dsa_port_offloads_bridge_dev.exit93.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit93.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit93
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end33:                                         ; preds = %dsa_port_offloads_bridge_dev.exit93
  call void @__sanitizer_cov_trace_pc() #21
  %call37 = tail call i32 @dsa_port_mrp_add_ring_role(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %dsa_port_offloads_bridge_dev.exit93.cleanup_crit_edge, %if.end24, %dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge, %dsa_slave_vlan_add.exit, %dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge, %if.end9, %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge, %if.end3, %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit93.cleanup_crit_edge ], [ %call37, %if.end33 ], [ %call28, %if.end24 ], [ %retval.0.i, %dsa_slave_vlan_add.exit ], [ %call13, %if.end9 ], [ %call4, %if.end3 ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_port_obj_del(ptr nocapture noundef readonly %dev, ptr noundef readnone %ctx, ptr noundef %obj) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %1, %ctx
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 1, label %sw.bb14
    i32 4, label %sw.bb20
    i32 6, label %sw.bb29
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %orig_dev = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %5 = ptrtoint ptr %orig_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %orig_dev, align 4
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge, label %if.end.i.i

sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.end.i.i:                                       ; preds = %sw.bb
  %lag_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %lag_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lag_dev.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge

if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %hsr_dev.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %hsr_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hsr_dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i.i, label %if.end8.i.i, label %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge

if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit

if.end8.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  br label %dsa_port_offloads_bridge_port.exit

dsa_port_offloads_bridge_port.exit:               ; preds = %if.end8.i.i, %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge, %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge, %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end8.i.i ], [ null, %sw.bb.dsa_port_offloads_bridge_port.exit_crit_edge ], [ %10, %if.end.i.i.dsa_port_offloads_bridge_port.exit_crit_edge ], [ %12, %if.else.i.i.dsa_port_offloads_bridge_port.exit_crit_edge ]
  %cmp.i = icmp eq ptr %retval.0.i.i, %6
  br i1 %cmp.i, label %if.end3, label %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge

dsa_port_offloads_bridge_port.exit.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end3:                                          ; preds = %dsa_port_offloads_bridge_port.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call4 = tail call i32 @dsa_port_mdb_del(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %orig_dev6 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %15 = ptrtoint ptr %orig_dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %orig_dev6, align 4
  %bridge.i.i60 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %bridge.i.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bridge.i.i60, align 4
  %tobool.not.i.i61 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i61, label %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge, label %cond.true.i.i

sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit

cond.true.i.i:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #21
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %dsa_port_offloads_bridge_dev.exit

dsa_port_offloads_bridge_dev.exit:                ; preds = %cond.true.i.i, %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge
  %cond.i.i = phi ptr [ %20, %cond.true.i.i ], [ null, %sw.bb5.dsa_port_offloads_bridge_dev.exit_crit_edge ]
  %cmp.i62 = icmp eq ptr %cond.i.i, %16
  br i1 %cmp.i62, label %if.end9, label %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %dsa_port_offloads_bridge_dev.exit
  call void @__sanitizer_cov_trace_pc() #21
  %call13 = tail call i32 @dsa_port_host_mdb_del(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %orig_dev15 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %21 = ptrtoint ptr %orig_dev15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %orig_dev15, align 4
  %bridge.i.i63 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %bridge.i.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bridge.i.i63, align 4
  %tobool.not.i.i64 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i64, label %sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge, label %if.end.i.i67

sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit74

if.end.i.i67:                                     ; preds = %sw.bb14
  %lag_dev.i.i65 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %lag_dev.i.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lag_dev.i.i65, align 4
  %tobool1.not.i.i66 = icmp eq ptr %26, null
  br i1 %tobool1.not.i.i66, label %if.else.i.i70, label %if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge

if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge: ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit74

if.else.i.i70:                                    ; preds = %if.end.i.i67
  %hsr_dev.i.i68 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %hsr_dev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hsr_dev.i.i68, align 4
  %tobool4.not.i.i69 = icmp eq ptr %28, null
  br i1 %tobool4.not.i.i69, label %if.end8.i.i71, label %if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge

if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge: ; preds = %if.else.i.i70
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_port.exit74

if.end8.i.i71:                                    ; preds = %if.else.i.i70
  call void @__sanitizer_cov_trace_pc() #21
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  br label %dsa_port_offloads_bridge_port.exit74

dsa_port_offloads_bridge_port.exit74:             ; preds = %if.end8.i.i71, %if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge, %if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge, %sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge
  %retval.0.i.i72 = phi ptr [ %30, %if.end8.i.i71 ], [ null, %sw.bb14.dsa_port_offloads_bridge_port.exit74_crit_edge ], [ %26, %if.end.i.i67.dsa_port_offloads_bridge_port.exit74_crit_edge ], [ %28, %if.else.i.i70.dsa_port_offloads_bridge_port.exit74_crit_edge ]
  %cmp.i73 = icmp eq ptr %retval.0.i.i72, %22
  br i1 %cmp.i73, label %if.end18, label %dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge

dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_port.exit74
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end18:                                         ; preds = %dsa_port_offloads_bridge_port.exit74
  %cpu_dp.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %cpu_dp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_dp.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call2.i = tail call zeroext i1 @dsa_port_skip_vlan_configuration(ptr noundef %1) #19
  br i1 %call2.i, label %if.end18.cleanup_crit_edge, label %if.end.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %call3.i = tail call i32 @dsa_port_vlan_del(ptr noundef %1, ptr noundef %obj) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %obj, i32 0, i32 2
  %35 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid.i, align 2
  tail call void @vlan_vid_del(ptr noundef %34, i16 noundef zeroext -32512, i16 noundef zeroext %36) #19
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %orig_dev21 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %37 = ptrtoint ptr %orig_dev21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %orig_dev21, align 4
  %bridge.i.i75 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %bridge.i.i75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bridge.i.i75, align 4
  %tobool.not.i.i76 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i76, label %sw.bb20.dsa_port_offloads_bridge_dev.exit80_crit_edge, label %cond.true.i.i77

sw.bb20.dsa_port_offloads_bridge_dev.exit80_crit_edge: ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit80

cond.true.i.i77:                                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  br label %dsa_port_offloads_bridge_dev.exit80

dsa_port_offloads_bridge_dev.exit80:              ; preds = %cond.true.i.i77, %sw.bb20.dsa_port_offloads_bridge_dev.exit80_crit_edge
  %cond.i.i78 = phi ptr [ %42, %cond.true.i.i77 ], [ null, %sw.bb20.dsa_port_offloads_bridge_dev.exit80_crit_edge ]
  %cmp.i79 = icmp eq ptr %cond.i.i78, %38
  br i1 %cmp.i79, label %if.end24, label %dsa_port_offloads_bridge_dev.exit80.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit80.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit80
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end24:                                         ; preds = %dsa_port_offloads_bridge_dev.exit80
  call void @__sanitizer_cov_trace_pc() #21
  %call28 = tail call i32 @dsa_port_mrp_del(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %orig_dev30 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %43 = ptrtoint ptr %orig_dev30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %orig_dev30, align 4
  %bridge.i.i81 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %45 = ptrtoint ptr %bridge.i.i81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bridge.i.i81, align 4
  %tobool.not.i.i82 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i82, label %sw.bb29.dsa_port_offloads_bridge_dev.exit86_crit_edge, label %cond.true.i.i83

sw.bb29.dsa_port_offloads_bridge_dev.exit86_crit_edge: ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_port_offloads_bridge_dev.exit86

cond.true.i.i83:                                  ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #21
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  br label %dsa_port_offloads_bridge_dev.exit86

dsa_port_offloads_bridge_dev.exit86:              ; preds = %cond.true.i.i83, %sw.bb29.dsa_port_offloads_bridge_dev.exit86_crit_edge
  %cond.i.i84 = phi ptr [ %48, %cond.true.i.i83 ], [ null, %sw.bb29.dsa_port_offloads_bridge_dev.exit86_crit_edge ]
  %cmp.i85 = icmp eq ptr %cond.i.i84, %44
  br i1 %cmp.i85, label %if.end33, label %dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge

dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge: ; preds = %dsa_port_offloads_bridge_dev.exit86
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end33:                                         ; preds = %dsa_port_offloads_bridge_dev.exit86
  call void @__sanitizer_cov_trace_pc() #21
  %call37 = tail call i32 @dsa_port_mrp_del_ring_role(ptr noundef %1, ptr noundef %obj) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge, %if.end24, %dsa_port_offloads_bridge_dev.exit80.cleanup_crit_edge, %if.end5.i, %if.end.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge, %if.end9, %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge, %if.end3, %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_port.exit.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_port.exit74.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit80.cleanup_crit_edge ], [ -95, %dsa_port_offloads_bridge_dev.exit86.cleanup_crit_edge ], [ %call37, %if.end33 ], [ %call28, %if.end24 ], [ %call13, %if.end9 ], [ %call4, %if.end3 ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i ], [ 0, %if.end18.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mdb_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_mdb_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_add_ring_role(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_port_skip_vlan_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_upper_get_next_dev_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mdb_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_host_mdb_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_mrp_del_ring_role(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_slave_netdevice_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr noundef %ptr) #1 align 64 {
entry:
  %iter.i119 = alloca ptr, align 4
  %iter.i = alloca ptr, align 4
  %br_info.i.i = alloca %struct.bridge_vlan_info, align 2
  %close_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %event, label %entry.cleanup55_crit_edge [
    i32 26, label %sw.bb
    i32 21, label %sw.bb11
    i32 27, label %sw.bb20
    i32 10, label %sw.bb33
  ]

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

sw.bb:                                            ; preds = %entry
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %4, @dsa_slave_netdev_ops
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %extack.i.i.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %extack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extack.i.i.i, align 4
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.if.end_crit_edge, label %if.end.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end.i.i:                                       ; preds = %if.then.i
  %call3.i.i = tail call ptr @vlan_dev_real_dev(ptr noundef %1) #19
  %netdev_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev_ops.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %10, @dsa_slave_netdev_ops
  br i1 %cmp.i.i.i, label %if.end6.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end6.i.i:                                      ; preds = %if.end.i.i
  %dp.i.i.i = getelementptr i8, ptr %call3.i.i, i32 2312
  %11 = ptrtoint ptr %dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dp.i.i.i, align 4
  %bridge.i.i.i = getelementptr inbounds %struct.dsa_port, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %bridge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bridge.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.if.end_crit_edge, label %dsa_port_bridge_dev_get.exit.i.i

if.end6.i.i.if.end_crit_edge:                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

dsa_port_bridge_dev_get.exit.i.i:                 ; preds = %if.end6.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %dsa_port_bridge_dev_get.exit.i.i.if.end_crit_edge, label %if.end10.i.i

dsa_port_bridge_dev_get.exit.i.i.if.end_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end10.i.i:                                     ; preds = %dsa_port_bridge_dev_get.exit.i.i
  %call11.i.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %16) #19
  br i1 %call11.i.i, label %land.lhs.true.i.i, label %if.end10.i.i.if.end_crit_edge

if.end10.i.i.if.end_crit_edge:                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.end10.i.i
  %upper_dev.i.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %17 = ptrtoint ptr %upper_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %upper_dev.i.i, align 4
  %priv_flags.i30.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %priv_flags.i30.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %priv_flags.i30.i.i, align 16
  %and.i31.i.i = and i64 %20, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i31.i.i)
  %tobool.i32.not.i.i = icmp eq i64 %and.i31.i.i, 0
  br i1 %tobool.i32.not.i.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true13.i.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true13.i.i:                              ; preds = %land.lhs.true.i.i
  %linking.i.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %21 = ptrtoint ptr %linking.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %linking.i.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true13.i.i.if.end_crit_edge, label %do.body.i.i

land.lhs.true13.i.i.if.end_crit_edge:             ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

do.body.i.i:                                      ; preds = %land.lhs.true13.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_prevent_bridging_8021q_upper.__msg) #19
  %tobool16.not.i.i = icmp eq ptr %6, null
  br i1 %tobool16.not.i.i, label %do.body.i.i.cleanup55_crit_edge, label %if.then17.i.i

do.body.i.i.cleanup55_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

if.then17.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dsa_prevent_bridging_8021q_upper.__msg, ptr %6, align 4
  br label %cleanup55

if.end.i:                                         ; preds = %sw.bb
  %dp.i.i = getelementptr i8, ptr %1, i32 2312
  %24 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dp.i.i, align 4
  %ds3.i = getelementptr inbounds %struct.dsa_port, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ds3.i, align 4
  %ops.i = getelementptr inbounds %struct.dsa_switch, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %port_prechangeupper.i = getelementptr inbounds %struct.dsa_switch_ops, ptr %29, i32 0, i32 43
  %30 = ptrtoint ptr %port_prechangeupper.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port_prechangeupper.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then4.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.end.i
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %25, i32 0, i32 5
  %32 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i, align 4
  %call7.i = tail call i32 %31(ptr noundef %27, i32 noundef %33, ptr noundef %ptr) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then4.i.if.end12.i_crit_edge, label %if.then9.i

if.then4.i.if.end12.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i = sub i32 1, %call7.i
  %or.i.i = or i32 %sub.i.i, 32768
  br label %cleanup55

if.end12.i:                                       ; preds = %if.then4.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %upper_dev.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %34 = ptrtoint ptr %upper_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %upper_dev.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %37, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end12.i.if.end_crit_edge, label %if.then14.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then14.i:                                      ; preds = %if.end12.i
  %38 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dp.i.i, align 4
  %bridge.i.i32.i = getelementptr inbounds %struct.dsa_port, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %bridge.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bridge.i.i32.i, align 4
  %tobool.not.i.i33.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i33.i, label %dsa_port_bridge_dev_get.exit.thread.i.i, label %dsa_port_bridge_dev_get.exit.i35.i

dsa_port_bridge_dev_get.exit.thread.i.i:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %br_info.i.i) #19
  br label %dsa_slave_prechangeupper_sanity_check.exit.thread149

dsa_port_bridge_dev_get.exit.i35.i:               ; preds = %if.then14.i
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %br_info.i.i) #19
  %44 = ptrtoint ptr %br_info.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %br_info.i.i, align 2, !annotation !178
  %45 = getelementptr inbounds %struct.bridge_vlan_info, ptr %br_info.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %45, align 2, !annotation !178
  %tobool.not.i34.i = icmp eq ptr %43, null
  br i1 %tobool.not.i34.i, label %dsa_port_bridge_dev_get.exit.i35.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge, label %lor.lhs.false.i.i

dsa_port_bridge_dev_get.exit.i35.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_prechangeupper_sanity_check.exit.thread149

lor.lhs.false.i.i:                                ; preds = %dsa_port_bridge_dev_get.exit.i35.i
  %call2.i.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %43) #19
  br i1 %call2.i.i, label %if.end.i39.i, label %lor.lhs.false.i.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge

lor.lhs.false.i.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_prechangeupper_sanity_check.exit.thread149

if.end.i39.i:                                     ; preds = %lor.lhs.false.i.i
  %extack.i.i36.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %47 = ptrtoint ptr %extack.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %extack.i.i36.i, align 4
  %49 = ptrtoint ptr %upper_dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %upper_dev.i, align 4
  %call5.i.i = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %50) #19
  %call6.i.i = call i32 @br_vlan_get_info(ptr noundef nonnull %43, i16 noundef zeroext %call5.i.i, ptr noundef nonnull %br_info.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i38.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp.i38.i, label %do.body.i40.i, label %if.end.i39.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge

if.end.i39.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge: ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_prechangeupper_sanity_check.exit.thread149

do.body.i40.i:                                    ; preds = %if.end.i39.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_check_8021q_upper.__msg) #19
  %tobool8.not.i.i = icmp eq ptr %48, null
  br i1 %tobool8.not.i.i, label %do.body.i40.i.dsa_slave_prechangeupper_sanity_check.exit_crit_edge, label %if.then9.i.i

do.body.i40.i.dsa_slave_prechangeupper_sanity_check.exit_crit_edge: ; preds = %do.body.i40.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_prechangeupper_sanity_check.exit

if.then9.i.i:                                     ; preds = %do.body.i40.i
  call void @__sanitizer_cov_trace_pc() #21
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dsa_slave_check_8021q_upper.__msg, ptr %48, align 4
  br label %dsa_slave_prechangeupper_sanity_check.exit

dsa_slave_prechangeupper_sanity_check.exit.thread149: ; preds = %if.end.i39.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge, %lor.lhs.false.i.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge, %dsa_port_bridge_dev_get.exit.i35.i.dsa_slave_prechangeupper_sanity_check.exit.thread149_crit_edge, %dsa_port_bridge_dev_get.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %br_info.i.i) #19
  br label %if.end

dsa_slave_prechangeupper_sanity_check.exit:       ; preds = %if.then9.i.i, %do.body.i40.i.dsa_slave_prechangeupper_sanity_check.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %br_info.i.i) #19
  br label %cleanup55

if.end:                                           ; preds = %dsa_slave_prechangeupper_sanity_check.exit.thread149, %if.end12.i.if.end_crit_edge, %land.lhs.true13.i.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %if.end10.i.i.if.end_crit_edge, %dsa_port_bridge_dev_get.exit.i.i.if.end_crit_edge, %if.end6.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %52 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i = icmp eq ptr %53, @dsa_slave_netdev_ops
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %dp.i.i81 = getelementptr i8, ptr %1, i32 2312
  %54 = ptrtoint ptr %dp.i.i81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dp.i.i81, align 4
  %upper_dev.i82 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %56 = ptrtoint ptr %upper_dev.i82 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %upper_dev.i82, align 4
  %priv_flags.i.i83 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %priv_flags.i.i83 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %priv_flags.i.i83, align 16
  %and.i.i84 = and i64 %59, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i84)
  %tobool.i.not.i85 = icmp eq i64 %and.i.i84, 0
  br i1 %tobool.i.not.i85, label %if.then3.if.else.i_crit_edge, label %land.lhs.true.i

if.then3.if.else.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then3
  %linking.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %60 = ptrtoint ptr %linking.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %linking.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i86 = icmp eq i8 %61, 0
  br i1 %tobool.not.i86, label %if.then.i87, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i

if.then.i87:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @dsa_port_pre_bridge_leave(ptr noundef %55, ptr noundef %57) #19
  br label %cleanup55

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then3.if.else.i_crit_edge
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 14
  %62 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i88 = and i32 %63, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i88)
  %tobool.not.i.i.i89 = icmp ne i32 %and.i.i.i88, 0
  %and1.i.i.i = and i64 %59, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i)
  %tobool2.i.not.i.i = icmp ne i64 %and1.i.i.i, 0
  %or.cond.i = select i1 %tobool.not.i.i.i89, i1 %tobool2.i.not.i.i, i1 false
  %and.i4.i.i = and i64 %59, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i)
  %tobool.i.i.i = icmp ne i64 %and.i4.i.i, 0
  %or.cond1.i = select i1 %or.cond.i, i1 true, i1 %tobool.i.i.i
  br i1 %or.cond1.i, label %land.lhs.true5.i, label %if.else.i.cleanup55_crit_edge

if.else.i.cleanup55_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

land.lhs.true5.i:                                 ; preds = %if.else.i
  %linking6.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %64 = ptrtoint ptr %linking6.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %linking6.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool7.not.i = icmp eq i8 %65, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %land.lhs.true5.i.cleanup55_crit_edge

land.lhs.true5.i.cleanup55_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @dsa_port_pre_lag_leave(ptr noundef %55, ptr noundef %57) #19
  br label %cleanup55

if.end5:                                          ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i.i, align 8
  %and.i.i90 = and i32 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %and.i.i90, 0
  br i1 %tobool.not.i.i91, label %if.end5.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

if.end5.netif_is_lag_master.exit_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %if.end5
  %priv_flags.i.i92 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %68 = ptrtoint ptr %priv_flags.i.i92 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %priv_flags.i.i92, align 16
  %and1.i.i = and i64 %69, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then7_crit_edge

netif_is_bond_master.exit.i.if.then7_crit_edge:   ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then7

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %if.end5.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %70 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %71, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.cleanup55_crit_edge, label %netif_is_lag_master.exit.if.then7_crit_edge

netif_is_lag_master.exit.if.then7_crit_edge:      ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then7

netif_is_lag_master.exit.cleanup55_crit_edge:     ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

if.then7:                                         ; preds = %netif_is_lag_master.exit.if.then7_crit_edge, %netif_is_bond_master.exit.i.if.then7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #19
  %lower1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %72 = ptrtoint ptr %lower1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lower1.i, align 8
  %74 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #19
  %tobool.not1.i = icmp eq ptr %call.i, null
  br i1 %tobool.not1.i, label %if.then7.dsa_slave_lag_prechangeupper.exit_crit_edge, label %for.body.lr.ph.i

if.then7.dsa_slave_lag_prechangeupper.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_lag_prechangeupper.exit

for.body.lr.ph.i:                                 ; preds = %if.then7
  %upper_dev.i.i93 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %linking.i.i94 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lower.02.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call12.i, %for.inc.i.for.body.i_crit_edge ]
  %netdev_ops.i.i95 = getelementptr inbounds %struct.net_device, ptr %lower.02.i, i32 0, i32 16
  %75 = ptrtoint ptr %netdev_ops.i.i95 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev_ops.i.i95, align 8
  %cmp.i.i96 = icmp eq ptr %76, @dsa_slave_netdev_ops
  br i1 %cmp.i.i96, label %if.end.i98, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end.i98:                                       ; preds = %for.body.i
  %dp.i.i97 = getelementptr i8, ptr %lower.02.i, i32 2312
  %77 = ptrtoint ptr %dp.i.i97 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dp.i.i97, align 4
  %lag_dev.i = getelementptr inbounds %struct.dsa_port, ptr %78, i32 0, i32 18
  %79 = ptrtoint ptr %lag_dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lag_dev.i, align 4
  %tobool4.not.i = icmp eq ptr %80, null
  br i1 %tobool4.not.i, label %if.end.i98.for.inc.i_crit_edge, label %if.end6.i

if.end.i98.for.inc.i_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i98
  %81 = ptrtoint ptr %upper_dev.i.i93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %upper_dev.i.i93, align 4
  %priv_flags.i.i.i99 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %priv_flags.i.i.i99 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %priv_flags.i.i.i99, align 16
  %and.i.i.i100 = and i64 %84, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i100)
  %tobool.i.not.i.i101 = icmp eq i64 %and.i.i.i100, 0
  br i1 %tobool.i.not.i.i101, label %if.end6.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i103

if.end6.i.if.else.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

land.lhs.true.i.i103:                             ; preds = %if.end6.i
  %85 = ptrtoint ptr %linking.i.i94 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %linking.i.i94, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i.i102 = icmp eq i8 %86, 0
  br i1 %tobool.not.i.i102, label %if.then.i.i, label %land.lhs.true.i.i103.if.else.i.i_crit_edge

land.lhs.true.i.i103.if.else.i.i_crit_edge:       ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i103
  call void @__sanitizer_cov_trace_pc() #21
  call void @dsa_port_pre_bridge_leave(ptr noundef %78, ptr noundef %82) #19
  br label %for.inc.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i103.if.else.i.i_crit_edge, %if.end6.i.if.else.i.i_crit_edge
  %flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 14
  %87 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %88, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp ne i32 %and.i.i.i.i, 0
  %and1.i.i.i.i = and i64 %84, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i.i)
  %tobool2.i.not.i.i.i = icmp ne i64 %and1.i.i.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i.i.i, i1 %tobool2.i.not.i.i.i, i1 false
  %and.i4.i.i.i = and i64 %84, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i.i)
  %tobool.i.i.i.i = icmp ne i64 %and.i4.i.i.i, 0
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %tobool.i.i.i.i
  br i1 %or.cond1.i.i, label %land.lhs.true5.i.i, label %if.else.i.i.for.inc.i_crit_edge

if.else.i.i.for.inc.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

land.lhs.true5.i.i:                               ; preds = %if.else.i.i
  %89 = ptrtoint ptr %linking.i.i94 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %linking.i.i94, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool7.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %land.lhs.true5.i.i.for.inc.i_crit_edge

land.lhs.true5.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i

if.then8.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @dsa_port_pre_lag_leave(ptr noundef %78, ptr noundef %82) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i.i, %land.lhs.true5.i.i.for.inc.i_crit_edge, %if.else.i.i.for.inc.i_crit_edge, %if.then.i.i, %if.end.i98.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call12.i = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i) #19
  %tobool.not.i104 = icmp eq ptr %call12.i, null
  br i1 %tobool.not.i104, label %for.inc.i.dsa_slave_lag_prechangeupper.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.inc.i.dsa_slave_lag_prechangeupper.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_lag_prechangeupper.exit

dsa_slave_lag_prechangeupper.exit:                ; preds = %for.inc.i.dsa_slave_lag_prechangeupper.exit_crit_edge, %if.then7.dsa_slave_lag_prechangeupper.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #19
  br label %cleanup55

sw.bb11:                                          ; preds = %entry
  %netdev_ops.i105 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %91 = ptrtoint ptr %netdev_ops.i105 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev_ops.i105, align 8
  %cmp.i106 = icmp eq ptr %92, @dsa_slave_netdev_ops
  br i1 %cmp.i106, label %if.then13, label %if.end15

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #21
  %call14 = tail call fastcc i32 @dsa_slave_changeupper(ptr noundef %1, ptr noundef %ptr)
  br label %cleanup55

if.end15:                                         ; preds = %sw.bb11
  %flags.i.i107 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %93 = ptrtoint ptr %flags.i.i107 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i.i107, align 8
  %and.i.i108 = and i32 %94, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i108)
  %tobool.not.i.i109 = icmp eq i32 %and.i.i108, 0
  br i1 %tobool.not.i.i109, label %if.end15.netif_is_lag_master.exit118_crit_edge, label %netif_is_bond_master.exit.i113

if.end15.netif_is_lag_master.exit118_crit_edge:   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_is_lag_master.exit118

netif_is_bond_master.exit.i113:                   ; preds = %if.end15
  %priv_flags.i.i110 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %95 = ptrtoint ptr %priv_flags.i.i110 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %priv_flags.i.i110, align 16
  %and1.i.i111 = and i64 %96, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i111)
  %tobool2.i.not.i112 = icmp eq i64 %and1.i.i111, 0
  br i1 %tobool2.i.not.i112, label %netif_is_bond_master.exit.i113.netif_is_lag_master.exit118_crit_edge, label %netif_is_bond_master.exit.i113.if.then17_crit_edge

netif_is_bond_master.exit.i113.if.then17_crit_edge: ; preds = %netif_is_bond_master.exit.i113
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17

netif_is_bond_master.exit.i113.netif_is_lag_master.exit118_crit_edge: ; preds = %netif_is_bond_master.exit.i113
  call void @__sanitizer_cov_trace_pc() #21
  br label %netif_is_lag_master.exit118

netif_is_lag_master.exit118:                      ; preds = %netif_is_bond_master.exit.i113.netif_is_lag_master.exit118_crit_edge, %if.end15.netif_is_lag_master.exit118_crit_edge
  %priv_flags.i3.i114 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %97 = ptrtoint ptr %priv_flags.i3.i114 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %priv_flags.i3.i114, align 16
  %and.i4.i115 = and i64 %98, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i115)
  %tobool.i.i116.not = icmp eq i64 %and.i4.i115, 0
  br i1 %tobool.i.i116.not, label %netif_is_lag_master.exit118.cleanup55_crit_edge, label %netif_is_lag_master.exit118.if.then17_crit_edge

netif_is_lag_master.exit118.if.then17_crit_edge:  ; preds = %netif_is_lag_master.exit118
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then17

netif_is_lag_master.exit118.cleanup55_crit_edge:  ; preds = %netif_is_lag_master.exit118
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

if.then17:                                        ; preds = %netif_is_lag_master.exit118.if.then17_crit_edge, %netif_is_bond_master.exit.i113.if.then17_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i119) #19
  %lower1.i120 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 13, i32 1
  %99 = ptrtoint ptr %lower1.i120 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lower1.i120, align 8
  %101 = ptrtoint ptr %iter.i119 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %iter.i119, align 4
  %call.i121 = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i119) #19
  %tobool.not21.i = icmp eq ptr %call.i121, null
  br i1 %tobool.not21.i, label %if.then17.dsa_slave_lag_changeupper.exit_crit_edge, label %if.then17.for.body.i124_crit_edge

if.then17.for.body.i124_crit_edge:                ; preds = %if.then17
  br label %for.body.i124

if.then17.dsa_slave_lag_changeupper.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_lag_changeupper.exit

for.body.i124:                                    ; preds = %for.inc.i134.for.body.i124_crit_edge, %if.then17.for.body.i124_crit_edge
  %err.023.i = phi i32 [ %err.1.i, %for.inc.i134.for.body.i124_crit_edge ], [ 0, %if.then17.for.body.i124_crit_edge ]
  %lower.022.i = phi ptr [ %call12.i132, %for.inc.i134.for.body.i124_crit_edge ], [ %call.i121, %if.then17.for.body.i124_crit_edge ]
  %netdev_ops.i.i122 = getelementptr inbounds %struct.net_device, ptr %lower.022.i, i32 0, i32 16
  %102 = ptrtoint ptr %netdev_ops.i.i122 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %netdev_ops.i.i122, align 8
  %cmp.i.i123 = icmp eq ptr %103, @dsa_slave_netdev_ops
  br i1 %cmp.i.i123, label %if.end.i128, label %for.body.i124.for.inc.i134_crit_edge

for.body.i124.for.inc.i134_crit_edge:             ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i134

if.end.i128:                                      ; preds = %for.body.i124
  %dp.i.i125 = getelementptr i8, ptr %lower.022.i, i32 2312
  %104 = ptrtoint ptr %dp.i.i125 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dp.i.i125, align 4
  %lag_dev.i126 = getelementptr inbounds %struct.dsa_port, ptr %105, i32 0, i32 18
  %106 = ptrtoint ptr %lag_dev.i126 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lag_dev.i126, align 4
  %tobool4.not.i127 = icmp eq ptr %107, null
  br i1 %tobool4.not.i127, label %if.end.i128.for.inc.i134_crit_edge, label %if.end6.i131

if.end.i128.for.inc.i134_crit_edge:               ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i134

if.end6.i131:                                     ; preds = %if.end.i128
  %call7.i129 = call fastcc i32 @dsa_slave_changeupper(ptr noundef nonnull %lower.022.i, ptr noundef %ptr) #19, !range !179
  %and.i.i130 = and i32 %call7.i129, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i130)
  %cmp.i19.i = icmp slt i32 %and.i.i130, 2
  br i1 %cmp.i19.i, label %if.end6.i131.for.inc.i134_crit_edge, label %if.end6.i131.dsa_slave_lag_changeupper.exit_crit_edge

if.end6.i131.dsa_slave_lag_changeupper.exit_crit_edge: ; preds = %if.end6.i131
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_lag_changeupper.exit

if.end6.i131.for.inc.i134_crit_edge:              ; preds = %if.end6.i131
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.i134

for.inc.i134:                                     ; preds = %if.end6.i131.for.inc.i134_crit_edge, %if.end.i128.for.inc.i134_crit_edge, %for.body.i124.for.inc.i134_crit_edge
  %err.1.i = phi i32 [ %call7.i129, %if.end6.i131.for.inc.i134_crit_edge ], [ %err.023.i, %if.end.i128.for.inc.i134_crit_edge ], [ %err.023.i, %for.body.i124.for.inc.i134_crit_edge ]
  %call12.i132 = call ptr @netdev_lower_get_next(ptr noundef %1, ptr noundef nonnull %iter.i119) #19
  %tobool.not.i133 = icmp eq ptr %call12.i132, null
  br i1 %tobool.not.i133, label %for.inc.i134.dsa_slave_lag_changeupper.exit_crit_edge, label %for.inc.i134.for.body.i124_crit_edge

for.inc.i134.for.body.i124_crit_edge:             ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i124

for.inc.i134.dsa_slave_lag_changeupper.exit_crit_edge: ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #21
  br label %dsa_slave_lag_changeupper.exit

dsa_slave_lag_changeupper.exit:                   ; preds = %for.inc.i134.dsa_slave_lag_changeupper.exit_crit_edge, %if.end6.i131.dsa_slave_lag_changeupper.exit_crit_edge, %if.then17.dsa_slave_lag_changeupper.exit_crit_edge
  %err.2.i = phi i32 [ 0, %if.then17.dsa_slave_lag_changeupper.exit_crit_edge ], [ %err.1.i, %for.inc.i134.dsa_slave_lag_changeupper.exit_crit_edge ], [ %call7.i129, %if.end6.i131.dsa_slave_lag_changeupper.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i119) #19
  br label %cleanup55

sw.bb20:                                          ; preds = %entry
  %netdev_ops.i135 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %108 = ptrtoint ptr %netdev_ops.i135 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %netdev_ops.i135, align 8
  %cmp.i136 = icmp eq ptr %109, @dsa_slave_netdev_ops
  br i1 %cmp.i136, label %cleanup29.thread, label %sw.bb20.cleanup55_crit_edge

sw.bb20.cleanup55_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup55

cleanup29.thread:                                 ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #21
  %dp.i = getelementptr i8, ptr %1, i32 2312
  %110 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dp.i, align 4
  %lower_state_info = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, ptr %ptr, i32 0, i32 1
  %112 = ptrtoint ptr %lower_state_info to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lower_state_info, align 4
  %call27 = tail call i32 @dsa_port_lag_change(ptr noundef %111, ptr noundef %113) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not.i137 = icmp eq i32 %call27, 0
  %sub.i = sub i32 1, %call27
  %or.i = or i32 %sub.i, 32768
  %retval.0.i138 = select i1 %tobool.not.i137, i32 1, i32 %or.i
  br label %cleanup55

sw.bb33:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %close_list) #19
  %114 = getelementptr inbounds %struct.list_head, ptr %close_list, i32 0, i32 1
  %115 = ptrtoint ptr %close_list to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %close_list, ptr %close_list, align 4
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %close_list, ptr %114, align 4
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 75
  %117 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dsa_ptr.i, align 4
  %tobool.not.i139 = icmp eq ptr %118, null
  br i1 %tobool.not.i139, label %sw.bb33.cleanup51_crit_edge, label %netdev_uses_dsa.exit

sw.bb33.cleanup51_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup51

netdev_uses_dsa.exit:                             ; preds = %sw.bb33
  %rcv.i = getelementptr inbounds %struct.dsa_port, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rcv.i, align 4
  %tobool2.i.not = icmp eq ptr %120, null
  br i1 %tobool2.i.not, label %netdev_uses_dsa.exit.cleanup51_crit_edge, label %if.end37

netdev_uses_dsa.exit.cleanup51_crit_edge:         ; preds = %netdev_uses_dsa.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup51

if.end37:                                         ; preds = %netdev_uses_dsa.exit
  %ds = getelementptr inbounds %struct.dsa_port, ptr %118, i32 0, i32 4
  %121 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ds, align 4
  %dst38 = getelementptr inbounds %struct.dsa_switch, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %dst38 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dst38, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn155 = load ptr, ptr %ports, align 4
  %cmp41.not157 = icmp eq ptr %.pn155, %ports
  br i1 %cmp41.not157, label %if.end37.for.end_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37.for.body_crit_edge
  %.pn158 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn155, %if.end37.for.body_crit_edge ]
  %type.i = getelementptr i8, ptr %.pn158, i32 -424
  %126 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %127)
  %cmp.i140 = icmp eq i32 %127, 3
  br i1 %cmp.i140, label %if.end44, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end44:                                         ; preds = %for.body
  %dp34.0159 = getelementptr i8, ptr %.pn158, i32 -448
  %128 = ptrtoint ptr %dp34.0159 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dp34.0159, align 4
  %close_list45 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 10
  %130 = ptrtoint ptr %close_list to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %close_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %close_list45, ptr noundef nonnull %close_list, ptr noundef %131) #19
  br i1 %call.i.i, label %if.end.i.i141, label %if.end44.for.inc_crit_edge

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end.i.i141:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %close_list45, ptr %prev1.i.i, align 4
  %133 = ptrtoint ptr %close_list45 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %131, ptr %close_list45, align 4
  %prev3.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 10, i32 1
  %134 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %close_list, ptr %prev3.i.i, align 4
  %135 = ptrtoint ptr %close_list to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %close_list45, ptr %close_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i141, %if.end44.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %136 = ptrtoint ptr %.pn158 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pn = load ptr, ptr %.pn158, align 4
  %cmp41.not = icmp eq ptr %.pn, %ports
  br i1 %cmp41.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end37.for.end_crit_edge
  call void @dev_close_many(ptr noundef nonnull %close_list, i1 noundef zeroext true) #19
  br label %cleanup51

cleanup51:                                        ; preds = %for.end, %netdev_uses_dsa.exit.cleanup51_crit_edge, %sw.bb33.cleanup51_crit_edge
  %retval.2 = phi i32 [ 1, %for.end ], [ 0, %netdev_uses_dsa.exit.cleanup51_crit_edge ], [ 0, %sw.bb33.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %close_list) #19
  br label %cleanup55

cleanup55:                                        ; preds = %cleanup51, %cleanup29.thread, %sw.bb20.cleanup55_crit_edge, %dsa_slave_lag_changeupper.exit, %netif_is_lag_master.exit118.cleanup55_crit_edge, %if.then13, %dsa_slave_lag_prechangeupper.exit, %netif_is_lag_master.exit.cleanup55_crit_edge, %if.then8.i, %land.lhs.true5.i.cleanup55_crit_edge, %if.else.i.cleanup55_crit_edge, %if.then.i87, %dsa_slave_prechangeupper_sanity_check.exit, %if.then9.i, %if.then17.i.i, %do.body.i.i.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.3 = phi i32 [ %retval.2, %cleanup51 ], [ %call14, %if.then13 ], [ %err.2.i, %dsa_slave_lag_changeupper.exit ], [ %retval.0.i138, %cleanup29.thread ], [ 0, %sw.bb20.cleanup55_crit_edge ], [ 0, %netif_is_lag_master.exit.cleanup55_crit_edge ], [ 0, %entry.cleanup55_crit_edge ], [ 0, %netif_is_lag_master.exit118.cleanup55_crit_edge ], [ 0, %if.then8.i ], [ 0, %land.lhs.true5.i.cleanup55_crit_edge ], [ 0, %if.else.i.cleanup55_crit_edge ], [ 0, %if.then.i87 ], [ 32785, %dsa_slave_prechangeupper_sanity_check.exit ], [ 0, %dsa_slave_lag_prechangeupper.exit ], [ 32791, %do.body.i.i.cleanup55_crit_edge ], [ 32791, %if.then17.i.i ], [ %or.i.i, %if.then9.i ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsa_slave_changeupper(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack.i, align 4
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %linking, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %call6 = tail call i32 @dsa_port_bridge_join(ptr noundef %1, ptr noundef %5, ptr noundef %3) #19
  %10 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call6, label %if.end13 [
    i32 0, label %if.then8
    i32 -95, label %do.body
  ]

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @dsa_bridge_mtu_normalization(ptr noundef %1)
  br label %if.end71

do.body:                                          ; preds = %if.then4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_changeupper.__msg) #19
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.body.if.end71_crit_edge, label %if.then11

do.body.if.end71_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dsa_slave_changeupper.__msg, ptr %3, align 4
  br label %if.end71

if.end13:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i = sub i32 1, %call6
  %or.i = or i32 %sub.i, 32768
  br label %if.end71

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dsa_port_bridge_leave(ptr noundef %1, ptr noundef %5) #19
  br label %if.end71

if.else17:                                        ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %and1.i.i = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp ne i64 %and1.i.i, 0
  %or.cond = select i1 %tobool.not.i.i, i1 %tobool2.i.not.i, i1 false
  %and.i4.i = and i64 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i = icmp ne i64 %and.i4.i, 0
  %or.cond126 = select i1 %or.cond, i1 true, i1 %tobool.i.i
  br i1 %or.cond126, label %if.then20, label %if.else43

if.then20:                                        ; preds = %if.else17
  %linking21 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %linking21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %linking21, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  br i1 %tobool22.not, label %if.else40, label %if.then23

if.then23:                                        ; preds = %if.then20
  %upper_info = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 4
  %16 = ptrtoint ptr %upper_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %upper_info, align 4
  %call25 = tail call i32 @dsa_port_lag_join(ptr noundef %1, ptr noundef %5, ptr noundef %17, ptr noundef %3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call25)
  %cmp26 = icmp eq i32 %call25, -95
  br i1 %cmp26, label %do.body28, label %if.end38

do.body28:                                        ; preds = %if.then23
  %18 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_changeupper.__msg.57) #19
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %do.body28.if.end38.thread_crit_edge, label %if.then33

do.body28.if.end38.thread_crit_edge:              ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38.thread

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dsa_slave_changeupper.__msg.57, ptr %19, align 4
  br label %if.end38.thread

if.end38:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not.i106 = icmp eq i32 %call25, 0
  %sub.i107 = sub i32 1, %call25
  %or.i108 = or i32 %sub.i107, 32768
  br i1 %tobool.not.i106, label %if.end38.if.end38.thread_crit_edge, label %if.end38.if.end71_crit_edge

if.end38.if.end71_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.end38.if.end38.thread_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %if.end38.if.end38.thread_crit_edge, %if.then33, %do.body28.if.end38.thread_crit_edge
  br label %if.end71

if.else40:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dsa_port_lag_leave(ptr noundef %1, ptr noundef %5) #19
  br label %if.end71

if.else43:                                        ; preds = %if.else17
  %call45 = tail call zeroext i1 @is_hsr_master(ptr noundef %5) #19
  br i1 %call45, label %if.then46, label %if.else43.if.end71_crit_edge

if.else43.if.end71_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.then46:                                        ; preds = %if.else43
  %linking47 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 3
  %21 = ptrtoint ptr %linking47 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %linking47, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool48.not = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %upper_dev, align 4
  br i1 %tobool48.not, label %if.else66, label %if.then49

if.then49:                                        ; preds = %if.then46
  %call51 = tail call i32 @dsa_port_hsr_join(ptr noundef %1, ptr noundef %24) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call51)
  %cmp52 = icmp eq i32 %call51, -95
  br i1 %cmp52, label %do.body54, label %if.end64

do.body54:                                        ; preds = %if.then49
  %25 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @dsa_slave_changeupper.__msg.58) #19
  %tobool58.not = icmp eq ptr %26, null
  br i1 %tobool58.not, label %do.body54.if.end64.thread_crit_edge, label %if.then59

do.body54.if.end64.thread_crit_edge:              ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64.thread

if.then59:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #21
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dsa_slave_changeupper.__msg.58, ptr %26, align 4
  br label %if.end64.thread

if.end64:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool.not.i110 = icmp eq i32 %call51, 0
  %sub.i111 = sub i32 1, %call51
  %or.i112 = or i32 %sub.i111, 32768
  br i1 %tobool.not.i110, label %if.end64.if.end64.thread_crit_edge, label %if.end64.if.end71_crit_edge

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end71

if.end64.if.end64.thread_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64.thread

if.end64.thread:                                  ; preds = %if.end64.if.end64.thread_crit_edge, %if.then59, %do.body54.if.end64.thread_crit_edge
  br label %if.end71

if.else66:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @dsa_port_hsr_leave(ptr noundef %1, ptr noundef %24) #19
  br label %if.end71

if.end71:                                         ; preds = %if.else66, %if.end64.thread, %if.end64.if.end71_crit_edge, %if.else43.if.end71_crit_edge, %if.else40, %if.end38.thread, %if.end38.if.end71_crit_edge, %if.else, %if.end13, %if.then11, %do.body.if.end71_crit_edge, %if.then8
  %err.3 = phi i32 [ 1, %if.else ], [ 1, %if.else40 ], [ 1, %if.else66 ], [ 0, %if.else43.if.end71_crit_edge ], [ %or.i, %if.end13 ], [ 1, %if.end38.thread ], [ %or.i108, %if.end38.if.end71_crit_edge ], [ 1, %if.end64.thread ], [ %or.i112, %if.end64.if.end71_crit_edge ], [ 1, %do.body.if.end71_crit_edge ], [ 1, %if.then11 ], [ 1, %if.then8 ]
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_lag_change(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close_many(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_info(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_pre_bridge_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_pre_lag_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_bridge_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_bridge_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_lag_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_lag_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_hsr_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_port_hsr_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_hsr_leave(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !108, !109, !110, !111, !113, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !128, !130, !131, !132, !134, !135, !137, !139, !141, !143, !145}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dsa/slave.c", i32 50, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/dsa/slave.c", i32 53, i32 51}
!4 = !{ptr @__ksymtab_dsa_enqueue_skb, !5, !"__ksymtab_dsa_enqueue_skb", i1 false, i1 false}
!5 = !{!"../net/dsa/slave.c", i32 581, i32 1}
!6 = !{ptr @__ksymtab_dsa_port_phylink_mac_change, !7, !"__ksymtab_dsa_port_phylink_mac_change", i1 false, i1 false}
!7 = !{!"../net/dsa/slave.c", i32 1817, i32 1}
!8 = !{ptr @dsa_slave_create.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../net/dsa/slave.c", i32 1999, i32 22}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/dsa/slave.c", i32 2019, i32 7}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/dsa/slave.c", i32 2028, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dsa_slave_create._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @dsa_slave_create._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/dsa/slave.c", i32 2033, i32 22}
!23 = !{ptr @__ksymtab_dsa_slave_dev_check, !24, !"__ksymtab_dsa_slave_dev_check", i1 false, i1 false}
!24 = !{!"../net/dsa/slave.c", i32 2087, i32 1}
!25 = !{ptr @dsa_slave_switchdev_notifier, !26, !"dsa_slave_switchdev_notifier", i1 false, i1 false}
!26 = !{!"../net/dsa/slave.c", i32 2576, i32 23}
!27 = !{ptr @dsa_slave_switchdev_blocking_notifier, !28, !"dsa_slave_switchdev_blocking_notifier", i1 false, i1 false}
!28 = !{!"../net/dsa/slave.c", i32 2580, i32 23}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/dsa/slave.c", i32 2619, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dsa_slave_unregister_notifier._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dsa_slave_unregister_notifier._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/dsa/slave.c", i32 2623, i32 3}
!36 = !{ptr @dsa_slave_unregister_notifier._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dsa_slave_unregister_notifier._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/dsa/slave.c", i32 2627, i32 3}
!40 = !{ptr @dsa_slave_unregister_notifier._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dsa_slave_unregister_notifier._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/dsa/slave.c", i32 1403, i32 20}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/dsa/slave.c", i32 1411, i32 20}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/dsa/slave.c", i32 1541, i32 23}
!48 = !{ptr @dsa_slave_ethtool_ops, !49, !"dsa_slave_ethtool_ops", i1 false, i1 false}
!49 = !{!"../net/dsa/slave.c", i32 1717, i32 33}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/dsa/slave.c", i32 647, i32 27}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/dsa/slave.c", i32 648, i32 31}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/dsa/slave.c", i32 649, i32 29}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/dsa/slave.c", i32 727, i32 17}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/dsa/slave.c", i32 728, i32 23}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/dsa/slave.c", i32 729, i32 27}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/dsa/slave.c", i32 730, i32 27}
!64 = !{ptr @dsa_slave_netdev_ops, !65, !"dsa_slave_netdev_ops", i1 false, i1 false}
!65 = !{!"../net/dsa/slave.c", i32 1780, i32 36}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/dsa/slave.c", i32 74, i32 19}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__flow_action_hw_stats_check.__msg, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!76 = distinct !{null, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!78 = distinct !{null, !79, !"__msg", i1 false, i1 false}
!79 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!80 = !{ptr @dsa_slave_add_cls_matchall_police.__msg, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../net/dsa/slave.c", i32 1075, i32 3}
!82 = !{ptr @dsa_slave_add_cls_matchall_police.__msg.32, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../net/dsa/slave.c", i32 1081, i32 3}
!84 = !{ptr @dsa_slave_add_cls_matchall_police.__msg.33, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../net/dsa/slave.c", i32 1092, i32 4}
!86 = !{ptr @dsa_slave_block_cb_list, !87, !"dsa_slave_block_cb_list", i1 false, i1 false}
!87 = !{!"../net/dsa/slave.c", i32 1274, i32 8}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/net/netlink.h", i32 991, i32 3}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/dsa/slave.c", i32 988, i32 26}
!92 = !{ptr @dsa_type, !93, !"dsa_type", i1 false, i1 false}
!93 = !{!"../net/dsa/slave.c", i32 1806, i32 27}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/dsa/slave.c", i32 1925, i32 2}
!96 = !{ptr @dsa_slave_netdev_xmit_lock_key, !97, !"dsa_slave_netdev_xmit_lock_key", i1 false, i1 false}
!97 = !{!"../net/dsa/slave.c", i32 1920, i32 30}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/dsa/slave.c", i32 1884, i32 25}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/dsa/slave.c", i32 1840, i32 25}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/dsa/slave.c", i32 2497, i32 2}
!104 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @dsa_slave_fdb_event.__UNIQUE_ID_ddebug528, !103, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!107 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @dsa_slave_fdb_event.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../net/dsa/slave.c", i32 2502, i32 2}
!113 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/dsa/slave.c", i32 2415, i32 4}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @dsa_slave_switchdev_event_work._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @dsa_slave_switchdev_event_work._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/dsa/slave.c", i32 2432, i32 4}
!122 = !{ptr @dsa_slave_switchdev_event_work._entry.50, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @dsa_slave_switchdev_event_work._entry_ptr.52, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @dsa_slave_vlan_add.__msg, !125, !"__msg", i1 false, i1 false}
!125 = !{!"../net/dsa/slave.c", i32 357, i32 3}
!126 = !{ptr @dsa_slave_vlan_add.__msg.53, !127, !"__msg", i1 false, i1 false}
!127 = !{!"../net/dsa/slave.c", i32 371, i32 4}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @dsa_slave_nb, !136, !"dsa_slave_nb", i1 false, i1 false}
!136 = !{!"../net/dsa/slave.c", i32 2572, i32 30}
!137 = !{ptr @dsa_prevent_bridging_8021q_upper.__msg, !138, !"__msg", i1 false, i1 false}
!138 = !{!"../net/dsa/slave.c", i32 2241, i32 3}
!139 = !{ptr @dsa_slave_check_8021q_upper.__msg, !140, !"__msg", i1 false, i1 false}
!140 = !{!"../net/dsa/slave.c", i32 2272, i32 3}
!141 = !{ptr @dsa_slave_changeupper.__msg, !142, !"__msg", i1 false, i1 false}
!142 = !{!"../net/dsa/slave.c", i32 2104, i32 5}
!143 = !{ptr @dsa_slave_changeupper.__msg.57, !144, !"__msg", i1 false, i1 false}
!144 = !{!"../net/dsa/slave.c", i32 2118, i32 5}
!145 = !{ptr @dsa_slave_changeupper.__msg.58, !146, !"__msg", i1 false, i1 false}
!146 = !{!"../net/dsa/slave.c", i32 2131, i32 5}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 932358}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{i64 929626, i64 929687}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 932643}
!162 = !{i64 2154969780}
!163 = !{i64 2154969622}
!164 = !{i64 2154969950}
!165 = !{i64 2150345956}
!166 = !{i64 2150238208}
!167 = !{i64 2150243142}
!168 = !{i64 2150264860}
!169 = !{i64 2150269754}
!170 = !{i64 2150346281}
!171 = !{i64 2150346606}
!172 = !{!"branch_weights", i32 4000000, i32 4001}
!173 = !{i64 2154645781, i64 2154646269, i64 2154645818, i64 2154645874, i64 2154645908, i64 2154645932, i64 2154645973, i64 2154645994, i64 2154646022, i64 2154646056}
!174 = !{i8 0, i8 2}
!175 = !{i64 2149008598, i64 2149008603, i64 2149008616, i64 2149008660, i64 2149008694, i64 2149008715}
!176 = !{i64 2149729587}
!177 = !{i64 2149729853}
!178 = !{!"auto-init"}
!179 = !{i32 32768, i32 2}
