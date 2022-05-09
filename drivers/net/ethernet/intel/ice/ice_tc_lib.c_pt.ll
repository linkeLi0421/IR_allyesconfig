; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_tc_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_tc_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.194, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.194 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_dissector_key_vlan = type { %union.anon.233, i16 }
%union.anon.233 = type { %struct.anon.234 }
%struct.anon.234 = type { i16 }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.178 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.178 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.215, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.215 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.ice_tc_flower_fltr = type { %struct.hlist_node, i32, i16, i16, i16, ptr, i32, %struct.ice_tc_flower_lyr_2_4_hdrs, %struct.ice_tc_flower_lyr_2_4_hdrs, ptr, i32, i32, i8, %struct.ice_tc_flower_action, ptr }
%struct.ice_tc_flower_lyr_2_4_hdrs = type { %struct.ice_tc_l2_hdr, %struct.ice_tc_l2_hdr, %struct.ice_tc_vlan_hdr, %struct.ice_tc_l3_hdr, %struct.ice_tc_l3_hdr, %struct.ice_tc_l4_hdr, %struct.ice_tc_l4_hdr }
%struct.ice_tc_l2_hdr = type { [6 x i8], [6 x i8], i16 }
%struct.ice_tc_vlan_hdr = type { i16, i16 }
%struct.ice_tc_l3_hdr = type { i8, %union.anon.230, i8, i8 }
%union.anon.230 = type { %struct.anon.232 }
%struct.anon.232 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.ice_tc_l4_hdr = type { i16, i16 }
%struct.ice_tc_flower_action = type { i32, i32 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.217, ptr }
%union.anon.217 = type { %struct.anon.222 }
%struct.anon.222 = type { i32, i64, i64, i64, i32 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.anon.236 = type { i16, i16 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.ice_rule_query_data = type { i16, i16, i16 }
%struct.ice_adv_rule_info = type { i32, %struct.ice_sw_act_ctrl, i32, i8, i16, %struct.ice_adv_rule_flags_info }
%struct.ice_sw_act_ctrl = type { i16, i16, i32, %union.anon.237, i16, i8 }
%union.anon.237 = type { i16 }
%struct.ice_adv_rule_flags_info = type { i32, i8 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.200, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.200 = type { ptr }
%struct.ice_adv_lkup_elem = type { i32, %union.ice_prot_hdr, %union.ice_prot_hdr }
%union.ice_prot_hdr = type { %struct.ice_ipv6_hdr }
%struct.ice_ipv6_hdr = type { i32, i16, i8, i8, [16 x i8], [16 x i8] }
%struct.ice_l4_hdr = type { i16, i16, i16, i16 }
%struct.ice_vlan_hdr = type { i16, i16 }

@ice_add_cls_flower.__msg = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ice: can't apply TC flower filters, turn ON hw-tc-offload and try again\00", [56 x i8] zeroinitializer }, align 32
@ice_add_cls_flower.__msg.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ice: filter cookie already exists, ignoring\00", [52 x i8] zeroinitializer }, align 32
@ice_del_cls_flower.__msg = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ice: failed to delete TC flower filter because unable to find it\00", [63 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"geneve\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gretap\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6gretap\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_parse_cls_flower.__msg = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice: Unsupported key used\00", [38 x i8] zeroinitializer }, align 32
@ice_parse_cls_flower.__msg.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ice: Failed to parse TC flower tunnel attributes\00", [47 x i8] zeroinitializer }, align 32
@ice_parse_cls_flower.__msg.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ice: Tunnel key used, but device isn't a tunnel\00", [48 x i8] zeroinitializer }, align 32
@ice_parse_cls_flower.__msg.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice: Bad VLAN mask\00", [45 x i8] zeroinitializer }, align 32
@ice_parse_cls_flower.__msg.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ice: Only UDP and TCP transport are supported\00", [50 x i8] zeroinitializer }, align 32
@ice_tc_set_ipv6.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ice: Bad IPv6, addr is LOOPBACK\00", [32 x i8] zeroinitializer }, align 32
@ice_tc_set_ipv6.__msg.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ice: Bad src/dest IPv6, addr is any\00", [60 x i8] zeroinitializer }, align 32
@ice_parse_tc_flower_actions.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice: Unsupported action DROP\00", [35 x i8] zeroinitializer }, align 32
@ice_handle_tclass_action.__msg = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ice: Unable to add filter because specified destination is invalid\00", [61 x i8] zeroinitializer }, align 32
@ice_handle_tclass_action.__msg.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ice: Unable to add filter because of invalid destination\00", [39 x i8] zeroinitializer }, align 32
@ice_handle_tclass_action.__msg.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ice: Unable to add filter because of non-existence destination\00", [33 x i8] zeroinitializer }, align 32
@ice_handle_tclass_action.__msg.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ice: Unable to add filter because of invalid netdevice\00", [41 x i8] zeroinitializer }, align 32
@ice_handle_tclass_action.__msg.13 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"ice: Unable to add filter because filter using tunnel key and inner MAC is unsupported combination\00", [61 x i8] zeroinitializer }, align 32
@ice_handle_tclass_action.__msg.14 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"ice: Unable to add filter because legacy MAC filter for specified destination doesn't exist\00", [36 x i8] zeroinitializer }, align 32
@ice_handle_tclass_action.__msg.15 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"ice: Unable to add filter because legacy VLAN filter for specified destination doesn't exist\00", [35 x i8] zeroinitializer }, align 32
@ice_eswitch_tc_parse_action.__msg = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ice: Unsupported netdevice in switchdev mode\00", [51 x i8] zeroinitializer }, align 32
@ice_eswitch_tc_parse_action.__msg.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ice: Unsupported action in switchdev mode\00", [54 x i8] zeroinitializer }, align 32
@ice_del_tc_fltr.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice: Filter does not exist\00", [37 x i8] zeroinitializer }, align 32
@ice_del_tc_fltr.__msg.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ice: Failed to delete TC flower filter\00", [57 x i8] zeroinitializer }, align 32
@ice_eswitch_add_tc_fltr.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ice: Unsupported encap field(s)\00", [32 x i8] zeroinitializer }, align 32
@ice_eswitch_add_tc_fltr.__msg.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ice: Unable to add filter because it already exist\00", [45 x i8] zeroinitializer }, align 32
@ice_eswitch_add_tc_fltr.__msg.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ice: Unable to add filter due to error\00", [57 x i8] zeroinitializer }, align 32
@ice_add_tc_flower_adv_fltr.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ice: Unable to add filter because driver is in safe mode\00", [39 x i8] zeroinitializer }, align 32
@ice_add_tc_flower_adv_fltr.__msg.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ice: Unsupported encap field(s)\00", [32 x i8] zeroinitializer }, align 32
@ice_add_tc_flower_adv_fltr.__msg.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ice: Unable to add filter because specified destination doesn't exist\00", [58 x i8] zeroinitializer }, align 32
@ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_add_tc_flower_adv_fltr\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/ice/ice_tc_lib.c\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"add switch rule for TC:%u vsi_idx:%u, lkups_cnt:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_add_tc_flower_adv_fltr.__msg.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ice: Unable to add filter because it already exist\00", [45 x i8] zeroinitializer }, align 32
@ice_add_tc_flower_adv_fltr.__msg.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ice: Unable to add filter due to error\00", [57 x i8] zeroinitializer }, align 32
@ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.30, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"added switch rule (lkups_cnt %u, flags 0x%x) for TC %u, rid %u, rule_id %u, vsi_idx %u\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1287, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1294, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1327, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 420, i32 43 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"../include/net/geneve.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 68, i32 43 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 43, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"../include/net/gre.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 49, i32 43 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 842, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 854, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 867, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 936, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 982, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 652, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 658, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1137, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1025, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1029, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1034, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1041, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1049, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1077, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1090, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 378, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 385, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1164, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1167, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 406, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 453, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 457, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 500, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 509, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 533, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 543, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 557, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 562, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [47 x i8] c"../drivers/net/ethernet/intel/ice/ice_tc_lib.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 593, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @ice_add_cls_flower.__msg, ptr @ice_add_cls_flower.__msg.1, ptr @ice_del_cls_flower.__msg, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ice_parse_cls_flower.__msg, ptr @ice_parse_cls_flower.__msg.5, ptr @ice_parse_cls_flower.__msg.6, ptr @ice_parse_cls_flower.__msg.7, ptr @ice_parse_cls_flower.__msg.8, ptr @ice_tc_set_ipv6.__msg, ptr @ice_tc_set_ipv6.__msg.9, ptr @ice_parse_tc_flower_actions.__msg, ptr @ice_handle_tclass_action.__msg, ptr @ice_handle_tclass_action.__msg.10, ptr @ice_handle_tclass_action.__msg.11, ptr @ice_handle_tclass_action.__msg.12, ptr @ice_handle_tclass_action.__msg.13, ptr @ice_handle_tclass_action.__msg.14, ptr @ice_handle_tclass_action.__msg.15, ptr @ice_eswitch_tc_parse_action.__msg, ptr @ice_eswitch_tc_parse_action.__msg.16, ptr @ice_del_tc_fltr.__msg, ptr @ice_del_tc_fltr.__msg.17, ptr @ice_eswitch_add_tc_fltr.__msg, ptr @ice_eswitch_add_tc_fltr.__msg.18, ptr @ice_eswitch_add_tc_fltr.__msg.19, ptr @ice_add_tc_flower_adv_fltr.__msg, ptr @ice_add_tc_flower_adv_fltr.__msg.22, ptr @ice_add_tc_flower_adv_fltr.__msg.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ice_add_tc_flower_adv_fltr.__msg.28, ptr @ice_add_tc_flower_adv_fltr.__msg.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_cls_flower.__msg to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_cls_flower.__msg.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_del_cls_flower.__msg to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_parse_cls_flower.__msg to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_parse_cls_flower.__msg.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_parse_cls_flower.__msg.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_parse_cls_flower.__msg.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_parse_cls_flower.__msg.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_tc_set_ipv6.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_tc_set_ipv6.__msg.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_parse_tc_flower_actions.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_handle_tclass_action.__msg to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_handle_tclass_action.__msg.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_handle_tclass_action.__msg.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_handle_tclass_action.__msg.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_handle_tclass_action.__msg.13 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_handle_tclass_action.__msg.14 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_handle_tclass_action.__msg.15 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_tc_parse_action.__msg to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_tc_parse_action.__msg.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_del_tc_fltr.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_del_tc_fltr.__msg.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_add_tc_fltr.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_add_tc_fltr.__msg.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_eswitch_add_tc_fltr.__msg.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_tc_flower_adv_fltr.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_tc_flower_adv_fltr.__msg.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_tc_flower_adv_fltr.__msg.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_tc_flower_adv_fltr.__msg.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_add_tc_flower_adv_fltr.__msg.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_tunnel_supported(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ice_tc_tun_get_type.exit_crit_edge, label %netif_is_vxlan.exit.i

entry.ice_tc_tun_get_type.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit

netif_is_vxlan.exit.i:                            ; preds = %entry
  %kind.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %netif_is_vxlan.exit.i.ice_tc_tun_get_type.exit_crit_edge, label %netif_is_geneve.exit.i

netif_is_vxlan.exit.i.ice_tc_tun_get_type.exit_crit_edge: ; preds = %netif_is_vxlan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit

netif_is_geneve.exit.i:                           ; preds = %netif_is_vxlan.exit.i
  %call.i14.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool2.not.i15.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool2.not.i15.i, label %netif_is_geneve.exit.i.ice_tc_tun_get_type.exit_crit_edge, label %netif_is_gretap.exit.i

netif_is_geneve.exit.i.ice_tc_tun_get_type.exit_crit_edge: ; preds = %netif_is_geneve.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit

netif_is_gretap.exit.i:                           ; preds = %netif_is_geneve.exit.i
  %call.i20.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool2.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool2.not.i21.i, label %netif_is_gretap.exit.i.ice_tc_tun_get_type.exit_crit_edge, label %netif_is_ip6gretap.exit.i

netif_is_gretap.exit.i.ice_tc_tun_get_type.exit_crit_edge: ; preds = %netif_is_gretap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit

netif_is_ip6gretap.exit.i:                        ; preds = %netif_is_gretap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i26.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool2.not.i27.i = icmp eq i32 %call.i26.i, 0
  br label %ice_tc_tun_get_type.exit

ice_tc_tun_get_type.exit:                         ; preds = %netif_is_ip6gretap.exit.i, %netif_is_gretap.exit.i.ice_tc_tun_get_type.exit_crit_edge, %netif_is_geneve.exit.i.ice_tc_tun_get_type.exit_crit_edge, %netif_is_vxlan.exit.i.ice_tc_tun_get_type.exit_crit_edge, %entry.ice_tc_tun_get_type.exit_crit_edge
  %retval.0.i = phi i1 [ true, %netif_is_vxlan.exit.i.ice_tc_tun_get_type.exit_crit_edge ], [ true, %netif_is_geneve.exit.i.ice_tc_tun_get_type.exit_crit_edge ], [ true, %netif_is_gretap.exit.i.ice_tc_tun_get_type.exit_crit_edge ], [ false, %entry.ice_tc_tun_get_type.exit_crit_edge ], [ %tobool2.not.i27.i, %netif_is_ip6gretap.exit.i ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_cls_flower(ptr noundef %netdev, ptr noundef %vsi, ptr nocapture noundef readonly %cls_flower) local_unnamed_addr #1 align 64 {
entry:
  %enc_control.i.i.i = alloca %struct.flow_match_control, align 4
  %enc_keyid.i.i.i = alloca %struct.flow_match_enc_keyid, align 4
  %match.i.i.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match26.i.i.i = alloca %struct.flow_match_ipv6_addrs, align 4
  %match38.i.i.i = alloca %struct.flow_match_ip, align 4
  %match65.i.i.i = alloca %struct.flow_match_ports, align 4
  %match39.i.i = alloca %struct.flow_match_basic, align 4
  %match55.i.i = alloca %struct.flow_match_eth_addrs, align 4
  %mask98.i.i = alloca %struct.flow_dissector_key_vlan, align 4
  %key99.i.i = alloca %struct.flow_dissector_key_vlan, align 2
  %match100.i.i = alloca %struct.flow_match_vlan, align 4
  %match167.i.i = alloca %struct.flow_match_control, align 4
  %match175.i.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match188.i.i = alloca %struct.flow_match_ipv6_addrs, align 4
  %match199.i.i = alloca %struct.flow_match_ports, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 3
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %2 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi, align 128
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %4 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %back, align 8
  %state = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 20
  %call = tail call zeroext i1 @ice_is_reset_in_progress(ptr noundef %state) #8
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i1 @ice_is_port_repr_netdev(ptr noundef %netdev) #8
  %spec.select = select i1 %call7, ptr %netdev, ptr %3
  %features = getelementptr inbounds %struct.net_device, ptr %spec.select, i32 0, i32 23
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features, align 16
  %and = and i64 %10, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %land.lhs.true
  %cmp = icmp eq ptr %spec.select, %netdev
  br i1 %cmp, label %do.body, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_add_cls_flower.__msg) #8
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %do.body.cleanup_crit_edge, label %if.then18

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ice_add_cls_flower.__msg, ptr %1, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end6.if.end21_crit_edge
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %15 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cookie, align 4
  %tc_flower_fltr_list.i = getelementptr inbounds %struct.ice_pf, ptr %5, i32 0, i32 70
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end21
  %fltr.0.in.i = phi ptr [ %tc_flower_fltr_list.i, %if.end21 ], [ %fltr.0.i, %for.body.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %fltr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %fltr.0.i = load ptr, ptr %fltr.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %fltr.0.i, null
  br i1 %tobool2.not.i, label %if.end33, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %cookie3.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %cookie3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cookie3.i, align 4
  %cmp.i = icmp eq i32 %19, %16
  br i1 %cmp.i, label %do.body25, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body25:                                        ; preds = %for.body.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_add_cls_flower.__msg.1) #8
  %tobool27.not = icmp eq ptr %1, null
  br i1 %tobool27.not, label %do.body25.cleanup_crit_edge, label %if.then28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ice_add_cls_flower.__msg.1, ptr %1, align 4
  br label %cleanup

if.end33:                                         ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 296) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end33.cleanup_crit_edge, label %if.end.i

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end33
  %22 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cookie, align 4
  %cookie1.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cookie1.i, align 8
  %25 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extack1, align 4
  %extack2.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 14
  %27 = ptrtoint ptr %extack2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %extack2.i, align 4
  %src_vsi.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %src_vsi.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vsi, ptr %src_vsi.i, align 4
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pprev.i.i, align 4
  %outer_headers.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7
  %rule.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 3
  %31 = ptrtoint ptr %rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rule.i.i.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %and.i.i = and i32 %36, -8897696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_parse_cls_flower.__msg) #8
  %tobool2.not.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i.i, label %do.body.i.i.err14.i_crit_edge, label %if.then3.i.i

do.body.i.i.err14.i_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then3.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ice_parse_cls_flower.__msg, ptr %26, align 4
  br label %err14.i

if.end4.i.i:                                      ; preds = %if.end.i
  %rtnl_link_ops.i.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %38 = ptrtoint ptr %rtnl_link_ops.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtnl_link_ops.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end4.i.i.if.end.i.i.i_crit_edge, label %netif_is_vxlan.exit.i.i.i.i.i

if.end4.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

netif_is_vxlan.exit.i.i.i.i.i:                    ; preds = %if.end4.i.i
  %kind.i.i.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %kind.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %kind.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(6) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i.i, label %netif_is_vxlan.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %netif_is_geneve.exit.i.i.i.i.i

netif_is_vxlan.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %netif_is_vxlan.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

netif_is_geneve.exit.i.i.i.i.i:                   ; preds = %netif_is_vxlan.exit.i.i.i.i.i
  %call.i14.i.i.i.i.i = tail call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i.i.i.i)
  %tobool2.not.i15.i.i.i.i.i = icmp eq i32 %call.i14.i.i.i.i.i, 0
  br i1 %tobool2.not.i15.i.i.i.i.i, label %netif_is_geneve.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %netif_is_gretap.exit.i.i.i.i.i

netif_is_geneve.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %netif_is_geneve.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

netif_is_gretap.exit.i.i.i.i.i:                   ; preds = %netif_is_geneve.exit.i.i.i.i.i
  %call.i20.i.i.i.i.i = tail call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(7) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i.i.i)
  %tobool2.not.i21.i.i.i.i.i = icmp eq i32 %call.i20.i.i.i.i.i, 0
  br i1 %tobool2.not.i21.i.i.i.i.i, label %netif_is_gretap.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %ice_is_tunnel_supported.exit.i.i.i

netif_is_gretap.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %netif_is_gretap.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

ice_is_tunnel_supported.exit.i.i.i:               ; preds = %netif_is_gretap.exit.i.i.i.i.i
  %call.i26.i.i.i.i.i = tail call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(10) @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i.i.i)
  %tobool2.not.i27.i.i.i.i.i = icmp eq i32 %call.i26.i.i.i.i.i, 0
  br i1 %tobool2.not.i27.i.i.i.i.i, label %ice_is_tunnel_supported.exit.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %ice_is_tunnel_supported.exit.i.i.i.if.end.i.i.i_crit_edge

ice_is_tunnel_supported.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %ice_is_tunnel_supported.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

ice_is_tunnel_supported.exit.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %ice_is_tunnel_supported.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

if.end.i.i.i:                                     ; preds = %ice_is_tunnel_supported.exit.i.i.i.if.end.i.i.i_crit_edge, %if.end4.i.i.if.end.i.i.i_crit_edge
  %action.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %32, i32 0, i32 1
  %entries.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %32, i32 1
  %42 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %action.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp39.not.i.i.i = icmp eq i32 %43, 0
  br i1 %cmp39.not.i.i.i, label %if.end.i.i.i.if.else.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.if.else.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %i.041.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %act.040.i.i.i = phi ptr [ %arrayidx8.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %entries.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %44 = ptrtoint ptr %act.040.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %act.040.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp2.i.i.i = icmp eq i32 %45, 4
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %46 = getelementptr inbounds %struct.flow_action_entry, ptr %act.040.i.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %rtnl_link_ops.i.i.i16.i.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 136
  %49 = ptrtoint ptr %rtnl_link_ops.i.i.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtnl_link_ops.i.i.i16.i.i.i, align 4
  %tobool.not.i.i.i17.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i17.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %netif_is_vxlan.exit.i.i21.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

netif_is_vxlan.exit.i.i21.i.i.i:                  ; preds = %land.lhs.true.i.i.i
  %kind.i.i.i18.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %kind.i.i.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %kind.i.i.i18.i.i.i, align 4
  %call.i.i.i19.i.i.i = tail call i32 @strcmp(ptr noundef %52, ptr noundef nonnull dereferenceable(6) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i19.i.i.i)
  %tobool2.not.i.i.i20.i.i.i = icmp eq i32 %call.i.i.i19.i.i.i, 0
  br i1 %tobool2.not.i.i.i20.i.i.i, label %netif_is_vxlan.exit.i.i21.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %netif_is_geneve.exit.i.i24.i.i.i

netif_is_vxlan.exit.i.i21.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %netif_is_vxlan.exit.i.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

netif_is_geneve.exit.i.i24.i.i.i:                 ; preds = %netif_is_vxlan.exit.i.i21.i.i.i
  %call.i14.i.i22.i.i.i = tail call i32 @strcmp(ptr noundef %52, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i22.i.i.i)
  %tobool2.not.i15.i.i23.i.i.i = icmp eq i32 %call.i14.i.i22.i.i.i, 0
  br i1 %tobool2.not.i15.i.i23.i.i.i, label %netif_is_geneve.exit.i.i24.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %netif_is_gretap.exit.i.i27.i.i.i

netif_is_geneve.exit.i.i24.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %netif_is_geneve.exit.i.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

netif_is_gretap.exit.i.i27.i.i.i:                 ; preds = %netif_is_geneve.exit.i.i24.i.i.i
  %call.i20.i.i25.i.i.i = tail call i32 @strcmp(ptr noundef %52, ptr noundef nonnull dereferenceable(7) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i25.i.i.i)
  %tobool2.not.i21.i.i26.i.i.i = icmp eq i32 %call.i20.i.i25.i.i.i, 0
  br i1 %tobool2.not.i21.i.i26.i.i.i, label %netif_is_gretap.exit.i.i27.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %ice_is_tunnel_supported.exit32.i.i.i

netif_is_gretap.exit.i.i27.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %netif_is_gretap.exit.i.i27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

ice_is_tunnel_supported.exit32.i.i.i:             ; preds = %netif_is_gretap.exit.i.i27.i.i.i
  %call.i26.i.i28.i.i.i = tail call i32 @strcmp(ptr noundef %52, ptr noundef nonnull dereferenceable(10) @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i28.i.i.i)
  %tobool2.not.i27.i.i29.i.i.i = icmp eq i32 %call.i26.i.i28.i.i.i, 0
  br i1 %tobool2.not.i27.i.i29.i.i.i, label %ice_is_tunnel_supported.exit32.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, label %ice_is_tunnel_supported.exit32.i.i.i.for.inc.i.i.i_crit_edge

ice_is_tunnel_supported.exit32.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %ice_is_tunnel_supported.exit32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

ice_is_tunnel_supported.exit32.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge: ; preds = %ice_is_tunnel_supported.exit32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_get_tunnel_device.exit.i.i

for.inc.i.i.i:                                    ; preds = %ice_is_tunnel_supported.exit32.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.041.i.i.i, 1
  %arrayidx8.i.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i.i, i32 0, i32 %inc.i.i.i
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %43
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.else.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.if.else.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

ice_get_tunnel_device.exit.i.i:                   ; preds = %ice_is_tunnel_supported.exit32.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, %netif_is_gretap.exit.i.i27.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, %netif_is_geneve.exit.i.i24.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, %netif_is_vxlan.exit.i.i21.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, %ice_is_tunnel_supported.exit.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, %netif_is_gretap.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, %netif_is_geneve.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge, %netif_is_vxlan.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %netdev, %ice_is_tunnel_supported.exit.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ], [ %netdev, %netif_is_vxlan.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ], [ %netdev, %netif_is_geneve.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ], [ %netdev, %netif_is_gretap.exit.i.i.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ], [ %48, %netif_is_vxlan.exit.i.i21.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ], [ %48, %netif_is_geneve.exit.i.i24.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ], [ %48, %netif_is_gretap.exit.i.i27.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ], [ %48, %ice_is_tunnel_supported.exit32.i.i.i.ice_get_tunnel_device.exit.i.i_crit_edge ]
  %tobool6.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool6.not.i.i, label %ice_get_tunnel_device.exit.i.i.if.else.i.i_crit_edge, label %if.then7.i.i

ice_get_tunnel_device.exit.i.i.if.else.i.i_crit_edge: ; preds = %ice_get_tunnel_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then7.i.i:                                     ; preds = %ice_get_tunnel_device.exit.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_control.i.i.i) #8
  %53 = ptrtoint ptr %enc_control.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_control.i.i.i, align 4, !annotation !90
  %54 = getelementptr inbounds %struct.flow_match_control, ptr %enc_control.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %54, align 4, !annotation !90
  %rtnl_link_ops.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i.i.i, i32 0, i32 136
  %56 = ptrtoint ptr %rtnl_link_ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rtnl_link_ops.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then7.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge, label %netif_is_vxlan.exit.i.i.i.i

if.then7.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit.i.i.i

netif_is_vxlan.exit.i.i.i.i:                      ; preds = %if.then7.i.i
  %kind.i.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %kind.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kind.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(6) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %netif_is_vxlan.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge, label %netif_is_geneve.exit.i.i.i.i

netif_is_vxlan.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge: ; preds = %netif_is_vxlan.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit.i.i.i

netif_is_geneve.exit.i.i.i.i:                     ; preds = %netif_is_vxlan.exit.i.i.i.i
  %call.i14.i.i.i.i = tail call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i.i.i)
  %tobool2.not.i15.i.i.i.i = icmp eq i32 %call.i14.i.i.i.i, 0
  br i1 %tobool2.not.i15.i.i.i.i, label %netif_is_geneve.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge, label %netif_is_gretap.exit.i.i.i.i

netif_is_geneve.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge: ; preds = %netif_is_geneve.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit.i.i.i

netif_is_gretap.exit.i.i.i.i:                     ; preds = %netif_is_geneve.exit.i.i.i.i
  %call.i20.i.i.i.i = tail call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(7) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i.i)
  %tobool2.not.i21.i.i.i.i = icmp eq i32 %call.i20.i.i.i.i, 0
  br i1 %tobool2.not.i21.i.i.i.i, label %netif_is_gretap.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge, label %netif_is_ip6gretap.exit.i.i.i.i

netif_is_gretap.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge: ; preds = %netif_is_gretap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_tun_get_type.exit.i.i.i

netif_is_ip6gretap.exit.i.i.i.i:                  ; preds = %netif_is_gretap.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i26.i.i.i.i = tail call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(10) @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i.i)
  %tobool2.not.i27.i.i.i.i = icmp eq i32 %call.i26.i.i.i.i, 0
  %phi.cast.i.i.i = select i1 %tobool2.not.i27.i.i.i.i, i8 2, i8 -1
  br label %ice_tc_tun_get_type.exit.i.i.i

ice_tc_tun_get_type.exit.i.i.i:                   ; preds = %netif_is_ip6gretap.exit.i.i.i.i, %netif_is_gretap.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge, %netif_is_geneve.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge, %netif_is_vxlan.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge, %if.then7.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i8 [ 0, %netif_is_vxlan.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge ], [ 1, %netif_is_geneve.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge ], [ 2, %netif_is_gretap.exit.i.i.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge ], [ -1, %if.then7.i.i.ice_tc_tun_get_type.exit.i.i.i_crit_edge ], [ %phi.cast.i.i.i, %netif_is_ip6gretap.exit.i.i.i.i ]
  %tunnel_type.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 12
  %60 = ptrtoint ptr %tunnel_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %retval.0.i.i.i.i, ptr %tunnel_type.i.i.i, align 8
  %l3_key.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %61 = ptrtoint ptr %l3_key.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 17, ptr %l3_key.i.i.i, align 4
  %62 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %32, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %and.i.i.i.i.i = and i32 %65, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.i.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i.i, label %ice_tc_tun_get_type.exit.i.i.i.if.end7.i.i.i_crit_edge, label %if.then.i.i.i

ice_tc_tun_get_type.exit.i.i.i.if.end7.i.i.i_crit_edge: ; preds = %ice_tc_tun_get_type.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i

if.then.i.i.i:                                    ; preds = %ice_tc_tun_get_type.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_keyid.i.i.i) #8
  %66 = ptrtoint ptr %enc_keyid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_keyid.i.i.i, align 4, !annotation !90
  %67 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %enc_keyid.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %67, align 4, !annotation !90
  call void @flow_rule_match_enc_keyid(ptr noundef %32, ptr noundef nonnull %enc_keyid.i.i.i) #8
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %67, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cond.i.i.i = icmp eq i32 %72, -1
  br i1 %cond.i.i.i, label %if.end.i1.i.i, label %cleanup.i.i.i

if.end.i1.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %73 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i = or i32 %74, 512
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 4
  %75 = ptrtoint ptr %enc_keyid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %enc_keyid.i.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %tenant_id.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 10
  %79 = ptrtoint ptr %tenant_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %tenant_id.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_keyid.i.i.i) #8
  br label %if.end7.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_keyid.i.i.i) #8
  br label %do.body11.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i1.i.i, %ice_tc_tun_get_type.exit.i.i.i.if.end7.i.i.i_crit_edge
  call void @flow_rule_match_enc_control(ptr noundef %32, ptr noundef nonnull %enc_control.i.i.i) #8
  %80 = ptrtoint ptr %enc_control.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %enc_control.i.i.i, align 4
  %addr_type.i.i.i = getelementptr inbounds %struct.flow_dissector_key_control, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %addr_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %addr_type.i.i.i, align 2
  %84 = zext i16 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i16 %83, label %if.end7.i.i.i.if.end35.i.i.i_crit_edge [
    i16 2, label %if.then12.i.i.i
    i16 3, label %if.then25.i.i.i
  ]

if.end7.i.i.i.if.end35.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i.i.i) #8
  %85 = ptrtoint ptr %match.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i.i.i, align 4, !annotation !90
  %86 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match.i.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 -1 to ptr), ptr %86, align 4, !annotation !90
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %32, ptr noundef nonnull %match.i.i.i) #8
  %88 = ptrtoint ptr %match.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %match.i.i.i, align 4
  %dst.i.i.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dst.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.i.i.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i.i.i.i, label %if.then12.i.i.i.if.end11.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then12.i.i.i.if.end11.i.i.i.i_crit_edge:       ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %92 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i.i.i.i, align 4
  %or4.i.i.i.i = or i32 %93, 1024
  store i32 %or4.i.i.i.i, ptr %flags.i.i.i.i, align 4
  %94 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dst.i.i.i.i, align 4
  %ip.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 3, i32 1
  %96 = ptrtoint ptr %ip.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %ip.i.i.i.i, align 8
  %97 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %86, align 4
  %dst7.i.i.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %dst7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dst7.i.i.i.i, align 4
  %ip8.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 4, i32 1
  %101 = ptrtoint ptr %ip8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %ip8.i.i.i.i, align 8
  br label %if.end11.i.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.then.i.i.i.i, %if.then12.i.i.i.if.end11.i.i.i.i_crit_edge
  %102 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool13.not.i.i.i.i = icmp eq i32 %103, 0
  br i1 %tobool13.not.i.i.i.i, label %if.end11.i.i.i.i.ice_tc_set_ipv4.exit.i.i.i_crit_edge, label %if.then14.i.i.i.i

if.end11.i.i.i.i.ice_tc_set_ipv4.exit.i.i.i_crit_edge: ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_set_ipv4.exit.i.i.i

if.then14.i.i.i.i:                                ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags17.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %104 = ptrtoint ptr %flags17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags17.i.i.i.i, align 4
  %or21.i.i.i.i = or i32 %105, 2048
  store i32 %or21.i.i.i.i, ptr %flags17.i.i.i.i, align 4
  %106 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %89, align 4
  %src_ip.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %src_ip.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %src_ip.i.i.i.i, align 4
  %109 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %86, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %src_ip32.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 4, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %113 = ptrtoint ptr %src_ip32.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %src_ip32.i.i.i.i, align 4
  br label %ice_tc_set_ipv4.exit.i.i.i

ice_tc_set_ipv4.exit.i.i.i:                       ; preds = %if.then14.i.i.i.i, %if.end11.i.i.i.i.ice_tc_set_ipv4.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i.i) #8
  br label %if.end35.i.i.i

if.then25.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match26.i.i.i) #8
  %114 = ptrtoint ptr %match26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %match26.i.i.i, align 4, !annotation !90
  %115 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match26.i.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 -1 to ptr), ptr %115, align 4, !annotation !90
  call void @flow_rule_match_enc_ipv6_addrs(ptr noundef %32, ptr noundef nonnull %match26.i.i.i) #8
  %call27.i.i.i = call fastcc i32 @ice_tc_set_ipv6(ptr noundef nonnull %match26.i.i.i, ptr noundef %call7.i.i.i, ptr noundef %outer_headers.i.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match26.i.i.i) #8
  br i1 %tobool28.not.i.i.i, label %if.then25.i.i.i.if.end35.i.i.i_crit_edge, label %if.then25.i.i.i.do.body11.i.i_crit_edge

if.then25.i.i.i.do.body11.i.i_crit_edge:          ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11.i.i

if.then25.i.i.i.if.end35.i.i.i_crit_edge:         ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i.i.i

if.end35.i.i.i:                                   ; preds = %if.then25.i.i.i.if.end35.i.i.i_crit_edge, %ice_tc_set_ipv4.exit.i.i.i, %if.end7.i.i.i.if.end35.i.i.i_crit_edge
  %117 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %32, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %and.i.i105.i.i.i = and i32 %120, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105.i.i.i)
  %tobool.i.i106.not.i.i.i = icmp eq i32 %and.i.i105.i.i.i, 0
  br i1 %tobool.i.i106.not.i.i.i, label %if.end35.i.i.i.if.end52.i.i.i_crit_edge, label %if.then37.i.i.i

if.end35.i.i.i.if.end52.i.i.i_crit_edge:          ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i.i

if.then37.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match38.i.i.i) #8
  %121 = ptrtoint ptr %match38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 -1 to ptr), ptr %match38.i.i.i, align 4, !annotation !90
  %122 = getelementptr inbounds %struct.flow_match_ip, ptr %match38.i.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 -1 to ptr), ptr %122, align 4, !annotation !90
  call void @flow_rule_match_enc_ip(ptr noundef %32, ptr noundef nonnull %match38.i.i.i) #8
  %124 = ptrtoint ptr %match38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %match38.i.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  %tos41.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 3, i32 2
  %128 = ptrtoint ptr %tos41.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %tos41.i.i.i, align 8
  %ttl.i.i.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %125, i32 0, i32 1
  %129 = ptrtoint ptr %ttl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ttl.i.i.i, align 1
  %ttl44.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 3, i32 3
  %131 = ptrtoint ptr %ttl44.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %ttl44.i.i.i, align 1
  %132 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %122, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 1
  %tos47.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 4, i32 2
  %136 = ptrtoint ptr %tos47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %tos47.i.i.i, align 8
  %ttl49.i.i.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %133, i32 0, i32 1
  %137 = ptrtoint ptr %ttl49.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ttl49.i.i.i, align 1
  %ttl51.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 4, i32 3
  %139 = ptrtoint ptr %ttl51.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %ttl51.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match38.i.i.i) #8
  br label %if.end52.i.i.i

if.end52.i.i.i:                                   ; preds = %if.then37.i.i.i, %if.end35.i.i.i.if.end52.i.i.i_crit_edge
  %140 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %32, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %and.i.i107.i.i.i = and i32 %143, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107.i.i.i)
  %tobool.i.i108.not.i.i.i = icmp eq i32 %and.i.i107.i.i.i, 0
  br i1 %tobool.i.i108.not.i.i.i, label %if.end52.i.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i2.i.i

if.end52.i.i.i.cleanup.i.i_crit_edge:             ; preds = %if.end52.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

land.lhs.true.i2.i.i:                             ; preds = %if.end52.i.i.i
  %144 = ptrtoint ptr %tunnel_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %tunnel_type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %145)
  %switch.i.i.i = icmp ult i8 %145, 2
  br i1 %switch.i.i.i, label %land.lhs.true.i2.i.i.cleanup.i.i_crit_edge, label %if.then64.i.i.i

land.lhs.true.i2.i.i.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true.i2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i

if.then64.i.i.i:                                  ; preds = %land.lhs.true.i2.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match65.i.i.i) #8
  %146 = ptrtoint ptr %match65.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 -1 to ptr), ptr %match65.i.i.i, align 4, !annotation !90
  %147 = getelementptr inbounds %struct.flow_match_ports, ptr %match65.i.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 -1 to ptr), ptr %147, align 4, !annotation !90
  call void @flow_rule_match_enc_ports(ptr noundef %32, ptr noundef nonnull %match65.i.i.i) #8
  %149 = ptrtoint ptr %match65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.fca.0.load.i.i.i = load i32, ptr %match65.i.i.i, align 4
  %150 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %150)
  %.fca.1.load.i.i.i = load i32, ptr %147, align 4
  %151 = inttoptr i32 %.fca.0.load.i.i.i to ptr
  %152 = inttoptr i32 %.fca.1.load.i.i.i to ptr
  %dst.i109.i.i.i = getelementptr inbounds %struct.anon.236, ptr %151, i32 0, i32 1
  %153 = ptrtoint ptr %dst.i109.i.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %dst.i109.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool.not.i110.i.i.i = icmp eq i16 %154, 0
  br i1 %tobool.not.i110.i.i.i, label %if.then64.i.i.i.if.end9.i.i.i.i_crit_edge, label %if.then.i114.i.i.i

if.then64.i.i.i.if.end9.i.i.i.i_crit_edge:        ; preds = %if.then64.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i.i.i

if.then.i114.i.i.i:                               ; preds = %if.then64.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i111.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %155 = ptrtoint ptr %flags.i111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags.i111.i.i.i, align 4
  %or4.i112.i.i.i = or i32 %156, 16384
  store i32 %or4.i112.i.i.i, ptr %flags.i111.i.i.i, align 4
  %157 = ptrtoint ptr %dst.i109.i.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %dst.i109.i.i.i, align 2
  %l4_key.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 5
  %159 = ptrtoint ptr %l4_key.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %l4_key.i.i.i.i, align 4
  %dst7.i113.i.i.i = getelementptr inbounds %struct.anon.236, ptr %152, i32 0, i32 1
  %160 = ptrtoint ptr %dst7.i113.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %dst7.i113.i.i.i, align 2
  %l4_mask.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 6
  %162 = ptrtoint ptr %l4_mask.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %l4_mask.i.i.i.i, align 8
  br label %if.end9.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.then.i114.i.i.i, %if.then64.i.i.i.if.end9.i.i.i.i_crit_edge
  %163 = ptrtoint ptr %151 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %151, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool11.not.i.i.i.i = icmp eq i16 %164, 0
  br i1 %tobool11.not.i.i.i.i, label %if.end9.i.i.i.i.ice_tc_set_port.exit.i.i.i_crit_edge, label %if.then12.i.i.i.i

if.end9.i.i.i.i.ice_tc_set_port.exit.i.i.i_crit_edge: ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_set_port.exit.i.i.i

if.then12.i.i.i.i:                                ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags15.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %165 = ptrtoint ptr %flags15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags15.i.i.i.i, align 4
  %or19.i.i.i.i = or i32 %166, 32768
  store i32 %or19.i.i.i.i, ptr %flags15.i.i.i.i, align 4
  %167 = ptrtoint ptr %151 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %151, align 4
  %src_port.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 5, i32 1
  %169 = ptrtoint ptr %src_port.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %src_port.i.i.i.i, align 2
  %170 = ptrtoint ptr %152 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %152, align 4
  %src_port27.i.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 6, i32 1
  %172 = ptrtoint ptr %src_port27.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %src_port27.i.i.i.i, align 2
  br label %ice_tc_set_port.exit.i.i.i

ice_tc_set_port.exit.i.i.i:                       ; preds = %if.then12.i.i.i.i, %if.end9.i.i.i.i.ice_tc_set_port.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match65.i.i.i) #8
  br label %cleanup.i.i

do.body11.i.i:                                    ; preds = %if.then25.i.i.i.do.body11.i.i_crit_edge, %cleanup.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_control.i.i.i) #8
  %173 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_parse_cls_flower.__msg.5) #8
  %tobool14.not.i.i = icmp eq ptr %174, null
  br i1 %tobool14.not.i.i, label %do.body11.i.i.err14.i_crit_edge, label %if.then15.i.i

do.body11.i.i.err14.i_crit_edge:                  ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then15.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @ice_parse_cls_flower.__msg.5, ptr %174, align 4
  br label %err14.i

cleanup.i.i:                                      ; preds = %ice_tc_set_port.exit.i.i.i, %land.lhs.true.i2.i.i.cleanup.i.i_crit_edge, %if.end52.i.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_control.i.i.i) #8
  %inner_headers.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 8
  br label %if.end36.i.i

if.else.i.i:                                      ; preds = %ice_get_tunnel_device.exit.i.i.if.else.i.i_crit_edge, %for.inc.i.i.i.if.else.i.i_crit_edge, %if.end.i.i.i.if.else.i.i_crit_edge
  %and22.i.i = and i32 %36, 376832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.else34.i.i, label %do.body25.i.i

do.body25.i.i:                                    ; preds = %if.else.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_parse_cls_flower.__msg.6) #8
  %tobool28.not.i.i = icmp eq ptr %26, null
  br i1 %tobool28.not.i.i, label %do.body25.i.i.err14.i_crit_edge, label %if.then29.i.i

do.body25.i.i.err14.i_crit_edge:                  ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then29.i.i:                                    ; preds = %do.body25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @ice_parse_cls_flower.__msg.6, ptr %26, align 4
  br label %err14.i

if.else34.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tunnel_type.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 12
  %177 = ptrtoint ptr %tunnel_type.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -1, ptr %tunnel_type.i.i, align 8
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.else34.i.i, %cleanup.i.i
  %filter_dev.addr.0.i.i = phi ptr [ %retval.0.i.i.i, %cleanup.i.i ], [ %netdev, %if.else34.i.i ]
  %headers.1.i.i = phi ptr [ %inner_headers.i.i, %cleanup.i.i ], [ %outer_headers.i.i, %if.else34.i.i ]
  %178 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %32, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 4
  %and.i.i.i.i = and i32 %181, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.end36.i.i.if.end52.i.i_crit_edge, label %if.then38.i.i

if.end36.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

if.then38.i.i:                                    ; preds = %if.end36.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match39.i.i) #8
  %182 = ptrtoint ptr %match39.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 -1 to ptr), ptr %match39.i.i, align 4, !annotation !90
  %183 = getelementptr inbounds %struct.flow_match_basic, ptr %match39.i.i, i32 0, i32 1
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr inttoptr (i32 -1 to ptr), ptr %183, align 4, !annotation !90
  call void @flow_rule_match_basic(ptr noundef %32, ptr noundef nonnull %match39.i.i) #8
  %185 = ptrtoint ptr %match39.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %match39.i.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %186, align 2
  %189 = zext i16 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %188, label %if.else46.i.i [
    i16 3, label %if.then38.i.i.if.end47.i.i_crit_edge
    i16 0, label %if.then38.i.i.if.end47.i.i_crit_edge65
  ]

if.then38.i.i.if.end47.i.i_crit_edge65:           ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

if.then38.i.i.if.end47.i.i_crit_edge:             ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

if.else46.i.i:                                    ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %190 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %183, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %191, align 2
  %flags.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %194 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %195, 131072
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.else46.i.i, %if.then38.i.i.if.end47.i.i_crit_edge, %if.then38.i.i.if.end47.i.i_crit_edge65
  %n_proto_mask.0.i.i = phi i16 [ %193, %if.else46.i.i ], [ 0, %if.then38.i.i.if.end47.i.i_crit_edge ], [ 0, %if.then38.i.i.if.end47.i.i_crit_edge65 ]
  %n_proto_key.0.i.i = phi i16 [ %188, %if.else46.i.i ], [ 0, %if.then38.i.i.if.end47.i.i_crit_edge ], [ 0, %if.then38.i.i.if.end47.i.i_crit_edge65 ]
  %n_proto48.i.i = getelementptr inbounds %struct.ice_tc_l2_hdr, ptr %headers.1.i.i, i32 0, i32 2
  %196 = ptrtoint ptr %n_proto48.i.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %n_proto_key.0.i.i, ptr %n_proto48.i.i, align 4
  %n_proto49.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 1, i32 2
  %197 = ptrtoint ptr %n_proto49.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %n_proto_mask.0.i.i, ptr %n_proto49.i.i, align 2
  %ip_proto.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %186, i32 0, i32 1
  %198 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ip_proto.i.i, align 2
  %l3_key.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 3
  %200 = ptrtoint ptr %l3_key.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %l3_key.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match39.i.i) #8
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.end47.i.i, %if.end36.i.i.if.end52.i.i_crit_edge
  %201 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %32, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %and.i.i3.i.i = and i32 %204, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3.i.i)
  %tobool.i.i4.not.i.i = icmp eq i32 %and.i.i3.i.i, 0
  br i1 %tobool.i.i4.not.i.i, label %if.end52.i.i.if.end91.i.i_crit_edge, label %if.then54.i.i

if.end52.i.i.if.end91.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i.i

if.then54.i.i:                                    ; preds = %if.end52.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match55.i.i) #8
  %205 = ptrtoint ptr %match55.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr inttoptr (i32 -1 to ptr), ptr %match55.i.i, align 4, !annotation !90
  %206 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match55.i.i, i32 0, i32 1
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr inttoptr (i32 -1 to ptr), ptr %206, align 4, !annotation !90
  call void @flow_rule_match_eth_addrs(ptr noundef %32, ptr noundef nonnull %match55.i.i) #8
  %208 = ptrtoint ptr %match55.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %match55.i.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %209, i32 4
  %212 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %213 to i32
  %or.i5.i.i = or i32 %211, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i5.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i5.i.i, 0
  br i1 %cmp.i.i.i, label %if.then54.i.i.if.end72.i.i_crit_edge, label %if.then58.i.i

if.then54.i.i.if.end72.i.i_crit_edge:             ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then58.i.i:                                    ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %214 = ptrtoint ptr %headers.1.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %211, ptr %headers.1.i.i, align 4
  %215 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %headers.1.i.i, i32 4
  %217 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %add.ptr1.i.i.i, align 2
  %l2_mask64.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %206, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  %222 = ptrtoint ptr %l2_mask64.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %l2_mask64.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %219, i32 4
  %223 = ptrtoint ptr %add.ptr.i7.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %add.ptr.i7.i.i, align 2
  %add.ptr1.i8.i.i = getelementptr %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 1, i32 0, i32 4
  %225 = ptrtoint ptr %add.ptr1.i8.i.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %224, ptr %add.ptr1.i8.i.i, align 2
  %flags70.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %226 = ptrtoint ptr %flags70.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %flags70.i.i, align 4
  %or71.i.i = or i32 %227, 1
  store i32 %or71.i.i, ptr %flags70.i.i, align 4
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.then58.i.i, %if.then54.i.i.if.end72.i.i_crit_edge
  %src.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %209, i32 0, i32 1
  %228 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %src.i.i, align 4
  %add.ptr.i9.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %209, i32 0, i32 1, i32 4
  %230 = ptrtoint ptr %add.ptr.i9.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %add.ptr.i9.i.i, align 2
  %conv.i10.i.i = zext i16 %231 to i32
  %or.i11.i.i = or i32 %229, %conv.i10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i11.i.i)
  %cmp.i12.i.i = icmp eq i32 %or.i11.i.i, 0
  br i1 %cmp.i12.i.i, label %if.end72.i.i.if.end90.i.i_crit_edge, label %if.then76.i.i

if.end72.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i.i

if.then76.i.i:                                    ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %src_mac.i.i = getelementptr inbounds %struct.ice_tc_l2_hdr, ptr %headers.1.i.i, i32 0, i32 1
  %232 = ptrtoint ptr %src_mac.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %229, ptr %src_mac.i.i, align 4
  %233 = ptrtoint ptr %add.ptr.i9.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %add.ptr.i9.i.i, align 2
  %add.ptr1.i14.i.i = getelementptr %struct.ice_tc_l2_hdr, ptr %headers.1.i.i, i32 0, i32 1, i32 4
  %235 = ptrtoint ptr %add.ptr1.i14.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %234, ptr %add.ptr1.i14.i.i, align 2
  %src_mac83.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 1, i32 1
  %236 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %206, align 4
  %src86.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %src86.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %src86.i.i, align 4
  %240 = ptrtoint ptr %src_mac83.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %src_mac83.i.i, align 4
  %add.ptr.i15.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %237, i32 0, i32 1, i32 4
  %241 = ptrtoint ptr %add.ptr.i15.i.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %add.ptr.i15.i.i, align 2
  %add.ptr1.i16.i.i = getelementptr %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 1, i32 1, i32 4
  %243 = ptrtoint ptr %add.ptr1.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %242, ptr %add.ptr1.i16.i.i, align 2
  %flags88.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %244 = ptrtoint ptr %flags88.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %flags88.i.i, align 4
  %or89.i.i = or i32 %245, 2
  store i32 %or89.i.i, ptr %flags88.i.i, align 4
  br label %if.end90.i.i

if.end90.i.i:                                     ; preds = %if.then76.i.i, %if.end72.i.i.if.end90.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match55.i.i) #8
  br label %if.end91.i.i

if.end91.i.i:                                     ; preds = %if.end90.i.i, %if.end52.i.i.if.end91.i.i_crit_edge
  %246 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %32, align 8
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  %and.i.i17.i.i = and i32 %249, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i.i)
  %tobool.i.i18.not.i.i = icmp eq i32 %and.i.i17.i.i, 0
  br i1 %tobool.i.i18.not.i.i, label %lor.lhs.false94.i.i, label %if.end91.i.i.if.then97.i.i_crit_edge

if.end91.i.i.if.then97.i.i_crit_edge:             ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97.i.i

lor.lhs.false94.i.i:                              ; preds = %if.end91.i.i
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %filter_dev.addr.0.i.i, i32 0, i32 15
  %250 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %251, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false94.i.i.if.end164.i.i_crit_edge, label %lor.lhs.false94.i.i.if.then97.i.i_crit_edge

lor.lhs.false94.i.i.if.then97.i.i_crit_edge:      ; preds = %lor.lhs.false94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97.i.i

lor.lhs.false94.i.i.if.end164.i.i_crit_edge:      ; preds = %lor.lhs.false94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164.i.i

if.then97.i.i:                                    ; preds = %lor.lhs.false94.i.i.if.then97.i.i_crit_edge, %if.end91.i.i.if.then97.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask98.i.i) #8
  %252 = ptrtoint ptr %mask98.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 -1, ptr %mask98.i.i, align 4, !annotation !90
  %253 = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %mask98.i.i, i32 0, i32 1
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 -1, ptr %253, align 2, !annotation !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key99.i.i) #8
  %255 = ptrtoint ptr %key99.i.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 -1, ptr %key99.i.i, align 2, !annotation !90
  %256 = getelementptr inbounds %struct.flow_dissector_key_vlan, ptr %key99.i.i, i32 0, i32 1
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 -1, ptr %256, align 2, !annotation !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match100.i.i) #8
  %258 = ptrtoint ptr %match100.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr inttoptr (i32 -1 to ptr), ptr %match100.i.i, align 4, !annotation !90
  %259 = getelementptr inbounds %struct.flow_match_vlan, ptr %match100.i.i, i32 0, i32 1
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr inttoptr (i32 -1 to ptr), ptr %259, align 4, !annotation !90
  %priv_flags.i19.i.i = getelementptr inbounds %struct.net_device, ptr %filter_dev.addr.0.i.i, i32 0, i32 15
  %261 = ptrtoint ptr %priv_flags.i19.i.i to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %priv_flags.i19.i.i, align 16
  %and.i20.i.i = and i64 %262, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i20.i.i)
  %tobool.i21.not.i.i = icmp eq i64 %and.i20.i.i, 0
  br i1 %tobool.i21.not.i.i, label %if.else116.i.i, label %if.then102.i.i

if.then102.i.i:                                   ; preds = %if.then97.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %263 = ptrtoint ptr %match100.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %key99.i.i, ptr %match100.i.i, align 4
  %call104.i.i = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %filter_dev.addr.0.i.i) #8
  %264 = ptrtoint ptr %key99.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %bf.load.i.i = load i16, ptr %key99.i.i, align 2
  %bf.shl.i.i = shl i16 %call104.i.i, 4
  %bf.clear.i.i = and i16 %bf.load.i.i, 8
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %key99.i.i, align 2
  %265 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %mask98.i.i, ptr %259, align 4
  %266 = ptrtoint ptr %mask98.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -458753, ptr %mask98.i.i, align 4
  br label %if.end117.i.i

if.else116.i.i:                                   ; preds = %if.then97.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @flow_rule_match_vlan(ptr noundef %32, ptr noundef nonnull %match100.i.i) #8
  br label %if.end117.i.i

if.end117.i.i:                                    ; preds = %if.else116.i.i, %if.then102.i.i
  %267 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %259, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load2_noabort(i32 %269)
  %bf.load119.i.i = load i16, ptr %268, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %bf.load119.i.i)
  %tobool120.not.i.i = icmp ult i16 %bf.load119.i.i, 16
  br i1 %tobool120.not.i.i, label %if.end117.i.i.if.end142.i.i_crit_edge, label %if.then121.i.i

if.end117.i.i.if.end142.i.i_crit_edge:            ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142.i.i

if.then121.i.i:                                   ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %bf.load119.i.i)
  %cmp126.i.i = icmp ugt i16 %bf.load119.i.i, -17
  br i1 %cmp126.i.i, label %if.then128.i.i, label %do.body132.i.i

if.then128.i.i:                                   ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags129.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %270 = ptrtoint ptr %flags129.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %flags129.i.i, align 4
  %or130.i.i = or i32 %271, 4
  store i32 %or130.i.i, ptr %flags129.i.i, align 4
  br label %if.end142.i.i

do.body132.i.i:                                   ; preds = %if.then121.i.i
  %272 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_parse_cls_flower.__msg.7) #8
  %tobool135.not.i.i = icmp eq ptr %273, null
  br i1 %tobool135.not.i.i, label %do.body132.i.i.cleanup159.i.i_crit_edge, label %if.then136.i.i

do.body132.i.i.cleanup159.i.i_crit_edge:          ; preds = %do.body132.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159.i.i

if.then136.i.i:                                   ; preds = %do.body132.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr @ice_parse_cls_flower.__msg.7, ptr %273, align 4
  br label %cleanup159.i.i

if.end142.i.i:                                    ; preds = %if.then128.i.i, %if.end117.i.i.if.end142.i.i_crit_edge
  %275 = ptrtoint ptr %match100.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %match100.i.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load2_noabort(i32 %277)
  %bf.load144.i.i = load i16, ptr %276, align 2
  %bf.lshr145.i.i = lshr i16 %bf.load144.i.i, 4
  %vlan_hdr.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 2
  %278 = ptrtoint ptr %vlan_hdr.i.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %bf.lshr145.i.i, ptr %vlan_hdr.i.i, align 4
  %279 = ptrtoint ptr %268 to i32
  call void @__asan_load2_noabort(i32 %279)
  %bf.load150.i.i = load i16, ptr %268, align 2
  %bf.clear151.i.i = and i16 %bf.load150.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear151.i.i)
  %tobool152.not.i.i = icmp eq i16 %bf.clear151.i.i, 0
  br i1 %tobool152.not.i.i, label %if.end142.i.i.cleanup159.thread.i.i_crit_edge, label %if.then153.i.i

if.end142.i.i.cleanup159.thread.i.i_crit_edge:    ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup159.thread.i.i

if.then153.i.i:                                   ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %280 = ptrtoint ptr %276 to i32
  call void @__asan_load2_noabort(i32 %280)
  %bf.load155.i.i = load i16, ptr %276, align 2
  %bf.clear156.i.i = and i16 %bf.load155.i.i, 7
  %vlan_prio.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 2, i32 1
  %281 = ptrtoint ptr %vlan_prio.i.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 %bf.clear156.i.i, ptr %vlan_prio.i.i, align 2
  br label %cleanup159.thread.i.i

cleanup159.thread.i.i:                            ; preds = %if.then153.i.i, %if.end142.i.i.cleanup159.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match100.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key99.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask98.i.i) #8
  br label %if.end164.i.i

cleanup159.i.i:                                   ; preds = %if.then136.i.i, %do.body132.i.i.cleanup159.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match100.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key99.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask98.i.i) #8
  br label %err14.i

if.end164.i.i:                                    ; preds = %cleanup159.thread.i.i, %lor.lhs.false94.i.i.if.end164.i.i_crit_edge
  %282 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %32, align 8
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %283, align 4
  %and.i.i22.i.i = and i32 %285, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22.i.i)
  %tobool.i.i23.not.i.i = icmp eq i32 %and.i.i22.i.i, 0
  br i1 %tobool.i.i23.not.i.i, label %if.end164.i.i.if.end196.i.i_crit_edge, label %if.end170.i.i

if.end164.i.i.if.end196.i.i_crit_edge:            ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i.i

if.end170.i.i:                                    ; preds = %if.end164.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match167.i.i) #8
  %286 = ptrtoint ptr %match167.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr inttoptr (i32 -1 to ptr), ptr %match167.i.i, align 4, !annotation !90
  %287 = getelementptr inbounds %struct.flow_match_control, ptr %match167.i.i, i32 0, i32 1
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr inttoptr (i32 -1 to ptr), ptr %287, align 4, !annotation !90
  call void @flow_rule_match_control(ptr noundef %32, ptr noundef nonnull %match167.i.i) #8
  %289 = ptrtoint ptr %match167.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %match167.i.i, align 4
  %addr_type169.i.i = getelementptr inbounds %struct.flow_dissector_key_control, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %addr_type169.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %addr_type169.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match167.i.i) #8
  %293 = zext i16 %292 to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %292, label %if.end170.i.i.if.end196.i.i_crit_edge [
    i16 2, label %if.then174.i.i
    i16 3, label %if.then187.i.i
  ]

if.end170.i.i.if.end196.i.i_crit_edge:            ; preds = %if.end170.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i.i

if.then174.i.i:                                   ; preds = %if.end170.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match175.i.i) #8
  %294 = ptrtoint ptr %match175.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr inttoptr (i32 -1 to ptr), ptr %match175.i.i, align 4, !annotation !90
  %295 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match175.i.i, i32 0, i32 1
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr inttoptr (i32 -1 to ptr), ptr %295, align 4, !annotation !90
  call void @flow_rule_match_ipv4_addrs(ptr noundef %32, ptr noundef nonnull %match175.i.i) #8
  %297 = ptrtoint ptr %match175.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %match175.i.i, align 4
  %dst.i.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %dst.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool.not.i.i.i = icmp eq i32 %300, 0
  br i1 %tobool.not.i.i.i, label %if.then174.i.i.if.end11.i.i.i_crit_edge, label %if.then.i25.i.i

if.then174.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.then174.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i.i

if.then.i25.i.i:                                  ; preds = %if.then174.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i24.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %301 = ptrtoint ptr %flags.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %flags.i24.i.i, align 4
  %or4.i.i.i = or i32 %302, 8
  store i32 %or4.i.i.i, ptr %flags.i24.i.i, align 4
  %303 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %dst.i.i.i, align 4
  %ip.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 3, i32 1
  %305 = ptrtoint ptr %ip.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %ip.i.i.i, align 4
  %306 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %295, align 4
  %dst7.i.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %dst7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %dst7.i.i.i, align 4
  %ip8.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 4, i32 1
  %310 = ptrtoint ptr %ip8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %ip8.i.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then.i25.i.i, %if.then174.i.i.if.end11.i.i.i_crit_edge
  %311 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool13.not.i.i.i = icmp eq i32 %312, 0
  br i1 %tobool13.not.i.i.i, label %if.end11.i.i.i.ice_tc_set_ipv4.exit.i.i_crit_edge, label %if.then14.i.i.i

if.end11.i.i.i.ice_tc_set_ipv4.exit.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_set_ipv4.exit.i.i

if.then14.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags17.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %313 = ptrtoint ptr %flags17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %flags17.i.i.i, align 4
  %or21.i.i.i = or i32 %314, 16
  store i32 %or21.i.i.i, ptr %flags17.i.i.i, align 4
  %315 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %298, align 4
  %src_ip.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %317 = ptrtoint ptr %src_ip.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %src_ip.i.i.i, align 4
  %318 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %295, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %319, align 4
  %src_ip32.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %322 = ptrtoint ptr %src_ip32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %src_ip32.i.i.i, align 4
  br label %ice_tc_set_ipv4.exit.i.i

ice_tc_set_ipv4.exit.i.i:                         ; preds = %if.then14.i.i.i, %if.end11.i.i.i.ice_tc_set_ipv4.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match175.i.i) #8
  br label %if.end196.i.i

if.then187.i.i:                                   ; preds = %if.end170.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match188.i.i) #8
  %323 = ptrtoint ptr %match188.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr inttoptr (i32 -1 to ptr), ptr %match188.i.i, align 4, !annotation !90
  %324 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match188.i.i, i32 0, i32 1
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr inttoptr (i32 -1 to ptr), ptr %324, align 4, !annotation !90
  call void @flow_rule_match_ipv6_addrs(ptr noundef %32, ptr noundef nonnull %match188.i.i) #8
  %call189.i.i = call fastcc i32 @ice_tc_set_ipv6(ptr noundef nonnull %match188.i.i, ptr noundef %call7.i.i.i, ptr noundef %headers.1.i.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i.i)
  %tobool190.not.i.i = icmp eq i32 %call189.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match188.i.i) #8
  br i1 %tobool190.not.i.i, label %if.then187.i.i.if.end196.i.i_crit_edge, label %if.then187.i.i.err14.i_crit_edge

if.then187.i.i.err14.i_crit_edge:                 ; preds = %if.then187.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then187.i.i.if.end196.i.i_crit_edge:           ; preds = %if.then187.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i.i

if.end196.i.i:                                    ; preds = %if.then187.i.i.if.end196.i.i_crit_edge, %ice_tc_set_ipv4.exit.i.i, %if.end170.i.i.if.end196.i.i_crit_edge, %if.end164.i.i.if.end196.i.i_crit_edge
  %326 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %32, align 8
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 4
  %and.i.i26.i.i = and i32 %329, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26.i.i)
  %tobool.i.i27.not.i.i = icmp eq i32 %and.i.i26.i.i, 0
  br i1 %tobool.i.i27.not.i.i, label %if.end196.i.i.if.end5.i_crit_edge, label %if.then198.i.i

if.end196.i.i.if.end5.i_crit_edge:                ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then198.i.i:                                   ; preds = %if.end196.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match199.i.i) #8
  %330 = ptrtoint ptr %match199.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr inttoptr (i32 -1 to ptr), ptr %match199.i.i, align 4, !annotation !90
  %331 = getelementptr inbounds %struct.flow_match_ports, ptr %match199.i.i, i32 0, i32 1
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr inttoptr (i32 -1 to ptr), ptr %331, align 4, !annotation !90
  call void @flow_rule_match_ports(ptr noundef %32, ptr noundef nonnull %match199.i.i) #8
  %333 = ptrtoint ptr %match199.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %.fca.0.load.i.i = load i32, ptr %match199.i.i, align 4
  %334 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %334)
  %.fca.1.load.i.i = load i32, ptr %331, align 4
  %335 = inttoptr i32 %.fca.0.load.i.i to ptr
  %336 = inttoptr i32 %.fca.1.load.i.i to ptr
  %dst.i28.i.i = getelementptr inbounds %struct.anon.236, ptr %335, i32 0, i32 1
  %337 = ptrtoint ptr %dst.i28.i.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %dst.i28.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %338)
  %tobool.not.i29.i.i = icmp eq i16 %338, 0
  br i1 %tobool.not.i29.i.i, label %if.then198.i.i.if.end9.i.i.i_crit_edge, label %if.then.i33.i.i

if.then198.i.i.if.end9.i.i.i_crit_edge:           ; preds = %if.then198.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i.i

if.then.i33.i.i:                                  ; preds = %if.then198.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i30.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %339 = ptrtoint ptr %flags.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %flags.i30.i.i, align 4
  %or4.i31.i.i = or i32 %340, 128
  store i32 %or4.i31.i.i, ptr %flags.i30.i.i, align 4
  %341 = ptrtoint ptr %dst.i28.i.i to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %dst.i28.i.i, align 2
  %l4_key.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 5
  %343 = ptrtoint ptr %l4_key.i.i.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %342, ptr %l4_key.i.i.i, align 4
  %dst7.i32.i.i = getelementptr inbounds %struct.anon.236, ptr %336, i32 0, i32 1
  %344 = ptrtoint ptr %dst7.i32.i.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %dst7.i32.i.i, align 2
  %l4_mask.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 6
  %346 = ptrtoint ptr %l4_mask.i.i.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %345, ptr %l4_mask.i.i.i, align 4
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then.i33.i.i, %if.then198.i.i.if.end9.i.i.i_crit_edge
  %347 = ptrtoint ptr %335 to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %335, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %348)
  %tobool11.not.i.i.i = icmp eq i16 %348, 0
  br i1 %tobool11.not.i.i.i, label %if.end9.i.i.i.ice_tc_set_port.exit.i.i_crit_edge, label %if.then12.i34.i.i

if.end9.i.i.i.ice_tc_set_port.exit.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_set_port.exit.i.i

if.then12.i34.i.i:                                ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags15.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %349 = ptrtoint ptr %flags15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %flags15.i.i.i, align 4
  %or19.i.i.i = or i32 %350, 256
  store i32 %or19.i.i.i, ptr %flags15.i.i.i, align 4
  %351 = ptrtoint ptr %335 to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %335, align 4
  %src_port.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 5, i32 1
  %353 = ptrtoint ptr %src_port.i.i.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %352, ptr %src_port.i.i.i, align 2
  %354 = ptrtoint ptr %336 to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %336, align 4
  %src_port27.i.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 6, i32 1
  %356 = ptrtoint ptr %src_port27.i.i.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 %355, ptr %src_port27.i.i.i, align 2
  br label %ice_tc_set_port.exit.i.i

ice_tc_set_port.exit.i.i:                         ; preds = %if.then12.i34.i.i, %if.end9.i.i.i.ice_tc_set_port.exit.i.i_crit_edge
  %l3_key204.i.i = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.1.i.i, i32 0, i32 3
  %357 = ptrtoint ptr %l3_key204.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %l3_key204.i.i, align 4
  %359 = zext i8 %358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %358, label %do.body207.i.i [
    i8 6, label %ice_tc_set_port.exit.i.i.cleanup216.i.i_crit_edge
    i8 17, label %ice_tc_set_port.exit.i.i.cleanup216.i.i_crit_edge66
  ]

ice_tc_set_port.exit.i.i.cleanup216.i.i_crit_edge66: ; preds = %ice_tc_set_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup216.i.i

ice_tc_set_port.exit.i.i.cleanup216.i.i_crit_edge: ; preds = %ice_tc_set_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup216.i.i

do.body207.i.i:                                   ; preds = %ice_tc_set_port.exit.i.i
  %360 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_parse_cls_flower.__msg.8) #8
  %tobool210.not.i.i = icmp eq ptr %361, null
  br i1 %tobool210.not.i.i, label %do.body207.i.i.cleanup216.thread.i.i_crit_edge, label %if.then211.i.i

do.body207.i.i.cleanup216.thread.i.i_crit_edge:   ; preds = %do.body207.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup216.thread.i.i

if.then211.i.i:                                   ; preds = %do.body207.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr @ice_parse_cls_flower.__msg.8, ptr %361, align 4
  br label %cleanup216.thread.i.i

cleanup216.thread.i.i:                            ; preds = %if.then211.i.i, %do.body207.i.i.cleanup216.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match199.i.i) #8
  br label %err14.i

cleanup216.i.i:                                   ; preds = %ice_tc_set_port.exit.i.i.cleanup216.i.i_crit_edge, %ice_tc_set_port.exit.i.i.cleanup216.i.i_crit_edge66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match199.i.i) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %cleanup216.i.i, %if.end196.i.i.if.end5.i_crit_edge
  %363 = ptrtoint ptr %rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %rule.i.i.i, align 8
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %364, i32 0, i32 1
  %classid.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 5
  %365 = ptrtoint ptr %classid.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %classid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %tobool.not.i36.i = icmp eq i32 %366, 0
  br i1 %tobool.not.i36.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  %367 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %vsi, align 128
  %and.i.i.i37.i = and i32 %366, 65535
  %sub.i.i.i.i = add nsw i32 %and.i.i.i37.i, -65504
  %num_tc.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %368, i32 0, i32 140
  %369 = ptrtoint ptr %num_tc.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %num_tc.i.i.i.i.i, align 4
  %conv.i.i.i.i.i = sext i16 %370 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %conv.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i.i, %conv.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i.i, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i.i)
  %cmp.i.i38.i = icmp slt i32 %spec.select.i.i.i.i, 0
  br i1 %cmp.i.i38.i, label %do.body.i.i.i, label %if.end2.i.i.i

do.body.i.i.i:                                    ; preds = %if.then.i.i
  %371 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_handle_tclass_action.__msg) #8
  %tobool.not.i.i39.i = icmp eq ptr %372, null
  br i1 %tobool.not.i.i39.i, label %do.body.i.i.i.err14.i_crit_edge, label %if.then1.i.i.i

do.body.i.i.i.err14.i_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then1.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr @ice_handle_tclass_action.__msg, ptr %372, align 4
  br label %err14.i

if.end2.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %spec.select.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.body5.i.i.i, label %if.end14.i.i.i

do.body5.i.i.i:                                   ; preds = %if.end2.i.i.i
  %374 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_handle_tclass_action.__msg.10) #8
  %tobool8.not.i.i.i = icmp eq ptr %375, null
  br i1 %tobool8.not.i.i.i, label %do.body5.i.i.i.err14.i_crit_edge, label %if.then9.i.i.i

do.body5.i.i.i.err14.i_crit_edge:                 ; preds = %do.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then9.i.i.i:                                   ; preds = %do.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr @ice_handle_tclass_action.__msg.10, ptr %375, align 4
  br label %err14.i

if.end14.i.i.i:                                   ; preds = %if.end2.i.i.i
  %all_enatc.i.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 74
  %377 = ptrtoint ptr %all_enatc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %all_enatc.i.i.i, align 16
  %conv.i.i40.i = zext i16 %378 to i32
  %shl.i.i.i = shl nuw i32 1, %spec.select.i.i.i.i
  %and.i.i41.i = and i32 %shl.i.i.i, %conv.i.i40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41.i)
  %tobool15.not.i.i.i = icmp eq i32 %and.i.i41.i, 0
  br i1 %tobool15.not.i.i.i, label %do.body17.i.i.i, label %if.end26.i.i.i

do.body17.i.i.i:                                  ; preds = %if.end14.i.i.i
  %379 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_handle_tclass_action.__msg.11) #8
  %tobool20.not.i.i.i = icmp eq ptr %380, null
  br i1 %tobool20.not.i.i.i, label %do.body17.i.i.i.err14.i_crit_edge, label %if.then21.i.i.i

do.body17.i.i.i.err14.i_crit_edge:                ; preds = %do.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then21.i.i.i:                                  ; preds = %do.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr @ice_handle_tclass_action.__msg.11, ptr %380, align 4
  br label %err14.i

if.end26.i.i.i:                                   ; preds = %if.end14.i.i.i
  %382 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %back, align 8
  %vsi.i.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %383, i32 0, i32 9
  %384 = ptrtoint ptr %vsi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %vsi.i.i.i.i, align 8
  %tobool.not.i.i.i42.i = icmp eq ptr %385, null
  br i1 %tobool.not.i.i.i42.i, label %if.end26.i.i.i.do.body32.i.i.i_crit_edge, label %ice_get_main_vsi.exit.i.i.i

if.end26.i.i.i.do.body32.i.i.i_crit_edge:         ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i.i.i

ice_get_main_vsi.exit.i.i.i:                      ; preds = %if.end26.i.i.i
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %385, align 4
  %tobool28.not.i.i43.i = icmp eq ptr %387, null
  br i1 %tobool28.not.i.i43.i, label %ice_get_main_vsi.exit.i.i.i.do.body32.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

ice_get_main_vsi.exit.i.i.i.do.body32.i.i.i_crit_edge: ; preds = %ice_get_main_vsi.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %ice_get_main_vsi.exit.i.i.i
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %387, align 128
  %tobool30.not.i.i.i = icmp eq ptr %389, null
  br i1 %tobool30.not.i.i.i, label %lor.lhs.false.i.i.i.do.body32.i.i.i_crit_edge, label %if.end41.i.i.i

lor.lhs.false.i.i.i.do.body32.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i.i.i

do.body32.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.do.body32.i.i.i_crit_edge, %ice_get_main_vsi.exit.i.i.i.do.body32.i.i.i_crit_edge, %if.end26.i.i.i.do.body32.i.i.i_crit_edge
  %390 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_handle_tclass_action.__msg.12) #8
  %tobool35.not.i.i.i = icmp eq ptr %391, null
  br i1 %tobool35.not.i.i.i, label %do.body32.i.i.i.err14.i_crit_edge, label %if.then36.i.i.i

do.body32.i.i.i.err14.i_crit_edge:                ; preds = %do.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then36.i.i.i:                                  ; preds = %do.body32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr @ice_handle_tclass_action.__msg.12, ptr %391, align 4
  br label %err14.i

if.end41.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %flags.i.i44.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 11
  %393 = ptrtoint ptr %flags.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %flags.i.i44.i, align 4
  %and42.i.i.i = and i32 %394, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %and42.i.i.i, 0
  %and45.i.i.i = and i32 %394, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i.i)
  %tobool46.not.i.i.i = icmp eq i32 %and45.i.i.i, 0
  %or.cond.i.i.i = or i1 %tobool43.not.i.i.i, %tobool46.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end57.i.i.i, label %do.body48.i.i.i

do.body48.i.i.i:                                  ; preds = %if.end41.i.i.i
  %395 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_handle_tclass_action.__msg.13) #8
  %tobool51.not.i.i.i = icmp eq ptr %396, null
  br i1 %tobool51.not.i.i.i, label %do.body48.i.i.i.err14.i_crit_edge, label %if.then52.i.i.i

do.body48.i.i.i.err14.i_crit_edge:                ; preds = %do.body48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then52.i.i.i:                                  ; preds = %do.body48.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr @ice_handle_tclass_action.__msg.13, ptr %396, align 4
  br label %err14.i

if.end57.i.i.i:                                   ; preds = %if.end41.i.i.i
  %and59.i.i.i = and i32 %394, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i.i)
  %tobool60.not.i.i.i = icmp eq i32 %and59.i.i.i, 0
  br i1 %tobool60.not.i.i.i, label %if.then61.i.i.i, label %if.end57.i.i.i.if.end67.i.i.i_crit_edge

if.end57.i.i.i.if.end67.i.i.i_crit_edge:          ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i.i.i

if.then61.i.i.i:                                  ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr.i.i.i = getelementptr inbounds %struct.net_device, ptr %389, i32 0, i32 86
  %398 = ptrtoint ptr %dev_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %dev_addr.i.i.i, align 64
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %399, align 4
  %402 = ptrtoint ptr %outer_headers.i.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %401, ptr %outer_headers.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %399, i32 4
  %403 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 0, i32 0, i32 4
  %405 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %404, ptr %add.ptr1.i.i.i.i, align 8
  %l2_mask.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %406 = call ptr @memset(ptr %l2_mask.i.i.i, i32 255, i32 6)
  %or.i.i45.i = or i32 %394, 1
  %407 = ptrtoint ptr %flags.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %or.i.i45.i, ptr %flags.i.i44.i, align 4
  br label %if.end67.i.i.i

if.end67.i.i.i:                                   ; preds = %if.then61.i.i.i, %if.end57.i.i.i.if.end67.i.i.i_crit_edge
  %back68.i.i.i = getelementptr inbounds %struct.ice_vsi, ptr %387, i32 0, i32 2
  %408 = ptrtoint ptr %back68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %back68.i.i.i, align 8
  %hw.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %409, i32 0, i32 58
  %idx.i.i.i = getelementptr inbounds %struct.ice_vsi, ptr %387, i32 0, i32 19
  %410 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %idx.i.i.i, align 2
  %call73.i.i.i = call zeroext i1 @ice_mac_fltr_exist(ptr noundef %hw.i.i.i, ptr noundef %outer_headers.i.i, i16 noundef zeroext %411) #8
  br i1 %call73.i.i.i, label %if.end84.i.i.i, label %do.body75.i.i.i

do.body75.i.i.i:                                  ; preds = %if.end67.i.i.i
  %412 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_handle_tclass_action.__msg.14) #8
  %tobool78.not.i.i.i = icmp eq ptr %413, null
  br i1 %tobool78.not.i.i.i, label %do.body75.i.i.i.err14.i_crit_edge, label %if.then79.i.i.i

do.body75.i.i.i.err14.i_crit_edge:                ; preds = %do.body75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then79.i.i.i:                                  ; preds = %do.body75.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr @ice_handle_tclass_action.__msg.14, ptr %413, align 4
  br label %err14.i

if.end84.i.i.i:                                   ; preds = %if.end67.i.i.i
  %415 = ptrtoint ptr %flags.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %flags.i.i44.i, align 4
  %and86.i.i.i = and i32 %416, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i.i)
  %tobool87.not.i.i.i = icmp eq i32 %and86.i.i.i, 0
  br i1 %tobool87.not.i.i.i, label %if.end84.i.i.i.if.end106.i.i.i_crit_edge, label %if.then88.i.i.i

if.end84.i.i.i.if.end106.i.i.i_crit_edge:         ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i.i.i

if.then88.i.i.i:                                  ; preds = %if.end84.i.i.i
  %vlan_hdr.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %417 = ptrtoint ptr %vlan_hdr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %vlan_hdr.i.i.i, align 8
  %419 = ptrtoint ptr %back68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %back68.i.i.i, align 8
  %hw92.i.i.i = getelementptr inbounds %struct.ice_pf, ptr %420, i32 0, i32 58
  %421 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %idx.i.i.i, align 2
  %call94.i.i.i = call zeroext i1 @ice_vlan_fltr_exist(ptr noundef %hw92.i.i.i, i16 noundef zeroext %418, i16 noundef zeroext %422) #8
  br i1 %call94.i.i.i, label %if.then88.i.i.i.if.end106.i.i.i_crit_edge, label %do.body96.i.i.i

if.then88.i.i.i.if.end106.i.i.i_crit_edge:        ; preds = %if.then88.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i.i.i

do.body96.i.i.i:                                  ; preds = %if.then88.i.i.i
  %423 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_handle_tclass_action.__msg.15) #8
  %tobool99.not.i.i.i = icmp eq ptr %424, null
  br i1 %tobool99.not.i.i.i, label %do.body96.i.i.i.err14.i_crit_edge, label %if.then100.i.i.i

do.body96.i.i.i.err14.i_crit_edge:                ; preds = %do.body96.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then100.i.i.i:                                 ; preds = %do.body96.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr @ice_handle_tclass_action.__msg.15, ptr %424, align 4
  br label %err14.i

if.end106.i.i.i:                                  ; preds = %if.then88.i.i.i.if.end106.i.i.i_crit_edge, %if.end84.i.i.i.if.end106.i.i.i_crit_edge
  %action.i.i46.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 13
  %fltr_act.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %426 = ptrtoint ptr %fltr_act.i.i.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 0, ptr %fltr_act.i.i.i, align 8
  %427 = ptrtoint ptr %action.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %spec.select.i.i.i.i, ptr %action.i.i46.i, align 4
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.end5.i
  %428 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %429)
  %tobool.i.not.i47.i = icmp eq i32 %429, 0
  br i1 %tobool.i.not.i47.i, label %if.end.i.i.err14.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.err14.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %364, i32 1
  %fltr_act.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %direction8.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 6
  %dest_vsi.i.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %call7.i.i.i, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.048.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %act.047.i.i = phi ptr [ %entries.i.i, %for.body.lr.ph.i.i ], [ %arrayidx20.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %430 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %back, align 8
  %call5.i.i = call zeroext i1 @ice_is_eswitch_mode_switchdev(ptr noundef %431) #8
  %432 = ptrtoint ptr %act.047.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %act.047.i.i, align 8
  br i1 %call5.i.i, label %if.then6.i.i, label %if.end11.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i
  %434 = zext i32 %433 to i64
  call void @__sanitizer_cov_trace_switch(i64 %434, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %433, label %do.body13.i.i.i [
    i32 1, label %sw.bb.i.i.i
    i32 4, label %sw.bb1.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %435 = ptrtoint ptr %fltr_act.i.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 4, ptr %fltr_act.i.i, align 8
  br label %for.inc.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then6.i.i
  %436 = ptrtoint ptr %fltr_act.i.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 0, ptr %fltr_act.i.i, align 8
  %437 = getelementptr inbounds %struct.flow_action_entry, ptr %act.047.i.i, i32 0, i32 5
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 8
  %call.i.i.i = call zeroext i1 @ice_is_port_repr_netdev(ptr noundef %439) #8
  %440 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %437, align 8
  br i1 %call.i.i.i, label %if.then.i.i49.i, label %if.else.i.i.i

if.then.i.i49.i:                                  ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i.i = call ptr @ice_netdev_to_repr(ptr noundef %441) #8
  %442 = ptrtoint ptr %call4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %call4.i.i.i, align 4
  %444 = ptrtoint ptr %dest_vsi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %443, ptr %dest_vsi.i.i.i, align 4
  %445 = ptrtoint ptr %direction8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 0, ptr %direction8.i.i.i, align 8
  br label %for.inc.i.i

if.else.i.i.i:                                    ; preds = %sw.bb1.i.i.i
  %call5.i.i.i = call zeroext i1 @netif_is_ice(ptr noundef %441) #8
  br i1 %call5.i.i.i, label %if.else.i.i.i.if.then7.i.i.i_crit_edge, label %lor.lhs.false.i39.i.i

if.else.i.i.i.if.then7.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

lor.lhs.false.i39.i.i:                            ; preds = %if.else.i.i.i
  %446 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %437, align 8
  %rtnl_link_ops.i.i.i.i.i50.i = getelementptr inbounds %struct.net_device, ptr %447, i32 0, i32 136
  %448 = ptrtoint ptr %rtnl_link_ops.i.i.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %rtnl_link_ops.i.i.i.i.i50.i, align 4
  %tobool.not.i.i.i.i.i51.i = icmp eq ptr %449, null
  br i1 %tobool.not.i.i.i.i.i51.i, label %lor.lhs.false.i39.i.i.do.body.i42.i.i_crit_edge, label %netif_is_vxlan.exit.i.i.i.i55.i

lor.lhs.false.i39.i.i.do.body.i42.i.i_crit_edge:  ; preds = %lor.lhs.false.i39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i42.i.i

netif_is_vxlan.exit.i.i.i.i55.i:                  ; preds = %lor.lhs.false.i39.i.i
  %kind.i.i.i.i.i52.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %449, i32 0, i32 1
  %450 = ptrtoint ptr %kind.i.i.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %kind.i.i.i.i.i52.i, align 4
  %call.i.i.i.i.i53.i = call i32 @strcmp(ptr noundef %451, ptr noundef nonnull dereferenceable(6) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i53.i)
  %tobool2.not.i.i.i.i.i54.i = icmp eq i32 %call.i.i.i.i.i53.i, 0
  br i1 %tobool2.not.i.i.i.i.i54.i, label %netif_is_vxlan.exit.i.i.i.i55.i.if.then7.i.i.i_crit_edge, label %netif_is_geneve.exit.i.i.i.i58.i

netif_is_vxlan.exit.i.i.i.i55.i.if.then7.i.i.i_crit_edge: ; preds = %netif_is_vxlan.exit.i.i.i.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

netif_is_geneve.exit.i.i.i.i58.i:                 ; preds = %netif_is_vxlan.exit.i.i.i.i55.i
  %call.i14.i.i.i.i56.i = call i32 @strcmp(ptr noundef %451, ptr noundef nonnull dereferenceable(7) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i.i.i.i56.i)
  %tobool2.not.i15.i.i.i.i57.i = icmp eq i32 %call.i14.i.i.i.i56.i, 0
  br i1 %tobool2.not.i15.i.i.i.i57.i, label %netif_is_geneve.exit.i.i.i.i58.i.if.then7.i.i.i_crit_edge, label %netif_is_gretap.exit.i.i.i.i61.i

netif_is_geneve.exit.i.i.i.i58.i.if.then7.i.i.i_crit_edge: ; preds = %netif_is_geneve.exit.i.i.i.i58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

netif_is_gretap.exit.i.i.i.i61.i:                 ; preds = %netif_is_geneve.exit.i.i.i.i58.i
  %call.i20.i.i.i.i59.i = call i32 @strcmp(ptr noundef %451, ptr noundef nonnull dereferenceable(7) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i.i59.i)
  %tobool2.not.i21.i.i.i.i60.i = icmp eq i32 %call.i20.i.i.i.i59.i, 0
  br i1 %tobool2.not.i21.i.i.i.i60.i, label %netif_is_gretap.exit.i.i.i.i61.i.if.then7.i.i.i_crit_edge, label %ice_is_tunnel_supported.exit.i.i64.i

netif_is_gretap.exit.i.i.i.i61.i.if.then7.i.i.i_crit_edge: ; preds = %netif_is_gretap.exit.i.i.i.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

ice_is_tunnel_supported.exit.i.i64.i:             ; preds = %netif_is_gretap.exit.i.i.i.i61.i
  %call.i26.i.i.i.i62.i = call i32 @strcmp(ptr noundef %451, ptr noundef nonnull dereferenceable(10) @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i.i62.i)
  %tobool2.not.i27.i.i.i.i63.i = icmp eq i32 %call.i26.i.i.i.i62.i, 0
  br i1 %tobool2.not.i27.i.i.i.i63.i, label %ice_is_tunnel_supported.exit.i.i64.i.if.then7.i.i.i_crit_edge, label %ice_is_tunnel_supported.exit.i.i64.i.do.body.i42.i.i_crit_edge

ice_is_tunnel_supported.exit.i.i64.i.do.body.i42.i.i_crit_edge: ; preds = %ice_is_tunnel_supported.exit.i.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i42.i.i

ice_is_tunnel_supported.exit.i.i64.i.if.then7.i.i.i_crit_edge: ; preds = %ice_is_tunnel_supported.exit.i.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %ice_is_tunnel_supported.exit.i.i64.i.if.then7.i.i.i_crit_edge, %netif_is_gretap.exit.i.i.i.i61.i.if.then7.i.i.i_crit_edge, %netif_is_geneve.exit.i.i.i.i58.i.if.then7.i.i.i_crit_edge, %netif_is_vxlan.exit.i.i.i.i55.i.if.then7.i.i.i_crit_edge, %if.else.i.i.i.if.then7.i.i.i_crit_edge
  %452 = ptrtoint ptr %direction8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 1, ptr %direction8.i.i.i, align 8
  br label %for.inc.i.i

do.body.i42.i.i:                                  ; preds = %ice_is_tunnel_supported.exit.i.i64.i.do.body.i42.i.i_crit_edge, %lor.lhs.false.i39.i.i.do.body.i42.i.i_crit_edge
  %453 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_tc_parse_action.__msg) #8
  %tobool.not.i41.i.i = icmp eq ptr %454, null
  br i1 %tobool.not.i41.i.i, label %do.body.i42.i.i.err14.i_crit_edge, label %if.then10.i.i.i

do.body.i42.i.i.err14.i_crit_edge:                ; preds = %do.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then10.i.i.i:                                  ; preds = %do.body.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr @ice_eswitch_tc_parse_action.__msg, ptr %454, align 4
  br label %err14.i

do.body13.i.i.i:                                  ; preds = %if.then6.i.i
  %456 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_tc_parse_action.__msg.16) #8
  %tobool16.not.i.i.i = icmp eq ptr %457, null
  br i1 %tobool16.not.i.i.i, label %do.body13.i.i.i.err14.i_crit_edge, label %if.then17.i.i.i

do.body13.i.i.i.err14.i_crit_edge:                ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then17.i.i.i:                                  ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr @ice_eswitch_tc_parse_action.__msg.16, ptr %457, align 4
  br label %err14.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %433)
  %cmp12.i.i = icmp eq i32 %433, 1
  br i1 %cmp12.i.i, label %do.body.i67.i, label %if.end17.i.i

do.body.i67.i:                                    ; preds = %if.end11.i.i
  %459 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %extack2.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_parse_tc_flower_actions.__msg) #8
  %tobool14.not.i66.i = icmp eq ptr %460, null
  br i1 %tobool14.not.i66.i, label %do.body.i67.i.err14.i_crit_edge, label %if.then15.i68.i

do.body.i67.i.err14.i_crit_edge:                  ; preds = %do.body.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

if.then15.i68.i:                                  ; preds = %do.body.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  %461 = ptrtoint ptr %460 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr @ice_parse_tc_flower_actions.__msg, ptr %460, align 4
  br label %err14.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %462 = ptrtoint ptr %fltr_act.i.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 0, ptr %fltr_act.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end17.i.i, %if.then7.i.i.i, %if.then.i.i49.i, %sw.bb.i.i.i
  %inc.i.i = add nuw i32 %i.048.i.i, 1
  %arrayidx20.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i.i
  %463 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %action.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %464
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end9.i_crit_edge

for.inc.i.i.if.end9.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end9.i:                                        ; preds = %for.inc.i.i.if.end9.i_crit_edge, %if.end106.i.i.i
  %call10.i = call fastcc i32 @ice_add_switch_fltr(ptr noundef %vsi, ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.err14.i_crit_edge, label %if.end37

if.end9.i.err14.i_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err14.i

err14.i:                                          ; preds = %if.end9.i.err14.i_crit_edge, %if.then15.i68.i, %do.body.i67.i.err14.i_crit_edge, %if.then17.i.i.i, %do.body13.i.i.i.err14.i_crit_edge, %if.then10.i.i.i, %do.body.i42.i.i.err14.i_crit_edge, %if.end.i.i.err14.i_crit_edge, %if.then100.i.i.i, %do.body96.i.i.i.err14.i_crit_edge, %if.then79.i.i.i, %do.body75.i.i.i.err14.i_crit_edge, %if.then52.i.i.i, %do.body48.i.i.i.err14.i_crit_edge, %if.then36.i.i.i, %do.body32.i.i.i.err14.i_crit_edge, %if.then21.i.i.i, %do.body17.i.i.i.err14.i_crit_edge, %if.then9.i.i.i, %do.body5.i.i.i.err14.i_crit_edge, %if.then1.i.i.i, %do.body.i.i.i.err14.i_crit_edge, %cleanup216.thread.i.i, %if.then187.i.i.err14.i_crit_edge, %cleanup159.i.i, %if.then29.i.i, %do.body25.i.i.err14.i_crit_edge, %if.then15.i.i, %do.body11.i.i.err14.i_crit_edge, %if.then3.i.i, %do.body.i.i.err14.i_crit_edge
  %err.0.i = phi i32 [ %call10.i, %if.end9.i.err14.i_crit_edge ], [ -22, %do.body11.i.i.err14.i_crit_edge ], [ -22, %if.then15.i.i ], [ -22, %cleanup216.thread.i.i ], [ -95, %do.body25.i.i.err14.i_crit_edge ], [ -95, %if.then29.i.i ], [ -95, %do.body.i.i.err14.i_crit_edge ], [ -95, %if.then3.i.i ], [ -22, %cleanup159.i.i ], [ -22, %if.then187.i.i.err14.i_crit_edge ], [ -22, %do.body13.i.i.i.err14.i_crit_edge ], [ -22, %if.then17.i.i.i ], [ -22, %do.body.i42.i.i.err14.i_crit_edge ], [ -22, %if.then10.i.i.i ], [ -22, %do.body96.i.i.i.err14.i_crit_edge ], [ -22, %if.then100.i.i.i ], [ -22, %do.body75.i.i.i.err14.i_crit_edge ], [ -22, %if.then79.i.i.i ], [ -95, %do.body48.i.i.i.err14.i_crit_edge ], [ -95, %if.then52.i.i.i ], [ -22, %do.body32.i.i.i.err14.i_crit_edge ], [ -22, %if.then36.i.i.i ], [ -22, %do.body17.i.i.i.err14.i_crit_edge ], [ -22, %if.then21.i.i.i ], [ -22, %do.body5.i.i.i.err14.i_crit_edge ], [ -22, %if.then9.i.i.i ], [ -22, %do.body.i.i.i.err14.i_crit_edge ], [ -22, %if.then1.i.i.i ], [ -22, %do.body.i67.i.err14.i_crit_edge ], [ -22, %if.then15.i68.i ], [ -22, %if.end.i.i.err14.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end9.i
  %465 = ptrtoint ptr %tc_flower_fltr_list.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %tc_flower_fltr_list.i, align 4
  %467 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store volatile ptr %466, ptr %call7.i.i.i, align 8
  %tobool.not.i60 = icmp eq ptr %466, null
  br i1 %tobool.not.i60, label %if.end37.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end37.hlist_add_head.exit_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %466, i32 0, i32 1
  %468 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store volatile ptr %call7.i.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end37.hlist_add_head.exit_crit_edge
  %469 = ptrtoint ptr %tc_flower_fltr_list.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store volatile ptr %call7.i.i.i, ptr %tc_flower_fltr_list.i, align 4
  %470 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store volatile ptr %tc_flower_fltr_list.i, ptr %pprev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %err14.i, %if.end33.cleanup_crit_edge, %if.then28, %do.body25.cleanup_crit_edge, %if.then18, %do.body.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_add_head.exit ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then18 ], [ -22, %if.then15.cleanup_crit_edge ], [ -17, %if.then28 ], [ -17, %do.body25.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ], [ %err.0.i, %err14.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_reset_in_progress(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_port_repr_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_del_cls_flower(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %cls_flower) local_unnamed_addr #1 align 64 {
entry:
  %rule_rem.i = alloca %struct.ice_rule_query_data, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %tc_flower_fltr_list.i = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 70
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fltr.0.in.i = phi ptr [ %tc_flower_fltr_list.i, %entry ], [ %fltr.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %fltr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %fltr.0.i = load ptr, ptr %fltr.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %fltr.0.i, null
  br i1 %tobool2.not.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %cookie3.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %cookie3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie3.i, align 4
  %cmp.i = icmp eq i32 %6, %3
  br i1 %cmp.i, label %if.end9, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then:                                          ; preds = %for.cond.i
  %flags = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.then
  %10 = ptrtoint ptr %tc_flower_fltr_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %tc_flower_fltr_list.i, align 4
  %tobool.not.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.then.do.body_crit_edge
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 3
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_del_cls_flower.__msg) #8
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ice_del_cls_flower.__msg, ptr %13, align 4
  br label %cleanup

if.end9:                                          ; preds = %for.body.i
  %extack11 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 3
  %15 = ptrtoint ptr %extack11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack11, align 4
  %extack12 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 14
  %17 = ptrtoint ptr %extack12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %extack12, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rule_rem.i) #8
  %18 = getelementptr inbounds %struct.ice_rule_query_data, ptr %rule_rem.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ice_rule_query_data, ptr %rule_rem.i, i32 0, i32 2
  %20 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %back, align 8
  %rid.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %rid.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rid.i, align 4
  %24 = ptrtoint ptr %rule_rem.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %rule_rem.i, align 2
  %rule_id.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 3
  %25 = ptrtoint ptr %rule_id.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rule_id.i, align 2
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %18, align 2
  %dest_id.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 4
  %28 = ptrtoint ptr %dest_id.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dest_id.i, align 4
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %19, align 2
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %21, i32 0, i32 58
  %call.i = call i32 @ice_rem_adv_rule_by_id(ptr noundef %hw.i, ptr noundef nonnull %rule_rem.i) #8
  %31 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call.i, label %do.body7.i [
    i32 0, label %if.end16.i
    i32 -2, label %do.body.i
  ]

do.body.i:                                        ; preds = %if.end9
  %32 = ptrtoint ptr %extack12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %extack12, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_del_tc_fltr.__msg) #8
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %do.body.i.ice_del_tc_fltr.exit_crit_edge, label %if.then5.i

do.body.i.ice_del_tc_fltr.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_del_tc_fltr.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ice_del_tc_fltr.__msg, ptr %33, align 4
  br label %ice_del_tc_fltr.exit

do.body7.i:                                       ; preds = %if.end9
  %35 = ptrtoint ptr %extack12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extack12, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_del_tc_fltr.__msg.17) #8
  %tobool10.not.i = icmp eq ptr %36, null
  br i1 %tobool10.not.i, label %do.body7.i.ice_del_tc_fltr.exit_crit_edge, label %if.then11.i

do.body7.i.ice_del_tc_fltr.exit_crit_edge:        ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_del_tc_fltr.exit

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ice_del_tc_fltr.__msg.17, ptr %36, align 4
  br label %ice_del_tc_fltr.exit

if.end16.i:                                       ; preds = %if.end9
  %dest_vsi.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 5
  %38 = ptrtoint ptr %dest_vsi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dest_vsi.i, align 4
  %tobool17.not.i = icmp eq ptr %39, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end16_crit_edge, label %if.then18.i

if.end16.i.if.end16_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then18.i:                                      ; preds = %if.end16.i
  %type.i = getelementptr inbounds %struct.ice_vsi, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp20.i = icmp eq i32 %41, 4
  br i1 %cmp20.i, label %if.then21.i, label %if.then18.i.if.end16_crit_edge

if.then18.i.if.end16_crit_edge:                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then21.i:                                      ; preds = %if.then18.i
  %num_chnl_fltr.i = getelementptr inbounds %struct.ice_vsi, ptr %39, i32 0, i32 71
  %42 = ptrtoint ptr %num_chnl_fltr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_chnl_fltr.i, align 2
  %dec.i = add i16 %43, -1
  store i16 %dec.i, ptr %num_chnl_fltr.i, align 2
  %type23.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %44 = ptrtoint ptr %type23.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp24.i = icmp eq i32 %45, 0
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.then21.i.if.end16_crit_edge

if.then21.i.if.end16_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true.i:                                  ; preds = %if.then21.i
  %flags.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.0.i, i32 0, i32 11
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %47, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.if.end16_crit_edge, label %if.then26.i

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_dmac_chnl_fltrs.i = getelementptr inbounds %struct.ice_pf, ptr %21, i32 0, i32 69
  %48 = ptrtoint ptr %num_dmac_chnl_fltrs.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_dmac_chnl_fltrs.i, align 4
  %dec27.i = add i16 %49, -1
  store i16 %dec27.i, ptr %num_dmac_chnl_fltrs.i, align 4
  br label %if.end16

ice_del_tc_fltr.exit:                             ; preds = %if.then11.i, %do.body7.i.ice_del_tc_fltr.exit_crit_edge, %if.then5.i, %do.body.i.ice_del_tc_fltr.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %if.then5.i ], [ -2, %do.body.i.ice_del_tc_fltr.exit_crit_edge ], [ -5, %if.then11.i ], [ -5, %do.body7.i.ice_del_tc_fltr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rule_rem.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.then26.i, %land.lhs.true.i.if.end16_crit_edge, %if.then21.i.if.end16_crit_edge, %if.then18.i.if.end16_crit_edge, %if.end16.i.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rule_rem.i) #8
  %50 = ptrtoint ptr %fltr.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fltr.0.i, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %fltr.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pprev2.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %51, ptr %53, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.end16.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end16.hlist_del.exit_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end16.hlist_del.exit_crit_edge
  %56 = ptrtoint ptr %fltr.0.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %fltr.0.i, align 4
  %57 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @kfree(ptr noundef nonnull %fltr.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %hlist_del.exit, %ice_del_tc_fltr.exit, %if.then7, %do.body.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_del.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then7 ], [ -22, %do.body.cleanup_crit_edge ], [ %retval.0.i, %ice_del_tc_fltr.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_replay_tc_fltrs(ptr nocapture noundef readonly %pf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_flower_fltr_list = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 70
  %0 = ptrtoint ptr %tc_flower_fltr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_flower_fltr_list, align 8
  %tobool2.not22 = icmp eq ptr %1, null
  br i1 %tobool2.not22, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %fltr.023 = phi ptr [ %3, %land.rhs.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %fltr.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fltr.023, align 4
  %extack = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.023, i32 0, i32 14
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %extack, align 4
  %src_vsi = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr.023, i32 0, i32 9
  %5 = ptrtoint ptr %src_vsi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src_vsi, align 4
  %call = tail call fastcc i32 @ice_add_switch_fltr(ptr noundef %6, ptr noundef nonnull %fltr.023)
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_switch_fltr(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %fltr) unnamed_addr #1 align 64 {
entry:
  %rule_info.i = alloca %struct.ice_adv_rule_info, align 4
  %rule_added.i = alloca %struct.ice_rule_query_data, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fltr_act = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fltr_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %2 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back, align 8
  %call = tail call zeroext i1 @ice_is_eswitch_mode_switchdev(ptr noundef %3) #8
  br i1 %call, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rule_info.i) #8
  %4 = call ptr @memset(ptr %rule_info.i, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rule_added.i) #8
  %5 = ptrtoint ptr %rule_added.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %rule_added.i, align 2, !annotation !90
  %6 = getelementptr inbounds %struct.ice_rule_query_data, ptr %rule_added.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !90
  %8 = getelementptr inbounds %struct.ice_rule_query_data, ptr %rule_added.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %8, align 2, !annotation !90
  %10 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %back, align 8
  %hw1.i = getelementptr inbounds %struct.ice_pf, ptr %11, i32 0, i32 58
  %flags2.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 11
  %12 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp ne i32 %13, 0
  %and.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.then1
  %extack.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 14
  %14 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extack.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_add_tc_fltr.__msg) #8
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %do.body.i.ice_eswitch_add_tc_fltr.exit_crit_edge, label %if.then5.i

do.body.i.ice_eswitch_add_tc_fltr.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_add_tc_fltr.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ice_eswitch_add_tc_fltr.__msg, ptr %15, align 4
  br label %ice_eswitch_add_tc_fltr.exit

if.end6.i:                                        ; preds = %if.then1
  %and.i.i = lshr i32 %13, 9
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and1.i.i = and i32 %13, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %inc4.i.i = zext i1 %tobool2.not.i.i to i32
  %and6.i.i = lshr i32 %13, 14
  %and6.lobit.i.i = and i32 %and6.i.i, 1
  %lkups_cnt.1.i.i = add nuw nsw i32 %and6.lobit.i.i, %and.lobit.i.i
  %lkups_cnt.2.i.i = add nuw nsw i32 %lkups_cnt.1.i.i, %inc4.i.i
  %and11.i.i = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end6.i.ice_tc_count_lkups.exit.i_crit_edge, label %land.lhs.true.i.i

if.end6.i.ice_tc_count_lkups.exit.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_count_lkups.exit.i

land.lhs.true.i.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %tunnel_type.i.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 12
  %17 = ptrtoint ptr %tunnel_type.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tunnel_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp.i.i = icmp eq i8 %18, -1
  %inc15.i.i = zext i1 %cmp.i.i to i32
  %spec.select1.i.i = add nuw nsw i32 %lkups_cnt.2.i.i, %inc15.i.i
  br label %ice_tc_count_lkups.exit.i

ice_tc_count_lkups.exit.i:                        ; preds = %land.lhs.true.i.i, %if.end6.i.ice_tc_count_lkups.exit.i_crit_edge
  %lkups_cnt.3.i.i = phi i32 [ %lkups_cnt.2.i.i, %if.end6.i.ice_tc_count_lkups.exit.i_crit_edge ], [ %spec.select1.i.i, %land.lhs.true.i.i ]
  %and17.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp ne i32 %and17.i.i, 0
  %inc20.i.i = zext i1 %tobool18.not.i.i to i32
  %and22.i.i = lshr i32 %13, 2
  %and22.lobit.i.i = and i32 %and22.i.i, 1
  %and27.i.i = and i32 %13, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp ne i32 %and27.i.i, 0
  %inc30.i.i = zext i1 %tobool28.not.i.i to i32
  %and32.i.i = and i32 %13, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp ne i32 %and32.i.i, 0
  %inc35.i.i = zext i1 %tobool33.not.i.i to i32
  %spec.select2.i.i = add nuw nsw i32 %and22.lobit.i.i, %inc20.i.i
  %lkups_cnt.5.i.i = add nuw nsw i32 %spec.select2.i.i, %inc30.i.i
  %lkups_cnt.6.i.i = add nuw nsw i32 %lkups_cnt.5.i.i, %inc35.i.i
  %lkups_cnt.7.i.i = add nuw nsw i32 %lkups_cnt.6.i.i, %lkups_cnt.3.i.i
  %19 = mul nuw nsw i32 %lkups_cnt.7.i.i, 84
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 2848) #13
  %tobool8.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool8.not.i, label %ice_tc_count_lkups.exit.i.ice_eswitch_add_tc_fltr.exit_crit_edge, label %if.end10.i

ice_tc_count_lkups.exit.i.ice_eswitch_add_tc_fltr.exit_crit_edge: ; preds = %ice_tc_count_lkups.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_eswitch_add_tc_fltr.exit

if.end10.i:                                       ; preds = %ice_tc_count_lkups.exit.i
  %call11.i = call fastcc i32 @ice_tc_fill_rules(i32 noundef %13, ptr noundef %fltr, ptr noundef nonnull %call8.i.i.i, ptr noundef nonnull %rule_info.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %lkups_cnt.7.i.i)
  %cmp.not.i = icmp eq i32 %call11.i, %lkups_cnt.7.i.i
  br i1 %cmp.not.i, label %if.end13.i, label %if.end10.i.exit.i_crit_edge

if.end10.i.exit.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end13.i:                                       ; preds = %if.end10.i
  %direction.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 6
  %20 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp14.i = icmp eq i32 %21, 1
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.if.end17.i_crit_edge

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %back, align 8
  %uplink_vsi.i = getelementptr inbounds %struct.ice_pf, ptr %23, i32 0, i32 75, i32 1
  %24 = ptrtoint ptr %uplink_vsi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uplink_vsi.i, align 4
  %dest_vsi.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 5
  %26 = ptrtoint ptr %dest_vsi.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dest_vsi.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end17.i_crit_edge
  %27 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fltr_act, align 4
  %sw_act.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 1
  %fltr_act18.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %fltr_act18.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fltr_act18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp21.not.i = icmp eq i32 %28, 4
  br i1 %cmp21.not.i, label %if.end17.i.if.end25.i_crit_edge, label %if.then22.i

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %dest_vsi23.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 5
  %30 = ptrtoint ptr %dest_vsi23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dest_vsi23.i, align 4
  %idx.i = getelementptr inbounds %struct.ice_vsi, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idx.i, align 2
  %vsi_handle.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %vsi_handle.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %vsi_handle.i, align 2
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end25.i_crit_edge
  %priority.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 2
  %35 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp27.i = icmp eq i32 %21, 0
  %flag.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flag.i, align 2
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = or i16 %37, 1
  %39 = ptrtoint ptr %flag.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %flag.i, align 2
  %pf_id.i = getelementptr inbounds %struct.ice_pf, ptr %11, i32 0, i32 58, i32 13
  %40 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pf_id.i, align 1
  %conv31.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %sw_act.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv31.i, ptr %sw_act.i, align 4
  br label %if.end43.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = or i16 %37, 2
  %44 = ptrtoint ptr %flag.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %flag.i, align 2
  %idx38.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %45 = ptrtoint ptr %idx38.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %idx38.i, align 2
  %47 = ptrtoint ptr %sw_act.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %sw_act.i, align 4
  %flags_info.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 5
  %48 = ptrtoint ptr %flags_info.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %flags_info.i, align 4
  %act_valid.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %act_valid.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %act_valid.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %if.then28.i
  %.sink.i = phi i8 [ 1, %if.then28.i ], [ 0, %if.else.i ]
  %50 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 3
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink.i, ptr %50, align 4
  %cookie.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 1
  %52 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cookie.i, align 4
  %conv44.i = trunc i32 %53 to i16
  %fltr_rule_id.i = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info.i, i32 0, i32 4
  %54 = ptrtoint ptr %fltr_rule_id.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv44.i, ptr %fltr_rule_id.i, align 2
  %conv45.i = trunc i32 %lkups_cnt.7.i.i to i16
  %call46.i = call i32 @ice_add_adv_rule(ptr noundef %hw1.i, ptr noundef nonnull %call8.i.i.i, i16 noundef zeroext %conv45.i, ptr noundef nonnull %rule_info.i, ptr noundef nonnull %rule_added.i) #8
  %55 = zext i32 %call46.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call46.i, label %do.body62.i [
    i32 -17, label %do.body50.i
    i32 0, label %if.end72.i
  ]

do.body50.i:                                      ; preds = %if.end43.i
  %extack52.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 14
  %56 = ptrtoint ptr %extack52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %extack52.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_add_tc_fltr.__msg.18) #8
  %tobool53.not.i = icmp eq ptr %57, null
  br i1 %tobool53.not.i, label %do.body50.i.exit.i_crit_edge, label %if.then54.i

do.body50.i.exit.i_crit_edge:                     ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then54.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ice_eswitch_add_tc_fltr.__msg.18, ptr %57, align 4
  br label %exit.i

do.body62.i:                                      ; preds = %if.end43.i
  %extack64.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 14
  %59 = ptrtoint ptr %extack64.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %extack64.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_eswitch_add_tc_fltr.__msg.19) #8
  %tobool65.not.i = icmp eq ptr %60, null
  br i1 %tobool65.not.i, label %do.body62.i.exit.i_crit_edge, label %if.then66.i

do.body62.i.exit.i_crit_edge:                     ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then66.i:                                      ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ice_eswitch_add_tc_fltr.__msg.19, ptr %60, align 4
  br label %exit.i

if.end72.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %rule_added.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %rule_added.i, align 2
  %rid73.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 2
  %64 = ptrtoint ptr %rid73.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %rid73.i, align 4
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %6, align 2
  %rule_id74.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 3
  %67 = ptrtoint ptr %rule_id74.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %rule_id74.i, align 2
  br label %exit.i

exit.i:                                           ; preds = %if.end72.i, %if.then66.i, %do.body62.i.exit.i_crit_edge, %if.then54.i, %do.body50.i.exit.i_crit_edge, %if.end10.i.exit.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end72.i ], [ -22, %if.end10.i.exit.i_crit_edge ], [ -22, %if.then54.i ], [ -22, %do.body50.i.exit.i_crit_edge ], [ %call46.i, %if.then66.i ], [ %call46.i, %do.body62.i.exit.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #8
  br label %ice_eswitch_add_tc_fltr.exit

ice_eswitch_add_tc_fltr.exit:                     ; preds = %exit.i, %ice_tc_count_lkups.exit.i.ice_eswitch_add_tc_fltr.exit_crit_edge, %if.then5.i, %do.body.i.ice_eswitch_add_tc_fltr.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %exit.i ], [ -95, %if.then5.i ], [ -95, %do.body.i.ice_eswitch_add_tc_fltr.exit_crit_edge ], [ -12, %ice_tc_count_lkups.exit.i.ice_eswitch_add_tc_fltr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rule_added.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rule_info.i) #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i32 @ice_add_tc_flower_adv_fltr(ptr noundef %vsi, ptr noundef %fltr)
  br label %return

return:                                           ; preds = %if.end3, %ice_eswitch_add_tc_fltr.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ice_eswitch_add_tc_fltr.exit ], [ %call4, %if.end3 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_tc_set_ipv6(ptr nocapture noundef readonly %match, ptr nocapture noundef %fltr, ptr nocapture noundef writeonly %headers, i1 noundef zeroext %is_encap) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match, align 4
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %arrayidx2.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %5, %3
  %arrayidx4.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %7
  %arrayidx7.i = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %xor.i = xor i32 %9, 1
  %or8.i = or i32 %or5.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %arrayidx2.i99 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i99 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i99, align 4
  %or.i100 = or i32 %13, %11
  %arrayidx4.i101 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx4.i101 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i101, align 4
  %or5.i102 = or i32 %or.i100, %15
  %arrayidx7.i103 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx7.i103 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i103, align 4
  %xor.i104 = xor i32 %17, 1
  %or8.i105 = or i32 %or5.i102, %xor.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i105)
  %cmp.i106 = icmp eq i32 %or8.i105, 0
  br i1 %cmp.i106, label %lor.lhs.false.do.body_crit_edge, label %if.end4

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %extack = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 14
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_tc_set_ipv6.__msg) #8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ice_tc_set_ipv6.__msg, ptr %19, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %mask = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match, i32 0, i32 1
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mask, align 4
  %dst5 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dst5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst5, align 4
  %arrayidx2.i107 = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %22, i32 0, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx2.i107 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i107, align 4
  %or.i108 = or i32 %26, %24
  %arrayidx4.i109 = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %22, i32 0, i32 1, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx4.i109 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i109, align 4
  %or5.i110 = or i32 %or.i108, %28
  %arrayidx7.i111 = getelementptr %struct.flow_dissector_key_ipv6_addrs, ptr %22, i32 0, i32 1, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx7.i111 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.i111, align 4
  %or8.i112 = or i32 %or5.i110, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i112)
  %cmp.i113 = icmp eq i32 %or8.i112, 0
  br i1 %cmp.i113, label %land.lhs.true, label %if.then24

land.lhs.true:                                    ; preds = %if.end4
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %22, align 4
  %arrayidx2.i114 = getelementptr [4 x i32], ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx2.i114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i114, align 4
  %or.i115 = or i32 %34, %32
  %arrayidx4.i116 = getelementptr [4 x i32], ptr %22, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx4.i116 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i116, align 4
  %or5.i117 = or i32 %or.i115, %36
  %arrayidx7.i118 = getelementptr [4 x i32], ptr %22, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx7.i118 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx7.i118, align 4
  %or8.i119 = or i32 %or5.i117, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i119)
  %cmp.i120 = icmp eq i32 %or8.i119, 0
  br i1 %cmp.i120, label %do.body11, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.body11:                                        ; preds = %land.lhs.true
  %extack13 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 14
  %39 = ptrtoint ptr %extack13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %extack13, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_tc_set_ipv6.__msg.9) #8
  %tobool14.not = icmp eq ptr %40, null
  br i1 %tobool14.not, label %do.body11.cleanup_crit_edge, label %if.then15

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ice_tc_set_ipv6.__msg.9, ptr %40, align 4
  br label %cleanup

if.then24:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 11
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %. = select i1 %is_encap, i32 4096, i32 32
  %or = or i32 %43, %.
  store i32 %or, ptr %flags, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %land.lhs.true.if.end30_crit_edge
  %44 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mask, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %arrayidx2.i128 = getelementptr [4 x i32], ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx2.i128 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx2.i128, align 4
  %or.i129 = or i32 %49, %47
  %arrayidx4.i130 = getelementptr [4 x i32], ptr %45, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx4.i130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx4.i130, align 4
  %or5.i131 = or i32 %or.i129, %51
  %arrayidx7.i132 = getelementptr [4 x i32], ptr %45, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx7.i132 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx7.i132, align 4
  %or8.i133 = or i32 %or5.i131, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i133)
  %cmp.i134 = icmp eq i32 %or8.i133, 0
  br i1 %cmp.i134, label %if.end30.if.end43_crit_edge, label %if.then34

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %flags37 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 11
  %54 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags37, align 4
  %.136 = select i1 %is_encap, i32 8192, i32 64
  %or38 = or i32 %55, %.136
  store i32 %or38, ptr %flags37, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %if.end30.if.end43_crit_edge
  %flags46 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %fltr, i32 0, i32 11
  %56 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags46, align 4
  %and = and i32 %57, 8256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.end43.if.end58_crit_edge, label %if.then48

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %src_ip6 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers, i32 0, i32 3, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %match, align 4
  %60 = call ptr @memcpy(ptr %src_ip6, ptr %59, i32 16)
  %src_ip653 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers, i32 0, i32 4, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mask, align 4
  %63 = call ptr @memcpy(ptr %src_ip653, ptr %62, i32 16)
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %if.end43.if.end58_crit_edge
  %64 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags46, align 4
  %and60 = and i32 %65, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.cleanup_crit_edge, label %if.then62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %ip63 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %match, align 4
  %dst66 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %67, i32 0, i32 1
  %68 = call ptr @memcpy(ptr %ip63, ptr %dst66, i32 16)
  %ip68 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mask, align 4
  %dst72 = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %70, i32 0, i32 1
  %71 = call ptr @memcpy(ptr %ip68, ptr %dst72, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end58.cleanup_crit_edge, %if.then15, %do.body11.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then15 ], [ -22, %do.body11.cleanup_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_keyid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_eswitch_mode_switchdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_mac_fltr_exist(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_vlan_fltr_exist(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_netdev_to_repr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netif_is_ice(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rem_adv_rule_by_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_tc_flower_adv_fltr(ptr nocapture noundef readonly %vsi, ptr nocapture noundef %tc_fltr) unnamed_addr #1 align 64 {
entry:
  %rule_info = alloca %struct.ice_adv_rule_info, align 4
  %rule_added = alloca %struct.ice_rule_query_data, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rule_info) #8
  %0 = call ptr @memset(ptr %rule_info, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rule_added) #8
  %1 = ptrtoint ptr %rule_added to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %rule_added, align 2, !annotation !90
  %2 = getelementptr inbounds %struct.ice_rule_query_data, ptr %rule_added, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !90
  %4 = getelementptr inbounds %struct.ice_rule_query_data, ptr %rule_added, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !90
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 8
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %7, i32 0, i32 58
  %flags2 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 11
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags2, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call = tail call zeroext i1 @ice_is_safe_mode(ptr noundef %7) #8
  br i1 %call, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 14
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_add_tc_flower_adv_fltr.__msg) #8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ice_add_tc_flower_adv_fltr.__msg, ptr %13, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp ne i32 %9, 0
  %and = and i32 %9, 48128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool6.not, %tobool7.not
  br i1 %or.cond, label %if.end18, label %do.body9

do.body9:                                         ; preds = %if.end5
  %extack11 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 14
  %15 = ptrtoint ptr %extack11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extack11, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_add_tc_flower_adv_fltr.__msg.22) #8
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %do.body9.cleanup_crit_edge, label %if.then13

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ice_add_tc_flower_adv_fltr.__msg.22, ptr %16, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %dest_vsi = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 5
  %18 = ptrtoint ptr %dest_vsi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dest_vsi, align 4
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %if.else, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %action = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 13
  %20 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %action, align 4
  %arrayidx = getelementptr %struct.ice_vsi, ptr %vsi, i32 0, i32 64, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end18.if.end22_crit_edge
  %ch_vsi.0 = phi ptr [ %23, %if.else ], [ %19, %if.end18.if.end22_crit_edge ]
  %and.i = lshr i32 %9, 9
  %and.lobit.i = and i32 %and.i, 1
  %and1.i = and i32 %9, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %inc4.i = zext i1 %tobool2.not.i to i32
  %and6.i = lshr i32 %9, 14
  %and6.lobit.i = and i32 %and6.i, 1
  %lkups_cnt.1.i = add nuw nsw i32 %and6.lobit.i, %and.lobit.i
  %lkups_cnt.2.i = add nuw nsw i32 %lkups_cnt.1.i, %inc4.i
  %and11.i = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end22.ice_tc_count_lkups.exit_crit_edge, label %land.lhs.true.i

if.end22.ice_tc_count_lkups.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_count_lkups.exit

land.lhs.true.i:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %tunnel_type.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 12
  %24 = ptrtoint ptr %tunnel_type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tunnel_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp.i = icmp eq i8 %25, -1
  %inc15.i = zext i1 %cmp.i to i32
  %spec.select1.i = add nuw nsw i32 %lkups_cnt.2.i, %inc15.i
  br label %ice_tc_count_lkups.exit

ice_tc_count_lkups.exit:                          ; preds = %land.lhs.true.i, %if.end22.ice_tc_count_lkups.exit_crit_edge
  %lkups_cnt.3.i = phi i32 [ %lkups_cnt.2.i, %if.end22.ice_tc_count_lkups.exit_crit_edge ], [ %spec.select1.i, %land.lhs.true.i ]
  %and17.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp ne i32 %and17.i, 0
  %inc20.i = zext i1 %tobool18.not.i to i32
  %and22.i = lshr i32 %9, 2
  %and22.lobit.i = and i32 %and22.i, 1
  %and27.i = and i32 %9, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp ne i32 %and27.i, 0
  %inc30.i = zext i1 %tobool28.not.i to i32
  %and32.i = and i32 %9, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp ne i32 %and32.i, 0
  %inc35.i = zext i1 %tobool33.not.i to i32
  %spec.select2.i = add nuw nsw i32 %and22.lobit.i, %inc20.i
  %lkups_cnt.5.i = add nuw nsw i32 %spec.select2.i, %inc30.i
  %lkups_cnt.6.i = add nuw nsw i32 %lkups_cnt.5.i, %inc35.i
  %lkups_cnt.7.i = add nuw nsw i32 %lkups_cnt.6.i, %lkups_cnt.3.i
  %conv = trunc i32 %lkups_cnt.7.i to i16
  %26 = mul nuw nsw i32 %lkups_cnt.7.i, 84
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 2848) #13
  %tobool26.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool26.not, label %ice_tc_count_lkups.exit.cleanup_crit_edge, label %if.end28

ice_tc_count_lkups.exit.cleanup_crit_edge:        ; preds = %ice_tc_count_lkups.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %ice_tc_count_lkups.exit
  %call29 = call fastcc i32 @ice_tc_fill_rules(i32 noundef %9, ptr noundef %tc_fltr, ptr noundef nonnull %call8.i.i, ptr noundef nonnull %rule_info)
  %conv31 = and i32 %call29, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31, i32 %lkups_cnt.7.i)
  %cmp.not = icmp eq i32 %conv31, %lkups_cnt.7.i
  br i1 %cmp.not, label %if.end35, label %if.end28.exit_crit_edge

if.end28.exit_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end35:                                         ; preds = %if.end28
  %action36 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 13
  %fltr_act = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %fltr_act to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fltr_act, align 4
  %sw_act = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1
  %fltr_act37 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %fltr_act37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fltr_act37, align 4
  %30 = ptrtoint ptr %action36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %action36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp40.not = icmp eq i32 %31, 0
  br i1 %cmp40.not, label %if.else75, label %if.then42

if.then42:                                        ; preds = %if.end35
  %tobool43.not = icmp eq ptr %ch_vsi.0, null
  br i1 %tobool43.not, label %do.body45, label %if.end54

do.body45:                                        ; preds = %if.then42
  %extack47 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 14
  %32 = ptrtoint ptr %extack47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %extack47, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_add_tc_flower_adv_fltr.__msg.23) #8
  %tobool48.not = icmp eq ptr %33, null
  br i1 %tobool48.not, label %do.body45.exit_crit_edge, label %if.then49

do.body45.exit_crit_edge:                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ice_add_tc_flower_adv_fltr.__msg.23, ptr %33, align 4
  br label %exit

if.end54:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %fltr_act37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %fltr_act37, align 4
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %ch_vsi.0, i32 0, i32 19
  %36 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %idx, align 2
  %vsi_handle = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %vsi_handle to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %vsi_handle, align 2
  %priority = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 2
  %39 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 7, ptr %priority, align 4
  %pf_id = getelementptr inbounds %struct.ice_pf, ptr %7, i32 0, i32 58, i32 13
  %40 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pf_id, align 1
  %conv58 = zext i8 %41 to i16
  %42 = ptrtoint ptr %sw_act to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv58, ptr %sw_act, align 4
  %rx = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 3
  %43 = ptrtoint ptr %rx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %rx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_tc_flower_adv_fltr, %if.then65)) #8
          to label %if.end83 [label %if.then65], !srcloc !91

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %action36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %action36, align 4
  %46 = ptrtoint ptr %vsi_handle to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vsi_handle, align 2
  %conv70 = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug613, ptr noundef %dev3, ptr noundef nonnull @.str.27, i32 noundef %45, i32 noundef %conv70, i32 noundef %lkups_cnt.7.i) #8
  br label %if.end83

if.else75:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %flag = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flag, align 2
  %50 = or i16 %49, 2
  store i16 %50, ptr %flag, align 2
  %idx79 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %51 = ptrtoint ptr %idx79 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %idx79, align 2
  %53 = ptrtoint ptr %sw_act to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %sw_act, align 4
  %rx82 = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 3
  %54 = ptrtoint ptr %rx82 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %rx82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else75, %if.then65, %if.end54
  %cookie = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 1
  %55 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cookie, align 4
  %conv84 = trunc i32 %56 to i16
  %fltr_rule_id = getelementptr inbounds %struct.ice_adv_rule_info, ptr %rule_info, i32 0, i32 4
  %57 = ptrtoint ptr %fltr_rule_id to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv84, ptr %fltr_rule_id, align 2
  %call85 = call i32 @ice_add_adv_rule(ptr noundef %hw1, ptr noundef nonnull %call8.i.i, i16 noundef zeroext %conv, ptr noundef nonnull %rule_info, ptr noundef nonnull %rule_added) #8
  %58 = zext i32 %call85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call85, label %do.body101 [
    i32 -17, label %do.body89
    i32 0, label %if.end111
  ]

do.body89:                                        ; preds = %if.end83
  %extack91 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 14
  %59 = ptrtoint ptr %extack91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %extack91, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_add_tc_flower_adv_fltr.__msg.28) #8
  %tobool92.not = icmp eq ptr %60, null
  br i1 %tobool92.not, label %do.body89.exit_crit_edge, label %if.then93

do.body89.exit_crit_edge:                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then93:                                        ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ice_add_tc_flower_adv_fltr.__msg.28, ptr %60, align 4
  br label %exit

do.body101:                                       ; preds = %if.end83
  %extack103 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 14
  %62 = ptrtoint ptr %extack103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extack103, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_add_tc_flower_adv_fltr.__msg.29) #8
  %tobool104.not = icmp eq ptr %63, null
  br i1 %tobool104.not, label %do.body101.exit_crit_edge, label %if.then105

do.body101.exit_crit_edge:                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then105:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ice_add_tc_flower_adv_fltr.__msg.29, ptr %63, align 4
  br label %exit

if.end111:                                        ; preds = %if.end83
  %65 = ptrtoint ptr %rule_added to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rule_added, align 2
  %rid112 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 2
  %67 = ptrtoint ptr %rid112 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %rid112, align 4
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %2, align 2
  %rule_id113 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 3
  %70 = ptrtoint ptr %rule_id113 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %rule_id113, align 2
  %71 = ptrtoint ptr %action36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %action36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp116.not = icmp eq i32 %72, 0
  %tobool118.not = icmp eq ptr %ch_vsi.0, null
  %or.cond233 = select i1 %cmp116.not, i1 true, i1 %tobool118.not
  br i1 %or.cond233, label %if.end111.do.body136_crit_edge, label %if.then119

if.end111.do.body136_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body136

if.then119:                                       ; preds = %if.end111
  %type = getelementptr inbounds %struct.ice_vsi, ptr %ch_vsi.0, i32 0, i32 17
  %73 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp120 = icmp eq i32 %74, 4
  br i1 %cmp120, label %if.then122, label %if.then119.if.end124_crit_edge

if.then119.if.end124_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then122:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %dest_vsi to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ch_vsi.0, ptr %dest_vsi, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.then119.if.end124_crit_edge
  %num_chnl_fltr = getelementptr inbounds %struct.ice_vsi, ptr %ch_vsi.0, i32 0, i32 71
  %76 = ptrtoint ptr %num_chnl_fltr to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_chnl_fltr, align 2
  %inc = add i16 %77, 1
  store i16 %inc, ptr %num_chnl_fltr, align 2
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %4, align 2
  %dest_id = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 4
  %80 = ptrtoint ptr %dest_id to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %dest_id, align 4
  %type126 = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 17
  %81 = ptrtoint ptr %type126 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp127 = icmp ne i32 %82, 0
  %and130 = and i32 %9, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  %or.cond234 = select i1 %cmp127, i1 true, i1 %tobool131.not
  br i1 %or.cond234, label %if.end124.do.body136_crit_edge, label %if.then132

if.end124.do.body136_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body136

if.then132:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %num_dmac_chnl_fltrs = getelementptr inbounds %struct.ice_pf, ptr %7, i32 0, i32 69
  %83 = ptrtoint ptr %num_dmac_chnl_fltrs to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %num_dmac_chnl_fltrs, align 4
  %inc133 = add i16 %84, 1
  store i16 %inc133, ptr %num_dmac_chnl_fltrs, align 4
  br label %do.body136

do.body136:                                       ; preds = %if.then132, %if.end124.do.body136_crit_edge, %if.end111.do.body136_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_tc_flower_adv_fltr, %if.then148)) #8
          to label %exit [label %if.then148], !srcloc !91

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %action36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %action36, align 4
  %87 = ptrtoint ptr %rule_added to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %rule_added, align 2
  %conv153 = zext i16 %88 to i32
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %2, align 2
  %conv155 = zext i16 %90 to i32
  %91 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %4, align 2
  %conv157 = zext i16 %92 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug614, ptr noundef %dev3, ptr noundef nonnull @.str.30, i32 noundef %lkups_cnt.7.i, i32 noundef %9, i32 noundef %86, i32 noundef %conv153, i32 noundef %conv155, i32 noundef %conv157) #8
  br label %exit

exit:                                             ; preds = %if.then148, %do.body136, %if.then105, %do.body101.exit_crit_edge, %if.then93, %do.body89.exit_crit_edge, %if.then49, %do.body45.exit_crit_edge, %if.end28.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.then148 ], [ -22, %if.end28.exit_crit_edge ], [ -22, %if.then49 ], [ -22, %do.body45.exit_crit_edge ], [ -22, %if.then93 ], [ -22, %do.body89.exit_crit_edge ], [ -5, %if.then105 ], [ -5, %do.body101.exit_crit_edge ], [ 0, %do.body136 ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %ice_tc_count_lkups.exit.cleanup_crit_edge, %if.then13, %do.body9.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -95, %if.then4 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then13 ], [ -95, %do.body9.cleanup_crit_edge ], [ -12, %ice_tc_count_lkups.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rule_added) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rule_info) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ice_tc_fill_rules(i32 noundef %flags, ptr nocapture noundef readonly %tc_fltr, ptr noundef writeonly %list, ptr nocapture noundef writeonly %rule_info) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %outer_headers = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7
  %tunnel_type = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 12
  %0 = ptrtoint ptr %tunnel_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tunnel_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %2 = icmp ult i8 %1, 3
  %switch.idx.cast = zext i8 %1 to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 2
  %retval.0.i = select i1 %2, i32 %switch.offset, i32 0
  %3 = ptrtoint ptr %rule_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %retval.0.i, ptr %rule_info, align 4
  %4 = ptrtoint ptr %tunnel_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tunnel_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.not = icmp eq i8 %5, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and.i = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %6 = icmp ult i8 %5, 3
  %switch.idx.cast10 = zext i8 %5 to i32
  %switch.offset11 = add nuw nsw i32 %switch.idx.cast10, 11
  %retval.0.i.i = select i1 %6, i32 %switch.offset11, i32 0
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.i, ptr %list, align 4
  %8 = ptrtoint ptr %tunnel_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tunnel_type, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %9, label %if.then.i.if.end.i_crit_edge [
    i8 0, label %if.then.i.sw.bb.i_crit_edge
    i8 1, label %if.then.i.sw.bb.i_crit_edge12
    i8 2, label %sw.bb7.i
  ]

if.then.i.sw.bb.i_crit_edge12:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge12
  %tenant_id3.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 10
  %11 = ptrtoint ptr %tenant_id3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tenant_id3.i, align 4
  %shl.i = shl i32 %12, 8
  br label %if.end.sink.split.i

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %tenant_id8.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 10
  %13 = ptrtoint ptr %tenant_id8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tenant_id8.i, align 4
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb7.i, %sw.bb.i
  %shl.sink.i = phi i32 [ %shl.i, %sw.bb.i ], [ %14, %sw.bb7.i ]
  %.sink.i = phi i32 [ -256, %sw.bb.i ], [ -1, %sw.bb7.i ]
  %vni.i = getelementptr inbounds %struct.ice_adv_lkup_elem, ptr %list, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %vni.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl.sink.i, ptr %vni.i, align 4
  %vni6.i = getelementptr inbounds %struct.ice_adv_lkup_elem, ptr %list, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %vni6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %vni6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.then.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.then.if.end.i_crit_edge ], [ 0, %if.then.i.if.end.i_crit_edge ], [ 1, %if.end.sink.split.i ]
  %and15.i = and i32 %flags, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end50.i_crit_edge, label %if.then17.i

if.end.i.if.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then17.i:                                      ; preds = %if.end.i
  %arrayidx19.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1.i
  %17 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %arrayidx19.i, align 4
  %and21.i = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then17.i.if.end32.i_crit_edge, label %if.then23.i

if.then17.i.if.end32.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then23.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %src_ip.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %src_ip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_ip.i, align 4
  %src_addr.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1.i, i32 1, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %src_addr.i, align 4
  %src_ip27.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 4, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %src_ip27.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_ip27.i, align 4
  %src_addr31.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1.i, i32 2, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %src_addr31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %src_addr31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then23.i, %if.then17.i.if.end32.i_crit_edge
  %and33.i = and i32 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end48.i_crit_edge, label %if.then35.i

if.end32.i.if.end48.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %ip37.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 3, i32 1
  %24 = ptrtoint ptr %ip37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ip37.i, align 4
  %dst_addr.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1.i, i32 1, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dst_addr.i, align 4
  %ip42.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 4, i32 1
  %27 = ptrtoint ptr %ip42.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ip42.i, align 4
  %dst_addr47.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1.i, i32 2, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %dst_addr47.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dst_addr47.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end48.i_crit_edge
  %inc49.i = add nuw nsw i32 %i.1.i, 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end48.i, %if.end.i.if.end50.i_crit_edge
  %i.2.i = phi i32 [ %inc49.i, %if.end48.i ], [ %i.1.i, %if.end.i.if.end50.i_crit_edge ]
  %and51.i = and i32 %flags, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end91.i_crit_edge, label %if.then53.i

if.end50.i.if.end91.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

if.then53.i:                                      ; preds = %if.end50.i
  %arrayidx55.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2.i
  %30 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %arrayidx55.i, align 4
  %and57.i = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.then53.i.if.end72.i_crit_edge, label %if.then59.i

if.then53.i.if.end72.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i

if.then59.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr62.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2.i, i32 1, i32 0, i32 4
  %src_ip6.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 3, i32 1, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %src_addr62.i, ptr %src_ip6.i, i32 16)
  %src_addr67.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2.i, i32 2, i32 0, i32 4
  %src_ip670.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 4, i32 1, i32 0, i32 1
  %32 = call ptr @memcpy(ptr %src_addr67.i, ptr %src_ip670.i, i32 16)
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then59.i, %if.then53.i.if.end72.i_crit_edge
  %and73.i = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end72.i.if.end89.i_crit_edge, label %if.then75.i

if.end72.i.if.end89.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  %dst_addr78.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2.i, i32 1, i32 0, i32 5
  %ip80.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 3, i32 1
  %33 = call ptr @memcpy(ptr %dst_addr78.i, ptr %ip80.i, i32 16)
  %dst_addr84.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2.i, i32 2, i32 0, i32 5
  %ip86.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 4, i32 1
  %34 = call ptr @memcpy(ptr %dst_addr84.i, ptr %ip86.i, i32 16)
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then75.i, %if.end72.i.if.end89.i_crit_edge
  %inc90.i = add nuw nsw i32 %i.2.i, 1
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end89.i, %if.end50.i.if.end91.i_crit_edge
  %i.3.i = phi i32 [ %inc90.i, %if.end89.i ], [ %i.2.i, %if.end50.i.if.end91.i_crit_edge ]
  %and92.i = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.end91.i.ice_tc_fill_tunnel_outer.exit_crit_edge, label %land.lhs.true.i

if.end91.i.ice_tc_fill_tunnel_outer.exit_crit_edge: ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_fill_tunnel_outer.exit

land.lhs.true.i:                                  ; preds = %if.end91.i
  %l3_key94.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %l3_key94.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %l3_key94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %36)
  %cmp.i = icmp eq i8 %36, 17
  br i1 %cmp.i, label %if.then97.i, label %land.lhs.true.i.ice_tc_fill_tunnel_outer.exit_crit_edge

land.lhs.true.i.ice_tc_fill_tunnel_outer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_tc_fill_tunnel_outer.exit

if.then97.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx98.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3.i
  %37 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9, ptr %arrayidx98.i, align 4
  %l4_key.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 5
  %38 = ptrtoint ptr %l4_key.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %l4_key.i, align 4
  %h_u101.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3.i, i32 1
  %dst_port102.i = getelementptr inbounds %struct.ice_l4_hdr, ptr %h_u101.i, i32 0, i32 1
  %40 = ptrtoint ptr %dst_port102.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %dst_port102.i, align 2
  %l4_mask.i = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 6
  %41 = ptrtoint ptr %l4_mask.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %l4_mask.i, align 4
  %m_u105.i = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3.i, i32 2
  %dst_port106.i = getelementptr inbounds %struct.ice_l4_hdr, ptr %m_u105.i, i32 0, i32 1
  %43 = ptrtoint ptr %dst_port106.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %dst_port106.i, align 2
  %inc107.i = add nuw nsw i32 %i.3.i, 1
  br label %ice_tc_fill_tunnel_outer.exit

ice_tc_fill_tunnel_outer.exit:                    ; preds = %if.then97.i, %land.lhs.true.i.ice_tc_fill_tunnel_outer.exit_crit_edge, %if.end91.i.ice_tc_fill_tunnel_outer.exit_crit_edge
  %i.4.i = phi i32 [ %inc107.i, %if.then97.i ], [ %i.3.i, %land.lhs.true.i.ice_tc_fill_tunnel_outer.exit_crit_edge ], [ %i.3.i, %if.end91.i.ice_tc_fill_tunnel_outer.exit_crit_edge ]
  %inner_headers = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 8
  br label %if.end10

if.else:                                          ; preds = %entry
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %if.then5

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %list, align 4
  %n_proto = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 0, i32 2
  %45 = ptrtoint ptr %n_proto to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %n_proto, align 4
  %h_u = getelementptr inbounds %struct.ice_adv_lkup_elem, ptr %list, i32 0, i32 1
  %47 = ptrtoint ptr %h_u to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %h_u, align 4
  %n_proto7 = getelementptr inbounds %struct.ice_tc_flower_fltr, ptr %tc_fltr, i32 0, i32 7, i32 1, i32 2
  %48 = ptrtoint ptr %n_proto7 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %n_proto7, align 2
  %m_u = getelementptr inbounds %struct.ice_adv_lkup_elem, ptr %list, i32 0, i32 2
  %50 = ptrtoint ptr %m_u to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %m_u, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.else.if.end10_crit_edge, %ice_tc_fill_tunnel_outer.exit
  %headers.0 = phi ptr [ %inner_headers, %ice_tc_fill_tunnel_outer.exit ], [ %outer_headers, %if.then5 ], [ %outer_headers, %if.else.if.end10_crit_edge ]
  %i.0 = phi i32 [ %i.4.i, %ice_tc_fill_tunnel_outer.exit ], [ 1, %if.then5 ], [ 0, %if.else.if.end10_crit_edge ]
  %and11 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end50_crit_edge, label %if.then13

if.end10.if.end50_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then13:                                        ; preds = %if.end10
  %51 = xor i1 %cmp.not, true
  %cond.i = zext i1 %51 to i32
  %arrayidx20 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.0
  %52 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %arrayidx20, align 4
  %and22 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then13.if.end34_crit_edge, label %if.then24

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then24:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %l2_mask17 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 1
  %h_u26 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.0, i32 1
  %53 = ptrtoint ptr %headers.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %headers.0, align 4
  %55 = ptrtoint ptr %h_u26 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %h_u26, align 4
  %add.ptr.i = getelementptr i8, ptr %headers.0, i32 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %h_u26, i32 4
  %58 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr1.i, align 2
  %m_u29 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.0, i32 2
  %59 = ptrtoint ptr %l2_mask17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %l2_mask17, align 4
  %61 = ptrtoint ptr %m_u29 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %m_u29, align 4
  %add.ptr.i1 = getelementptr %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 1, i32 0, i32 4
  %62 = ptrtoint ptr %add.ptr.i1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i1, align 2
  %add.ptr1.i2 = getelementptr i8, ptr %m_u29, i32 4
  %64 = ptrtoint ptr %add.ptr1.i2 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr1.i2, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then24, %if.then13.if.end34_crit_edge
  %and35 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end48_crit_edge, label %if.then37

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.0, i32 1, i32 0, i32 2
  %src_mac = getelementptr inbounds %struct.ice_tc_l2_hdr, ptr %headers.0, i32 0, i32 1
  %65 = ptrtoint ptr %src_mac to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %src_mac, align 4
  %67 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %src_addr, align 4
  %add.ptr.i3 = getelementptr %struct.ice_tc_l2_hdr, ptr %headers.0, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %add.ptr.i3 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i3, align 2
  %add.ptr1.i4 = getelementptr i8, ptr %src_addr, i32 4
  %70 = ptrtoint ptr %add.ptr1.i4 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %add.ptr1.i4, align 2
  %src_addr44 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.0, i32 2, i32 0, i32 2
  %src_mac46 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %src_mac46 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %src_mac46, align 4
  %73 = ptrtoint ptr %src_addr44 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %src_addr44, align 4
  %add.ptr.i5 = getelementptr %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 1, i32 1, i32 4
  %74 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i5, align 2
  %add.ptr1.i6 = getelementptr i8, ptr %src_addr44, i32 4
  %76 = ptrtoint ptr %add.ptr1.i6 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %add.ptr1.i6, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then37, %if.end34.if.end48_crit_edge
  %inc49 = add nuw nsw i32 %i.0, 1
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end10.if.end50_crit_edge
  %i.1 = phi i32 [ %inc49, %if.end48 ], [ %i.0, %if.end10.if.end50_crit_edge ]
  %and51 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end62_crit_edge, label %if.then53

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx54 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1
  %77 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %arrayidx54, align 4
  %vlan_hdr = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 2
  %78 = ptrtoint ptr %vlan_hdr to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vlan_hdr, align 4
  %h_u57 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1, i32 1
  %vlan = getelementptr inbounds %struct.ice_vlan_hdr, ptr %h_u57, i32 0, i32 1
  %80 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %vlan, align 2
  %m_u59 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.1, i32 2
  %vlan60 = getelementptr inbounds %struct.ice_vlan_hdr, ptr %m_u59, i32 0, i32 1
  %81 = ptrtoint ptr %vlan60 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %vlan60, align 2
  %inc61 = add nuw nsw i32 %i.1, 1
  br label %if.end62

if.end62:                                         ; preds = %if.then53, %if.end50.if.end62_crit_edge
  %i.2 = phi i32 [ %inc61, %if.then53 ], [ %i.1, %if.end50.if.end62_crit_edge ]
  %and63 = and i32 %flags, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else101, label %if.then65

if.then65:                                        ; preds = %if.end62
  %cond.i7 = select i1 %cmp.not, i32 4, i32 5
  %arrayidx68 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2
  %82 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond.i7, ptr %arrayidx68, align 4
  %and72 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then65.if.end84_crit_edge, label %if.then74

if.then65.if.end84_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then74:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %ip = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ip, align 4
  %dst_addr77 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2, i32 1, i32 0, i32 4, i32 8
  %85 = ptrtoint ptr %dst_addr77 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %dst_addr77, align 4
  %ip78 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %ip78 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ip78, align 4
  %dst_addr83 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2, i32 2, i32 0, i32 4, i32 8
  %88 = ptrtoint ptr %dst_addr83 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %dst_addr83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then74, %if.then65.if.end84_crit_edge
  %and85 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end99_crit_edge, label %if.then87

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %src_ip = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %src_ip to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %src_ip, align 4
  %src_addr92 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2, i32 1, i32 0, i32 4, i32 4
  %91 = ptrtoint ptr %src_addr92 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %src_addr92, align 4
  %src_ip94 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 4, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %92 = ptrtoint ptr %src_ip94 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %src_ip94, align 4
  %src_addr98 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2, i32 2, i32 0, i32 4, i32 4
  %94 = ptrtoint ptr %src_addr98 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %src_addr98, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then87, %if.end84.if.end99_crit_edge
  %inc100 = add nuw nsw i32 %i.2, 1
  br label %if.end140

if.else101:                                       ; preds = %if.end62
  %and102 = and i32 %flags, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else101.if.end140_crit_edge, label %if.then104

if.else101.if.end140_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then104:                                       ; preds = %if.else101
  %cond.i8 = select i1 %cmp.not, i32 6, i32 7
  %arrayidx109 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2
  %95 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cond.i8, ptr %arrayidx109, align 4
  %h_u112 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2, i32 1
  %m_u114 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.2, i32 2
  %and117 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.then104.if.end126_crit_edge, label %if.then119

if.then104.if.end126_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then119:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %dst_addr120 = getelementptr inbounds %struct.ice_ipv6_hdr, ptr %h_u112, i32 0, i32 5
  %ip121 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 3, i32 1
  %96 = call ptr @memcpy(ptr %dst_addr120, ptr %ip121, i32 16)
  %dst_addr122 = getelementptr inbounds %struct.ice_ipv6_hdr, ptr %m_u114, i32 0, i32 5
  %ip123 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 4, i32 1
  %97 = call ptr @memcpy(ptr %dst_addr122, ptr %ip123, i32 16)
  br label %if.end126

if.end126:                                        ; preds = %if.then119, %if.then104.if.end126_crit_edge
  %and127 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end126.if.end137_crit_edge, label %if.then129

if.end126.if.end137_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr130 = getelementptr inbounds %struct.ice_ipv6_hdr, ptr %h_u112, i32 0, i32 4
  %src_ip6 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 3, i32 1, i32 0, i32 1
  %98 = call ptr @memcpy(ptr %src_addr130, ptr %src_ip6, i32 16)
  %src_addr133 = getelementptr inbounds %struct.ice_ipv6_hdr, ptr %m_u114, i32 0, i32 4
  %src_ip6135 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 4, i32 1, i32 0, i32 1
  %99 = call ptr @memcpy(ptr %src_addr133, ptr %src_ip6135, i32 16)
  br label %if.end137

if.end137:                                        ; preds = %if.then129, %if.end126.if.end137_crit_edge
  %inc138 = add nuw nsw i32 %i.2, 1
  br label %if.end140

if.end140:                                        ; preds = %if.end137, %if.else101.if.end140_crit_edge, %if.end99
  %i.3 = phi i32 [ %inc100, %if.end99 ], [ %inc138, %if.end137 ], [ %i.2, %if.else101.if.end140_crit_edge ]
  %and141 = and i32 %flags, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end140.if.end174_crit_edge, label %if.then143

if.end140.if.end174_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then143:                                       ; preds = %if.end140
  %l3_key144 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 3
  %100 = ptrtoint ptr %l3_key144 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %l3_key144, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %101)
  %switch.selectcmp.i = icmp eq i8 %101, 17
  %switch.select.i = select i1 %switch.selectcmp.i, i32 10, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %101)
  %switch.selectcmp2.i = icmp eq i8 %101, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 8, i32 %switch.select.i
  %arrayidx147 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3
  %102 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %switch.select3.i, ptr %arrayidx147, align 4
  %and151 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then143.if.end161_crit_edge, label %if.then153

if.then143.if.end161_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then153:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  %l4_mask150 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 6
  %l4_key149 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 5
  %103 = ptrtoint ptr %l4_key149 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %l4_key149, align 2
  %h_u155 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3, i32 1
  %dst_port156 = getelementptr inbounds %struct.ice_l4_hdr, ptr %h_u155, i32 0, i32 1
  %105 = ptrtoint ptr %dst_port156 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %dst_port156, align 2
  %106 = ptrtoint ptr %l4_mask150 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %l4_mask150, align 2
  %m_u159 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3, i32 2
  %dst_port160 = getelementptr inbounds %struct.ice_l4_hdr, ptr %m_u159, i32 0, i32 1
  %108 = ptrtoint ptr %dst_port160 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %dst_port160, align 2
  br label %if.end161

if.end161:                                        ; preds = %if.then153, %if.then143.if.end161_crit_edge
  %and162 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end161.if.end172_crit_edge, label %if.then164

if.end161.if.end172_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %src_port = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 5, i32 1
  %109 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %src_port, align 2
  %h_u166 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3, i32 1
  %111 = ptrtoint ptr %h_u166 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %h_u166, align 4
  %src_port168 = getelementptr inbounds %struct.ice_tc_flower_lyr_2_4_hdrs, ptr %headers.0, i32 0, i32 6, i32 1
  %112 = ptrtoint ptr %src_port168 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %src_port168, align 2
  %m_u170 = getelementptr %struct.ice_adv_lkup_elem, ptr %list, i32 %i.3, i32 2
  %114 = ptrtoint ptr %m_u170 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %m_u170, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then164, %if.end161.if.end172_crit_edge
  %inc173 = add nuw nsw i32 %i.3, 1
  br label %if.end174

if.end174:                                        ; preds = %if.end172, %if.end140.if.end174_crit_edge
  %i.4 = phi i32 [ %inc173, %if.end172 ], [ %i.3, %if.end140.if.end174_crit_edge ]
  ret i32 %i.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_adv_rule(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_safe_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !78, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @ice_add_cls_flower.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1287, i32 4}
!2 = !{ptr @ice_add_cls_flower.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1294, i32 3}
!4 = !{ptr @ice_del_cls_flower.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1327, i32 3}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/net/geneve.h", i32 68, i32 43}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/net/gre.h", i32 43, i32 43}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/net/gre.h", i32 49, i32 43}
!14 = !{ptr @ice_parse_cls_flower.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 842, i32 3}
!16 = !{ptr @ice_parse_cls_flower.__msg.5, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 854, i32 4}
!18 = !{ptr @ice_parse_cls_flower.__msg.6, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 867, i32 3}
!20 = !{ptr @ice_parse_cls_flower.__msg.7, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 936, i32 5}
!22 = !{ptr @ice_parse_cls_flower.__msg.8, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 982, i32 4}
!24 = !{ptr @ice_tc_set_ipv6.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 652, i32 3}
!26 = !{ptr @ice_tc_set_ipv6.__msg.9, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 658, i32 3}
!28 = !{ptr @ice_parse_tc_flower_actions.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1137, i32 4}
!30 = !{ptr @ice_handle_tclass_action.__msg, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1025, i32 3}
!32 = !{ptr @ice_handle_tclass_action.__msg.10, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1029, i32 3}
!34 = !{ptr @ice_handle_tclass_action.__msg.11, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1034, i32 3}
!36 = !{ptr @ice_handle_tclass_action.__msg.12, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1041, i32 3}
!38 = !{ptr @ice_handle_tclass_action.__msg.13, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1049, i32 3}
!40 = !{ptr @ice_handle_tclass_action.__msg.14, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1077, i32 3}
!42 = !{ptr @ice_handle_tclass_action.__msg.15, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1090, i32 4}
!44 = !{ptr @ice_eswitch_tc_parse_action.__msg, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 378, i32 4}
!46 = !{ptr @ice_eswitch_tc_parse_action.__msg.16, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 385, i32 3}
!48 = !{ptr @ice_del_tc_fltr.__msg, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1164, i32 4}
!50 = !{ptr @ice_del_tc_fltr.__msg.17, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 1167, i32 3}
!52 = !{ptr @ice_eswitch_add_tc_fltr.__msg, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 406, i32 3}
!54 = !{ptr @ice_eswitch_add_tc_fltr.__msg.18, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 453, i32 3}
!56 = !{ptr @ice_eswitch_add_tc_fltr.__msg.19, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 457, i32 3}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 135, i32 37}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 140, i32 44}
!62 = !{ptr @ice_add_tc_flower_adv_fltr.__msg, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 500, i32 3}
!64 = !{ptr @ice_add_tc_flower_adv_fltr.__msg.22, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 509, i32 3}
!66 = !{ptr @ice_add_tc_flower_adv_fltr.__msg.23, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 533, i32 4}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 543, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug613, !69, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!74 = !{ptr @ice_add_tc_flower_adv_fltr.__msg.28, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 557, i32 3}
!76 = !{ptr @ice_add_tc_flower_adv_fltr.__msg.29, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 562, i32 3}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ice/ice_tc_lib.c", i32 593, i32 2}
!80 = !{ptr @ice_add_tc_flower_adv_fltr.__UNIQUE_ID_ddebug614, !79, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i64 2148756966, i64 2148756971, i64 2148756984, i64 2148757028, i64 2148757062, i64 2148757083}
