; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.145 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.145 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.bnxt_tc_info = type { i8, %struct.rhashtable, %struct.rhashtable_params, %struct.rhashtable, %struct.rhashtable_params, %struct.rhashtable, %struct.rhashtable_params, %struct.rhashtable, %struct.rhashtable_params, %struct.rhashtable, %struct.rhashtable_params, %struct.mutex, %struct.rhashtable_iter, [10 x %struct.bnxt_tc_stats_batch], i64, i64 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.bnxt_tc_stats_batch = type { ptr, %struct.bnxt_tc_flow_stats }
%struct.bnxt_tc_flow_stats = type { i64, i64 }
%struct.hwrm_cfa_flow_stats_input = type { i16, i16, i16, i16, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnxt_tc_flow_node = type { i32, %struct.rhash_head, %struct.bnxt_tc_flow, i64, i16, i32, ptr, %struct.list_head, ptr, ptr, ptr, %struct.list_head, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.bnxt_tc_flow = type { i32, i16, %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l2_key, %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l4_key, %struct.bnxt_tc_l4_key, %struct.ip_tunnel_key, %struct.ip_tunnel_key, %struct.bnxt_tc_actions, %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats, i32, %struct.spinlock }
%struct.bnxt_tc_l2_key = type { [6 x i8], [6 x i8], i16, i16, i16, i8, i8 }
%struct.bnxt_tc_l3_key = type { %union.anon.188 }
%union.anon.188 = type { %struct.anon.190 }
%struct.anon.190 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.bnxt_tc_l4_key = type { i8, %union.anon.191 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { i16, i16 }
%struct.ip_tunnel_key = type { i64, %union.anon.167, i16, i8, i8, i32, i16, i16 }
%union.anon.167 = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.in6_addr, %struct.in6_addr }
%struct.bnxt_tc_actions = type { i32, i16, ptr, i16, i16, %struct.ip_tunnel_key, [3 x i16], [3 x i16], %struct.anon.194 }
%struct.anon.194 = type { i8, i8, %struct.bnxt_tc_l3_key, %struct.bnxt_tc_l4_key }
%struct.callback_head = type { ptr, ptr }
%struct.hwrm_cfa_flow_stats_output = type { i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [7 x i8], i8 }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_eth_addrs = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_icmp = type { ptr, ptr }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.198 = type { i16, i16 }
%struct.anon.199 = type { i8, i8 }
%struct.anon.193 = type { i8, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.175, ptr }
%union.anon.175 = type { %struct.anon.180 }
%struct.anon.180 = type { i32, i64, i64, i64, i32 }
%struct.anon.176 = type { i16, i16, i8 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bnxt_tc_l2_node = type { %struct.bnxt_tc_l2_key, %struct.rhash_head, %struct.list_head, i16, %struct.callback_head }
%struct.bnxt_tc_tunnel_node = type { %struct.ip_tunnel_key, %struct.rhash_head, %struct.bnxt_tc_l2_key, i32, i32, %struct.callback_head }
%struct.hwrm_cfa_decap_filter_alloc_input = type { i16, i16, i16, i16, i64, i32, i32, i32, i8, i8, i16, [6 x i8], [2 x i8], [6 x i8], i16, i16, i16, i16, i16, i8, i8, i16, i32, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.hwrm_cfa_decap_filter_alloc_output = type { i16, i16, i16, i16, i32, [3 x i8], i8 }
%struct.hwrm_cfa_encap_record_alloc_input = type { i16, i16, i16, i16, i64, i32, i8, [3 x i8], [20 x i32] }
%struct.hwrm_cfa_encap_data_vxlan = type { [6 x i8], i16, [6 x i8], i8, i8, i16, i16, i16, i16, [10 x i32], i16, i16, i32, [3 x i8], i8, i8, [3 x i8] }
%struct.hwrm_vxlan_ipv4_hdr = type { i8, i8, i16, i16, i8, i8, i32, i32 }
%struct.hwrm_cfa_encap_record_alloc_output = type { i16, i16, i16, i16, i32, [3 x i8], i8 }
%struct.hwrm_cfa_flow_free_input = type { i16, i16, i16, i16, i64, i16, i16, i32, i64 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.bnxt_flower_indr_block_cb_priv = type { ptr, ptr, %struct.list_head }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.hwrm_cfa_flow_alloc_input = type { i16, i16, i16, i16, i64, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], i16, [3 x i16], i8, i8, [4 x i32], [4 x i32], i16, i16, i16, i16, [4 x i32], [3 x i16], i16, [3 x i16], i8, i8 }
%struct.hwrm_cfa_flow_alloc_output = type { i16, i16, i16, i16, i16, [2 x i8], i32, i64, i32, [3 x i8], i8 }
%struct.hwrm_cfa_decap_filter_free_input = type { i16, i16, i16, i16, i64, i32, [4 x i8] }
%struct.hwrm_cfa_encap_record_free_input = type { i16, i16, i16, i16, i64, i32, [4 x i8] }
%struct.anon.177 = type { i32, i32, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.62, ptr, [24 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.62 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }

@bnxt_init_tc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tc_info->lock\00", [17 x i8] zeroinitializer }, align 32
@bnxt_tc_flow_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 0, i16 4, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bnxt_tc_l2_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 16, i16 0, i16 20, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bnxt_tc_decap_l2_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 16, i16 0, i16 20, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bnxt_tc_tunnel_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 56, i16 0, i16 56, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"error rc=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@bnxt_tc_add_flow.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&flow->stats_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: %s: cookie=0x%lx error=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.bnxt_tc_add_flow = private unnamed_addr constant [17 x i8] c"bnxt_tc_add_flow\00", align 1
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot form TC key: used_keys = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no actions\0A\00", [20 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg = internal constant [58 x i8] c"bnxt_en: Driver supports only default HW stats type \22any\22\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"bnxt_en: Mixing HW stats types for actions is not supported\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no dev in mirred action\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"only IPv4 tunnel-encap is supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: eth_hdr: Invalid pedit field\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.bnxt_tc_parse_pedit = private unnamed_addr constant [20 x i8] c"bnxt_tc_parse_pedit\00", align 1
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: IPv4_hdr: Invalid pedit field\0A\00", [61 x i8] zeroinitializer }, align 32
@bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.bnxt_tc_parse_pedit, ptr @.str.13, ptr @.str.14, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bnxt_en\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nat.src_xlate = %d src IP: %pI4 dst ip : %pI4\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: IPv6_hdr: Invalid pedit field\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Need to specify L3 rewrite as well\0A\00", [60 x i8] zeroinitializer }, align 32
@bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug661 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @__func__.bnxt_tc_parse_pedit, ptr @.str.13, ptr @.str.17, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"actions->nat.sport = %d dport = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unsupported pedit hdr type\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dev(ifindex=%d) not on same switch\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot offload non-TCP/UDP (%d) ports\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Wildcard match unsupported for Source MAC\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Wildcard match unsupported for Dest MAC\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported VLAN TCI\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wildcard match unsupported for VLAN TPID\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wildcard match unsupported for Ethertype\0A\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: %s: rhashtable_remove_fast rc=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.__bnxt_tc_del_flow = private unnamed_addr constant [19 x i8] c"__bnxt_tc_del_flow\00", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: %s: rhashtable_insert_fast: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.bnxt_tc_get_l2_node = private unnamed_addr constant [20 x i8] c"bnxt_tc_get_l2_node\00", align 1
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no route to %pI4b\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dst_dev(%s) doesn't use PF-if(%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dst_dev(%s) for %pI4b is not PF-if(%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't lookup neighbor for %pI4b\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Error rc=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.hwrm_cfa_decap_filter_alloc = private unnamed_addr constant [28 x i8] c"hwrm_cfa_decap_filter_alloc\00", align 1
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rhashtable_remove_fast rc=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.hwrm_cfa_encap_record_alloc = private unnamed_addr constant [28 x i8] c"hwrm_cfa_encap_record_alloc\00", align 1
@bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.47, ptr @.str.13, ptr @.str.48, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnxt_hwrm_cfa_flow_alloc\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"req->nat_ip_address: %pI4 src_xlate: %d req->nat_port: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.47, ptr @.str.13, ptr @.str.49, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"req->nat_ip_address: %pI6 src_xlate: %d req->nat_port: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.51 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.bnxt_hwrm_cfa_flow_free = private unnamed_addr constant [24 x i8] c"bnxt_hwrm_cfa_flow_free\00", align 1
@__func__.hwrm_cfa_decap_filter_free = private unnamed_addr constant [27 x i8] c"hwrm_cfa_decap_filter_free\00", align 1
@__func__.hwrm_cfa_encap_record_free = private unnamed_addr constant [27 x i8] c"hwrm_cfa_encap_record_free\00", align 1
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: %s: rhashtable_remove_fast: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.bnxt_tc_put_l2_node = private unnamed_addr constant [20 x i8] c"bnxt_tc_put_l2_node\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@bnxt_block_cb_list = external dso_local global %struct.list_head, align 4
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 2020, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"bnxt_tc_flow_ht_params\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1978, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"bnxt_tc_l2_ht_params\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1985, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"bnxt_tc_decap_l2_ht_params\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1992, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"bnxt_tc_tunnel_ht_params\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1999, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1724, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1582, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1603, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 378, i32 24 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 300, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 354, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 323, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 74, i32 24 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 110, i32 24 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 201, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 221, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 226, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 250, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 262, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 269, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 274, i32 23 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 54, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1047, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1055, i32 24 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1060, i32 24 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1069, i32 24 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1076, i32 24 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1083, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 695, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 594, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 723, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1488, i32 23 }
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1019, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 988, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1243, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1257, i32 9 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1269, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1278, i32 24 }
@___asan_gen_.197 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 4963, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 857, i32 24 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1203, i32 24 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 640, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 668, i32 4 }
@___asan_gen_.215 = private constant [48 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 959, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 420, i32 43 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 676, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 664, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @bnxt_init_tc.__key, ptr @.str, ptr @bnxt_tc_flow_ht_params, ptr @bnxt_tc_l2_ht_params, ptr @bnxt_tc_decap_l2_ht_params, ptr @bnxt_tc_tunnel_ht_params, ptr @.str.1, ptr @bnxt_tc_add_flow.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_init_tc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tc_flow_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tc_l2_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tc_decap_l2_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tc_tunnel_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_tc_add_flow.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_tc_flow_stats_work(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_info1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %0 = ptrtoint ptr %tc_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_info1, align 8
  %nelems = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 1, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems, i32 noundef 4) #12
  %2 = ptrtoint ptr %nelems to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %nelems, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flow_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 1
  %iter = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 12
  tail call void @rhashtable_walk_enter(ptr noundef %flow_table, ptr noundef %iter) #12
  %stats_batch = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 13
  %fw_cap.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %dev.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end
  %4 = ptrtoint ptr %tc_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc_info1, align 8
  %iter2.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %5, i32 0, i32 12
  %call.i.i26 = call i32 @rhashtable_walk_start_check(ptr noundef %iter2.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond
  %i.026.i = phi i32 [ 0, %for.cond ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = call ptr @rhashtable_walk_next(ptr noundef %iter2.i) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %cmp5.i = icmp eq ptr %call.i, inttoptr (i32 -11 to ptr)
  br i1 %cmp5.i, label %if.then.i.for.inc.i_crit_edge, label %bnxt_tc_flow_stats_batch_prep.exit

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end8, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.bnxt_tc_stats_batch, ptr %stats_batch, i32 %i.026.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %arrayidx.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i, %if.then.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.then.i.for.inc.i_crit_edge ], [ %i.026.i, %if.end9.i ]
  %inc.i = add nsw i32 %i.1.i, 1
  %cmp.i = icmp slt i32 %i.1.i, 9
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.end8.thread38

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end8.thread38:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rhashtable_walk_stop(ptr noundef %iter2.i) #12
  br label %if.end11

bnxt_tc_flow_stats_batch_prep.exit:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @rhashtable_walk_stop(ptr noundef %iter2.i) #12
  br label %for.end

if.end8:                                          ; preds = %if.end.i
  call void @rhashtable_walk_stop(ptr noundef %iter2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.026.i)
  %tobool9.not = icmp eq i32 %i.026.i, 0
  br i1 %tobool9.not, label %if.end8.for.end_crit_edge, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end11:                                         ; preds = %if.end8.if.end11_crit_edge, %if.end8.thread38
  %i.2.i.ph41 = phi i32 [ %inc.i, %if.end8.thread38 ], [ %i.026.i, %if.end8.if.end11_crit_edge ]
  %7 = ptrtoint ptr %tc_info1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tc_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #12
  %9 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !168
  %call.i.i28 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i, i16 noundef zeroext 262, i32 noundef 80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool.not.i.i = icmp eq i32 %call.i.i28, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.bnxt_hwrm_cfa_flow_stats_get.exit.thread.i_crit_edge

if.end11.bnxt_hwrm_cfa_flow_stats_get.exit.thread.i_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_hwrm_cfa_flow_stats_get.exit.thread.i

if.end.i.i:                                       ; preds = %if.end11
  %10 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req.i.i, align 4
  %flow_handle_0.i.i = getelementptr inbounds %struct.hwrm_cfa_flow_stats_input, ptr %11, i32 0, i32 6
  %flow_id_0.i.i = getelementptr inbounds %struct.hwrm_cfa_flow_stats_input, ptr %11, i32 0, i32 17
  %conv.i.i = trunc i32 %i.2.i.ph41 to i16
  %12 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #12
  %num_flows1.i.i = getelementptr inbounds %struct.hwrm_cfa_flow_stats_input, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %num_flows1.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %num_flows1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2.i.ph41)
  %cmp56.i.i = icmp sgt i32 %i.2.i.ph41, 0
  br i1 %cmp56.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %bnxt_fill_cfa_stats_req.exit.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.057.i.i = phi i32 [ %inc.i.i, %bnxt_fill_cfa_stats_req.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bnxt_tc_stats_batch, ptr %stats_batch, i32 %i.057.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx4.i.i = getelementptr i16, ptr %flow_handle_0.i.i, i32 %i.057.i.i
  %16 = ptrtoint ptr %fw_cap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_cap.i.i.i, align 8
  %and.i.i.i = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else4.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5.i.i = getelementptr i32, ptr %flow_id_0.i.i, i32 %i.057.i.i
  %flow_id1.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %flow_id1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flow_id1.i.i.i, align 4
  %20 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx5.i.i, align 4
  %dir.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %15, i32 0, i32 2, i32 2, i32 6
  %21 = ptrtoint ptr %dir.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dir.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.i.i.i = icmp eq i8 %22, 1
  %..i.i.i = select i1 %cmp.i.i.i, i16 -28673, i16 4095
  %23 = call i16 @llvm.bswap.i16(i16 %..i.i.i) #12
  br label %bnxt_fill_cfa_stats_req.exit.i.i

if.else4.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flow_handle5.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %15, i32 0, i32 4
  %24 = ptrtoint ptr %flow_handle5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flow_handle5.i.i.i, align 8
  br label %bnxt_fill_cfa_stats_req.exit.i.i

bnxt_fill_cfa_stats_req.exit.i.i:                 ; preds = %if.else4.i.i.i, %if.then.i.i.i
  %storemerge.i.i.i = phi i16 [ %25, %if.else4.i.i.i ], [ %23, %if.then.i.i.i ]
  %26 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i.i, ptr %arrayidx4.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.057.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %i.2.i.ph41
  br i1 %exitcond.not.i.i, label %bnxt_fill_cfa_stats_req.exit.i.i.for.end.i.i_crit_edge, label %bnxt_fill_cfa_stats_req.exit.i.i.for.body.i.i_crit_edge

bnxt_fill_cfa_stats_req.exit.i.i.for.body.i.i_crit_edge: ; preds = %bnxt_fill_cfa_stats_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

bnxt_fill_cfa_stats_req.exit.i.i.for.end.i.i_crit_edge: ; preds = %bnxt_fill_cfa_stats_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %bnxt_fill_cfa_stats_req.exit.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %27 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req.i.i, align 4
  %call6.i.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %28) #12
  %29 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req.i.i, align 4
  %call7.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %exit.thread54.i.i

exit.thread54.i.i:                                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %32) #12
  br label %bnxt_hwrm_cfa_flow_stats_get.exit.thread.i

if.then9.i.i:                                     ; preds = %for.end.i.i
  %packet_0.i.i = getelementptr inbounds %struct.hwrm_cfa_flow_stats_output, ptr %call6.i.i, i32 0, i32 4
  %byte_0.i.i = getelementptr inbounds %struct.hwrm_cfa_flow_stats_output, ptr %call6.i.i, i32 0, i32 14
  br i1 %cmp56.i.i, label %if.then9.i.i.for.body13.i.i_crit_edge, label %bnxt_hwrm_cfa_flow_stats_get.exit.thread9.i

if.then9.i.i.for.body13.i.i_crit_edge:            ; preds = %if.then9.i.i
  br label %for.body13.i.i

bnxt_hwrm_cfa_flow_stats_get.exit.thread9.i:      ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %34) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end9.i32.for.cond.backedge_crit_edge, %bnxt_hwrm_cfa_flow_stats_get.exit.thread.i, %bnxt_hwrm_cfa_flow_stats_get.exit.thread9.i
  br label %for.cond

for.body13.i.i:                                   ; preds = %for.body13.i.i.for.body13.i.i_crit_edge, %if.then9.i.i.for.body13.i.i_crit_edge
  %i.160.i.i = phi i32 [ %inc20.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ 0, %if.then9.i.i.for.body13.i.i_crit_edge ]
  %arrayidx14.i.i = getelementptr i64, ptr %packet_0.i.i, i32 %i.160.i.i
  %35 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx14.i.i, align 8
  %37 = call i64 @llvm.bswap.i64(i64 %36) #12
  %hw_stats.i.i = getelementptr %struct.bnxt_tc_stats_batch, ptr %stats_batch, i32 %i.160.i.i, i32 1
  %38 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %hw_stats.i.i, align 8
  %arrayidx16.i.i = getelementptr i64, ptr %byte_0.i.i, i32 %i.160.i.i
  %39 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx16.i.i, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #12
  %bytes.i.i = getelementptr %struct.bnxt_tc_stats_batch, ptr %stats_batch, i32 %i.160.i.i, i32 1, i32 1
  %42 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %bytes.i.i, align 8
  %inc20.i.i = add nuw nsw i32 %i.160.i.i, 1
  %exitcond61.not.i.i = icmp eq i32 %inc20.i.i, %i.2.i.ph41
  br i1 %exitcond61.not.i.i, label %for.body.lr.ph.i, label %for.body13.i.i.for.body13.i.i_crit_edge

for.body13.i.i.for.body13.i.i_crit_edge:          ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13.i.i

bnxt_hwrm_cfa_flow_stats_get.exit.thread.i:       ; preds = %exit.thread54.i.i, %if.end11.bnxt_hwrm_cfa_flow_stats_get.exit.thread.i_crit_edge
  %rc.052.i.i = phi i32 [ %call7.i.i, %exit.thread54.i.i ], [ %call.i.i28, %if.end11.bnxt_hwrm_cfa_flow_stats_get.exit.thread.i_crit_edge ]
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %44, ptr noundef nonnull @.str.1, i32 noundef %rc.052.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #12
  br label %for.cond.backedge

for.body.lr.ph.i:                                 ; preds = %for.body13.i.i
  %45 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %46) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #12
  %bytes_mask.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %8, i32 0, i32 14
  %packets_mask.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %8, i32 0, i32 15
  br label %for.body.i30

for.body.i30:                                     ; preds = %if.end9.i32.for.body.i30_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i31, %if.end9.i32.for.body.i30_crit_edge ]
  %arrayidx.i29 = getelementptr %struct.bnxt_tc_stats_batch, ptr %stats_batch, i32 %i.08.i
  %47 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i29, align 8
  %stats_lock.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %48, i32 0, i32 2, i32 14
  call void @_raw_spin_lock(ptr noundef %stats_lock.i) #12
  %stats.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %48, i32 0, i32 2, i32 11
  %hw_stats.i = getelementptr %struct.bnxt_tc_stats_batch, ptr %stats_batch, i32 %i.08.i, i32 1
  %bytes.i1.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %48, i32 0, i32 2, i32 11, i32 1
  %bytes1.i.i = getelementptr %struct.bnxt_tc_stats_batch, ptr %stats_batch, i32 %i.08.i, i32 1, i32 1
  %49 = ptrtoint ptr %bytes1.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bytes1.i.i, align 8
  %51 = ptrtoint ptr %bytes_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bytes_mask.i.i, align 8
  %53 = ptrtoint ptr %bytes.i1.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bytes.i1.i, align 8
  %and.i.i2.i = and i64 %54, %52
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i2.i, i64 %50)
  %cmp.i.i3.i = icmp ugt i64 %and.i.i2.i, %50
  %neg.i.i.i = xor i64 %52, -1
  %and1.i.i.i = and i64 %54, %neg.i.i.i
  %add.i.i.i = add i64 %and1.i.i.i, %50
  %add2.i.i.i = add i64 %52, 1
  %add3.i.i.i = select i1 %cmp.i.i3.i, i64 %add2.i.i.i, i64 0
  %storemerge.i.i4.i = add i64 %add.i.i.i, %add3.i.i.i
  %55 = ptrtoint ptr %bytes.i1.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %storemerge.i.i4.i, ptr %bytes.i1.i, align 8
  %56 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %hw_stats.i, align 8
  %58 = ptrtoint ptr %packets_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %packets_mask.i.i, align 8
  %60 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %stats.i, align 8
  %and.i6.i.i = and i64 %61, %59
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i6.i.i, i64 %57)
  %cmp.i7.i.i = icmp ugt i64 %and.i6.i.i, %57
  %neg.i8.i.i = xor i64 %59, -1
  %and1.i9.i.i = and i64 %61, %neg.i8.i.i
  %add.i10.i.i = add i64 %and1.i9.i.i, %57
  %add2.i11.i.i = add i64 %59, 1
  %add3.i12.i.i = select i1 %cmp.i7.i.i, i64 %add2.i11.i.i, i64 0
  %storemerge.i13.i.i = add i64 %add.i10.i.i, %add3.i12.i.i
  %62 = ptrtoint ptr %stats.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %storemerge.i13.i.i, ptr %stats.i, align 8
  %prev_stats.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %48, i32 0, i32 2, i32 12
  %63 = ptrtoint ptr %prev_stats.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %prev_stats.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge.i13.i.i, i64 %64)
  %cmp7.not.i = icmp eq i64 %storemerge.i13.i.i, %64
  br i1 %cmp7.not.i, label %for.body.i30.if.end9.i32_crit_edge, label %if.then8.i

for.body.i30.if.end9.i32_crit_edge:               ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i32

if.then8.i:                                       ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %lastused.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %48, i32 0, i32 2, i32 13
  %66 = ptrtoint ptr %lastused.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %lastused.i, align 8
  br label %if.end9.i32

if.end9.i32:                                      ; preds = %if.then8.i, %for.body.i30.if.end9.i32_crit_edge
  call void @_raw_spin_unlock(ptr noundef %stats_lock.i) #12
  %inc.i31 = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i31, %i.2.i.ph41
  br i1 %exitcond.not.i, label %if.end9.i32.for.cond.backedge_crit_edge, label %if.end9.i32.for.body.i30_crit_edge

if.end9.i32.for.body.i30_crit_edge:               ; preds = %if.end9.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i30

if.end9.i32.for.cond.backedge_crit_edge:          ; preds = %if.end9.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %bnxt_tc_flow_stats_batch_prep.exit
  call void @rhashtable_walk_exit(ptr noundef %iter) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_tc_setup_flower(ptr noundef %bp, i16 noundef zeroext %src_fid, ptr noundef %cls_flower) local_unnamed_addr #0 align 64 {
entry:
  %req.i.i = alloca ptr, align 4
  %req.i.i14.i.i = alloca ptr, align 4
  %req.i.i.i.i = alloca ptr, align 4
  %l2_info.i.i.i = alloca %struct.bnxt_tc_l2_key, align 2
  %tun_key2.i.i.i = alloca %struct.ip_tunnel_key, align 8
  %eth_addr_mask.i.i.i = alloca [6 x i16], align 2
  %eth_addr.i.i.i = alloca [6 x i16], align 2
  %match8.i.i = alloca %struct.flow_match_basic, align 4
  %match31.i.i = alloca %struct.flow_match_eth_addrs, align 4
  %match54.i.i = alloca %struct.flow_match_vlan, align 4
  %match83.i.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match103.i.i = alloca %struct.flow_match_ipv6_addrs, align 4
  %match126.i.i = alloca %struct.flow_match_ports, align 4
  %match146.i.i = alloca %struct.flow_match_icmp, align 4
  %match166.i.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match193.i.i = alloca %struct.flow_match_enc_keyid, align 4
  %match207.i.i = alloca %struct.flow_match_ports, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 1
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %command, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  %tc_info1.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %3 = ptrtoint ptr %tc_info1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tc_info1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 512) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.done.i_crit_edge, label %if.end.i

sw.bb.done.i_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

if.end.i:                                         ; preds = %sw.bb
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %6 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie.i, align 4
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call7.i.i.i, align 8
  %flow3.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2
  %rule.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 3
  %9 = ptrtoint ptr %rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rule.i.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %.not.i.i = icmp eq i32 %15, 3
  br i1 %.not.i.i, label %if.then7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %14) #15
  br label %do.end56.i

if.then7.i.i:                                     ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match8.i.i) #12
  %18 = ptrtoint ptr %match8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %match8.i.i, align 4, !annotation !168
  %19 = getelementptr inbounds %struct.flow_match_basic, ptr %match8.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %19, align 4, !annotation !168
  call void @flow_rule_match_basic(ptr noundef %10, ptr noundef nonnull %match8.i.i) #12
  %21 = ptrtoint ptr %match8.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %match8.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 2
  %ether_type.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 4
  %25 = ptrtoint ptr %ether_type.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %ether_type.i.i, align 2
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %19, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 2
  %ether_type10.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 4
  %30 = ptrtoint ptr %ether_type10.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %ether_type10.i.i, align 2
  %31 = load i16, ptr %22, align 2
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %31, label %if.then7.i.i.if.end28.i.i_crit_edge [
    i16 2048, label %if.then7.i.i.if.then21.i.i_crit_edge
    i16 -31011, label %if.then7.i.i.if.then21.i.i_crit_edge30
  ]

if.then7.i.i.if.then21.i.i_crit_edge30:           ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i.i

if.then7.i.i.if.then21.i.i_crit_edge:             ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i.i

if.then7.i.i.if.end28.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i.i

if.then21.i.i:                                    ; preds = %if.then7.i.i.if.then21.i.i_crit_edge, %if.then7.i.i.if.then21.i.i_crit_edge30
  %ip_proto.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ip_proto.i.i, align 2
  %l4_key.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %35 = ptrtoint ptr %l4_key.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %l4_key.i.i, align 8
  %ip_proto25.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %ip_proto25.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ip_proto25.i.i, align 2
  %l4_mask.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 7
  %38 = ptrtoint ptr %l4_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %l4_mask.i.i, align 2
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then21.i.i, %if.then7.i.i.if.end28.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match8.i.i) #12
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %10, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and.i.i302.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i302.i.i)
  %tobool.i.i303.not.i.i = icmp eq i32 %and.i.i302.i.i, 0
  br i1 %tobool.i.i303.not.i.i, label %if.end28.i.i.if.end51.i.i_crit_edge, label %if.then30.i.i

if.end28.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match31.i.i) #12
  %43 = ptrtoint ptr %match31.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %match31.i.i, align 4, !annotation !168
  %44 = getelementptr inbounds %struct.flow_match_eth_addrs, ptr %match31.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %44, align 4, !annotation !168
  call void @flow_rule_match_eth_addrs(ptr noundef %10, ptr noundef nonnull %match31.i.i) #12
  %46 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flow3.i, align 8
  %or.i.i = or i32 %47, 2
  store i32 %or.i.i, ptr %flow3.i, align 8
  %l2_key32.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %match31.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %match31.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %52 = ptrtoint ptr %l2_key32.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %l2_key32.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 0, i32 4
  %55 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %add.ptr1.i.i.i, align 2
  %l2_mask35.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %44, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %60 = ptrtoint ptr %l2_mask35.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %l2_mask35.i.i, align 4
  %add.ptr.i304.i.i = getelementptr i8, ptr %57, i32 4
  %61 = ptrtoint ptr %add.ptr.i304.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %add.ptr.i304.i.i, align 2
  %add.ptr1.i305.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 0, i32 4
  %63 = ptrtoint ptr %add.ptr1.i305.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %add.ptr1.i305.i.i, align 2
  %smac.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1
  %src.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %49, i32 0, i32 1
  %64 = ptrtoint ptr %src.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %src.i.i, align 4
  %66 = ptrtoint ptr %smac.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %smac.i.i, align 4
  %add.ptr.i306.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %49, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %add.ptr.i306.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr.i306.i.i, align 2
  %add.ptr1.i307.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1, i32 4
  %69 = ptrtoint ptr %add.ptr1.i307.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %add.ptr1.i307.i.i, align 8
  %smac46.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1
  %src49.i.i = getelementptr inbounds %struct.flow_dissector_key_eth_addrs, ptr %57, i32 0, i32 1
  %70 = ptrtoint ptr %src49.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src49.i.i, align 4
  %72 = ptrtoint ptr %smac46.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %smac46.i.i, align 8
  %add.ptr.i308.i.i = getelementptr %struct.flow_dissector_key_eth_addrs, ptr %57, i32 0, i32 1, i32 4
  %73 = ptrtoint ptr %add.ptr.i308.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i308.i.i, align 2
  %add.ptr1.i309.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1, i32 4
  %75 = ptrtoint ptr %add.ptr1.i309.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %add.ptr1.i309.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match31.i.i) #12
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then30.i.i, %if.end28.i.i.if.end51.i.i_crit_edge
  %76 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %10, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %and.i.i310.i.i = and i32 %79, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i310.i.i)
  %tobool.i.i311.not.i.i = icmp eq i32 %and.i.i310.i.i, 0
  br i1 %tobool.i.i311.not.i.i, label %if.end51.i.i.if.end80.i.i_crit_edge, label %if.then53.i.i

if.end51.i.i.if.end80.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i.i

if.then53.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match54.i.i) #12
  %80 = ptrtoint ptr %match54.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 -1 to ptr), ptr %match54.i.i, align 4, !annotation !168
  %81 = getelementptr inbounds %struct.flow_match_vlan, ptr %match54.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -1 to ptr), ptr %81, align 4, !annotation !168
  call void @flow_rule_match_vlan(ptr noundef %10, ptr noundef nonnull %match54.i.i) #12
  %83 = ptrtoint ptr %match54.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %match54.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load.i.i = load i16, ptr %84, align 2
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 4
  %86 = shl i16 %bf.load.i.i, 13
  %or60300.i.i = or i16 %bf.lshr.i.i, %86
  %inner_vlan_tci.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 3
  %87 = ptrtoint ptr %inner_vlan_tci.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %or60300.i.i, ptr %inner_vlan_tci.i.i, align 4
  %88 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %81, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load64.i.i = load i16, ptr %89, align 2
  %bf.lshr65.i.i = lshr i16 %bf.load64.i.i, 4
  %91 = shl i16 %bf.load64.i.i, 13
  %or72301.i.i = or i16 %bf.lshr65.i.i, %91
  %inner_vlan_tci75.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 3
  %92 = ptrtoint ptr %inner_vlan_tci75.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %or72301.i.i, ptr %inner_vlan_tci75.i.i, align 8
  %inner_vlan_tpid.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 2
  %93 = ptrtoint ptr %inner_vlan_tpid.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -32512, ptr %inner_vlan_tpid.i.i, align 2
  %inner_vlan_tpid78.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 2
  %94 = ptrtoint ptr %inner_vlan_tpid78.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %inner_vlan_tpid78.i.i, align 2
  %num_vlans.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 5
  %95 = ptrtoint ptr %num_vlans.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %num_vlans.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match54.i.i) #12
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.then53.i.i, %if.end51.i.i.if.end80.i.i_crit_edge
  %96 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %10, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %and.i.i312.i.i = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i312.i.i)
  %tobool.i.i313.not.i.i = icmp eq i32 %and.i.i312.i.i, 0
  br i1 %tobool.i.i313.not.i.i, label %if.else.i.i, label %if.then82.i.i

if.then82.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match83.i.i) #12
  %100 = ptrtoint ptr %match83.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 -1 to ptr), ptr %match83.i.i, align 4, !annotation !168
  %101 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match83.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 -1 to ptr), ptr %101, align 4, !annotation !168
  call void @flow_rule_match_ipv4_addrs(ptr noundef %10, ptr noundef nonnull %match83.i.i) #12
  %103 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flow3.i, align 8
  %or85.i.i = or i32 %104, 4
  store i32 %or85.i.i, ptr %flow3.i, align 8
  %105 = ptrtoint ptr %match83.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %match83.i.i, align 4
  %dst87.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %dst87.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dst87.i.i, align 4
  %l3_key.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %109 = ptrtoint ptr %l3_key.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %l3_key.i.i, align 8
  %110 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %101, align 4
  %dst89.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %dst89.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dst89.i.i, align 4
  %l3_mask.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %114 = ptrtoint ptr %l3_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %l3_mask.i.i, align 8
  %115 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %106, align 4
  %saddr.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %117 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %saddr.i.i, align 4
  %118 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %111, align 4
  %saddr99.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %saddr99.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %saddr99.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match83.i.i) #12
  br label %if.end123.i.i

if.else.i.i:                                      ; preds = %if.end80.i.i
  %and.i.i314.i.i = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i314.i.i)
  %tobool.i.i315.not.i.i = icmp eq i32 %and.i.i314.i.i, 0
  br i1 %tobool.i.i315.not.i.i, label %if.else.i.i.if.end123.i.i_crit_edge, label %if.then102.i.i

if.else.i.i.if.end123.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123.i.i

if.then102.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match103.i.i) #12
  %121 = ptrtoint ptr %match103.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 -1 to ptr), ptr %match103.i.i, align 4, !annotation !168
  %122 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match103.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 -1 to ptr), ptr %122, align 4, !annotation !168
  call void @flow_rule_match_ipv6_addrs(ptr noundef %10, ptr noundef nonnull %match103.i.i) #12
  %124 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flow3.i, align 8
  %or105.i.i = or i32 %125, 8
  store i32 %or105.i.i, ptr %flow3.i, align 8
  %l3_key106.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %126 = ptrtoint ptr %match103.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %match103.i.i, align 4
  %dst109.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %127, i32 0, i32 1
  %128 = call ptr @memcpy(ptr %l3_key106.i.i, ptr %dst109.i.i, i32 16)
  %l3_mask110.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %129 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %122, align 4
  %dst113.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %130, i32 0, i32 1
  %131 = call ptr @memcpy(ptr %l3_mask110.i.i, ptr %dst113.i.i, i32 16)
  %saddr115.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 4, i32 0, i32 0, i32 1
  %132 = call ptr @memcpy(ptr %saddr115.i.i, ptr %127, i32 16)
  %saddr119.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 5, i32 0, i32 0, i32 1
  %133 = call ptr @memcpy(ptr %saddr119.i.i, ptr %130, i32 16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match103.i.i) #12
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %if.then102.i.i, %if.else.i.i.if.end123.i.i_crit_edge, %if.then82.i.i
  %134 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %10, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %and.i.i316.i.i = and i32 %137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i316.i.i)
  %tobool.i.i317.not.i.i = icmp eq i32 %and.i.i316.i.i, 0
  br i1 %tobool.i.i317.not.i.i, label %if.end123.i.i.if.end143.i.i_crit_edge, label %if.then125.i.i

if.end123.i.i.if.end143.i.i_crit_edge:            ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143.i.i

if.then125.i.i:                                   ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match126.i.i) #12
  %138 = ptrtoint ptr %match126.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr inttoptr (i32 -1 to ptr), ptr %match126.i.i, align 4, !annotation !168
  %139 = getelementptr inbounds %struct.flow_match_ports, ptr %match126.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 -1 to ptr), ptr %139, align 4, !annotation !168
  call void @flow_rule_match_ports(ptr noundef %10, ptr noundef nonnull %match126.i.i) #12
  %141 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flow3.i, align 8
  %or128.i.i = or i32 %142, 16
  store i32 %or128.i.i, ptr %flow3.i, align 8
  %143 = ptrtoint ptr %match126.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %match126.i.i, align 4
  %dst130.i.i = getelementptr inbounds %struct.anon.198, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %dst130.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %dst130.i.i, align 2
  %147 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 6, i32 1
  %dport.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 6, i32 1, i32 0, i32 1
  %148 = ptrtoint ptr %dport.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %146, ptr %dport.i.i, align 4
  %149 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %139, align 4
  %dst133.i.i = getelementptr inbounds %struct.anon.198, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %dst133.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %dst133.i.i, align 2
  %153 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 7, i32 1
  %dport135.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 7, i32 1, i32 0, i32 1
  %154 = ptrtoint ptr %dport135.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %152, ptr %dport135.i.i, align 2
  %155 = ptrtoint ptr %144 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %144, align 4
  %157 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %147, align 2
  %158 = ptrtoint ptr %150 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %150, align 4
  %160 = ptrtoint ptr %153 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %153, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match126.i.i) #12
  br label %if.end143.i.i

if.end143.i.i:                                    ; preds = %if.then125.i.i, %if.end123.i.i.if.end143.i.i_crit_edge
  %161 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %10, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %and.i.i318.i.i = and i32 %164, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i318.i.i)
  %tobool.i.i319.not.i.i = icmp eq i32 %and.i.i318.i.i, 0
  br i1 %tobool.i.i319.not.i.i, label %if.end143.i.i.if.end163.i.i_crit_edge, label %if.then145.i.i

if.end143.i.i.if.end163.i.i_crit_edge:            ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163.i.i

if.then145.i.i:                                   ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match146.i.i) #12
  %165 = ptrtoint ptr %match146.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr inttoptr (i32 -1 to ptr), ptr %match146.i.i, align 4, !annotation !168
  %166 = getelementptr inbounds %struct.flow_match_icmp, ptr %match146.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr inttoptr (i32 -1 to ptr), ptr %166, align 4, !annotation !168
  call void @flow_rule_match_icmp(ptr noundef %10, ptr noundef nonnull %match146.i.i) #12
  %168 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flow3.i, align 8
  %or148.i.i = or i32 %169, 32
  store i32 %or148.i.i, ptr %flow3.i, align 8
  %170 = ptrtoint ptr %match146.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %match146.i.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 2
  %174 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 6, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %173, ptr %174, align 2
  %code.i.i = getelementptr inbounds %struct.anon.199, ptr %171, i32 0, i32 1
  %176 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %code.i.i, align 1
  %code154.i.i = getelementptr inbounds %struct.anon.193, ptr %174, i32 0, i32 1
  %178 = ptrtoint ptr %code154.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %code154.i.i, align 1
  %179 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %166, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 2
  %183 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 7, i32 1
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %182, ptr %183, align 8
  %code160.i.i = getelementptr inbounds %struct.anon.199, ptr %180, i32 0, i32 1
  %185 = ptrtoint ptr %code160.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %code160.i.i, align 1
  %code162.i.i = getelementptr inbounds %struct.anon.193, ptr %183, i32 0, i32 1
  %187 = ptrtoint ptr %code162.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %code162.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match146.i.i) #12
  br label %if.end163.i.i

if.end163.i.i:                                    ; preds = %if.then145.i.i, %if.end143.i.i.if.end163.i.i_crit_edge
  %188 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %10, align 8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %and.i.i320.i.i = and i32 %191, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i320.i.i)
  %tobool.i.i321.not.i.i = icmp eq i32 %and.i.i320.i.i, 0
  br i1 %tobool.i.i321.not.i.i, label %if.else186.i.i, label %if.then165.i.i

if.then165.i.i:                                   ; preds = %if.end163.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match166.i.i) #12
  %192 = ptrtoint ptr %match166.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 -1 to ptr), ptr %match166.i.i, align 4, !annotation !168
  %193 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match166.i.i, i32 0, i32 1
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr inttoptr (i32 -1 to ptr), ptr %193, align 4, !annotation !168
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %10, ptr noundef nonnull %match166.i.i) #12
  %195 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %flow3.i, align 8
  %or168.i.i = or i32 %196, 128
  store i32 %or168.i.i, ptr %flow3.i, align 8
  %197 = ptrtoint ptr %match166.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %match166.i.i, align 4
  %dst170.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %dst170.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %dst170.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 1
  %dst171.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %201 = ptrtoint ptr %dst171.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %dst171.i.i, align 4
  %202 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %193, align 4
  %dst173.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %dst173.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %dst173.i.i, align 4
  %u174.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 9, i32 1
  %dst175.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %206 = ptrtoint ptr %dst175.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %dst175.i.i, align 4
  %207 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %198, align 4
  %209 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %u.i.i, align 8
  %210 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %203, align 4
  %212 = ptrtoint ptr %u174.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %u174.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match166.i.i) #12
  br label %if.end190.i.i

if.else186.i.i:                                   ; preds = %if.end163.i.i
  %and.i.i322.i.i = and i32 %191, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i322.i.i)
  %tobool.i.i323.not.i.i = icmp eq i32 %and.i.i322.i.i, 0
  br i1 %tobool.i.i323.not.i.i, label %if.else186.i.i.if.end190.i.i_crit_edge, label %if.else186.i.i.do.end56.i_crit_edge

if.else186.i.i.do.end56.i_crit_edge:              ; preds = %if.else186.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56.i

if.else186.i.i.if.end190.i.i_crit_edge:           ; preds = %if.else186.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190.i.i

if.end190.i.i:                                    ; preds = %if.else186.i.i.if.end190.i.i_crit_edge, %if.then165.i.i
  %213 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %10, align 8
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %214, align 4
  %and.i.i324.i.i = and i32 %216, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i324.i.i)
  %tobool.i.i325.not.i.i = icmp eq i32 %and.i.i324.i.i, 0
  br i1 %tobool.i.i325.not.i.i, label %if.end190.i.i.if.end204.i.i_crit_edge, label %if.then192.i.i

if.end190.i.i.if.end204.i.i_crit_edge:            ; preds = %if.end190.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204.i.i

if.then192.i.i:                                   ; preds = %if.end190.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match193.i.i) #12
  %217 = ptrtoint ptr %match193.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr inttoptr (i32 -1 to ptr), ptr %match193.i.i, align 4, !annotation !168
  %218 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match193.i.i, i32 0, i32 1
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr inttoptr (i32 -1 to ptr), ptr %218, align 4, !annotation !168
  call void @flow_rule_match_enc_keyid(ptr noundef %10, ptr noundef nonnull %match193.i.i) #12
  %220 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %flow3.i, align 8
  %or195.i.i = or i32 %221, 1024
  store i32 %or195.i.i, ptr %flow3.i, align 8
  %222 = ptrtoint ptr %match193.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %match193.i.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  %conv.i.i.i = zext i32 %225 to i64
  %tun_key198.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %226 = ptrtoint ptr %tun_key198.i.i to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %conv.i.i.i, ptr %tun_key198.i.i, align 8
  %227 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %218, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %conv.i326.i.i = zext i32 %230 to i64
  %tun_mask202.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 9
  %231 = ptrtoint ptr %tun_mask202.i.i to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %conv.i326.i.i, ptr %tun_mask202.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match193.i.i) #12
  br label %if.end204.i.i

if.end204.i.i:                                    ; preds = %if.then192.i.i, %if.end190.i.i.if.end204.i.i_crit_edge
  %232 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %10, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %and.i.i327.i.i = and i32 %235, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i327.i.i)
  %tobool.i.i328.not.i.i = icmp eq i32 %and.i.i327.i.i, 0
  br i1 %tobool.i.i328.not.i.i, label %if.end204.i.i.if.end224.i.i_crit_edge, label %if.then206.i.i

if.end204.i.i.if.end224.i.i_crit_edge:            ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end224.i.i

if.then206.i.i:                                   ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match207.i.i) #12
  %236 = ptrtoint ptr %match207.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr inttoptr (i32 -1 to ptr), ptr %match207.i.i, align 4, !annotation !168
  %237 = getelementptr inbounds %struct.flow_match_ports, ptr %match207.i.i, i32 0, i32 1
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr inttoptr (i32 -1 to ptr), ptr %237, align 4, !annotation !168
  call void @flow_rule_match_enc_ports(ptr noundef %10, ptr noundef nonnull %match207.i.i) #12
  %239 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %flow3.i, align 8
  %or209.i.i = or i32 %240, 512
  store i32 %or209.i.i, ptr %flow3.i, align 8
  %241 = ptrtoint ptr %match207.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %match207.i.i, align 4
  %dst211.i.i = getelementptr inbounds %struct.anon.198, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %dst211.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %dst211.i.i, align 2
  %tp_dst.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 7
  %245 = ptrtoint ptr %tp_dst.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %tp_dst.i.i, align 2
  %246 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %237, align 4
  %dst214.i.i = getelementptr inbounds %struct.anon.198, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %dst214.i.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %dst214.i.i, align 2
  %tp_dst216.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 9, i32 7
  %250 = ptrtoint ptr %tp_dst216.i.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %tp_dst216.i.i, align 2
  %251 = ptrtoint ptr %242 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %242, align 4
  %tp_src.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 6
  %253 = ptrtoint ptr %tp_src.i.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %252, ptr %tp_src.i.i, align 8
  %254 = ptrtoint ptr %247 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %247, align 4
  %tp_src223.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 9, i32 6
  %256 = ptrtoint ptr %tp_src223.i.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %255, ptr %tp_src223.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match207.i.i) #12
  br label %if.end224.i.i

if.end224.i.i:                                    ; preds = %if.then206.i.i, %if.end204.i.i.if.end224.i.i_crit_edge
  %actions.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %10, i32 0, i32 1
  %extack.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flower, i32 0, i32 3
  %257 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %extack.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eth_addr_mask.i.i.i) #12
  %259 = call ptr @memset(ptr %eth_addr_mask.i.i.i, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eth_addr.i.i.i) #12
  %260 = call ptr @memset(ptr %eth_addr.i.i.i, i32 0, i32 12)
  %261 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %action.i.i, align 8
  %263 = zext i32 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %262, label %for.body.preheader.i.i.i.i.i.i [
    i32 0, label %if.then.i.i.i
    i32 1, label %if.end224.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge
  ]

if.end224.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge: ; preds = %if.end224.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %flow_action_first_entry_get.exit.i.i.i.i.i

if.then.i.i.i:                                    ; preds = %if.end224.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %264 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %265, ptr noundef nonnull @.str.5) #15
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.body.preheader.i.i.i.i.i.i:                   ; preds = %if.end224.i.i
  %entries.i.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %10, i32 1
  br label %for.body.i.i.i.i.i.i

for.body.i.i.i.i.i.i:                             ; preds = %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.i.i
  %i.024.i.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i.i, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i.i.i ]
  %last_hw_stats.023.i.i.i.i.i.i = phi i32 [ %269, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i.i.i.i ]
  %action_entry.022.i.i.i.i.i.i = phi ptr [ %arrayidx11.i.i.i.i.i.i, %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge ], [ %entries.i.i.i.i.i.i, %for.body.preheader.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %i.024.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %for.body.i.i.i.i.i.i
  %hw_stats.i.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i.i.i.i, i32 0, i32 2
  %266 = ptrtoint ptr %hw_stats.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %hw_stats.i.i.i.i.i.i, align 8
  %conv.i.i.i.i.i.i = and i32 %last_hw_stats.023.i.i.i.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %267, i32 %conv.i.i.i.i.i.i)
  %cmp1.not.i.i.i.i.i.i = icmp eq i32 %267, %conv.i.i.i.i.i.i
  br i1 %cmp1.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, label %do.body.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #12
  %tobool4.not.i.i.i.i.i.i = icmp eq ptr %258, null
  br i1 %tobool4.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, label %do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i.i.i.i

do.body.i.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

if.end7.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.i.if.end7.i.i.i.i.i.i_crit_edge
  %hw_stats8.i.i.i.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i.i.i.i, i32 0, i32 2
  %268 = ptrtoint ptr %hw_stats8.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %hw_stats8.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add nuw i32 %i.024.i.i.i.i.i.i, 1
  %arrayidx11.i.i.i.i.i.i = getelementptr %struct.flow_rule, ptr %10, i32 0, i32 1, i32 1, i32 %inc.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i.i, %262
  br i1 %exitcond.not.i.i.i.i.i.i, label %if.end7.i.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge, label %if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge

if.end7.i.i.i.i.i.i.for.body.i.i.i.i.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i.i.i

if.end7.i.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %flow_action_first_entry_get.exit.i.i.i.i.i

flow_action_first_entry_get.exit.i.i.i.i.i:       ; preds = %if.end7.i.i.i.i.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge, %if.end224.i.i.flow_action_first_entry_get.exit.i.i.i.i.i_crit_edge
  %hw_stats.i.i.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %10, i32 1, i32 0, i32 2
  %270 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool.not.i.i.i.i.i = icmp eq i32 %271, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %flow_action_first_entry_get.exit.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, label %if.then14.i.i.i.i.i, !prof !169

land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i.i.i.i

if.then14.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 354, i32 noundef 9, ptr noundef null) #12
  br label %land.lhs.true.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then14.i.i.i.i.i, %land.rhs.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.i.i.i.land.lhs.true.i.i.i.i.i_crit_edge
  %272 = ptrtoint ptr %hw_stats.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %hw_stats.i.i.i.i.i, align 8
  %neg.i.i.i.i.i = and i32 %273, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i.i.i.i)
  %tobool46.not.i.i.i.i.i = icmp eq i32 %neg.i.i.i.i.i, 3
  br i1 %tobool46.not.i.i.i.i.i, label %if.end3.i.i.i, label %do.body48.i.i.i.i.i

do.body48.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #12
  %tobool49.not.i.i.i.i.i = icmp eq ptr %258, null
  br i1 %tobool49.not.i.i.i.i.i, label %do.body48.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, label %do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge

do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.body48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i.i.i.i

do.body48.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %do.body48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

cleanup.sink.split.i.i.i.i.i:                     ; preds = %do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge
  %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i.i.i = phi ptr [ @flow_action_mixed_hw_stats_check.__msg, %do.body.i.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge ], [ @__flow_action_hw_stats_check.__msg, %do.body48.i.i.i.i.i.cleanup.sink.split.i.i.i.i.i_crit_edge ]
  %274 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %flow_action_mixed_hw_stats_check.__msg.sink.i.i.i.i.i, ptr %258, align 4
  br label %bnxt_tc_parse_flow.exit.thread188.i

if.end3.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.i.i
  %275 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %cmp126.not.i.i.i = icmp eq i32 %276, 0
  br i1 %cmp126.not.i.i.i, label %if.end3.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end3.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end3.i.i.i
  %entries.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %10, i32 1
  %push_vlan_tci.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 4
  %push_vlan_tpid.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 3
  %tun_encap_key.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 5
  %dst_dev.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0128.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %act.0127.i.i.i = phi ptr [ %entries.i.i.i, %for.body.lr.ph.i.i.i ], [ %arrayidx28.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %277 = ptrtoint ptr %act.0127.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %act.0127.i.i.i, align 8
  %279 = zext i32 %278 to i64
  call void @__sanitizer_cov_trace_switch(i64 %279, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %278, label %for.body.i.i.i.for.inc.i.i.i_crit_edge [
    i32 1, label %sw.bb.i.i.i
    i32 4, label %sw.bb4.i.i.i
    i32 13, label %sw.bb21.i.i.i
    i32 12, label %sw.bb18.i.i.i
    i32 11, label %sw.bb13.i.i.i
    i32 9, label %sw.bb.i.i.i.i
    i32 8, label %sw.bb1.i.i.i.i
    i32 10, label %for.body.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge
  ]

for.body.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %280 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %actions.i.i, align 8
  %or.i.i.i = or i32 %281, 32
  store i32 %or.i.i.i, ptr %actions.i.i, align 8
  br label %if.end7.i

sw.bb4.i.i.i:                                     ; preds = %for.body.i.i.i
  %282 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0127.i.i.i, i32 0, i32 5
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %284, null
  br i1 %tobool.not.i.i.i.i, label %bnxt_tc_parse_redir.exit.i.i.i, label %bnxt_tc_parse_redir.exit.thread.i.i.i

bnxt_tc_parse_redir.exit.thread.i.i.i:            ; preds = %sw.bb4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %285 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %actions.i.i, align 8
  %or.i.i.i.i = or i32 %286, 1
  store i32 %or.i.i.i.i, ptr %actions.i.i, align 8
  %287 = ptrtoint ptr %dst_dev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %284, ptr %dst_dev.i.i.i.i, align 8
  br label %for.inc.i.i.i

bnxt_tc_parse_redir.exit.i.i.i:                   ; preds = %sw.bb4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev1.i.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %288 = ptrtoint ptr %dev1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev1.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %289, ptr noundef nonnull @.str.8) #15
  br label %bnxt_tc_parse_flow.exit.thread188.i

sw.bb.i.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %290 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %actions.i.i, align 8
  %or.i98.i.i.i = or i32 %291, 16
  store i32 %or.i98.i.i.i, ptr %actions.i.i, align 8
  br label %for.inc.i.i.i

sw.bb1.i.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %292 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %actions.i.i, align 8
  %or3.i.i.i.i = or i32 %293, 8
  store i32 %or3.i.i.i.i, ptr %actions.i.i, align 8
  %294 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0127.i.i.i, i32 0, i32 5
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %294, align 8
  %297 = ptrtoint ptr %push_vlan_tci.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %296, ptr %push_vlan_tci.i.i.i.i, align 2
  %proto.i.i.i.i = getelementptr inbounds %struct.anon.176, ptr %294, i32 0, i32 1
  %298 = ptrtoint ptr %proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %proto.i.i.i.i, align 2
  %300 = ptrtoint ptr %push_vlan_tpid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %299, ptr %push_vlan_tpid.i.i.i.i, align 4
  br label %for.inc.i.i.i

sw.bb13.i.i.i:                                    ; preds = %for.body.i.i.i
  %301 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0127.i.i.i, i32 0, i32 5
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %301, align 8
  %mode.i.i.i.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %303, i32 0, i32 3
  %304 = ptrtoint ptr %mode.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %mode.i.i.i.i.i, align 1
  %306 = and i8 %305, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool.not.i.i100.i.i.i = icmp eq i8 %306, 0
  br i1 %tobool.not.i.i100.i.i.i, label %bnxt_tc_parse_tunnel_set.exit.thread.i.i.i, label %bnxt_tc_parse_tunnel_set.exit.i.i.i

bnxt_tc_parse_tunnel_set.exit.thread.i.i.i:       ; preds = %sw.bb13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %307 = call ptr @memcpy(ptr %tun_encap_key.i.i.i.i, ptr %303, i32 56)
  %308 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %actions.i.i, align 8
  %or.i102.i.i.i = or i32 %309, 64
  store i32 %or.i102.i.i.i, ptr %actions.i.i, align 8
  br label %for.inc.i.i.i

bnxt_tc_parse_tunnel_set.exit.i.i.i:              ; preds = %sw.bb13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %310 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %311, ptr noundef nonnull @.str.9) #15
  br label %bnxt_tc_parse_flow.exit.thread188.i

sw.bb18.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %312 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %actions.i.i, align 8
  %or20.i.i.i = or i32 %313, 128
  store i32 %or20.i.i.i, ptr %actions.i.i, align 8
  br label %for.inc.i.i.i

sw.bb21.i.i.i:                                    ; preds = %for.body.i.i.i
  %call23.i.i.i = call fastcc i32 @bnxt_tc_parse_pedit(ptr noundef %bp, ptr noundef %actions.i.i, ptr noundef %act.0127.i.i.i, ptr noundef nonnull %eth_addr.i.i.i, ptr noundef nonnull %eth_addr_mask.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %sw.bb21.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb21.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

sw.bb21.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %sw.bb21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

sw.bb21.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %sw.bb21.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb18.i.i.i, %bnxt_tc_parse_tunnel_set.exit.thread.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.i, %bnxt_tc_parse_redir.exit.thread.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.0128.i.i.i, 1
  %arrayidx28.i.i.i = getelementptr %struct.flow_rule, ptr %10, i32 0, i32 1, i32 1, i32 %inc.i.i.i
  %314 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %action.i.i, align 8
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %315
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.for.end.i.i.i_crit_edge

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end3.i.i.i.for.end.i.i.i_crit_edge
  %316 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %actions.i.i, align 8
  %and.i.i.i = and i32 %317, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %for.end.i.i.i.if.end38.i.i.i_crit_edge, label %if.then31.i.i.i

for.end.i.i.i.if.end38.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i.i

if.then31.i.i.i:                                  ; preds = %for.end.i.i.i
  %318 = ptrtoint ptr %eth_addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %eth_addr.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %cmp1.not.i128.i.i.i.i = icmp eq i8 %319, 0
  br i1 %cmp1.not.i128.i.i.i.i, label %for.cond.i.preheader.i.i.i.i, label %if.then31.i.i.i.lor.rhs.i.i.i.i_crit_edge

if.then31.i.i.i.lor.rhs.i.i.i.i_crit_edge:        ; preds = %if.then31.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i.preheader.i.i.i.i:                     ; preds = %if.then31.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr.i.i.i, i32 1
  %320 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %cmp1.not.i.i.i.i.i = icmp eq i8 %321, 0
  br i1 %cmp1.not.i.i.i.i.i, label %for.cond.i.1.i.i.i.i, label %for.cond.i.preheader.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i.preheader.i.i.i.i.lor.rhs.i.i.i.i_crit_edge: ; preds = %for.cond.i.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i.1.i.i.i.i:                             ; preds = %for.cond.i.preheader.i.i.i.i
  %arrayidx.i.1.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr.i.i.i, i32 2
  %322 = ptrtoint ptr %arrayidx.i.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx.i.1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %cmp1.not.i.1.i.i.i.i = icmp eq i8 %323, 0
  br i1 %cmp1.not.i.1.i.i.i.i, label %for.cond.i.2.i.i.i.i, label %for.cond.i.1.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i.1.i.i.i.i.lor.rhs.i.i.i.i_crit_edge:   ; preds = %for.cond.i.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i.2.i.i.i.i:                             ; preds = %for.cond.i.1.i.i.i.i
  %arrayidx.i.2.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr.i.i.i, i32 3
  %324 = ptrtoint ptr %arrayidx.i.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx.i.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %cmp1.not.i.2.i.i.i.i = icmp eq i8 %325, 0
  br i1 %cmp1.not.i.2.i.i.i.i, label %for.cond.i.3.i.i.i.i, label %for.cond.i.2.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i.2.i.i.i.i.lor.rhs.i.i.i.i_crit_edge:   ; preds = %for.cond.i.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i.3.i.i.i.i:                             ; preds = %for.cond.i.2.i.i.i.i
  %arrayidx.i.3.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr.i.i.i, i32 4
  %326 = ptrtoint ptr %arrayidx.i.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx.i.3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %cmp1.not.i.3.i.i.i.i = icmp eq i8 %327, 0
  br i1 %cmp1.not.i.3.i.i.i.i, label %for.cond.i.4.i.i.i.i, label %for.cond.i.3.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i.3.i.i.i.i.lor.rhs.i.i.i.i_crit_edge:   ; preds = %for.cond.i.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i.4.i.i.i.i:                             ; preds = %for.cond.i.3.i.i.i.i
  %arrayidx.i.4.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr.i.i.i, i32 5
  %328 = ptrtoint ptr %arrayidx.i.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx.i.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %cmp1.not.i.4.i.i.i.i = icmp eq i8 %329, 0
  br i1 %cmp1.not.i.4.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.cond.i.4.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i.4.i.i.i.i.lor.rhs.i.i.i.i_crit_edge:   ; preds = %for.cond.i.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.cond.i.4.i.i.i.i
  %arrayidx1.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 3
  %330 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %cmp1.not.i59131.i.i.i.i = icmp eq i8 %331, 0
  br i1 %cmp1.not.i59131.i.i.i.i, label %for.cond.i55.preheader.i.i.i.i, label %land.lhs.true.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.lor.rhs.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i55.preheader.i.i.i.i:                   ; preds = %land.lhs.true.i.i.i.i
  %arrayidx.i58.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i.i.i, i32 1
  %332 = ptrtoint ptr %arrayidx.i58.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx.i58.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %cmp1.not.i59.i.i.i.i = icmp eq i8 %333, 0
  br i1 %cmp1.not.i59.i.i.i.i, label %for.cond.i55.1.i.i.i.i, label %for.cond.i55.preheader.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i55.preheader.i.i.i.i.lor.rhs.i.i.i.i_crit_edge: ; preds = %for.cond.i55.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i55.1.i.i.i.i:                           ; preds = %for.cond.i55.preheader.i.i.i.i
  %arrayidx.i58.1.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 4
  %334 = ptrtoint ptr %arrayidx.i58.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx.i58.1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %cmp1.not.i59.1.i.i.i.i = icmp eq i8 %335, 0
  br i1 %cmp1.not.i59.1.i.i.i.i, label %for.cond.i55.2.i.i.i.i, label %for.cond.i55.1.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i55.1.i.i.i.i.lor.rhs.i.i.i.i_crit_edge: ; preds = %for.cond.i55.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i55.2.i.i.i.i:                           ; preds = %for.cond.i55.1.i.i.i.i
  %arrayidx.i58.2.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i.i.i, i32 3
  %336 = ptrtoint ptr %arrayidx.i58.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx.i58.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %cmp1.not.i59.2.i.i.i.i = icmp eq i8 %337, 0
  br i1 %cmp1.not.i59.2.i.i.i.i, label %for.cond.i55.3.i.i.i.i, label %for.cond.i55.2.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i55.2.i.i.i.i.lor.rhs.i.i.i.i_crit_edge: ; preds = %for.cond.i55.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i55.3.i.i.i.i:                           ; preds = %for.cond.i55.2.i.i.i.i
  %arrayidx.i58.3.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 5
  %338 = ptrtoint ptr %arrayidx.i58.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx.i58.3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %cmp1.not.i59.3.i.i.i.i = icmp eq i8 %339, 0
  br i1 %cmp1.not.i59.3.i.i.i.i, label %for.cond.i55.4.i.i.i.i, label %for.cond.i55.3.i.i.i.i.lor.rhs.i.i.i.i_crit_edge

for.cond.i55.3.i.i.i.i.lor.rhs.i.i.i.i_crit_edge: ; preds = %for.cond.i55.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i55.4.i.i.i.i:                           ; preds = %for.cond.i55.3.i.i.i.i
  %arrayidx.i58.4.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i.i.i, i32 5
  %340 = ptrtoint ptr %arrayidx.i58.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx.i58.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %cmp1.not.i59.4.i.i.i.i = icmp eq i8 %341, 0
  br i1 %cmp1.not.i59.4.i.i.i.i, label %for.cond.i55.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, label %for.cond.i55.4.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, !prof !170

for.cond.i55.4.i.i.i.i.lor.rhs.i.i.i.i_crit_edge: ; preds = %for.cond.i55.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i.i

for.cond.i55.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i55.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

lor.rhs.i.i.i.i:                                  ; preds = %for.cond.i55.4.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i55.3.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i55.2.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i55.1.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i55.preheader.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i.4.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i.3.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i.2.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i.1.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %for.cond.i.preheader.i.i.i.i.lor.rhs.i.i.i.i_crit_edge, %if.then31.i.i.i.lor.rhs.i.i.i.i_crit_edge
  %342 = ptrtoint ptr %eth_addr_mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %eth_addr_mask.i.i.i, align 2
  %344 = zext i8 %343 to i64
  call void @__sanitizer_cov_trace_switch(i64 %344, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %343, label %lor.rhs.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge [
    i8 0, label %for.cond.i66.preheader.i.i.i.i
    i8 -1, label %for.cond.i99.preheader.i.i.i.i
  ]

lor.rhs.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i66.preheader.i.i.i.i:                   ; preds = %lor.rhs.i.i.i.i
  %arrayidx.i69.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 1
  %345 = ptrtoint ptr %arrayidx.i69.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx.i69.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %cmp1.not.i70.i.i.i.i = icmp eq i8 %346, 0
  br i1 %cmp1.not.i70.i.i.i.i, label %for.cond.i66.1.i.i.i.i, label %for.cond.i66.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i66.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i66.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i66.1.i.i.i.i:                           ; preds = %for.cond.i66.preheader.i.i.i.i
  %arrayidx.i69.1.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 2
  %347 = ptrtoint ptr %arrayidx.i69.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx.i69.1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %cmp1.not.i70.1.i.i.i.i = icmp eq i8 %348, 0
  br i1 %cmp1.not.i70.1.i.i.i.i, label %for.cond.i66.2.i.i.i.i, label %for.cond.i66.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i66.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i66.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i66.2.i.i.i.i:                           ; preds = %for.cond.i66.1.i.i.i.i
  %arrayidx.i69.2.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 3
  %349 = ptrtoint ptr %arrayidx.i69.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx.i69.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %350)
  %cmp1.not.i70.2.i.i.i.i = icmp eq i8 %350, 0
  br i1 %cmp1.not.i70.2.i.i.i.i, label %for.cond.i66.3.i.i.i.i, label %for.cond.i66.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i66.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i66.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i66.3.i.i.i.i:                           ; preds = %for.cond.i66.2.i.i.i.i
  %arrayidx.i69.3.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 4
  %351 = ptrtoint ptr %arrayidx.i69.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx.i69.3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %cmp1.not.i70.3.i.i.i.i = icmp eq i8 %352, 0
  br i1 %cmp1.not.i70.3.i.i.i.i, label %for.cond.i66.4.i.i.i.i, label %for.cond.i66.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i66.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i66.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i66.4.i.i.i.i:                           ; preds = %for.cond.i66.3.i.i.i.i
  %arrayidx.i69.4.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 5
  %353 = ptrtoint ptr %arrayidx.i69.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx.i69.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %cmp1.not.i70.4.i.i.i.i = icmp eq i8 %354, 0
  br i1 %cmp1.not.i70.4.i.i.i.i, label %land.rhs.i.i.i.i, label %for.cond.i66.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i66.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i66.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

land.rhs.i.i.i.i:                                 ; preds = %for.cond.i66.4.i.i.i.i
  %arrayidx5.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 3
  %355 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx5.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %cmp1.not.i81139.i.i.i.i = icmp eq i8 %356, 0
  br i1 %cmp1.not.i81139.i.i.i.i, label %for.cond.i77.preheader.i.i.i.i, label %land.rhs.i.i.i.i.if.end16.i.i.i.i_crit_edge

land.rhs.i.i.i.i.if.end16.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i.i

for.cond.i77.preheader.i.i.i.i:                   ; preds = %land.rhs.i.i.i.i
  %arrayidx.i80.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx5.i.i.i.i, i32 1
  %357 = ptrtoint ptr %arrayidx.i80.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx.i80.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %cmp1.not.i81.i.i.i.i = icmp eq i8 %358, 0
  br i1 %cmp1.not.i81.i.i.i.i, label %for.cond.i77.1.i.i.i.i, label %for.cond.i77.preheader.i.i.i.i.if.end16.i.i.i.i_crit_edge

for.cond.i77.preheader.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %for.cond.i77.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i.i

for.cond.i77.1.i.i.i.i:                           ; preds = %for.cond.i77.preheader.i.i.i.i
  %arrayidx.i80.1.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 4
  %359 = ptrtoint ptr %arrayidx.i80.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx.i80.1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %360)
  %cmp1.not.i81.1.i.i.i.i = icmp eq i8 %360, 0
  br i1 %cmp1.not.i81.1.i.i.i.i, label %for.cond.i77.2.i.i.i.i, label %for.cond.i77.1.i.i.i.i.if.end16.i.i.i.i_crit_edge

for.cond.i77.1.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %for.cond.i77.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i.i

for.cond.i77.2.i.i.i.i:                           ; preds = %for.cond.i77.1.i.i.i.i
  %arrayidx.i80.2.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx5.i.i.i.i, i32 3
  %361 = ptrtoint ptr %arrayidx.i80.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx.i80.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %cmp1.not.i81.2.i.i.i.i = icmp eq i8 %362, 0
  br i1 %cmp1.not.i81.2.i.i.i.i, label %for.cond.i77.3.i.i.i.i, label %for.cond.i77.2.i.i.i.i.if.end16.i.i.i.i_crit_edge

for.cond.i77.2.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %for.cond.i77.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i.i

for.cond.i77.3.i.i.i.i:                           ; preds = %for.cond.i77.2.i.i.i.i
  %arrayidx.i80.3.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 5
  %363 = ptrtoint ptr %arrayidx.i80.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx.i80.3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %cmp1.not.i81.3.i.i.i.i = icmp eq i8 %364, 0
  br i1 %cmp1.not.i81.3.i.i.i.i, label %for.cond.i77.4.i.i.i.i, label %for.cond.i77.3.i.i.i.i.if.end16.i.i.i.i_crit_edge

for.cond.i77.3.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %for.cond.i77.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i.i

for.cond.i77.4.i.i.i.i:                           ; preds = %for.cond.i77.3.i.i.i.i
  %arrayidx.i80.4.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx5.i.i.i.i, i32 5
  %365 = ptrtoint ptr %arrayidx.i80.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx.i80.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %cmp1.not.i81.4.i.i.i.i = icmp eq i8 %366, 0
  br i1 %cmp1.not.i81.4.i.i.i.i, label %for.cond.i77.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, label %for.cond.i77.4.i.i.i.i.if.end16.i.i.i.i_crit_edge, !prof !170

for.cond.i77.4.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %for.cond.i77.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i.i.i

for.cond.i77.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i77.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i99.preheader.i.i.i.i:                   ; preds = %lor.rhs.i.i.i.i
  %arrayidx.i102.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 1
  %367 = ptrtoint ptr %arrayidx.i102.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx.i102.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %368)
  %cmp1.not.i103.i.i.i.i = icmp eq i8 %368, -1
  br i1 %cmp1.not.i103.i.i.i.i, label %for.cond.i99.1.i.i.i.i, label %for.cond.i99.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i99.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i99.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i99.1.i.i.i.i:                           ; preds = %for.cond.i99.preheader.i.i.i.i
  %arrayidx.i102.1.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 2
  %369 = ptrtoint ptr %arrayidx.i102.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx.i102.1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %370)
  %cmp1.not.i103.1.i.i.i.i = icmp eq i8 %370, -1
  br i1 %cmp1.not.i103.1.i.i.i.i, label %for.cond.i99.2.i.i.i.i, label %for.cond.i99.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i99.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i99.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i99.2.i.i.i.i:                           ; preds = %for.cond.i99.1.i.i.i.i
  %arrayidx.i102.2.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 3
  %371 = ptrtoint ptr %arrayidx.i102.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx.i102.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %372)
  %cmp1.not.i103.2.i.i.i.i = icmp eq i8 %372, -1
  br i1 %cmp1.not.i103.2.i.i.i.i, label %for.cond.i99.3.i.i.i.i, label %for.cond.i99.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i99.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i99.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i99.3.i.i.i.i:                           ; preds = %for.cond.i99.2.i.i.i.i
  %arrayidx.i102.3.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 4
  %373 = ptrtoint ptr %arrayidx.i102.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx.i102.3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %374)
  %cmp1.not.i103.3.i.i.i.i = icmp eq i8 %374, -1
  br i1 %cmp1.not.i103.3.i.i.i.i, label %for.cond.i99.4.i.i.i.i, label %for.cond.i99.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i99.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i99.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i99.4.i.i.i.i:                           ; preds = %for.cond.i99.3.i.i.i.i
  %arrayidx.i102.4.i.i.i.i = getelementptr inbounds i8, ptr %eth_addr_mask.i.i.i, i32 5
  %375 = ptrtoint ptr %arrayidx.i102.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %arrayidx.i102.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %376)
  %cmp1.not.i103.4.i.i.i.i = icmp eq i8 %376, -1
  br i1 %cmp1.not.i103.4.i.i.i.i, label %for.body.preheader.i.i.i.i, label %for.cond.i99.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i99.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i99.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.body.preheader.i.i.i.i:                       ; preds = %for.cond.i99.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %377 = ptrtoint ptr %eth_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %eth_addr.i.i.i, align 2
  %arrayidx15.i.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 6
  %379 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %378, ptr %arrayidx15.i.i.i.i, align 8
  %add.ptr.1.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 1
  %380 = ptrtoint ptr %add.ptr.1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %add.ptr.1.i.i.i.i, align 2
  %arrayidx15.1.i.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 6, i32 1
  %382 = ptrtoint ptr %arrayidx15.1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %381, ptr %arrayidx15.1.i.i.i.i, align 2
  %add.ptr.2.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 2
  %383 = ptrtoint ptr %add.ptr.2.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %add.ptr.2.i.i.i.i, align 2
  %arrayidx15.2.i.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 6, i32 2
  %385 = ptrtoint ptr %arrayidx15.2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 %384, ptr %arrayidx15.2.i.i.i.i, align 4
  br label %if.end16.i.i.i.i

if.end16.i.i.i.i:                                 ; preds = %for.body.preheader.i.i.i.i, %for.cond.i77.4.i.i.i.i.if.end16.i.i.i.i_crit_edge, %for.cond.i77.3.i.i.i.i.if.end16.i.i.i.i_crit_edge, %for.cond.i77.2.i.i.i.i.if.end16.i.i.i.i_crit_edge, %for.cond.i77.1.i.i.i.i.if.end16.i.i.i.i_crit_edge, %for.cond.i77.preheader.i.i.i.i.if.end16.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.if.end16.i.i.i.i_crit_edge
  %arrayidx17.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 3
  %386 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx17.i.i.i.i, align 2
  %388 = zext i8 %387 to i64
  call void @__sanitizer_cov_trace_switch(i64 %388, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %387, label %if.end16.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge [
    i8 0, label %for.cond.i109.preheader.i.i.i.i
    i8 -1, label %for.cond.i120.preheader.i.i.i.i
  ]

if.end16.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i109.preheader.i.i.i.i:                  ; preds = %if.end16.i.i.i.i
  %arrayidx.i112.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx17.i.i.i.i, i32 1
  %389 = ptrtoint ptr %arrayidx.i112.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx.i112.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %cmp1.not.i113.i.i.i.i = icmp eq i8 %390, 0
  br i1 %cmp1.not.i113.i.i.i.i, label %for.cond.i109.1.i.i.i.i, label %for.cond.i109.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i109.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i109.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i109.1.i.i.i.i:                          ; preds = %for.cond.i109.preheader.i.i.i.i
  %arrayidx.i112.1.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 4
  %391 = ptrtoint ptr %arrayidx.i112.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx.i112.1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %cmp1.not.i113.1.i.i.i.i = icmp eq i8 %392, 0
  br i1 %cmp1.not.i113.1.i.i.i.i, label %for.cond.i109.2.i.i.i.i, label %for.cond.i109.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i109.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i109.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i109.2.i.i.i.i:                          ; preds = %for.cond.i109.1.i.i.i.i
  %arrayidx.i112.2.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx17.i.i.i.i, i32 3
  %393 = ptrtoint ptr %arrayidx.i112.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx.i112.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %cmp1.not.i113.2.i.i.i.i = icmp eq i8 %394, 0
  br i1 %cmp1.not.i113.2.i.i.i.i, label %for.cond.i109.3.i.i.i.i, label %for.cond.i109.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i109.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i109.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i109.3.i.i.i.i:                          ; preds = %for.cond.i109.2.i.i.i.i
  %arrayidx.i112.3.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 5
  %395 = ptrtoint ptr %arrayidx.i112.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx.i112.3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %cmp1.not.i113.3.i.i.i.i = icmp eq i8 %396, 0
  br i1 %cmp1.not.i113.3.i.i.i.i, label %for.cond.i109.4.i.i.i.i, label %for.cond.i109.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i109.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i109.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i109.4.i.i.i.i:                          ; preds = %for.cond.i109.3.i.i.i.i
  %arrayidx.i112.4.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx17.i.i.i.i, i32 5
  %397 = ptrtoint ptr %arrayidx.i112.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx.i112.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %cmp1.not.i113.4.i.i.i.i = icmp eq i8 %398, 0
  br i1 %cmp1.not.i113.4.i.i.i.i, label %for.cond.i109.4.i.i.i.i.if.end38.i.i.i_crit_edge, label %for.cond.i109.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i109.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i109.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i109.4.i.i.i.i.if.end38.i.i.i_crit_edge: ; preds = %for.cond.i109.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i.i

for.cond.i120.preheader.i.i.i.i:                  ; preds = %if.end16.i.i.i.i
  %arrayidx.i123.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx17.i.i.i.i, i32 1
  %399 = ptrtoint ptr %arrayidx.i123.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx.i123.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %400)
  %cmp1.not.i124.i.i.i.i = icmp eq i8 %400, -1
  br i1 %cmp1.not.i124.i.i.i.i, label %for.cond.i120.1.i.i.i.i, label %for.cond.i120.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i120.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i120.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i120.1.i.i.i.i:                          ; preds = %for.cond.i120.preheader.i.i.i.i
  %arrayidx.i123.1.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 4
  %401 = ptrtoint ptr %arrayidx.i123.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx.i123.1.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %402)
  %cmp1.not.i124.1.i.i.i.i = icmp eq i8 %402, -1
  br i1 %cmp1.not.i124.1.i.i.i.i, label %for.cond.i120.2.i.i.i.i, label %for.cond.i120.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i120.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i120.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i120.2.i.i.i.i:                          ; preds = %for.cond.i120.1.i.i.i.i
  %arrayidx.i123.2.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx17.i.i.i.i, i32 3
  %403 = ptrtoint ptr %arrayidx.i123.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx.i123.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %404)
  %cmp1.not.i124.2.i.i.i.i = icmp eq i8 %404, -1
  br i1 %cmp1.not.i124.2.i.i.i.i, label %for.cond.i120.3.i.i.i.i, label %for.cond.i120.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i120.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i120.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i120.3.i.i.i.i:                          ; preds = %for.cond.i120.2.i.i.i.i
  %arrayidx.i123.3.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr_mask.i.i.i, i32 5
  %405 = ptrtoint ptr %arrayidx.i123.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx.i123.3.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %406)
  %cmp1.not.i124.3.i.i.i.i = icmp eq i8 %406, -1
  br i1 %cmp1.not.i124.3.i.i.i.i, label %for.cond.i120.4.i.i.i.i, label %for.cond.i120.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i120.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i120.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

for.cond.i120.4.i.i.i.i:                          ; preds = %for.cond.i120.3.i.i.i.i
  %arrayidx.i123.4.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx17.i.i.i.i, i32 5
  %407 = ptrtoint ptr %arrayidx.i123.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx.i123.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %408)
  %cmp1.not.i124.4.i.i.i.i = icmp eq i8 %408, -1
  br i1 %cmp1.not.i124.4.i.i.i.i, label %if.end23.i.i.i.i, label %for.cond.i120.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge

for.cond.i120.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %for.cond.i120.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

if.end23.i.i.i.i:                                 ; preds = %for.cond.i120.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx24.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 3
  %409 = ptrtoint ptr %arrayidx24.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %arrayidx24.i.i.i.i, align 2
  %arrayidx29.i.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 7
  %411 = ptrtoint ptr %arrayidx29.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 %410, ptr %arrayidx29.i.i.i.i, align 2
  %add.ptr28.1.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 4
  %412 = ptrtoint ptr %add.ptr28.1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %412)
  %413 = load i16, ptr %add.ptr28.1.i.i.i.i, align 2
  %arrayidx29.1.i.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 7, i32 1
  %414 = ptrtoint ptr %arrayidx29.1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 %413, ptr %arrayidx29.1.i.i.i.i, align 8
  %add.ptr28.2.i.i.i.i = getelementptr inbounds i16, ptr %eth_addr.i.i.i, i32 5
  %415 = ptrtoint ptr %add.ptr28.2.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %add.ptr28.2.i.i.i.i, align 2
  %arrayidx29.2.i.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 7, i32 2
  %417 = ptrtoint ptr %arrayidx29.2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %416, ptr %arrayidx29.2.i.i.i.i, align 2
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.end23.i.i.i.i, %for.cond.i109.4.i.i.i.i.if.end38.i.i.i_crit_edge, %for.end.i.i.i.if.end38.i.i.i_crit_edge
  %and40.i.i.i = and i32 %317, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i.i)
  %tobool41.not.i.i.i = icmp eq i32 %and40.i.i.i, 0
  br i1 %tobool41.not.i.i.i, label %if.end38.i.i.i.if.end7.i_crit_edge, label %if.then42.i.i.i

if.end38.i.i.i.if.end7.i_crit_edge:               ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then42.i.i.i:                                  ; preds = %if.end38.i.i.i
  %and44.i.i.i = and i32 %317, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i.i)
  %tobool45.not.i.i.i = icmp eq i32 %and44.i.i.i, 0
  br i1 %tobool45.not.i.i.i, label %if.else.i.i.i, label %if.then46.i.i.i

if.then46.i.i.i:                                  ; preds = %if.then42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pf.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120
  %418 = ptrtoint ptr %pf.i.i.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %pf.i.i.i, align 4
  %dst_fid.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 1
  %420 = ptrtoint ptr %dst_fid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 %419, ptr %dst_fid.i.i.i, align 4
  br label %if.end7.i

if.else.i.i.i:                                    ; preds = %if.then42.i.i.i
  %dst_dev.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 2
  %421 = ptrtoint ptr %dst_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %dst_dev.i.i.i, align 8
  %dev1.i107.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %423 = ptrtoint ptr %dev1.i107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %dev1.i107.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @netdev_port_same_parent_id(ptr noundef %424, ptr noundef %422) #12
  br i1 %call.i.i.i.i, label %if.end.i109.i.i.i, label %bnxt_flow_get_dst_fid.exit.thread.i.i.i

bnxt_flow_get_dst_fid.exit.thread.i.i.i:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %425 = ptrtoint ptr %dev1.i107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %dev1.i107.i.i.i, align 4
  %ifindex.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %422, i32 0, i32 17
  %427 = ptrtoint ptr %ifindex.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %ifindex.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %426, ptr noundef nonnull @.str.19, i32 noundef %428) #15
  %dst_fid48124.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 1
  %429 = ptrtoint ptr %dst_fid48124.i.i.i to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 -1, ptr %dst_fid48124.i.i.i, align 4
  br label %bnxt_tc_parse_flow.exit.thread188.i

if.end.i109.i.i.i:                                ; preds = %if.else.i.i.i
  %call3.i.i.i.i = call zeroext i1 @bnxt_dev_is_vf_rep(ptr noundef %422) #12
  br i1 %call3.i.i.i.i, label %if.then4.i.i.i.i, label %if.end6.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i109.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %422, i32 2304
  %430 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %add.ptr.i.i.i.i.i.i, align 8
  %vf.i.i.i.i.i = getelementptr inbounds %struct.bnxt, ptr %431, i32 0, i32 120, i32 18
  %432 = ptrtoint ptr %vf.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %vf.i.i.i.i.i, align 4
  %vf_idx.i.i.i.i.i = getelementptr i8, ptr %422, i32 2316
  %434 = ptrtoint ptr %vf_idx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %vf_idx.i.i.i.i.i, align 4
  %idxprom.i.i.i.i.i = zext i16 %435 to i32
  %arrayidx.i.i110.i.i.i = getelementptr %struct.bnxt_vf_info, ptr %433, i32 %idxprom.i.i.i.i.i
  br label %bnxt_flow_get_dst_fid.exit.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i109.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pf.i.i.i.i = getelementptr i8, ptr %422, i32 3660
  br label %bnxt_flow_get_dst_fid.exit.i.i.i

bnxt_flow_get_dst_fid.exit.i.i.i:                 ; preds = %if.end6.i.i.i.i, %if.then4.i.i.i.i
  %retval.0.i111.in.i.i.i = phi ptr [ %arrayidx.i.i110.i.i.i, %if.then4.i.i.i.i ], [ %pf.i.i.i.i, %if.end6.i.i.i.i ]
  %436 = ptrtoint ptr %retval.0.i111.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %436)
  %retval.0.i111.i.i.i = load i16, ptr %retval.0.i111.in.i.i.i, align 4
  %dst_fid48.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 1
  %437 = ptrtoint ptr %dst_fid48.i.i.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %retval.0.i111.i.i.i, ptr %dst_fid48.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %retval.0.i111.i.i.i)
  %cmp50.i.i.i = icmp eq i16 %retval.0.i111.i.i.i, -1
  br i1 %cmp50.i.i.i, label %bnxt_flow_get_dst_fid.exit.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, label %bnxt_flow_get_dst_fid.exit.i.i.i.if.end7.i_crit_edge

bnxt_flow_get_dst_fid.exit.i.i.i.if.end7.i_crit_edge: ; preds = %bnxt_flow_get_dst_fid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

bnxt_flow_get_dst_fid.exit.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge: ; preds = %bnxt_flow_get_dst_fid.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_parse_flow.exit.thread188.i

bnxt_tc_parse_flow.exit.thread188.i:              ; preds = %bnxt_flow_get_dst_fid.exit.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %bnxt_flow_get_dst_fid.exit.thread.i.i.i, %for.cond.i120.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i120.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i120.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i120.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i120.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i109.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i109.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i109.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i109.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i109.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %if.end16.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i99.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i99.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i99.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i99.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i99.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i77.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i66.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i66.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i66.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i66.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i66.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %lor.rhs.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %for.cond.i55.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %sw.bb21.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %bnxt_tc_parse_tunnel_set.exit.i.i.i, %bnxt_tc_parse_redir.exit.i.i.i, %for.body.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %cleanup.sink.split.i.i.i.i.i, %do.body48.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %do.body.i.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.ph.i = phi i32 [ -22, %for.cond.i66.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i66.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i66.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i66.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %if.end16.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %lor.rhs.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i109.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i109.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i109.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i109.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i109.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i66.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i120.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i120.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i120.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i120.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i120.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i99.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i99.3.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i99.2.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i99.1.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i99.preheader.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i77.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %for.cond.i55.4.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -95, %cleanup.sink.split.i.i.i.i.i ], [ -95, %do.body.i.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -95, %do.body48.i.i.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -22, %bnxt_flow_get_dst_fid.exit.thread.i.i.i ], [ -22, %bnxt_flow_get_dst_fid.exit.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ -95, %bnxt_tc_parse_tunnel_set.exit.i.i.i ], [ -22, %bnxt_tc_parse_redir.exit.i.i.i ], [ -22, %if.then.i.i.i ], [ -95, %for.body.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ], [ %call23.i.i.i, %sw.bb21.i.i.i.bnxt_tc_parse_flow.exit.thread188.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eth_addr.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eth_addr_mask.i.i.i) #12
  br label %do.end56.i

if.end7.i:                                        ; preds = %bnxt_flow_get_dst_fid.exit.i.i.i.if.end7.i_crit_edge, %if.then46.i.i.i, %if.end38.i.i.i.if.end7.i_crit_edge, %sw.bb.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eth_addr.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eth_addr_mask.i.i.i) #12
  %438 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %actions.i.i, align 8
  %and.i.i = and i32 %439, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.bnxt_tc_set_src_fid.exit.i_crit_edge, label %if.then.i146.i

if.end7.i.bnxt_tc_set_src_fid.exit.i_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_set_src_fid.exit.i

if.then.i146.i:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %pf.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120
  %440 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %pf.i.i, align 4
  br label %bnxt_tc_set_src_fid.exit.i

bnxt_tc_set_src_fid.exit.i:                       ; preds = %if.then.i146.i, %if.end7.i.bnxt_tc_set_src_fid.exit.i_crit_edge
  %.sink.i.i = phi i16 [ %441, %if.then.i146.i ], [ %src_fid, %if.end7.i.bnxt_tc_set_src_fid.exit.i_crit_edge ]
  %442 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 %.sink.i.i, ptr %442, align 4
  %pf.i147.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120
  %444 = ptrtoint ptr %pf.i147.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %pf.i147.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %445, i16 %.sink.i.i)
  %cmp.i.i = icmp eq i16 %445, %.sink.i.i
  %conv3.i.i = zext i1 %cmp.i.i to i8
  %dir.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 6
  %446 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %conv3.i.i, ptr %dir.i.i, align 1
  %447 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %flow3.i, align 8
  %and.i148.i = and i32 %448, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148.i)
  %tobool.not.i149.i = icmp eq i32 %and.i148.i, 0
  br i1 %tobool.not.i149.i, label %bnxt_tc_set_src_fid.exit.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

bnxt_tc_set_src_fid.exit.i.if.end.i.i_crit_edge:  ; preds = %bnxt_tc_set_src_fid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %bnxt_tc_set_src_fid.exit.i
  %l4_key.i150.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 6
  %449 = ptrtoint ptr %l4_key.i150.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %l4_key.i150.i, align 8
  %451 = zext i8 %450 to i64
  call void @__sanitizer_cov_trace_switch(i64 %451, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %450, label %if.then.i152.i [
    i8 6, label %land.lhs.true.i.i.if.end.i.i_crit_edge
    i8 17, label %land.lhs.true.i.i.if.end.i.i_crit_edge31
  ]

land.lhs.true.i.i.if.end.i.i_crit_edge31:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i152.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i8 %450 to i32
  %dev.i151.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %452 = ptrtoint ptr %dev.i151.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %dev.i151.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %453, ptr noundef nonnull @.str.20, i32 noundef %conv.i.i) #15
  br label %do.end.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge31, %bnxt_tc_set_src_fid.exit.i.if.end.i.i_crit_edge
  %l2_key.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %smac.i153.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1
  %454 = ptrtoint ptr %smac.i153.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %smac.i153.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %cmp1.not.i151.i.i = icmp eq i8 %455, 0
  br i1 %cmp1.not.i151.i.i, label %for.cond.i.preheader.i.i, label %if.end.i.i.land.lhs.true12.i.i_crit_edge

if.end.i.i.land.lhs.true12.i.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i

for.cond.i.preheader.i.i:                         ; preds = %if.end.i.i
  %arrayidx.i.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1, i32 1
  %456 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %457)
  %cmp1.not.i.i.i = icmp eq i8 %457, 0
  br i1 %cmp1.not.i.i.i, label %for.cond.i.1.i.i, label %for.cond.i.preheader.i.i.land.lhs.true12.i.i_crit_edge

for.cond.i.preheader.i.i.land.lhs.true12.i.i_crit_edge: ; preds = %for.cond.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i

for.cond.i.1.i.i:                                 ; preds = %for.cond.i.preheader.i.i
  %arrayidx.i.1.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1, i32 2
  %458 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx.i.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %459)
  %cmp1.not.i.1.i.i = icmp eq i8 %459, 0
  br i1 %cmp1.not.i.1.i.i, label %for.cond.i.2.i.i, label %for.cond.i.1.i.i.land.lhs.true12.i.i_crit_edge

for.cond.i.1.i.i.land.lhs.true12.i.i_crit_edge:   ; preds = %for.cond.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i

for.cond.i.2.i.i:                                 ; preds = %for.cond.i.1.i.i
  %arrayidx.i.2.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1, i32 3
  %460 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx.i.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %cmp1.not.i.2.i.i = icmp eq i8 %461, 0
  br i1 %cmp1.not.i.2.i.i, label %for.cond.i.3.i.i, label %for.cond.i.2.i.i.land.lhs.true12.i.i_crit_edge

for.cond.i.2.i.i.land.lhs.true12.i.i_crit_edge:   ; preds = %for.cond.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i

for.cond.i.3.i.i:                                 ; preds = %for.cond.i.2.i.i
  %arrayidx.i.3.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1, i32 4
  %462 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx.i.3.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %463)
  %cmp1.not.i.3.i.i = icmp eq i8 %463, 0
  br i1 %cmp1.not.i.3.i.i, label %for.cond.i.4.i.i, label %for.cond.i.3.i.i.land.lhs.true12.i.i_crit_edge

for.cond.i.3.i.i.land.lhs.true12.i.i_crit_edge:   ; preds = %for.cond.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i

for.cond.i.4.i.i:                                 ; preds = %for.cond.i.3.i.i
  %arrayidx.i.4.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1, i32 5
  %464 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx.i.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %465)
  %cmp1.not.i.4.i.i = icmp eq i8 %465, 0
  br i1 %cmp1.not.i.4.i.i, label %for.cond.i.4.i.i.if.end17.i.i_crit_edge, label %for.cond.i.4.i.i.land.lhs.true12.i.i_crit_edge

for.cond.i.4.i.i.land.lhs.true12.i.i_crit_edge:   ; preds = %for.cond.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true12.i.i

for.cond.i.4.i.i.if.end17.i.i_crit_edge:          ; preds = %for.cond.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i.i

land.lhs.true12.i.i:                              ; preds = %for.cond.i.4.i.i.land.lhs.true12.i.i_crit_edge, %for.cond.i.3.i.i.land.lhs.true12.i.i_crit_edge, %for.cond.i.2.i.i.land.lhs.true12.i.i_crit_edge, %for.cond.i.1.i.i.land.lhs.true12.i.i_crit_edge, %for.cond.i.preheader.i.i.land.lhs.true12.i.i_crit_edge, %if.end.i.i.land.lhs.true12.i.i_crit_edge
  %smac13.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1
  %466 = ptrtoint ptr %smac13.i.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %smac13.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %467)
  %cmp1.not.i80154.i.i = icmp eq i8 %467, -1
  br i1 %cmp1.not.i80154.i.i, label %for.cond.i76.preheader.i.i, label %land.lhs.true12.i.i.if.then15.i.i_crit_edge

land.lhs.true12.i.i.if.then15.i.i_crit_edge:      ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

for.cond.i76.preheader.i.i:                       ; preds = %land.lhs.true12.i.i
  %arrayidx.i79.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1, i32 1
  %468 = ptrtoint ptr %arrayidx.i79.i.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %arrayidx.i79.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %469)
  %cmp1.not.i80.i.i = icmp eq i8 %469, -1
  br i1 %cmp1.not.i80.i.i, label %for.cond.i76.1.i.i, label %for.cond.i76.preheader.i.i.if.then15.i.i_crit_edge

for.cond.i76.preheader.i.i.if.then15.i.i_crit_edge: ; preds = %for.cond.i76.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

for.cond.i76.1.i.i:                               ; preds = %for.cond.i76.preheader.i.i
  %arrayidx.i79.1.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1, i32 2
  %470 = ptrtoint ptr %arrayidx.i79.1.i.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %arrayidx.i79.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %471)
  %cmp1.not.i80.1.i.i = icmp eq i8 %471, -1
  br i1 %cmp1.not.i80.1.i.i, label %for.cond.i76.2.i.i, label %for.cond.i76.1.i.i.if.then15.i.i_crit_edge

for.cond.i76.1.i.i.if.then15.i.i_crit_edge:       ; preds = %for.cond.i76.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

for.cond.i76.2.i.i:                               ; preds = %for.cond.i76.1.i.i
  %arrayidx.i79.2.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1, i32 3
  %472 = ptrtoint ptr %arrayidx.i79.2.i.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %arrayidx.i79.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %473)
  %cmp1.not.i80.2.i.i = icmp eq i8 %473, -1
  br i1 %cmp1.not.i80.2.i.i, label %for.cond.i76.3.i.i, label %for.cond.i76.2.i.i.if.then15.i.i_crit_edge

for.cond.i76.2.i.i.if.then15.i.i_crit_edge:       ; preds = %for.cond.i76.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

for.cond.i76.3.i.i:                               ; preds = %for.cond.i76.2.i.i
  %arrayidx.i79.3.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1, i32 4
  %474 = ptrtoint ptr %arrayidx.i79.3.i.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %arrayidx.i79.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %475)
  %cmp1.not.i80.3.i.i = icmp eq i8 %475, -1
  br i1 %cmp1.not.i80.3.i.i, label %for.cond.i76.4.i.i, label %for.cond.i76.3.i.i.if.then15.i.i_crit_edge

for.cond.i76.3.i.i.if.then15.i.i_crit_edge:       ; preds = %for.cond.i76.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

for.cond.i76.4.i.i:                               ; preds = %for.cond.i76.3.i.i
  %arrayidx.i79.4.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1, i32 5
  %476 = ptrtoint ptr %arrayidx.i79.4.i.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx.i79.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %477)
  %cmp1.not.i80.4.i.i = icmp eq i8 %477, -1
  br i1 %cmp1.not.i80.4.i.i, label %for.cond.i76.4.i.i.if.end17.i.i_crit_edge, label %for.cond.i76.4.i.i.if.then15.i.i_crit_edge

for.cond.i76.4.i.i.if.then15.i.i_crit_edge:       ; preds = %for.cond.i76.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15.i.i

for.cond.i76.4.i.i.if.end17.i.i_crit_edge:        ; preds = %for.cond.i76.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %for.cond.i76.4.i.i.if.then15.i.i_crit_edge, %for.cond.i76.3.i.i.if.then15.i.i_crit_edge, %for.cond.i76.2.i.i.if.then15.i.i_crit_edge, %for.cond.i76.1.i.i.if.then15.i.i_crit_edge, %for.cond.i76.preheader.i.i.if.then15.i.i_crit_edge, %land.lhs.true12.i.i.if.then15.i.i_crit_edge
  %dev16.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %478 = ptrtoint ptr %dev16.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %dev16.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %479, ptr noundef nonnull @.str.21) #15
  br label %do.end.i

if.end17.i.i:                                     ; preds = %for.cond.i76.4.i.i.if.end17.i.i_crit_edge, %for.cond.i.4.i.i.if.end17.i.i_crit_edge
  %480 = ptrtoint ptr %l2_key.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %l2_key.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %cmp1.not.i90158.i.i = icmp eq i8 %481, 0
  br i1 %cmp1.not.i90158.i.i, label %for.cond.i86.preheader.i.i, label %if.end17.i.i.land.lhs.true21.i.i_crit_edge

if.end17.i.i.land.lhs.true21.i.i_crit_edge:       ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

for.cond.i86.preheader.i.i:                       ; preds = %if.end17.i.i
  %arrayidx.i89.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 0, i32 1
  %482 = ptrtoint ptr %arrayidx.i89.i.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx.i89.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %cmp1.not.i90.i.i = icmp eq i8 %483, 0
  br i1 %cmp1.not.i90.i.i, label %for.cond.i86.1.i.i, label %for.cond.i86.preheader.i.i.land.lhs.true21.i.i_crit_edge

for.cond.i86.preheader.i.i.land.lhs.true21.i.i_crit_edge: ; preds = %for.cond.i86.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

for.cond.i86.1.i.i:                               ; preds = %for.cond.i86.preheader.i.i
  %arrayidx.i89.1.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 0, i32 2
  %484 = ptrtoint ptr %arrayidx.i89.1.i.i to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %arrayidx.i89.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %485)
  %cmp1.not.i90.1.i.i = icmp eq i8 %485, 0
  br i1 %cmp1.not.i90.1.i.i, label %for.cond.i86.2.i.i, label %for.cond.i86.1.i.i.land.lhs.true21.i.i_crit_edge

for.cond.i86.1.i.i.land.lhs.true21.i.i_crit_edge: ; preds = %for.cond.i86.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

for.cond.i86.2.i.i:                               ; preds = %for.cond.i86.1.i.i
  %arrayidx.i89.2.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 0, i32 3
  %486 = ptrtoint ptr %arrayidx.i89.2.i.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %arrayidx.i89.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %487)
  %cmp1.not.i90.2.i.i = icmp eq i8 %487, 0
  br i1 %cmp1.not.i90.2.i.i, label %for.cond.i86.3.i.i, label %for.cond.i86.2.i.i.land.lhs.true21.i.i_crit_edge

for.cond.i86.2.i.i.land.lhs.true21.i.i_crit_edge: ; preds = %for.cond.i86.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

for.cond.i86.3.i.i:                               ; preds = %for.cond.i86.2.i.i
  %arrayidx.i89.3.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 0, i32 4
  %488 = ptrtoint ptr %arrayidx.i89.3.i.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx.i89.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %cmp1.not.i90.3.i.i = icmp eq i8 %489, 0
  br i1 %cmp1.not.i90.3.i.i, label %for.cond.i86.4.i.i, label %for.cond.i86.3.i.i.land.lhs.true21.i.i_crit_edge

for.cond.i86.3.i.i.land.lhs.true21.i.i_crit_edge: ; preds = %for.cond.i86.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

for.cond.i86.4.i.i:                               ; preds = %for.cond.i86.3.i.i
  %arrayidx.i89.4.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 0, i32 5
  %490 = ptrtoint ptr %arrayidx.i89.4.i.i to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %arrayidx.i89.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %491)
  %cmp1.not.i90.4.i.i = icmp eq i8 %491, 0
  br i1 %cmp1.not.i90.4.i.i, label %for.cond.i86.4.i.i.if.end27.i.i_crit_edge, label %for.cond.i86.4.i.i.land.lhs.true21.i.i_crit_edge

for.cond.i86.4.i.i.land.lhs.true21.i.i_crit_edge: ; preds = %for.cond.i86.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true21.i.i

for.cond.i86.4.i.i.if.end27.i.i_crit_edge:        ; preds = %for.cond.i86.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

land.lhs.true21.i.i:                              ; preds = %for.cond.i86.4.i.i.land.lhs.true21.i.i_crit_edge, %for.cond.i86.3.i.i.land.lhs.true21.i.i_crit_edge, %for.cond.i86.2.i.i.land.lhs.true21.i.i_crit_edge, %for.cond.i86.1.i.i.land.lhs.true21.i.i_crit_edge, %for.cond.i86.preheader.i.i.land.lhs.true21.i.i_crit_edge, %if.end17.i.i.land.lhs.true21.i.i_crit_edge
  %l2_mask22.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %492 = ptrtoint ptr %l2_mask22.i.i to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %l2_mask22.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %493)
  %cmp1.not.i101162.i.i = icmp eq i8 %493, -1
  br i1 %cmp1.not.i101162.i.i, label %for.cond.i97.preheader.i.i, label %land.lhs.true21.i.i.if.then25.i.i_crit_edge

land.lhs.true21.i.i.if.then25.i.i_crit_edge:      ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i.i

for.cond.i97.preheader.i.i:                       ; preds = %land.lhs.true21.i.i
  %arrayidx.i100.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 0, i32 1
  %494 = ptrtoint ptr %arrayidx.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %arrayidx.i100.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %495)
  %cmp1.not.i101.i.i = icmp eq i8 %495, -1
  br i1 %cmp1.not.i101.i.i, label %for.cond.i97.1.i.i, label %for.cond.i97.preheader.i.i.if.then25.i.i_crit_edge

for.cond.i97.preheader.i.i.if.then25.i.i_crit_edge: ; preds = %for.cond.i97.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i.i

for.cond.i97.1.i.i:                               ; preds = %for.cond.i97.preheader.i.i
  %arrayidx.i100.1.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 0, i32 2
  %496 = ptrtoint ptr %arrayidx.i100.1.i.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %arrayidx.i100.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %497)
  %cmp1.not.i101.1.i.i = icmp eq i8 %497, -1
  br i1 %cmp1.not.i101.1.i.i, label %for.cond.i97.2.i.i, label %for.cond.i97.1.i.i.if.then25.i.i_crit_edge

for.cond.i97.1.i.i.if.then25.i.i_crit_edge:       ; preds = %for.cond.i97.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i.i

for.cond.i97.2.i.i:                               ; preds = %for.cond.i97.1.i.i
  %arrayidx.i100.2.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 0, i32 3
  %498 = ptrtoint ptr %arrayidx.i100.2.i.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %arrayidx.i100.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %499)
  %cmp1.not.i101.2.i.i = icmp eq i8 %499, -1
  br i1 %cmp1.not.i101.2.i.i, label %for.cond.i97.3.i.i, label %for.cond.i97.2.i.i.if.then25.i.i_crit_edge

for.cond.i97.2.i.i.if.then25.i.i_crit_edge:       ; preds = %for.cond.i97.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i.i

for.cond.i97.3.i.i:                               ; preds = %for.cond.i97.2.i.i
  %arrayidx.i100.3.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 0, i32 4
  %500 = ptrtoint ptr %arrayidx.i100.3.i.i to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %arrayidx.i100.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %501)
  %cmp1.not.i101.3.i.i = icmp eq i8 %501, -1
  br i1 %cmp1.not.i101.3.i.i, label %for.cond.i97.4.i.i, label %for.cond.i97.3.i.i.if.then25.i.i_crit_edge

for.cond.i97.3.i.i.if.then25.i.i_crit_edge:       ; preds = %for.cond.i97.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i.i

for.cond.i97.4.i.i:                               ; preds = %for.cond.i97.3.i.i
  %arrayidx.i100.4.i.i = getelementptr %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 0, i32 5
  %502 = ptrtoint ptr %arrayidx.i100.4.i.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx.i100.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %503)
  %cmp1.not.i101.4.i.i = icmp eq i8 %503, -1
  br i1 %cmp1.not.i101.4.i.i, label %for.cond.i97.4.i.i.if.end27.i.i_crit_edge, label %for.cond.i97.4.i.i.if.then25.i.i_crit_edge

for.cond.i97.4.i.i.if.then25.i.i_crit_edge:       ; preds = %for.cond.i97.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i.i

for.cond.i97.4.i.i.if.end27.i.i_crit_edge:        ; preds = %for.cond.i97.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.then25.i.i:                                    ; preds = %for.cond.i97.4.i.i.if.then25.i.i_crit_edge, %for.cond.i97.3.i.i.if.then25.i.i_crit_edge, %for.cond.i97.2.i.i.if.then25.i.i_crit_edge, %for.cond.i97.1.i.i.if.then25.i.i_crit_edge, %for.cond.i97.preheader.i.i.if.then25.i.i_crit_edge, %land.lhs.true21.i.i.if.then25.i.i_crit_edge
  %dev26.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %504 = ptrtoint ptr %dev26.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %dev26.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %505, ptr noundef nonnull @.str.22) #15
  br label %do.end.i

if.end27.i.i:                                     ; preds = %for.cond.i97.4.i.i.if.end27.i.i_crit_edge, %for.cond.i86.4.i.i.if.end27.i.i_crit_edge
  %inner_vlan_tci.i154.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 3
  %506 = ptrtoint ptr %inner_vlan_tci.i154.i to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %inner_vlan_tci.i154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %507)
  %cmp1.not.i112166.i.i = icmp eq i8 %507, 0
  br i1 %cmp1.not.i112166.i.i, label %for.cond.i108.preheader.i.i, label %if.end27.i.i.land.lhs.true31.i.i_crit_edge

if.end27.i.i.land.lhs.true31.i.i_crit_edge:       ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true31.i.i

for.cond.i108.preheader.i.i:                      ; preds = %if.end27.i.i
  %arrayidx.i111.i.i = getelementptr i8, ptr %inner_vlan_tci.i154.i, i32 1
  %508 = ptrtoint ptr %arrayidx.i111.i.i to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %arrayidx.i111.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %509)
  %cmp1.not.i112.i.i = icmp eq i8 %509, 0
  br i1 %cmp1.not.i112.i.i, label %for.cond.i108.preheader.i.i.if.end39.i.i_crit_edge, label %for.cond.i108.preheader.i.i.land.lhs.true31.i.i_crit_edge

for.cond.i108.preheader.i.i.land.lhs.true31.i.i_crit_edge: ; preds = %for.cond.i108.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true31.i.i

for.cond.i108.preheader.i.i.if.end39.i.i_crit_edge: ; preds = %for.cond.i108.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i.i

land.lhs.true31.i.i:                              ; preds = %for.cond.i108.preheader.i.i.land.lhs.true31.i.i_crit_edge, %if.end27.i.i.land.lhs.true31.i.i_crit_edge
  %inner_vlan_tci33.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 3
  %510 = ptrtoint ptr %inner_vlan_tci33.i.i to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %inner_vlan_tci33.i.i, align 8
  %conv.i.i155.i = zext i16 %511 to i32
  %and.i.i156.i = and i32 %conv.i.i155.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and.i.i156.i)
  %cmp.i116.i.i = icmp eq i32 %and.i.i156.i, 4095
  br i1 %cmp.i116.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true31.i.i.if.then37.i.i_crit_edge

land.lhs.true31.i.i.if.then37.i.i_crit_edge:      ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true31.i.i
  %512 = ptrtoint ptr %inner_vlan_tci.i154.i to i32
  call void @__asan_load2_noabort(i32 %512)
  %513 = load i16, ptr %inner_vlan_tci.i154.i, align 4
  %and3.i.i.i = and i32 %conv.i.i155.i, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %and3.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %and3.i.i.i, 57344
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %513)
  %cmp9.i.i.i = icmp ult i16 %513, 8192
  %or.cond.i.i.i = and i1 %cmp4.i.i.i, %cmp9.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %cmp13.i.i.i = icmp eq i32 %and3.i.i.i, 0
  %or.cond17.i.i.i = or i1 %cmp13.i.i.i, %or.cond.i.i.i
  br i1 %or.cond17.i.i.i, label %land.lhs.true.i.i.i.if.end39.i.i_crit_edge, label %land.lhs.true.i.i.i.if.then37.i.i_crit_edge

land.lhs.true.i.i.i.if.then37.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i.i

land.lhs.true.i.i.i.if.end39.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.then37.i.i_crit_edge, %land.lhs.true31.i.i.if.then37.i.i_crit_edge
  %dev38.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %514 = ptrtoint ptr %dev38.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %dev38.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %515, ptr noundef nonnull @.str.23) #15
  br label %do.end.i

if.end39.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end39.i.i_crit_edge, %for.cond.i108.preheader.i.i.if.end39.i.i_crit_edge
  %inner_vlan_tpid.i157.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 2
  %516 = ptrtoint ptr %inner_vlan_tpid.i157.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %inner_vlan_tpid.i157.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %517)
  %cmp1.not.i124170.i.i = icmp eq i8 %517, 0
  br i1 %cmp1.not.i124170.i.i, label %for.cond.i120.preheader.i.i, label %if.end39.i.i.land.lhs.true43.i.i_crit_edge

if.end39.i.i.land.lhs.true43.i.i_crit_edge:       ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true43.i.i

for.cond.i120.preheader.i.i:                      ; preds = %if.end39.i.i
  %arrayidx.i123.i.i = getelementptr i8, ptr %inner_vlan_tpid.i157.i, i32 1
  %518 = ptrtoint ptr %arrayidx.i123.i.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx.i123.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %519)
  %cmp1.not.i124.i.i = icmp eq i8 %519, 0
  br i1 %cmp1.not.i124.i.i, label %for.cond.i120.preheader.i.i.if.end49.i.i_crit_edge, label %for.cond.i120.preheader.i.i.land.lhs.true43.i.i_crit_edge

for.cond.i120.preheader.i.i.land.lhs.true43.i.i_crit_edge: ; preds = %for.cond.i120.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true43.i.i

for.cond.i120.preheader.i.i.if.end49.i.i_crit_edge: ; preds = %for.cond.i120.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i.i

land.lhs.true43.i.i:                              ; preds = %for.cond.i120.preheader.i.i.land.lhs.true43.i.i_crit_edge, %if.end39.i.i.land.lhs.true43.i.i_crit_edge
  %inner_vlan_tpid45.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 2
  %520 = ptrtoint ptr %inner_vlan_tpid45.i.i to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %inner_vlan_tpid45.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %521)
  %cmp1.not.i135174.i.i = icmp eq i8 %521, -1
  br i1 %cmp1.not.i135174.i.i, label %for.cond.i131.preheader.i.i, label %land.lhs.true43.i.i.if.then47.i.i_crit_edge

land.lhs.true43.i.i.if.then47.i.i_crit_edge:      ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47.i.i

for.cond.i131.preheader.i.i:                      ; preds = %land.lhs.true43.i.i
  %arrayidx.i134.i.i = getelementptr i8, ptr %inner_vlan_tpid45.i.i, i32 1
  %522 = ptrtoint ptr %arrayidx.i134.i.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx.i134.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %523)
  %cmp1.not.i135.i.i = icmp eq i8 %523, -1
  br i1 %cmp1.not.i135.i.i, label %for.cond.i131.preheader.i.i.if.end49.i.i_crit_edge, label %for.cond.i131.preheader.i.i.if.then47.i.i_crit_edge

for.cond.i131.preheader.i.i.if.then47.i.i_crit_edge: ; preds = %for.cond.i131.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then47.i.i

for.cond.i131.preheader.i.i.if.end49.i.i_crit_edge: ; preds = %for.cond.i131.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i.i

if.then47.i.i:                                    ; preds = %for.cond.i131.preheader.i.i.if.then47.i.i_crit_edge, %land.lhs.true43.i.i.if.then47.i.i_crit_edge
  %dev48.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %524 = ptrtoint ptr %dev48.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %dev48.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %525, ptr noundef nonnull @.str.24) #15
  br label %do.end.i

if.end49.i.i:                                     ; preds = %for.cond.i131.preheader.i.i.if.end49.i.i_crit_edge, %for.cond.i120.preheader.i.i.if.end49.i.i_crit_edge
  %526 = ptrtoint ptr %ether_type10.i.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %ether_type10.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %527)
  %cmp1.not.i146178.i.i = icmp eq i8 %527, -1
  br i1 %cmp1.not.i146178.i.i, label %for.cond.i142.preheader.i.i, label %if.end49.i.i.if.then52.i.i_crit_edge

if.end49.i.i.if.then52.i.i_crit_edge:             ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52.i.i

for.cond.i142.preheader.i.i:                      ; preds = %if.end49.i.i
  %arrayidx.i145.i.i = getelementptr i8, ptr %ether_type10.i.i, i32 1
  %528 = ptrtoint ptr %arrayidx.i145.i.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %arrayidx.i145.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %529)
  %cmp1.not.i146.i.i = icmp eq i8 %529, -1
  br i1 %cmp1.not.i146.i.i, label %if.end17.i, label %for.cond.i142.preheader.i.i.if.then52.i.i_crit_edge

for.cond.i142.preheader.i.i.if.then52.i.i_crit_edge: ; preds = %for.cond.i142.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52.i.i

if.then52.i.i:                                    ; preds = %for.cond.i142.preheader.i.i.if.then52.i.i_crit_edge, %if.end49.i.i.if.then52.i.i_crit_edge
  %dev53.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %530 = ptrtoint ptr %dev53.i.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %dev53.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %531, ptr noundef nonnull @.str.25) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then52.i.i, %if.then47.i.i, %if.then37.i.i, %if.then25.i.i, %if.then15.i.i, %if.then.i152.i
  %rcu.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 12
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 504 to ptr)) #12
  br label %return

if.end17.i:                                       ; preds = %for.cond.i142.preheader.i.i
  %flow_table.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 1
  %flow_ht_params.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 2
  %532 = ptrtoint ptr %flow_ht_params.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %.unpack.i = load i32, ptr %flow_ht_params.i, align 8
  %533 = insertvalue [7 x i32] undef, i32 %.unpack.i, 0
  %.elt120.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 2, i32 2
  %534 = ptrtoint ptr %.elt120.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %.unpack121.i = load i32, ptr %.elt120.i, align 4
  %535 = insertvalue [7 x i32] %533, i32 %.unpack121.i, 1
  %.elt122.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 2, i32 4
  %536 = ptrtoint ptr %.elt122.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %.unpack123.i = load i32, ptr %.elt122.i, align 8
  %537 = insertvalue [7 x i32] %535, i32 %.unpack123.i, 2
  %.elt124.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 2, i32 5
  %538 = ptrtoint ptr %.elt124.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %.unpack125.i = load i32, ptr %.elt124.i, align 4
  %539 = insertvalue [7 x i32] %537, i32 %.unpack125.i, 3
  %.elt126.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 2, i32 7
  %540 = ptrtoint ptr %.elt126.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %.unpack127.i = load i32, ptr %.elt126.i, align 8
  %541 = insertvalue [7 x i32] %539, i32 %.unpack127.i, 4
  %.elt128.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 2, i32 8
  %542 = ptrtoint ptr %.elt128.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %.unpack129.i = load i32, ptr %.elt128.i, align 4
  %543 = insertvalue [7 x i32] %541, i32 %.unpack129.i, 5
  %.elt130.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 2, i32 9
  %544 = ptrtoint ptr %.elt130.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %.unpack131.i = load i32, ptr %.elt130.i, align 8
  %545 = insertvalue [7 x i32] %543, i32 %.unpack131.i, 6
  %call19.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %flow_table.i, ptr noundef %cookie.i, [7 x i32] %545) #12
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then21.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @__bnxt_tc_del_flow(ptr noundef %bp, ptr noundef nonnull %call19.i) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end23.i_crit_edge
  %lock.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %4, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %546 = ptrtoint ptr %tc_info1.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %tc_info1.i, align 8
  %l2_table.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 3
  %l2_ht_params.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 4
  %548 = ptrtoint ptr %l2_ht_params.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %.unpack.i.i = load i32, ptr %l2_ht_params.i.i, align 8
  %549 = insertvalue [7 x i32] undef, i32 %.unpack.i.i, 0
  %.elt19.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 4, i32 2
  %550 = ptrtoint ptr %.elt19.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %.unpack20.i.i = load i32, ptr %.elt19.i.i, align 4
  %551 = insertvalue [7 x i32] %549, i32 %.unpack20.i.i, 1
  %.elt21.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 4, i32 4
  %552 = ptrtoint ptr %.elt21.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %.unpack22.i.i = load i32, ptr %.elt21.i.i, align 8
  %553 = insertvalue [7 x i32] %551, i32 %.unpack22.i.i, 2
  %.elt23.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 4, i32 5
  %554 = ptrtoint ptr %.elt23.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %.unpack24.i.i = load i32, ptr %.elt23.i.i, align 4
  %555 = insertvalue [7 x i32] %553, i32 %.unpack24.i.i, 3
  %.elt25.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 4, i32 7
  %556 = ptrtoint ptr %.elt25.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %.unpack26.i.i = load i32, ptr %.elt25.i.i, align 8
  %557 = insertvalue [7 x i32] %555, i32 %.unpack26.i.i, 4
  %.elt27.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 4, i32 8
  %558 = ptrtoint ptr %.elt27.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %.unpack28.i.i = load i32, ptr %.elt27.i.i, align 4
  %559 = insertvalue [7 x i32] %557, i32 %.unpack28.i.i, 5
  %.elt29.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %547, i32 0, i32 4, i32 9
  %560 = ptrtoint ptr %.elt29.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %.unpack30.i.i = load i32, ptr %.elt29.i.i, align 8
  %561 = insertvalue [7 x i32] %559, i32 %.unpack30.i.i, 6
  %call.i.i = call fastcc ptr @bnxt_tc_get_l2_node(ptr noundef %bp, ptr noundef %l2_table.i.i, [7 x i32] %561, ptr noundef %l2_key.i.i) #12
  %tobool.not.i161.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i161.i, label %if.end23.i.unlock.i_crit_edge, label %if.end.i162.i

if.end23.i.unlock.i_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.i

if.end.i162.i:                                    ; preds = %if.end23.i
  %refcount.i.i = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call.i.i, i32 0, i32 3
  %562 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %563)
  %cmp.not.i.i = icmp eq i16 %563, 0
  br i1 %cmp.not.i.i, label %if.end.i162.i.if.end4.i.i_crit_edge, label %if.then3.i.i

if.end.i162.i.if.end4.i.i_crit_edge:              ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  %common_l2_flows.i.i = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call.i.i, i32 0, i32 2
  %564 = ptrtoint ptr %common_l2_flows.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %common_l2_flows.i.i, align 4
  %flow_handle.i.i = getelementptr i8, ptr %565, i32 -12
  %566 = ptrtoint ptr %flow_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %566)
  %567 = load i16, ptr %flow_handle.i.i, align 8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i162.i.if.end4.i.i_crit_edge
  %storemerge.i.i = phi i16 [ %567, %if.then3.i.i ], [ -1, %if.end.i162.i.if.end4.i.i_crit_edge ]
  %l2_node5.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 6
  %568 = ptrtoint ptr %l2_node5.i.i to i32
  call void @__asan_store4_noabort(i32 %568)
  store ptr %call.i.i, ptr %l2_node5.i.i, align 8
  %l2_list_node.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 7
  %common_l2_flows6.i.i = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call.i.i, i32 0, i32 2
  %569 = ptrtoint ptr %common_l2_flows6.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %common_l2_flows6.i.i, align 4
  %call.i.i.i163.i = call zeroext i1 @__list_add_valid(ptr noundef %l2_list_node.i.i, ptr noundef %common_l2_flows6.i.i, ptr noundef %570) #12
  br i1 %call.i.i.i163.i, label %if.end.i.i.i.i, label %if.end4.i.i.if.end27.i_crit_edge

if.end4.i.i.if.end27.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %570, i32 0, i32 1
  %571 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store ptr %l2_list_node.i.i, ptr %prev1.i.i.i.i, align 4
  %572 = ptrtoint ptr %l2_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %572)
  store ptr %570, ptr %l2_list_node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %573 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %573)
  store ptr %common_l2_flows6.i.i, ptr %prev3.i.i.i.i, align 8
  %574 = ptrtoint ptr %common_l2_flows6.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store volatile ptr %l2_list_node.i.i, ptr %common_l2_flows6.i.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end.i.i.i.i, %if.end4.i.i.if.end27.i_crit_edge
  %575 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %refcount.i.i, align 4
  %inc.i.i = add i16 %576, 1
  store i16 %inc.i.i, ptr %refcount.i.i, align 4
  %577 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %actions.i.i, align 8
  %and.i166.i = and i32 %578, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166.i)
  %tobool.not.i167.i = icmp eq i32 %and.i166.i, 0
  br i1 %tobool.not.i167.i, label %if.else.i176.i, label %if.then.i168.i

if.then.i168.i:                                   ; preds = %if.end27.i
  %tun_key.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8
  %579 = ptrtoint ptr %tc_info1.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %tc_info1.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %l2_info.i.i.i) #12
  %581 = call ptr @memset(ptr %l2_info.i.i.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tun_key2.i.i.i) #12
  %582 = call ptr @memset(ptr %tun_key2.i.i.i, i32 0, i32 56)
  %tp_src.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 6
  %583 = ptrtoint ptr %tp_src.i.i.i to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 0, ptr %tp_src.i.i.i, align 8
  %decap_table.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 7
  %decap_ht_params.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 8
  %call.i.i.i = call fastcc ptr @bnxt_tc_get_tunnel_node(ptr noundef %bp, ptr noundef %decap_table.i.i.i, ptr noundef %decap_ht_params.i.i.i, ptr noundef %tun_key.i.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i168.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge, label %if.end.i.i.i

if.then.i168.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge: ; preds = %if.then.i168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_get_tunnel_handle.exit.thread206.i

if.end.i.i.i:                                     ; preds = %if.then.i168.i
  %decap_node3.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 9
  %584 = ptrtoint ptr %decap_node3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %584)
  store ptr %call.i.i.i, ptr %decap_node3.i.i.i, align 8
  %tunnel_handle.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 3
  %585 = ptrtoint ptr %tunnel_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %tunnel_handle.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %586)
  %cmp.not.i.i.i = icmp eq i32 %586, -1
  br i1 %cmp.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.bnxt_tc_get_tunnel_handle.exit.i_crit_edge

if.end.i.i.i.bnxt_tc_get_tunnel_handle.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_get_tunnel_handle.exit.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %u.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 1
  %587 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %u.i.i.i, align 8
  %dst.i.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %tun_key2.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %589 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 %588, ptr %dst.i.i.i, align 4
  %tp_dst.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 7
  %590 = ptrtoint ptr %tp_dst.i.i.i to i32
  call void @__asan_load2_noabort(i32 %590)
  %591 = load i16, ptr %tp_dst.i.i.i, align 2
  %tp_dst9.i.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %tun_key2.i.i.i, i32 0, i32 7
  %592 = ptrtoint ptr %tp_dst9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 %591, ptr %tp_dst9.i.i.i, align 2
  %call10.i.i.i = call fastcc i32 @bnxt_tc_resolve_tunnel_hdrs(ptr noundef %bp, ptr noundef nonnull %tun_key2.i.i.i, ptr noundef nonnull %l2_info.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end13.i.i.i, label %if.end5.i.i.i.put_decap.i.i.i_crit_edge

if.end5.i.i.i.put_decap.i.i.i_crit_edge:          ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_decap.i.i.i

if.end13.i.i.i:                                   ; preds = %if.end5.i.i.i
  %l2_info14.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 2
  %smac.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info.i.i.i, i32 0, i32 1
  %593 = ptrtoint ptr %smac.i.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %smac.i.i.i, align 4
  %595 = ptrtoint ptr %l2_info14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %595)
  store i32 %594, ptr %l2_info14.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info.i.i.i, i32 0, i32 1, i32 4
  %596 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 4
  %598 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 %597, ptr %add.ptr1.i.i.i.i, align 2
  %num_vlans.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info.i.i.i, i32 0, i32 5
  %599 = ptrtoint ptr %num_vlans.i.i.i to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %num_vlans.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %600)
  %tobool16.not.i.i.i = icmp eq i8 %600, 0
  br i1 %tobool16.not.i.i.i, label %if.end13.i.i.i.if.end22.i.i.i_crit_edge, label %if.then17.i.i.i

if.end13.i.i.i.if.end22.i.i.i_crit_edge:          ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i.i.i

if.then17.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_vlans19.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 2, i32 5
  %601 = ptrtoint ptr %num_vlans19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 %600, ptr %num_vlans19.i.i.i, align 2
  %inner_vlan_tpid.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info.i.i.i, i32 0, i32 2
  %602 = ptrtoint ptr %inner_vlan_tpid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %inner_vlan_tpid.i.i.i, align 2
  %inner_vlan_tpid20.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %604 = ptrtoint ptr %inner_vlan_tpid20.i.i.i to i32
  call void @__asan_store2_noabort(i32 %604)
  store i16 %603, ptr %inner_vlan_tpid20.i.i.i, align 2
  %inner_vlan_tci.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info.i.i.i, i32 0, i32 3
  %605 = ptrtoint ptr %inner_vlan_tci.i.i.i to i32
  call void @__asan_load2_noabort(i32 %605)
  %606 = load i16, ptr %inner_vlan_tci.i.i.i, align 2
  %inner_vlan_tci21.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 2, i32 3
  %607 = ptrtoint ptr %inner_vlan_tci21.i.i.i to i32
  call void @__asan_store2_noabort(i32 %607)
  store i16 %606, ptr %inner_vlan_tci21.i.i.i, align 2
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.then17.i.i.i, %if.end13.i.i.i.if.end22.i.i.i_crit_edge
  %608 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %flow3.i, align 8
  %or.i.i169.i = or i32 %609, 64
  store i32 %or.i.i169.i, ptr %flow3.i, align 8
  %610 = ptrtoint ptr %tc_info1.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %tc_info1.i, align 8
  %decap_l2_table.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 5
  %decap_l2_ht_params.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 6
  %612 = ptrtoint ptr %decap_l2_ht_params.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %.unpack.i.i.i.i = load i32, ptr %decap_l2_ht_params.i.i.i.i, align 8
  %613 = insertvalue [7 x i32] undef, i32 %.unpack.i.i.i.i, 0
  %.elt1.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 6, i32 2
  %614 = ptrtoint ptr %.elt1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %.unpack2.i.i.i.i = load i32, ptr %.elt1.i.i.i.i, align 4
  %615 = insertvalue [7 x i32] %613, i32 %.unpack2.i.i.i.i, 1
  %.elt3.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 6, i32 4
  %616 = ptrtoint ptr %.elt3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %.unpack4.i.i.i.i = load i32, ptr %.elt3.i.i.i.i, align 8
  %617 = insertvalue [7 x i32] %615, i32 %.unpack4.i.i.i.i, 2
  %.elt5.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 6, i32 5
  %618 = ptrtoint ptr %.elt5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %.unpack6.i.i.i.i = load i32, ptr %.elt5.i.i.i.i, align 4
  %619 = insertvalue [7 x i32] %617, i32 %.unpack6.i.i.i.i, 3
  %.elt7.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 6, i32 7
  %620 = ptrtoint ptr %.elt7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %.unpack8.i.i.i.i = load i32, ptr %.elt7.i.i.i.i, align 8
  %621 = insertvalue [7 x i32] %619, i32 %.unpack8.i.i.i.i, 4
  %.elt9.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 6, i32 8
  %622 = ptrtoint ptr %.elt9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %.unpack10.i.i.i.i = load i32, ptr %.elt9.i.i.i.i, align 4
  %623 = insertvalue [7 x i32] %621, i32 %.unpack10.i.i.i.i, 5
  %.elt11.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %611, i32 0, i32 6, i32 9
  %624 = ptrtoint ptr %.elt11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %.unpack12.i.i.i.i = load i32, ptr %.elt11.i.i.i.i, align 8
  %625 = insertvalue [7 x i32] %623, i32 %.unpack12.i.i.i.i, 6
  %call.i.i.i170.i = call fastcc ptr @bnxt_tc_get_l2_node(ptr noundef %bp, ptr noundef %decap_l2_table.i.i.i.i, [7 x i32] %625, ptr noundef %l2_info14.i.i.i) #12
  %tobool.not.i.i.i171.i = icmp eq ptr %call.i.i.i170.i, null
  br i1 %tobool.not.i.i.i171.i, label %if.end22.i.i.i.put_decap.i.i.i_crit_edge, label %if.end.i.i.i172.i

if.end22.i.i.i.put_decap.i.i.i_crit_edge:         ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_decap.i.i.i

if.end.i.i.i172.i:                                ; preds = %if.end22.i.i.i
  %refcount.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call.i.i.i170.i, i32 0, i32 3
  %626 = ptrtoint ptr %refcount.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %626)
  %627 = load i16, ptr %refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %627)
  %cmp.not.i.i.i.i = icmp eq i16 %627, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i172.i.if.end4.i.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i.i.i172.i.if.end4.i.i.i.i_crit_edge:      ; preds = %if.end.i.i.i172.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i172.i
  call void @__sanitizer_cov_trace_pc() #14
  %common_l2_flows.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call.i.i.i170.i, i32 0, i32 2
  %628 = ptrtoint ptr %common_l2_flows.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %common_l2_flows.i.i.i.i, align 4
  %decap_node.i.i.i.i = getelementptr i8, ptr %629, i32 -8
  %630 = ptrtoint ptr %decap_node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %decap_node.i.i.i.i, align 8
  %tunnel_handle.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %631, i32 0, i32 3
  %632 = ptrtoint ptr %tunnel_handle.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %tunnel_handle.i.i.i.i, align 8
  %phi.cast.i.i.i = trunc i32 %633 to i16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.end.i.i.i172.i.if.end4.i.i.i.i_crit_edge
  %storemerge.i.i.i.i = phi i16 [ %phi.cast.i.i.i, %if.then3.i.i.i.i ], [ -1, %if.end.i.i.i172.i.if.end4.i.i.i.i_crit_edge ]
  %decap_l2_node5.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 10
  %634 = ptrtoint ptr %decap_l2_node5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %634)
  store ptr %call.i.i.i170.i, ptr %decap_l2_node5.i.i.i.i, align 4
  %decap_l2_list_node.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 11
  %common_l2_flows6.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call.i.i.i170.i, i32 0, i32 2
  %635 = ptrtoint ptr %common_l2_flows6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %common_l2_flows6.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %decap_l2_list_node.i.i.i.i, ptr noundef %common_l2_flows6.i.i.i.i, ptr noundef %636) #12
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end4.i.i.i.i.if.end26.i.i.i_crit_edge

if.end4.i.i.i.i.if.end26.i.i.i_crit_edge:         ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %636, i32 0, i32 1
  %637 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %637)
  store ptr %decap_l2_list_node.i.i.i.i, ptr %prev1.i.i.i.i.i.i, align 4
  %638 = ptrtoint ptr %decap_l2_list_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %638)
  store ptr %636, ptr %decap_l2_list_node.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %639 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %639)
  store ptr %common_l2_flows6.i.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %640 = ptrtoint ptr %common_l2_flows6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %640)
  store volatile ptr %decap_l2_list_node.i.i.i.i, ptr %common_l2_flows6.i.i.i.i, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end4.i.i.i.i.if.end26.i.i.i_crit_edge
  %641 = ptrtoint ptr %refcount.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %641)
  %642 = load i16, ptr %refcount.i.i.i.i, align 4
  %inc.i.i.i.i = add i16 %642, 1
  store i16 %inc.i.i.i.i, ptr %refcount.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i.i.i) #12
  %643 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %643)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i.i.i, align 4, !annotation !168
  %call.i75.i.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i.i.i, i16 noundef zeroext 264, i32 noundef 104) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i.i.i)
  %tobool.not.i76.i.i.i = icmp eq i32 %call.i75.i.i.i, 0
  br i1 %tobool.not.i76.i.i.i, label %if.end.i77.i.i.i, label %if.end26.i.i.i.put_decap_l2.i.i.i_crit_edge

if.end26.i.i.i.put_decap_l2.i.i.i_crit_edge:      ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_decap_l2.i.i.i

if.end.i77.i.i.i:                                 ; preds = %if.end26.i.i.i
  %644 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %req.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %645, i32 0, i32 5
  %646 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %646)
  store i32 16777216, ptr %flags.i.i.i.i, align 8
  %tunnel_type.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %645, i32 0, i32 8
  %647 = ptrtoint ptr %tunnel_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 1, ptr %tunnel_type.i.i.i.i, align 4
  %ip_protocol.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %645, i32 0, i32 20
  %648 = ptrtoint ptr %ip_protocol.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 17, ptr %ip_protocol.i.i.i.i, align 1
  %649 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %flow3.i, align 8
  %and.i.i.i.i = and i32 %650, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end.i77.i.i.i.if.end7.i.i.i.i_crit_edge, label %if.then4.i.i.i173.i

if.end.i77.i.i.i.if.end7.i.i.i.i_crit_edge:       ; preds = %if.end.i77.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i.i.i

if.then4.i.i.i173.i:                              ; preds = %if.end.i77.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %651 = ptrtoint ptr %tun_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %651)
  %652 = load i64, ptr %tun_key.i.i.i, align 8
  %conv.i.i.i.i.i = trunc i64 %652 to i32
  %tunnel_id.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %645, i32 0, i32 7
  %653 = ptrtoint ptr %tunnel_id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 %conv.i.i.i.i.i, ptr %tunnel_id.i.i.i.i, align 8
  br label %if.end7.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.then4.i.i.i173.i, %if.end.i77.i.i.i.if.end7.i.i.i.i_crit_edge
  %enables.0.i.i.i.i = phi i32 [ 4099, %if.then4.i.i.i173.i ], [ 4097, %if.end.i77.i.i.i.if.end7.i.i.i.i_crit_edge ]
  %654 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %flow3.i, align 8
  %and9.i.i.i.i = and i32 %655, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i.i)
  %tobool10.not.i.i.i.i = icmp eq i32 %and9.i.i.i.i, 0
  br i1 %tobool10.not.i.i.i.i, label %if.end7.i.i.i.i.if.end14.i.i.i.i_crit_edge, label %if.then11.i.i.i.i

if.end7.i.i.i.i.if.end14.i.i.i.i_crit_edge:       ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or12.i.i.i.i = or i32 %enables.0.i.i.i.i, 8
  %dst_macaddr.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %645, i32 0, i32 13
  %656 = ptrtoint ptr %l2_info14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %l2_info14.i.i.i, align 4
  %658 = ptrtoint ptr %dst_macaddr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 %657, ptr %dst_macaddr.i.i.i.i, align 4
  %659 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %659)
  %660 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i = getelementptr %struct.hwrm_cfa_decap_filter_alloc_input, ptr %645, i32 0, i32 13, i32 4
  %661 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %661)
  store i16 %660, ptr %add.ptr1.i.i.i.i.i, align 2
  br label %if.end14.i.i.i.i

if.end14.i.i.i.i:                                 ; preds = %if.then11.i.i.i.i, %if.end7.i.i.i.i.if.end14.i.i.i.i_crit_edge
  %enables.1.i.i.i.i = phi i32 [ %or12.i.i.i.i, %if.then11.i.i.i.i ], [ %enables.0.i.i.i.i, %if.end7.i.i.i.i.if.end14.i.i.i.i_crit_edge ]
  %num_vlans.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 2, i32 5
  %662 = ptrtoint ptr %num_vlans.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %num_vlans.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %663)
  %tobool15.not.i.i.i.i = icmp eq i8 %663, 0
  br i1 %tobool15.not.i.i.i.i, label %if.end14.i.i.i.i.if.end18.i.i.i.i_crit_edge, label %if.then16.i.i.i.i

if.end14.i.i.i.i.if.end18.i.i.i.i_crit_edge:      ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i.i.i

if.then16.i.i.i.i:                                ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or17.i.i.i.i = or i32 %enables.1.i.i.i.i, 128
  %inner_vlan_tci.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i.i.i, i32 0, i32 2, i32 3
  %664 = ptrtoint ptr %inner_vlan_tci.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %664)
  %665 = load i16, ptr %inner_vlan_tci.i.i.i.i, align 2
  %666 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %req.i.i.i.i, align 4
  %t_ivlan_vid.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %667, i32 0, i32 17
  %668 = ptrtoint ptr %t_ivlan_vid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %668)
  store i16 %665, ptr %t_ivlan_vid.i.i.i.i, align 4
  br label %if.end18.i.i.i.i

if.end18.i.i.i.i:                                 ; preds = %if.then16.i.i.i.i, %if.end14.i.i.i.i.if.end18.i.i.i.i_crit_edge
  %enables.2.i.i.i.i = phi i32 [ %or17.i.i.i.i, %if.then16.i.i.i.i ], [ %enables.1.i.i.i.i, %if.end14.i.i.i.i.if.end18.i.i.i.i_crit_edge ]
  %or19.i.i.i.i = or i32 %enables.2.i.i.i.i, 256
  %669 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %req.i.i.i.i, align 4
  %ethertype.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %670, i32 0, i32 18
  %671 = ptrtoint ptr %ethertype.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %671)
  store i16 2048, ptr %ethertype.i.i.i.i, align 2
  %672 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %flow3.i, align 8
  %and21.i.i.i.i = and i32 %673, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i.i.i)
  %tobool22.not.i.i.i.i = icmp eq i32 %and21.i.i.i.i, 0
  br i1 %tobool22.not.i.i.i.i, label %if.end18.i.i.i.i.if.end27.i.i.i.i_crit_edge, label %if.then23.i.i.i.i

if.end18.i.i.i.i.if.end27.i.i.i.i_crit_edge:      ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i.i.i

if.then23.i.i.i.i:                                ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or24.i.i.i.i = or i32 %enables.2.i.i.i.i, 3840
  %ip_addr_type.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %670, i32 0, i32 19
  %674 = ptrtoint ptr %ip_addr_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %674)
  store i8 4, ptr %ip_addr_type.i.i.i.i, align 8
  %dst.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 8, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %675 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %dst.i.i.i.i, align 4
  %dst_ipaddr.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %670, i32 0, i32 24
  %677 = ptrtoint ptr %dst_ipaddr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %676, ptr %dst_ipaddr.i.i.i.i, align 8
  %678 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %u.i.i.i, align 8
  %src_ipaddr.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %670, i32 0, i32 23
  %680 = ptrtoint ptr %src_ipaddr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 %679, ptr %src_ipaddr.i.i.i.i, align 8
  br label %if.end27.i.i.i.i

if.end27.i.i.i.i:                                 ; preds = %if.then23.i.i.i.i, %if.end18.i.i.i.i.if.end27.i.i.i.i_crit_edge
  %enables.3.i.i.i.i = phi i32 [ %or24.i.i.i.i, %if.then23.i.i.i.i ], [ %or19.i.i.i.i, %if.end18.i.i.i.i.if.end27.i.i.i.i_crit_edge ]
  %681 = ptrtoint ptr %flow3.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %flow3.i, align 8
  %and29.i.i.i.i = and i32 %682, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %and29.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i.i, label %if.end27.i.i.i.i.if.end33.i.i.i.i_crit_edge, label %if.then31.i.i.i.i

if.end27.i.i.i.i.if.end33.i.i.i.i_crit_edge:      ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i.i.i

if.then31.i.i.i.i:                                ; preds = %if.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or32.i.i.i.i = or i32 %enables.3.i.i.i.i, 16384
  %683 = ptrtoint ptr %tp_dst.i.i.i to i32
  call void @__asan_load2_noabort(i32 %683)
  %684 = load i16, ptr %tp_dst.i.i.i, align 2
  %dst_port.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %670, i32 0, i32 26
  %685 = ptrtoint ptr %dst_port.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %685)
  store i16 %684, ptr %dst_port.i.i.i.i, align 2
  br label %if.end33.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %if.then31.i.i.i.i, %if.end27.i.i.i.i.if.end33.i.i.i.i_crit_edge
  %enables.4.i.i.i.i = phi i32 [ %or32.i.i.i.i, %if.then31.i.i.i.i ], [ %enables.3.i.i.i.i, %if.end27.i.i.i.i.if.end33.i.i.i.i_crit_edge ]
  %l2_ctxt_ref_id.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %670, i32 0, i32 28
  %686 = ptrtoint ptr %l2_ctxt_ref_id.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %686)
  store i16 %storemerge.i.i.i.i, ptr %l2_ctxt_ref_id.i.i.i.i, align 2
  %687 = call i32 @llvm.bswap.i32(i32 %enables.4.i.i.i.i) #12
  %enables34.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_input, ptr %670, i32 0, i32 6
  %688 = ptrtoint ptr %enables34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %688)
  store i32 %687, ptr %enables34.i.i.i.i, align 4
  %call35.i.i.i.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %670) #12
  %689 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %req.i.i.i.i, align 4
  %call36.i.i.i.i = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %690) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i.i)
  %tobool37.not.i.i.i.i = icmp eq i32 %call36.i.i.i.i, 0
  br i1 %tobool37.not.i.i.i.i, label %hwrm_cfa_decap_filter_alloc.exit.thread.i.i.i, label %exit.i.i.i.i

hwrm_cfa_decap_filter_alloc.exit.thread.i.i.i:    ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %decap_filter_id.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_alloc_output, ptr %call35.i.i.i.i, i32 0, i32 4
  %691 = ptrtoint ptr %decap_filter_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %decap_filter_id.i.i.i.i, align 4
  %693 = ptrtoint ptr %tunnel_handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %692, ptr %tunnel_handle.i.i.i, align 4
  %694 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %req.i.i.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %695) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i.i) #12
  br label %bnxt_tc_get_tunnel_handle.exit.i

exit.i.i.i.i:                                     ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %696 = ptrtoint ptr %req.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %req.i.i.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %697) #12
  br label %put_decap_l2.i.i.i

put_decap_l2.i.i.i:                               ; preds = %exit.i.i.i.i, %if.end26.i.i.i.put_decap_l2.i.i.i_crit_edge
  %rc.069.i.i.i.i = phi i32 [ %call36.i.i.i.i, %exit.i.i.i.i ], [ %call.i75.i.i.i, %if.end26.i.i.i.put_decap_l2.i.i.i_crit_edge ]
  %dev.i.i.i174.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %698 = ptrtoint ptr %dev.i.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %dev.i.i.i174.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %699, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.hwrm_cfa_decap_filter_alloc, i32 noundef %rc.069.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i.i.i) #12
  call fastcc void @bnxt_tc_put_decap_l2_node(ptr noundef %bp, ptr noundef %call7.i.i.i) #12
  br label %put_decap.i.i.i

put_decap.i.i.i:                                  ; preds = %put_decap_l2.i.i.i, %if.end22.i.i.i.put_decap.i.i.i_crit_edge, %if.end5.i.i.i.put_decap.i.i.i_crit_edge
  %rc.0.i.i.i = phi i32 [ %call10.i.i.i, %if.end5.i.i.i.put_decap.i.i.i_crit_edge ], [ %rc.069.i.i.i.i, %put_decap_l2.i.i.i ], [ -1, %if.end22.i.i.i.put_decap.i.i.i_crit_edge ]
  %700 = ptrtoint ptr %decap_node3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %decap_node3.i.i.i, align 8
  %refcount.i78.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %701, i32 0, i32 4
  %702 = ptrtoint ptr %refcount.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %refcount.i78.i.i.i, align 4
  %dec.i.i.i.i = add i32 %703, -1
  store i32 %dec.i.i.i.i, ptr %refcount.i78.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %put_decap.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge

put_decap.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge: ; preds = %put_decap.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_get_tunnel_handle.exit.thread206.i

if.then.i.i.i.i:                                  ; preds = %put_decap.i.i.i
  %node.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %701, i32 0, i32 1
  %704 = ptrtoint ptr %decap_ht_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %.unpack.i79.i.i.i = load i32, ptr %decap_ht_params.i.i.i, align 4
  %705 = insertvalue [7 x i32] undef, i32 %.unpack.i79.i.i.i, 0
  %.elt15.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 8, i32 2
  %706 = ptrtoint ptr %.elt15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %.unpack16.i.i.i.i = load i32, ptr %.elt15.i.i.i.i, align 4
  %707 = insertvalue [7 x i32] %705, i32 %.unpack16.i.i.i.i, 1
  %.elt17.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 8, i32 4
  %708 = ptrtoint ptr %.elt17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %.unpack18.i.i.i.i = load i32, ptr %.elt17.i.i.i.i, align 4
  %709 = insertvalue [7 x i32] %707, i32 %.unpack18.i.i.i.i, 2
  %.elt19.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 8, i32 5
  %710 = ptrtoint ptr %.elt19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %.unpack20.i.i.i.i = load i32, ptr %.elt19.i.i.i.i, align 4
  %711 = insertvalue [7 x i32] %709, i32 %.unpack20.i.i.i.i, 3
  %.elt21.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 8, i32 7
  %712 = ptrtoint ptr %.elt21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %.unpack22.i.i.i.i = load i32, ptr %.elt21.i.i.i.i, align 4
  %713 = insertvalue [7 x i32] %711, i32 %.unpack22.i.i.i.i, 4
  %.elt23.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 8, i32 8
  %714 = ptrtoint ptr %.elt23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %.unpack24.i.i.i.i = load i32, ptr %.elt23.i.i.i.i, align 4
  %715 = insertvalue [7 x i32] %713, i32 %.unpack24.i.i.i.i, 5
  %.elt25.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %580, i32 0, i32 8, i32 9
  %716 = ptrtoint ptr %.elt25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %.unpack26.i.i.i.i = load i32, ptr %.elt25.i.i.i.i, align 4
  %717 = insertvalue [7 x i32] %715, i32 %.unpack26.i.i.i.i, 6
  %call.i80.i.i.i = call fastcc i32 @rhashtable_remove_fast(ptr noundef %decap_table.i.i.i, ptr noundef %node.i.i.i.i, [7 x i32] %717) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i.i.i)
  %tobool.not.i81.i.i.i = icmp eq i32 %call.i80.i.i.i, 0
  br i1 %tobool.not.i81.i.i.i, label %if.then.i.i.i.i.do.body.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i82.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %718 = ptrtoint ptr %dev.i82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %dev.i82.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %719, ptr noundef nonnull @.str.46, i32 noundef %call.i80.i.i.i) #15
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.then1.i.i.i.i, %if.then.i.i.i.i.do.body.i.i.i.i_crit_edge
  %tobool2.not.i.i.i.i = icmp eq ptr %701, null
  br i1 %tobool2.not.i.i.i.i, label %do.body.i.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge, label %do.end.i.i.i.i

do.body.i.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_get_tunnel_handle.exit.thread206.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %701, i32 0, i32 5
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i.i, ptr noundef nonnull inttoptr (i32 88 to ptr)) #12
  br label %bnxt_tc_get_tunnel_handle.exit.thread206.i

if.else.i176.i:                                   ; preds = %if.end27.i
  %and3.i.i = and i32 %578, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else.i176.i.if.end31.i_crit_edge, label %if.then5.i.i

if.else.i176.i.if.end31.i_crit_edge:              ; preds = %if.else.i176.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then5.i.i:                                     ; preds = %if.else.i176.i
  %tun_encap_key.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 5
  %720 = ptrtoint ptr %tc_info1.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %tc_info1.i, align 8
  %encap_table.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 9
  %encap_ht_params.i.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 10
  %call.i16.i.i = call fastcc ptr @bnxt_tc_get_tunnel_node(ptr noundef %bp, ptr noundef %encap_table.i.i.i, ptr noundef %encap_ht_params.i.i.i, ptr noundef %tun_encap_key.i.i.i) #12
  %tobool.not.i17.i.i = icmp eq ptr %call.i16.i.i, null
  br i1 %tobool.not.i17.i.i, label %if.then5.i.i.put_l2.i_crit_edge, label %if.end.i20.i.i

if.then5.i.i.put_l2.i_crit_edge:                  ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_l2.i

if.end.i20.i.i:                                   ; preds = %if.then5.i.i
  %encap_node2.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 8
  %722 = ptrtoint ptr %encap_node2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %722)
  store ptr %call.i16.i.i, ptr %encap_node2.i.i.i, align 4
  %tunnel_handle.i18.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 3
  %723 = ptrtoint ptr %tunnel_handle.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %tunnel_handle.i18.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %724)
  %cmp.not.i19.i.i = icmp eq i32 %724, -1
  br i1 %cmp.not.i19.i.i, label %if.end4.i.i.i, label %if.end.i20.i.i.done.i34.i.i_crit_edge

if.end.i20.i.i.done.i34.i.i_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i34.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i20.i.i
  %l2_info.i21.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 2
  %call5.i.i.i = call fastcc i32 @bnxt_tc_resolve_tunnel_hdrs(ptr noundef %bp, ptr noundef %tun_encap_key.i.i.i, ptr noundef %l2_info.i21.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %if.end4.i.i.i.put_encap.i.i.i_crit_edge

if.end4.i.i.i.put_encap.i.i.i_crit_edge:          ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_encap.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i14.i.i) #12
  %725 = ptrtoint ptr %req.i.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %725)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i14.i.i, align 4, !annotation !168
  %call.i.i22.i.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i14.i.i, i16 noundef zeroext 151, i32 noundef 104) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i.i)
  %tobool.not.i.i23.i.i = icmp eq i32 %call.i.i22.i.i, 0
  br i1 %tobool.not.i.i23.i.i, label %if.end.i.i26.i.i, label %if.end8.i.i.i.hwrm_cfa_encap_record_alloc.exit.i.i.i_crit_edge

if.end8.i.i.i.hwrm_cfa_encap_record_alloc.exit.i.i.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwrm_cfa_encap_record_alloc.exit.i.i.i

if.end.i.i26.i.i:                                 ; preds = %if.end8.i.i.i
  %726 = ptrtoint ptr %req.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %req.i.i14.i.i, align 4
  %encap_data.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8
  %encap_type.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 6
  %728 = ptrtoint ptr %encap_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %728)
  store i8 1, ptr %encap_type.i.i.i.i, align 4
  %dst_mac_addr.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 2
  %729 = ptrtoint ptr %l2_info.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %l2_info.i21.i.i, align 4
  %731 = ptrtoint ptr %dst_mac_addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 %730, ptr %dst_mac_addr.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 2, i32 0, i32 4
  %732 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %732)
  %733 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %add.ptr1.i.i.i24.i.i = getelementptr %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 3
  %734 = ptrtoint ptr %add.ptr1.i.i.i24.i.i to i32
  call void @__asan_store2_noabort(i32 %734)
  store i16 %733, ptr %add.ptr1.i.i.i24.i.i, align 2
  %smac.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 2, i32 1
  %735 = ptrtoint ptr %smac.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %smac.i.i.i.i, align 4
  %737 = ptrtoint ptr %encap_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 %736, ptr %encap_data.i.i.i.i, align 4
  %add.ptr.i51.i.i.i.i = getelementptr %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 2, i32 1, i32 4
  %738 = ptrtoint ptr %add.ptr.i51.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %738)
  %739 = load i16, ptr %add.ptr.i51.i.i.i.i, align 2
  %add.ptr1.i52.i.i.i.i = getelementptr %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 1
  %740 = ptrtoint ptr %add.ptr1.i52.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %740)
  store i16 %739, ptr %add.ptr1.i52.i.i.i.i, align 2
  %num_vlans.i.i25.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 2, i32 5
  %741 = ptrtoint ptr %num_vlans.i.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %num_vlans.i.i25.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %742)
  %tobool4.not.i.i.i.i = icmp eq i8 %742, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i26.i.i.if.end7.i.i31.i.i_crit_edge, label %if.then5.i.i.i.i

if.end.i.i26.i.i.if.end7.i.i31.i.i_crit_edge:     ; preds = %if.end.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i31.i.i

if.then5.i.i.i.i:                                 ; preds = %if.end.i.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_vlan_tags.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_data_vxlan, ptr %encap_data.i.i.i.i, i32 0, i32 3
  %743 = ptrtoint ptr %num_vlan_tags.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 %742, ptr %num_vlan_tags.i.i.i.i, align 2
  %inner_vlan_tci.i.i27.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 2, i32 3
  %744 = ptrtoint ptr %inner_vlan_tci.i.i27.i.i to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %inner_vlan_tci.i.i27.i.i, align 2
  %ovlan_tci.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_data_vxlan, ptr %encap_data.i.i.i.i, i32 0, i32 6
  %746 = ptrtoint ptr %ovlan_tci.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %746)
  store i16 %745, ptr %ovlan_tci.i.i.i.i, align 2
  %inner_vlan_tpid.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 2, i32 2
  %747 = ptrtoint ptr %inner_vlan_tpid.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %747)
  %748 = load i16, ptr %inner_vlan_tpid.i.i.i.i, align 2
  %ovlan_tpid.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 4
  %749 = ptrtoint ptr %ovlan_tpid.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %749)
  store i16 %748, ptr %ovlan_tpid.i.i.i.i, align 4
  br label %if.end7.i.i31.i.i

if.end7.i.i31.i.i:                                ; preds = %if.then5.i.i.i.i, %if.end.i.i26.i.i.if.end7.i.i31.i.i_crit_edge
  %l3.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 6
  %750 = ptrtoint ptr %l3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %750)
  store i8 69, ptr %l3.i.i.i.i, align 4
  %ttl.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 5, i32 4
  %751 = ptrtoint ptr %ttl.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %ttl.i.i.i.i, align 1
  %ttl11.i.i.i.i = getelementptr inbounds %struct.hwrm_vxlan_ipv4_hdr, ptr %l3.i.i.i.i, i32 0, i32 4
  %753 = ptrtoint ptr %ttl11.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %753)
  store i8 %752, ptr %ttl11.i.i.i.i, align 2
  %u.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 5, i32 1
  %dst.i.i28.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 5, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %754 = ptrtoint ptr %dst.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %dst.i.i28.i.i, align 4
  %dest_ip_addr.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 9
  %756 = ptrtoint ptr %dest_ip_addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %756)
  store i32 %755, ptr %dest_ip_addr.i.i.i.i, align 4
  %757 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %u.i.i.i.i, align 8
  %src_ip_addr.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 8
  %759 = ptrtoint ptr %src_ip_addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %759)
  store i32 %758, ptr %src_ip_addr.i.i.i.i, align 4
  %protocol.i.i.i.i = getelementptr inbounds %struct.hwrm_vxlan_ipv4_hdr, ptr %l3.i.i.i.i, i32 0, i32 5
  %760 = ptrtoint ptr %protocol.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 17, ptr %protocol.i.i.i.i, align 1
  %tp_dst.i.i.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 10, i32 5, i32 7
  %761 = ptrtoint ptr %tp_dst.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %761)
  %762 = load i16, ptr %tp_dst.i.i.i.i, align 2
  %dst_port.i.i29.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_data_vxlan, ptr %encap_data.i.i.i.i, i32 0, i32 11
  %763 = ptrtoint ptr %dst_port.i.i29.i.i to i32
  call void @__asan_store2_noabort(i32 %763)
  store i16 %762, ptr %dst_port.i.i29.i.i, align 2
  %764 = ptrtoint ptr %tun_encap_key.i.i.i to i32
  call void @__asan_load8_noabort(i32 %764)
  %765 = load i64, ptr %tun_encap_key.i.i.i, align 8
  %conv.i.i.i30.i.i = trunc i64 %765 to i32
  %vni.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_input, ptr %727, i32 0, i32 8, i32 17
  %766 = ptrtoint ptr %vni.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 %conv.i.i.i30.i.i, ptr %vni.i.i.i.i, align 4
  %767 = ptrtoint ptr %req.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %req.i.i14.i.i, align 4
  %call14.i.i.i.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %768) #12
  %769 = ptrtoint ptr %req.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %req.i.i14.i.i, align 4
  %call15.i.i.i.i = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %770) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.i)
  %tobool16.not.i.i.i.i = icmp eq i32 %call15.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i.i, label %hwrm_cfa_encap_record_alloc.exit.thread.i.i.i, label %exit.i.i32.i.i

hwrm_cfa_encap_record_alloc.exit.thread.i.i.i:    ; preds = %if.end7.i.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %encap_record_id.i.i.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_alloc_output, ptr %call14.i.i.i.i, i32 0, i32 4
  %771 = ptrtoint ptr %encap_record_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %encap_record_id.i.i.i.i, align 4
  %773 = ptrtoint ptr %tunnel_handle.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 %772, ptr %tunnel_handle.i18.i.i, align 4
  %774 = ptrtoint ptr %req.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %req.i.i14.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %775) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i14.i.i) #12
  br label %done.i34.i.i

exit.i.i32.i.i:                                   ; preds = %if.end7.i.i31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %776 = ptrtoint ptr %req.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %req.i.i14.i.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %777) #12
  br label %hwrm_cfa_encap_record_alloc.exit.i.i.i

hwrm_cfa_encap_record_alloc.exit.i.i.i:           ; preds = %exit.i.i32.i.i, %if.end8.i.i.i.hwrm_cfa_encap_record_alloc.exit.i.i.i_crit_edge
  %rc.055.i.i.i.i = phi i32 [ %call15.i.i.i.i, %exit.i.i32.i.i ], [ %call.i.i22.i.i, %if.end8.i.i.i.hwrm_cfa_encap_record_alloc.exit.i.i.i_crit_edge ]
  %dev.i.i33.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %778 = ptrtoint ptr %dev.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %dev.i.i33.i.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %779, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.hwrm_cfa_encap_record_alloc, i32 noundef %rc.055.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i14.i.i) #12
  br label %put_encap.i.i.i

done.i34.i.i:                                     ; preds = %hwrm_cfa_encap_record_alloc.exit.thread.i.i.i, %if.end.i20.i.i.done.i34.i.i_crit_edge
  %780 = ptrtoint ptr %tunnel_handle.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %tunnel_handle.i18.i.i, align 8
  br label %if.end31.i

put_encap.i.i.i:                                  ; preds = %hwrm_cfa_encap_record_alloc.exit.i.i.i, %if.end4.i.i.i.put_encap.i.i.i_crit_edge
  %rc.0.i35.i.i = phi i32 [ %call5.i.i.i, %if.end4.i.i.i.put_encap.i.i.i_crit_edge ], [ %rc.055.i.i.i.i, %hwrm_cfa_encap_record_alloc.exit.i.i.i ]
  %refcount.i.i36.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 4
  %782 = ptrtoint ptr %refcount.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load i32, ptr %refcount.i.i36.i.i, align 4
  %dec.i.i37.i.i = add i32 %783, -1
  store i32 %dec.i.i37.i.i, ptr %refcount.i.i36.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i37.i.i)
  %cmp.i.i38.i.i = icmp eq i32 %dec.i.i37.i.i, 0
  br i1 %cmp.i.i38.i.i, label %if.then.i.i53.i.i, label %put_encap.i.i.i.put_l2.i_crit_edge

put_encap.i.i.i.put_l2.i_crit_edge:               ; preds = %put_encap.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_l2.i

if.then.i.i53.i.i:                                ; preds = %put_encap.i.i.i
  %node.i.i39.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 1
  %784 = ptrtoint ptr %encap_ht_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %.unpack.i.i40.i.i = load i32, ptr %encap_ht_params.i.i.i, align 4
  %785 = insertvalue [7 x i32] undef, i32 %.unpack.i.i40.i.i, 0
  %.elt15.i.i41.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 10, i32 2
  %786 = ptrtoint ptr %.elt15.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %.unpack16.i.i42.i.i = load i32, ptr %.elt15.i.i41.i.i, align 4
  %787 = insertvalue [7 x i32] %785, i32 %.unpack16.i.i42.i.i, 1
  %.elt17.i.i43.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 10, i32 4
  %788 = ptrtoint ptr %.elt17.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %.unpack18.i.i44.i.i = load i32, ptr %.elt17.i.i43.i.i, align 4
  %789 = insertvalue [7 x i32] %787, i32 %.unpack18.i.i44.i.i, 2
  %.elt19.i.i45.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 10, i32 5
  %790 = ptrtoint ptr %.elt19.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %.unpack20.i.i46.i.i = load i32, ptr %.elt19.i.i45.i.i, align 4
  %791 = insertvalue [7 x i32] %789, i32 %.unpack20.i.i46.i.i, 3
  %.elt21.i.i47.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 10, i32 7
  %792 = ptrtoint ptr %.elt21.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %.unpack22.i.i48.i.i = load i32, ptr %.elt21.i.i47.i.i, align 4
  %793 = insertvalue [7 x i32] %791, i32 %.unpack22.i.i48.i.i, 4
  %.elt23.i.i49.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 10, i32 8
  %794 = ptrtoint ptr %.elt23.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %.unpack24.i.i50.i.i = load i32, ptr %.elt23.i.i49.i.i, align 4
  %795 = insertvalue [7 x i32] %793, i32 %.unpack24.i.i50.i.i, 5
  %.elt25.i.i51.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %721, i32 0, i32 10, i32 9
  %796 = ptrtoint ptr %.elt25.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %.unpack26.i.i52.i.i = load i32, ptr %.elt25.i.i51.i.i, align 4
  %797 = insertvalue [7 x i32] %795, i32 %.unpack26.i.i52.i.i, 6
  %call.i40.i.i.i = call fastcc i32 @rhashtable_remove_fast(ptr noundef %encap_table.i.i.i, ptr noundef %node.i.i39.i.i, [7 x i32] %797) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i.i.i)
  %tobool.not.i41.i.i.i = icmp eq i32 %call.i40.i.i.i, 0
  br i1 %tobool.not.i41.i.i.i, label %if.then.i.i53.i.i.do.end.i.i56.i.i_crit_edge, label %if.then1.i.i54.i.i

if.then.i.i53.i.i.do.end.i.i56.i.i_crit_edge:     ; preds = %if.then.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i56.i.i

if.then1.i.i54.i.i:                               ; preds = %if.then.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i42.i.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %798 = ptrtoint ptr %dev.i42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %dev.i42.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %799, ptr noundef nonnull @.str.46, i32 noundef %call.i40.i.i.i) #15
  br label %do.end.i.i56.i.i

do.end.i.i56.i.i:                                 ; preds = %if.then1.i.i54.i.i, %if.then.i.i53.i.i.do.end.i.i56.i.i_crit_edge
  %rcu.i.i55.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call.i16.i.i, i32 0, i32 5
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i55.i.i, ptr noundef nonnull inttoptr (i32 88 to ptr)) #12
  br label %put_l2.i

bnxt_tc_get_tunnel_handle.exit.thread206.i:       ; preds = %do.end.i.i.i.i, %do.body.i.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge, %put_decap.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge, %if.then.i168.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge
  %retval.0.i.i175.ph.i = phi i32 [ %rc.0.i.i.i, %do.end.i.i.i.i ], [ %rc.0.i.i.i, %do.body.i.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge ], [ %rc.0.i.i.i, %put_decap.i.i.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge ], [ -12, %if.then.i168.i.bnxt_tc_get_tunnel_handle.exit.thread206.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tun_key2.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %l2_info.i.i.i) #12
  br label %put_l2.i

bnxt_tc_get_tunnel_handle.exit.i:                 ; preds = %hwrm_cfa_decap_filter_alloc.exit.thread.i.i.i, %if.end.i.i.i.bnxt_tc_get_tunnel_handle.exit.i_crit_edge
  %800 = ptrtoint ptr %tunnel_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load i32, ptr %tunnel_handle.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tun_key2.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %l2_info.i.i.i) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %bnxt_tc_get_tunnel_handle.exit.i, %done.i34.i.i, %if.else.i176.i.if.end31.i_crit_edge
  %tunnel_handle.1204.i = phi i32 [ %801, %bnxt_tc_get_tunnel_handle.exit.i ], [ %781, %done.i34.i.i ], [ 0, %if.else.i176.i.if.end31.i_crit_edge ]
  %call32.i = call fastcc i32 @bnxt_hwrm_cfa_flow_alloc(ptr noundef %bp, ptr noundef %flow3.i, i16 noundef zeroext %storemerge.i.i, i32 noundef %tunnel_handle.1204.i, ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end31.i.put_tunnel.i_crit_edge

if.end31.i.put_tunnel.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_tunnel.i

if.end35.i:                                       ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %802 = load volatile i32, ptr @jiffies, align 128
  %lastused.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 13
  %803 = ptrtoint ptr %lastused.i to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 %802, ptr %lastused.i, align 8
  %stats_lock.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 2, i32 14
  call void @__raw_spin_lock_init(ptr noundef %stats_lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @bnxt_tc_add_flow.__key, i16 noundef signext 3) #12
  %node.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 1
  %804 = ptrtoint ptr %flow_ht_params.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %.unpack132.i = load i32, ptr %flow_ht_params.i, align 8
  %805 = insertvalue [7 x i32] undef, i32 %.unpack132.i, 0
  %806 = ptrtoint ptr %.elt120.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %.unpack134.i = load i32, ptr %.elt120.i, align 4
  %807 = insertvalue [7 x i32] %805, i32 %.unpack134.i, 1
  %808 = ptrtoint ptr %.elt122.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %.unpack136.i = load i32, ptr %.elt122.i, align 8
  %809 = insertvalue [7 x i32] %807, i32 %.unpack136.i, 2
  %810 = ptrtoint ptr %.elt124.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %.unpack138.i = load i32, ptr %.elt124.i, align 4
  %811 = insertvalue [7 x i32] %809, i32 %.unpack138.i, 3
  %812 = ptrtoint ptr %.elt126.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %.unpack140.i = load i32, ptr %.elt126.i, align 8
  %813 = insertvalue [7 x i32] %811, i32 %.unpack140.i, 4
  %814 = ptrtoint ptr %.elt128.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %.unpack142.i = load i32, ptr %.elt128.i, align 4
  %815 = insertvalue [7 x i32] %813, i32 %.unpack142.i, 5
  %816 = ptrtoint ptr %.elt130.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %.unpack144.i = load i32, ptr %.elt130.i, align 8
  %817 = insertvalue [7 x i32] %815, i32 %.unpack144.i, 6
  %call42.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %flow_table.i, ptr noundef %node.i, [7 x i32] %817) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %hwrm_flow_free.i

if.end45.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %return

hwrm_flow_free.i:                                 ; preds = %if.end35.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #12
  %818 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %818)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !168
  %call.i178.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i, i16 noundef zeroext 260, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178.i)
  %tobool.not.i179.i = icmp eq i32 %call.i178.i, 0
  br i1 %tobool.not.i179.i, label %if.then.i181.i, label %hwrm_flow_free.i.if.then8.i.i_crit_edge

hwrm_flow_free.i.if.then8.i.i_crit_edge:          ; preds = %hwrm_flow_free.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i.i

if.then.i181.i:                                   ; preds = %hwrm_flow_free.i
  %fw_cap.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %819 = ptrtoint ptr %fw_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load i32, ptr %fw_cap.i.i, align 8
  %and.i180.i = and i32 %820, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180.i)
  %tobool1.not.i.i = icmp eq i32 %and.i180.i, 0
  br i1 %tobool1.not.i.i, label %if.else.i183.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i181.i
  call void @__sanitizer_cov_trace_pc() #14
  %ext_flow_handle.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 3
  %821 = ptrtoint ptr %ext_flow_handle.i.i to i32
  call void @__asan_load8_noabort(i32 %821)
  %822 = load i64, ptr %ext_flow_handle.i.i, align 8
  %823 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %req.i.i, align 4
  %ext_flow_handle3.i.i = getelementptr inbounds %struct.hwrm_cfa_flow_free_input, ptr %824, i32 0, i32 8
  %825 = ptrtoint ptr %ext_flow_handle3.i.i to i32
  call void @__asan_store8_noabort(i32 %825)
  store i64 %822, ptr %ext_flow_handle3.i.i, align 8
  br label %if.end6.i.i

if.else.i183.i:                                   ; preds = %if.then.i181.i
  call void @__sanitizer_cov_trace_pc() #14
  %flow_handle.i182.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 4
  %826 = ptrtoint ptr %flow_handle.i182.i to i32
  call void @__asan_load2_noabort(i32 %826)
  %827 = load i16, ptr %flow_handle.i182.i, align 8
  %828 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %req.i.i, align 4
  %flow_handle4.i.i = getelementptr inbounds %struct.hwrm_cfa_flow_free_input, ptr %829, i32 0, i32 5
  %830 = ptrtoint ptr %flow_handle4.i.i to i32
  call void @__asan_store2_noabort(i32 %830)
  store i16 %827, ptr %flow_handle4.i.i, align 8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else.i183.i, %if.then2.i.i
  %831 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %req.i.i, align 4
  %call5.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %832) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool7.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.bnxt_hwrm_cfa_flow_free.exit.i_crit_edge, label %if.end6.i.i.if.then8.i.i_crit_edge

if.end6.i.i.if.then8.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i.i

if.end6.i.i.bnxt_hwrm_cfa_flow_free.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_hwrm_cfa_flow_free.exit.i

if.then8.i.i:                                     ; preds = %if.end6.i.i.if.then8.i.i_crit_edge, %hwrm_flow_free.i.if.then8.i.i_crit_edge
  %rc.03.i.i = phi i32 [ %call5.i.i, %if.end6.i.i.if.then8.i.i_crit_edge ], [ %call.i178.i, %hwrm_flow_free.i.if.then8.i.i_crit_edge ]
  %dev.i184.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %833 = ptrtoint ptr %dev.i184.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %dev.i184.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %834, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.bnxt_hwrm_cfa_flow_free, i32 noundef %rc.03.i.i) #15
  br label %bnxt_hwrm_cfa_flow_free.exit.i

bnxt_hwrm_cfa_flow_free.exit.i:                   ; preds = %if.then8.i.i, %if.end6.i.i.bnxt_hwrm_cfa_flow_free.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #12
  br label %put_tunnel.i

put_tunnel.i:                                     ; preds = %bnxt_hwrm_cfa_flow_free.exit.i, %if.end31.i.put_tunnel.i_crit_edge
  %rc.0.i = phi i32 [ %call32.i, %if.end31.i.put_tunnel.i_crit_edge ], [ %call42.i, %bnxt_hwrm_cfa_flow_free.exit.i ]
  call fastcc void @bnxt_tc_put_tunnel_handle(ptr noundef %bp, ptr noundef %flow3.i, ptr noundef nonnull %call7.i.i.i) #12
  br label %put_l2.i

put_l2.i:                                         ; preds = %put_tunnel.i, %bnxt_tc_get_tunnel_handle.exit.thread206.i, %do.end.i.i56.i.i, %put_encap.i.i.i.put_l2.i_crit_edge, %if.then5.i.i.put_l2.i_crit_edge
  %rc.1.i = phi i32 [ %rc.0.i, %put_tunnel.i ], [ %retval.0.i.i175.ph.i, %bnxt_tc_get_tunnel_handle.exit.thread206.i ], [ %rc.0.i35.i.i, %do.end.i.i56.i.i ], [ %rc.0.i35.i.i, %put_encap.i.i.i.put_l2.i_crit_edge ], [ -12, %if.then5.i.i.put_l2.i_crit_edge ]
  call fastcc void @bnxt_tc_put_l2_node(ptr noundef %bp, ptr noundef nonnull %call7.i.i.i) #12
  br label %unlock.i

unlock.i:                                         ; preds = %put_l2.i, %if.end23.i.unlock.i_crit_edge
  %rc.2.i = phi i32 [ %rc.1.i, %put_l2.i ], [ -1, %if.end23.i.unlock.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %do.end56.i

do.end56.i:                                       ; preds = %unlock.i, %bnxt_tc_parse_flow.exit.thread188.i, %if.else186.i.i.do.end56.i_crit_edge, %if.then.i.i
  %rc.3.i = phi i32 [ %rc.2.i, %unlock.i ], [ %retval.0.i.i.ph.i, %bnxt_tc_parse_flow.exit.thread188.i ], [ -95, %if.then.i.i ], [ -95, %if.else186.i.i.do.end56.i_crit_edge ]
  %rcu57.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call7.i.i.i, i32 0, i32 12
  call void @kvfree_call_rcu(ptr noundef %rcu57.i, ptr noundef nonnull inttoptr (i32 504 to ptr)) #12
  br label %done.i

done.i:                                           ; preds = %do.end56.i, %sw.bb.done.i_crit_edge
  %rc.4.i = phi i32 [ %rc.3.i, %do.end56.i ], [ -12, %sw.bb.done.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %835 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %dev.i, align 4
  %cookie61.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %837 = ptrtoint ptr %cookie61.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %cookie61.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %836, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.bnxt_tc_add_flow, i32 noundef %838, i32 noundef %rc.4.i) #15
  br label %return

sw.bb1:                                           ; preds = %entry
  %tc_info1.i10 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %839 = ptrtoint ptr %tc_info1.i10 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %tc_info1.i10, align 8
  %flow_table.i11 = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 1
  %cookie.i12 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %flow_ht_params.i13 = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 2
  %841 = ptrtoint ptr %flow_ht_params.i13 to i32
  call void @__asan_load4_noabort(i32 %841)
  %.unpack.i14 = load i32, ptr %flow_ht_params.i13, align 8
  %842 = insertvalue [7 x i32] undef, i32 %.unpack.i14, 0
  %.elt7.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 2, i32 2
  %843 = ptrtoint ptr %.elt7.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %.unpack8.i = load i32, ptr %.elt7.i, align 4
  %844 = insertvalue [7 x i32] %842, i32 %.unpack8.i, 1
  %.elt9.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 2, i32 4
  %845 = ptrtoint ptr %.elt9.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %.unpack10.i = load i32, ptr %.elt9.i, align 8
  %846 = insertvalue [7 x i32] %844, i32 %.unpack10.i, 2
  %.elt11.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 2, i32 5
  %847 = ptrtoint ptr %.elt11.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %.unpack12.i = load i32, ptr %.elt11.i, align 4
  %848 = insertvalue [7 x i32] %846, i32 %.unpack12.i, 3
  %.elt13.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 2, i32 7
  %849 = ptrtoint ptr %.elt13.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %.unpack14.i = load i32, ptr %.elt13.i, align 8
  %850 = insertvalue [7 x i32] %848, i32 %.unpack14.i, 4
  %.elt15.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 2, i32 8
  %851 = ptrtoint ptr %.elt15.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %.unpack16.i = load i32, ptr %.elt15.i, align 4
  %852 = insertvalue [7 x i32] %850, i32 %.unpack16.i, 5
  %.elt17.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %840, i32 0, i32 2, i32 9
  %853 = ptrtoint ptr %.elt17.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %.unpack18.i = load i32, ptr %.elt17.i, align 8
  %854 = insertvalue [7 x i32] %852, i32 %.unpack18.i, 6
  %call.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %flow_table.i11, ptr noundef %cookie.i12, [7 x i32] %854) #12
  %tobool.not.i15 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i15, label %sw.bb1.return_crit_edge, label %if.end.i16

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i16:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__bnxt_tc_del_flow(ptr noundef %bp, ptr noundef nonnull %call.i) #12
  br label %return

sw.bb3:                                           ; preds = %entry
  %tc_info1.i18 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %855 = ptrtoint ptr %tc_info1.i18 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %tc_info1.i18, align 8
  %flow_table.i19 = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 1
  %cookie.i20 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 2
  %flow_ht_params.i21 = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 2
  %857 = ptrtoint ptr %flow_ht_params.i21 to i32
  call void @__asan_load4_noabort(i32 %857)
  %.unpack.i22 = load i32, ptr %flow_ht_params.i21, align 8
  %858 = insertvalue [7 x i32] undef, i32 %.unpack.i22, 0
  %.elt32.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 2, i32 2
  %859 = ptrtoint ptr %.elt32.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %.unpack33.i = load i32, ptr %.elt32.i, align 4
  %860 = insertvalue [7 x i32] %858, i32 %.unpack33.i, 1
  %.elt34.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 2, i32 4
  %861 = ptrtoint ptr %.elt34.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %.unpack35.i = load i32, ptr %.elt34.i, align 8
  %862 = insertvalue [7 x i32] %860, i32 %.unpack35.i, 2
  %.elt36.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 2, i32 5
  %863 = ptrtoint ptr %.elt36.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %.unpack37.i = load i32, ptr %.elt36.i, align 4
  %864 = insertvalue [7 x i32] %862, i32 %.unpack37.i, 3
  %.elt38.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 2, i32 7
  %865 = ptrtoint ptr %.elt38.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %.unpack39.i = load i32, ptr %.elt38.i, align 8
  %866 = insertvalue [7 x i32] %864, i32 %.unpack39.i, 4
  %.elt40.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 2, i32 8
  %867 = ptrtoint ptr %.elt40.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %.unpack41.i = load i32, ptr %.elt40.i, align 4
  %868 = insertvalue [7 x i32] %866, i32 %.unpack41.i, 5
  %.elt42.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %856, i32 0, i32 2, i32 9
  %869 = ptrtoint ptr %.elt42.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %.unpack43.i = load i32, ptr %.elt42.i, align 8
  %870 = insertvalue [7 x i32] %868, i32 %.unpack43.i, 6
  %call.i23 = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %flow_table.i19, ptr noundef %cookie.i20, [7 x i32] %870) #12
  %tobool.not.i24 = icmp eq ptr %call.i23, null
  br i1 %tobool.not.i24, label %sw.bb3.return_crit_edge, label %if.end.i27

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i27:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %stats3.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call.i23, i32 0, i32 2, i32 11
  %prev_stats4.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call.i23, i32 0, i32 2, i32 12
  %stats_lock.i25 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call.i23, i32 0, i32 2, i32 14
  tail call void @_raw_spin_lock(ptr noundef %stats_lock.i25) #12
  %871 = ptrtoint ptr %stats3.i to i32
  call void @__asan_load8_noabort(i32 %871)
  %872 = load i64, ptr %stats3.i, align 8
  %873 = ptrtoint ptr %prev_stats4.i to i32
  call void @__asan_load8_noabort(i32 %873)
  %874 = load i64, ptr %prev_stats4.i, align 8
  %sub.i = sub i64 %872, %874
  %bytes.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call.i23, i32 0, i32 2, i32 11, i32 1
  %875 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %875)
  %876 = load i64, ptr %bytes.i, align 8
  %bytes7.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call.i23, i32 0, i32 2, i32 12, i32 1
  %877 = ptrtoint ptr %bytes7.i to i32
  call void @__asan_load8_noabort(i32 %877)
  %878 = load i64, ptr %bytes7.i, align 8
  %sub8.i = sub i64 %876, %878
  %879 = call ptr @memcpy(ptr %prev_stats4.i, ptr %stats3.i, i32 16)
  %lastused10.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %call.i23, i32 0, i32 2, i32 13
  %880 = ptrtoint ptr %lastused10.i to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load i32, ptr %lastused10.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock.i25) #12
  %stats12.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4
  %conv.i = zext i32 %881 to i64
  %882 = ptrtoint ptr %stats12.i to i32
  call void @__asan_load8_noabort(i32 %882)
  %883 = load i64, ptr %stats12.i, align 8
  %add.i.i = add i64 %sub.i, %883
  store i64 %add.i.i, ptr %stats12.i, align 8
  %bytes2.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 1
  %884 = ptrtoint ptr %bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %884)
  %885 = load i64, ptr %bytes2.i.i, align 8
  %add3.i.i = add i64 %sub8.i, %885
  store i64 %add3.i.i, ptr %bytes2.i.i, align 8
  %lastused6.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 3
  %886 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_load8_noabort(i32 %886)
  %887 = load i64, ptr %lastused6.i.i, align 8
  %888 = tail call i64 @llvm.umax.i64(i64 %887, i64 %conv.i) #12
  %889 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_store8_noabort(i32 %889)
  store i64 %888, ptr %lastused6.i.i, align 8
  %used_hw_stats28.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 4
  %890 = ptrtoint ptr %used_hw_stats28.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %used_hw_stats28.i.i, align 8
  %or.i.i26 = or i32 %891, 2
  store i32 %or.i.i26, ptr %used_hw_stats28.i.i, align 8
  %used_hw_stats_valid.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flower, i32 0, i32 4, i32 5
  %892 = ptrtoint ptr %used_hw_stats_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %892)
  store i8 1, ptr %used_hw_stats_valid.i.i, align 4
  br label %return

return:                                           ; preds = %if.end.i27, %sw.bb3.return_crit_edge, %if.end.i16, %sw.bb1.return_crit_edge, %done.i, %if.end45.i, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %rc.4.i, %done.i ], [ 0, %if.end45.i ], [ -95, %do.end.i ], [ 0, %if.end.i16 ], [ -22, %sw.bb1.return_crit_edge ], [ 0, %if.end.i27 ], [ -1, %sw.bb3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_init_tc(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %0 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67587, i32 %1)
  %cmp = icmp ult i32 %1, 67587
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1672) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @bnxt_init_tc.__key) #12
  %bytes_mask = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 14
  %3 = ptrtoint ptr %bytes_mask to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 68719476735, ptr %bytes_mask, align 8
  %packets_mask = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %packets_mask to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 268435455, ptr %packets_mask, align 8
  %flow_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %flow_ht_params, ptr @bnxt_tc_flow_ht_params, i32 28)
  %flow_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call i32 @rhashtable_init(ptr noundef %flow_table, ptr noundef %flow_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.body.free_tc_info_crit_edge

do.body.free_tc_info_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_tc_info

if.end7:                                          ; preds = %do.body
  %l2_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %l2_ht_params, ptr @bnxt_tc_l2_ht_params, i32 28)
  %l2_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 3
  %call9 = tail call i32 @rhashtable_init(ptr noundef %l2_table, ptr noundef %l2_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.destroy_flow_table_crit_edge

if.end7.destroy_flow_table_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_flow_table

if.end12:                                         ; preds = %if.end7
  %decap_l2_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %decap_l2_ht_params, ptr @bnxt_tc_decap_l2_ht_params, i32 28)
  %decap_l2_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 5
  %call14 = tail call i32 @rhashtable_init(ptr noundef %decap_l2_table, ptr noundef %decap_l2_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.destroy_l2_table_crit_edge

if.end12.destroy_l2_table_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_l2_table

if.end17:                                         ; preds = %if.end12
  %decap_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 8
  %8 = call ptr @memcpy(ptr %decap_ht_params, ptr @bnxt_tc_tunnel_ht_params, i32 28)
  %decap_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 7
  %call19 = tail call i32 @rhashtable_init(ptr noundef %decap_table, ptr noundef %decap_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.destroy_decap_l2_table_crit_edge

if.end17.destroy_decap_l2_table_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_decap_l2_table

if.end22:                                         ; preds = %if.end17
  %encap_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 10
  %9 = call ptr @memcpy(ptr %encap_ht_params, ptr @bnxt_tc_tunnel_ht_params, i32 28)
  %encap_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %call7.i.i, i32 0, i32 9
  %call24 = tail call i32 @rhashtable_init(ptr noundef %encap_table, ptr noundef %encap_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.destroy_decap_table_crit_edge

if.end22.destroy_decap_table_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_decap_table

if.end27:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %hw_features, align 8
  %or = or i64 %14, 562949953421312
  store i64 %or, ptr %hw_features, align 8
  %15 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features, align 16
  %or29 = or i64 %17, 562949953421312
  store i64 %or29, ptr %features, align 16
  %tc_info30 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %18 = ptrtoint ptr %tc_info30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %tc_info30, align 8
  %tc_indr_block_list = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 155
  %19 = ptrtoint ptr %tc_indr_block_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %tc_indr_block_list, ptr %tc_indr_block_list, align 4
  %prev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 155, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tc_indr_block_list, ptr %prev.i, align 4
  %call31 = tail call i32 @flow_indr_dev_register(ptr noundef nonnull @bnxt_tc_setup_indr_cb, ptr noundef %bp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end27.cleanup_crit_edge, label %if.end34

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rhashtable_destroy(ptr noundef %encap_table) #12
  br label %destroy_decap_table

destroy_decap_table:                              ; preds = %if.end34, %if.end22.destroy_decap_table_crit_edge
  %rc.0 = phi i32 [ %call24, %if.end22.destroy_decap_table_crit_edge ], [ %call31, %if.end34 ]
  tail call void @rhashtable_destroy(ptr noundef %decap_table) #12
  br label %destroy_decap_l2_table

destroy_decap_l2_table:                           ; preds = %destroy_decap_table, %if.end17.destroy_decap_l2_table_crit_edge
  %rc.1 = phi i32 [ %call19, %if.end17.destroy_decap_l2_table_crit_edge ], [ %rc.0, %destroy_decap_table ]
  tail call void @rhashtable_destroy(ptr noundef %decap_l2_table) #12
  br label %destroy_l2_table

destroy_l2_table:                                 ; preds = %destroy_decap_l2_table, %if.end12.destroy_l2_table_crit_edge
  %rc.2 = phi i32 [ %call14, %if.end12.destroy_l2_table_crit_edge ], [ %rc.1, %destroy_decap_l2_table ]
  tail call void @rhashtable_destroy(ptr noundef %l2_table) #12
  br label %destroy_flow_table

destroy_flow_table:                               ; preds = %destroy_l2_table, %if.end7.destroy_flow_table_crit_edge
  %rc.3 = phi i32 [ %call9, %if.end7.destroy_flow_table_crit_edge ], [ %rc.2, %destroy_l2_table ]
  tail call void @rhashtable_destroy(ptr noundef %flow_table) #12
  br label %free_tc_info

free_tc_info:                                     ; preds = %destroy_flow_table, %do.body.free_tc_info_crit_edge
  %rc.4 = phi i32 [ %call4, %do.body.free_tc_info_crit_edge ], [ %rc.3, %destroy_flow_table ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_tc_info, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.4, %free_tc_info ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_indr_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_tc_setup_indr_cb(ptr noundef %netdev, ptr noundef %sch, ptr noundef %cb_priv, i32 noundef %type, ptr noundef %type_data, ptr noundef %data, ptr noundef %cleanup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %netdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.return_crit_edge, label %bnxt_is_netdev_indr_offload.exit

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

bnxt_is_netdev_indr_offload.exit:                 ; preds = %lor.lhs.false
  %kind.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str.53) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  %or.cond = and i1 %cond, %tobool2.not.i.i
  br i1 %or.cond, label %sw.bb, label %bnxt_is_netdev_indr_offload.exit.return_crit_edge

bnxt_is_netdev_indr_offload.exit.return_crit_edge: ; preds = %bnxt_is_netdev_indr_offload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %bnxt_is_netdev_indr_offload.exit
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 1
  %4 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %binder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %6 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type_data, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %7, label %if.end.i.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb10.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.i.return_crit_edge, label %if.end2.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end2.i:                                        ; preds = %sw.bb.i
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %netdev, ptr %call7.i.i, align 8
  %bp3.i = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bp3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cb_priv, ptr %bp3.i, align 4
  %list.i = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2
  %tc_indr_block_list.i = getelementptr inbounds %struct.bnxt, ptr %cb_priv, i32 0, i32 155
  %12 = ptrtoint ptr %tc_indr_block_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tc_indr_block_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %tc_indr_block_list.i, ptr noundef %13) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end2.i.list_add.exit.i_crit_edge

if.end2.i.list_add.exit.i_crit_edge:              ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tc_indr_block_list.i, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %tc_indr_block_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list.i, ptr %tc_indr_block_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end2.i.list_add.exit.i_crit_edge
  %call4.i = tail call ptr @flow_indr_block_cb_alloc(ptr noundef nonnull @bnxt_tc_setup_indr_block_cb, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @bnxt_tc_setup_indr_rel, ptr noundef %type_data, ptr noundef nonnull %netdev, ptr noundef %sch, ptr noundef %data, ptr noundef %cb_priv, ptr noundef %cleanup) #12
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %list_add.exit.i
  %call.i.i47.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i47.i, label %if.end.i.i48.i, label %if.then6.i.list_del.exit.i_crit_edge

if.then6.i.list_del.exit.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i48.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i48.i, %if.then6.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %26 = ptrtoint ptr %call4.i to i32
  br label %return

if.end9.i:                                        ; preds = %list_add.exit.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call4.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %prev.i.i49.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i49.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %28, ptr noundef %cb_list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end9.i.flow_block_cb_add.exit.i_crit_edge

if.end9.i.flow_block_cb_add.exit.i_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %flow_block_cb_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %prev.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i.i, ptr %prev.i.i49.i, align 4
  %30 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call4.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list.i.i, ptr %28, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.end9.i.flow_block_cb_add.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @bnxt_block_cb_list, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bnxt_block_cb_list, i32 0, i32 1), align 4
  %call.i.i50.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call4.i, ptr noundef %33, ptr noundef nonnull @bnxt_block_cb_list) #12
  br i1 %call.i.i50.i, label %if.end.i.i52.i, label %flow_block_cb_add.exit.i.return_crit_edge

flow_block_cb_add.exit.i.return_crit_edge:        ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.i52.i:                                   ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @bnxt_block_cb_list, i32 0, i32 1) to i32))
  store ptr %call4.i, ptr getelementptr inbounds (%struct.list_head, ptr @bnxt_block_cb_list, i32 0, i32 1), align 4
  %34 = ptrtoint ptr %call4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bnxt_block_cb_list, ptr %call4.i, align 4
  %prev3.i.i51.i = getelementptr inbounds %struct.list_head, ptr %call4.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %prev3.i.i51.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call4.i, ptr %33, align 4
  br label %return

sw.bb10.i:                                        ; preds = %if.end.i
  %tc_indr_block_list.i.i = getelementptr inbounds %struct.bnxt, ptr %cb_priv, i32 0, i32 155
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.bb10.i
  %.pn.in.i.i = phi ptr [ %tc_indr_block_list.i.i, %sw.bb10.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %37 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %tc_indr_block_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.return_crit_edge, label %for.body.i.i

for.cond.i.i.return_crit_edge:                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cb_priv.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %38 = ptrtoint ptr %cb_priv.0.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cb_priv.0.i.i, align 4
  %cmp2.i.i = icmp eq ptr %39, %netdev
  br i1 %cmp2.i.i, label %bnxt_tc_indr_block_cb_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

bnxt_tc_indr_block_cb_lookup.exit.i:              ; preds = %for.body.i.i
  %cb_priv.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool12.not.i = icmp eq ptr %cb_priv.0.i.i.le, null
  br i1 %tobool12.not.i, label %bnxt_tc_indr_block_cb_lookup.exit.i.return_crit_edge, label %if.end14.i

bnxt_tc_indr_block_cb_lookup.exit.i.return_crit_edge: ; preds = %bnxt_tc_indr_block_cb_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end14.i:                                       ; preds = %bnxt_tc_indr_block_cb_lookup.exit.i
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %40 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %block.i, align 4
  %call15.i = tail call ptr @flow_block_cb_lookup(ptr noundef %41, ptr noundef nonnull @bnxt_tc_setup_indr_block_cb, ptr noundef nonnull %cb_priv.0.i.i.le) #12
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end14.i.return_crit_edge, label %if.end18.i

if.end14.i.return_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end18.i:                                       ; preds = %if.end14.i
  %indr.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call15.i, i32 0, i32 6
  %call.i.i.i53.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %indr.i.i) #12
  br i1 %call.i.i.i53.i, label %if.end.i.i.i54.i, label %if.end18.i.list_del.exit.i.i_crit_edge

if.end18.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i54.i:                                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call15.i, i32 0, i32 6, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i.i, align 4
  %44 = ptrtoint ptr %indr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %indr.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i54.i, %if.end18.i.list_del.exit.i.i_crit_edge
  %48 = ptrtoint ptr %indr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %indr.i.i, align 4
  %prev.i.i55.i = getelementptr inbounds %struct.flow_block_cb, ptr %call15.i, i32 0, i32 6, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i55.i, align 4
  %list1.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call15.i, i32 0, i32 1
  %cb_list.i56.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %call.i.i3.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list1.i.i) #12
  br i1 %call.i.i3.i.i, label %if.end.i.i6.i.i, label %list_del.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge

list_del.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i.i

if.end.i.i6.i.i:                                  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i4.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call15.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i4.i.i, align 4
  %52 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %list1.i.i, align 4
  %prev1.i.i.i5.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i5.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i6.i.i, %list_del.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %56 = ptrtoint ptr %cb_list.i56.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cb_list.i56.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list1.i.i, ptr noundef %cb_list.i56.i, ptr noundef %57) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_indr_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_indr_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %flow_indr_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %list1.i.i, ptr %prev1.i.i2.i.i.i, align 4
  %59 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %list1.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call15.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cb_list.i56.i, ptr %prev3.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %cb_list.i56.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list1.i.i, ptr %cb_list.i56.i, align 4
  br label %flow_indr_block_cb_remove.exit.i

flow_indr_block_cb_remove.exit.i:                 ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_indr_block_cb_remove.exit.i_crit_edge
  %call.i.i57.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call15.i) #12
  br i1 %call.i.i57.i, label %if.end.i.i60.i, label %flow_indr_block_cb_remove.exit.i.list_del.exit62.i_crit_edge

flow_indr_block_cb_remove.exit.i.list_del.exit62.i_crit_edge: ; preds = %flow_indr_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit62.i

if.end.i.i60.i:                                   ; preds = %flow_indr_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i58.i = getelementptr inbounds %struct.list_head, ptr %call15.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i58.i, align 4
  %64 = ptrtoint ptr %call15.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call15.i, align 4
  %prev1.i.i.i59.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i59.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit62.i

list_del.exit62.i:                                ; preds = %if.end.i.i60.i, %flow_indr_block_cb_remove.exit.i.list_del.exit62.i_crit_edge
  %68 = ptrtoint ptr %call15.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %call15.i, align 4
  %prev.i61.i = getelementptr inbounds %struct.list_head, ptr %call15.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i61.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i61.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit62.i, %if.end14.i.return_crit_edge, %bnxt_tc_indr_block_cb_lookup.exit.i.return_crit_edge, %for.cond.i.i.return_crit_edge, %if.end.i.i52.i, %flow_block_cb_add.exit.i.return_crit_edge, %list_del.exit.i, %sw.bb.i.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %bnxt_is_netdev_indr_offload.exit.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %bnxt_is_netdev_indr_offload.exit.return_crit_edge ], [ -95, %entry.return_crit_edge ], [ %26, %list_del.exit.i ], [ -95, %sw.bb.return_crit_edge ], [ -12, %sw.bb.i.return_crit_edge ], [ -2, %bnxt_tc_indr_block_cb_lookup.exit.i.return_crit_edge ], [ -2, %if.end14.i.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ 0, %list_del.exit62.i ], [ 0, %flow_block_cb_add.exit.i.return_crit_edge ], [ 0, %if.end.i.i52.i ], [ -95, %lor.lhs.false.return_crit_edge ], [ -2, %for.cond.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_shutdown_tc(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_info1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %0 = ptrtoint ptr %tc_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_info1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %bnxt_tc_flower_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

bnxt_tc_flower_enabled.exit:                      ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.i.not = icmp eq i8 %3, 0
  br i1 %tobool2.i.not, label %bnxt_tc_flower_enabled.exit.cleanup_crit_edge, label %if.end

bnxt_tc_flower_enabled.exit.cleanup_crit_edge:    ; preds = %bnxt_tc_flower_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %bnxt_tc_flower_enabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @flow_indr_dev_unregister(ptr noundef nonnull @bnxt_tc_setup_indr_cb, ptr noundef %bp, ptr noundef nonnull @bnxt_tc_setup_indr_rel) #12
  %flow_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 1
  tail call void @rhashtable_destroy(ptr noundef %flow_table) #12
  %l2_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 3
  tail call void @rhashtable_destroy(ptr noundef %l2_table) #12
  %decap_l2_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 5
  tail call void @rhashtable_destroy(ptr noundef %decap_l2_table) #12
  %decap_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 7
  tail call void @rhashtable_destroy(ptr noundef %decap_table) #12
  %encap_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 9
  tail call void @rhashtable_destroy(ptr noundef %encap_table) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  %4 = ptrtoint ptr %tc_info1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tc_info1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bnxt_tc_flower_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_indr_dev_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bnxt_tc_setup_indr_rel(ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cb_priv) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #5 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #12
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 594, ptr noundef nonnull @.str.29) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #12
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !169

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 369, ptr noundef nonnull @.str.29) #12
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.30, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.30, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 614, ptr noundef nonnull @.str.29) #12
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !169

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %43 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bnxt_tc_del_flow(ptr noundef %bp, ptr noundef %flow_node) unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_info1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %0 = ptrtoint ptr %tc_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #12
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !168
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 260, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.then8.i_crit_edge

entry.if.then8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

if.then.i:                                        ; preds = %entry
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %3 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_cap.i, align 8
  %and.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %ext_flow_handle.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 3
  %5 = ptrtoint ptr %ext_flow_handle.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ext_flow_handle.i, align 8
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.i, align 4
  %ext_flow_handle3.i = getelementptr inbounds %struct.hwrm_cfa_flow_free_input, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %ext_flow_handle3.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %6, ptr %ext_flow_handle3.i, align 8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %flow_handle.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 4
  %10 = ptrtoint ptr %flow_handle.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flow_handle.i, align 8
  %12 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req.i, align 4
  %flow_handle4.i = getelementptr inbounds %struct.hwrm_cfa_flow_free_input, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %flow_handle4.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %11, ptr %flow_handle4.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then2.i
  %15 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req.i, align 4
  %call5.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.bnxt_hwrm_cfa_flow_free.exit_crit_edge, label %if.end6.i.if.then8.i_crit_edge

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

if.end6.i.bnxt_hwrm_cfa_flow_free.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_hwrm_cfa_flow_free.exit

if.then8.i:                                       ; preds = %if.end6.i.if.then8.i_crit_edge, %entry.if.then8.i_crit_edge
  %rc.03.i = phi i32 [ %call5.i, %if.end6.i.if.then8.i_crit_edge ], [ %call.i, %entry.if.then8.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.bnxt_hwrm_cfa_flow_free, i32 noundef %rc.03.i) #15
  br label %bnxt_hwrm_cfa_flow_free.exit

bnxt_hwrm_cfa_flow_free.exit:                     ; preds = %if.then8.i, %if.end6.i.bnxt_hwrm_cfa_flow_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #12
  %lock = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %flow = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 2
  call fastcc void @bnxt_tc_put_tunnel_handle(ptr noundef %bp, ptr noundef %flow, ptr noundef %flow_node)
  call fastcc void @bnxt_tc_put_l2_node(ptr noundef %bp, ptr noundef %flow_node)
  call void @mutex_unlock(ptr noundef %lock) #12
  %flow_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 1
  %node = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 1
  %flow_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %flow_ht_params to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %flow_ht_params, align 8
  %20 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt1 = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %.elt1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack2 = load i32, ptr %.elt1, align 4
  %22 = insertvalue [7 x i32] %20, i32 %.unpack2, 1
  %.elt3 = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %.elt3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack4 = load i32, ptr %.elt3, align 8
  %24 = insertvalue [7 x i32] %22, i32 %.unpack4, 2
  %.elt5 = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %.elt5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack6 = load i32, ptr %.elt5, align 4
  %26 = insertvalue [7 x i32] %24, i32 %.unpack6, 3
  %.elt7 = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %.elt7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack8 = load i32, ptr %.elt7, align 8
  %28 = insertvalue [7 x i32] %26, i32 %.unpack8, 4
  %.elt9 = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %.elt9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack10 = load i32, ptr %.elt9, align 4
  %30 = insertvalue [7 x i32] %28, i32 %.unpack10, 5
  %.elt11 = getelementptr inbounds %struct.bnxt_tc_info, ptr %1, i32 0, i32 2, i32 9
  %31 = ptrtoint ptr %.elt11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack12 = load i32, ptr %.elt11, align 8
  %32 = insertvalue [7 x i32] %30, i32 %.unpack12, 6
  %call4 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %flow_table, ptr noundef %node, [7 x i32] %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %bnxt_hwrm_cfa_flow_free.exit.do.body_crit_edge, label %if.then

bnxt_hwrm_cfa_flow_free.exit.do.body_crit_edge:   ; preds = %bnxt_hwrm_cfa_flow_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %bnxt_hwrm_cfa_flow_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.__bnxt_tc_del_flow, i32 noundef %call4) #15
  br label %do.body

do.body:                                          ; preds = %if.then, %bnxt_hwrm_cfa_flow_free.exit.do.body_crit_edge
  %tobool5.not = icmp eq ptr %flow_node, null
  br i1 %tobool5.not, label %do.body.if.end8_crit_edge, label %do.end

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 12
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 504 to ptr)) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_cfa_flow_alloc(ptr noundef %bp, ptr noundef readonly %flow, i16 noundef zeroext %ref_flow_handle, i32 noundef %tunnel_handle, ptr nocapture noundef writeonly %flow_node) unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %actions1 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10
  %l3_mask2 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5
  %l3_key3 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #12
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !168
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext 259, i32 noundef 128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_fid = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 1
  %1 = ptrtoint ptr %src_fid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %src_fid, align 4
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %src_fid4 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %src_fid4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %src_fid4, align 2
  %ref_flow_handle5 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %ref_flow_handle5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %ref_flow_handle, ptr %ref_flow_handle5, align 2
  %8 = ptrtoint ptr %actions1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actions1, align 8
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %l2_rewrite_dmac = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 28
  %l2_rewrite_dmac8 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 6
  %10 = call ptr @memcpy(ptr %l2_rewrite_dmac, ptr %l2_rewrite_dmac8, i32 6)
  %l2_rewrite_smac = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 30
  %l2_rewrite_smac11 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 7
  %11 = call ptr @memcpy(ptr %l2_rewrite_smac, ptr %l2_rewrite_smac11, i32 6)
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end.if.end14_crit_edge
  %action_flags.0 = phi i16 [ 256, %if.then7 ], [ 0, %if.end.if.end14_crit_edge ]
  %12 = ptrtoint ptr %actions1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actions1, align 8
  %and16 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end148_crit_edge, label %if.then18

if.end14.if.end148_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then18:                                        ; preds = %if.end14
  %nat = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8
  %l3_is_ipv4 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 1
  %14 = ptrtoint ptr %l3_is_ipv4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %l3_is_ipv4, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nat, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool76.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %if.else73, label %if.then20

if.then20:                                        ; preds = %if.then18
  br i1 %tobool76.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then20
  %18 = or i16 %action_flags.0, 160
  %saddr = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr, align 4
  %nat_ip_address = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 27
  %21 = ptrtoint ptr %nat_ip_address to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %nat_ip_address, align 8
  %22 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 3, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool32.not = icmp eq i16 %24, 0
  br i1 %tobool32.not, label %if.then26.do.body56_crit_edge, label %if.then26.do.body56.sink.split_crit_edge

if.then26.do.body56.sink.split_crit_edge:         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56.sink.split

if.then26.do.body56_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56

if.else:                                          ; preds = %if.then20
  %25 = or i16 %action_flags.0, 192
  %l342 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 2
  %26 = ptrtoint ptr %l342 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %l342, align 4
  %nat_ip_address44 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 27
  %28 = ptrtoint ptr %nat_ip_address44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %nat_ip_address44, align 8
  %dport = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 3, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool48.not = icmp eq i16 %30, 0
  br i1 %tobool48.not, label %if.else.do.body56_crit_edge, label %if.else.do.body56.sink.split_crit_edge

if.else.do.body56.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56.sink.split

if.else.do.body56_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56

do.body56.sink.split:                             ; preds = %if.else.do.body56.sink.split_crit_edge, %if.then26.do.body56.sink.split_crit_edge
  %.sink = phi i16 [ %24, %if.then26.do.body56.sink.split_crit_edge ], [ %30, %if.else.do.body56.sink.split_crit_edge ]
  %action_flags.1.ph = phi i16 [ %18, %if.then26.do.body56.sink.split_crit_edge ], [ %25, %if.else.do.body56.sink.split_crit_edge ]
  %nat_port53 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 29
  %31 = ptrtoint ptr %nat_port53 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %.sink, ptr %nat_port53, align 2
  br label %do.body56

do.body56:                                        ; preds = %do.body56.sink.split, %if.else.do.body56_crit_edge, %if.then26.do.body56_crit_edge
  %action_flags.1 = phi i16 [ %18, %if.then26.do.body56_crit_edge ], [ %25, %if.else.do.body56_crit_edge ], [ %action_flags.1.ph, %do.body56.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnxt_hwrm_cfa_flow_alloc, %if.then61)) #12
          to label %if.end148 [label %if.then61], !srcloc !176

if.then61:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req, align 4
  %nat_ip_address62 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nat, align 4, !range !171
  %38 = zext i8 %37 to i32
  %nat_port68 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %35, i32 0, i32 29
  %39 = ptrtoint ptr %nat_port68 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %nat_port68, align 2
  %conv69 = zext i16 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug662, ptr noundef %33, ptr noundef nonnull @.str.48, ptr noundef %nat_ip_address62, i32 noundef %38, i32 noundef %conv69) #12
  br label %if.end148

if.else73:                                        ; preds = %if.then18
  br i1 %tobool76.not, label %if.else97, label %if.then77

if.then77:                                        ; preds = %if.else73
  %41 = or i16 %action_flags.0, 32
  %nat_ip_address81 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 27
  %saddr85 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 2, i32 0, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %nat_ip_address81, ptr %saddr85, i32 16)
  %43 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 3, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool90.not = icmp eq i16 %45, 0
  br i1 %tobool90.not, label %if.then77.do.body120_crit_edge, label %if.then77.do.body120.sink.split_crit_edge

if.then77.do.body120.sink.split_crit_edge:        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body120.sink.split

if.then77.do.body120_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body120

if.else97:                                        ; preds = %if.else73
  %46 = or i16 %action_flags.0, 64
  %nat_ip_address101 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 27
  %l3104 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 2
  %47 = call ptr @memcpy(ptr %nat_ip_address101, ptr %l3104, i32 16)
  %dport110 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 8, i32 3, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %dport110 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dport110, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool111.not = icmp eq i16 %49, 0
  br i1 %tobool111.not, label %if.else97.do.body120_crit_edge, label %if.else97.do.body120.sink.split_crit_edge

if.else97.do.body120.sink.split_crit_edge:        ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body120.sink.split

if.else97.do.body120_crit_edge:                   ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body120

do.body120.sink.split:                            ; preds = %if.else97.do.body120.sink.split_crit_edge, %if.then77.do.body120.sink.split_crit_edge
  %.sink483 = phi i16 [ %45, %if.then77.do.body120.sink.split_crit_edge ], [ %49, %if.else97.do.body120.sink.split_crit_edge ]
  %action_flags.2.ph = phi i16 [ %41, %if.then77.do.body120.sink.split_crit_edge ], [ %46, %if.else97.do.body120.sink.split_crit_edge ]
  %nat_port116 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %5, i32 0, i32 29
  %50 = ptrtoint ptr %nat_port116 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %.sink483, ptr %nat_port116, align 2
  br label %do.body120

do.body120:                                       ; preds = %do.body120.sink.split, %if.else97.do.body120_crit_edge, %if.then77.do.body120_crit_edge
  %action_flags.2 = phi i16 [ %41, %if.then77.do.body120_crit_edge ], [ %46, %if.else97.do.body120_crit_edge ], [ %action_flags.2.ph, %do.body120.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnxt_hwrm_cfa_flow_alloc, %if.then132)) #12
          to label %if.end148 [label %if.then132], !srcloc !176

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #14
  %dev133 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %51 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev133, align 4
  %53 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %req, align 4
  %nat_ip_address134 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nat, align 4, !range !171
  %57 = zext i8 %56 to i32
  %nat_port140 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %54, i32 0, i32 29
  %58 = ptrtoint ptr %nat_port140 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nat_port140, align 2
  %conv141 = zext i16 %59 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug663, ptr noundef %52, ptr noundef nonnull @.str.49, ptr noundef %nat_ip_address134, i32 noundef %57, i32 noundef %conv141) #12
  br label %if.end148

if.end148:                                        ; preds = %if.then132, %do.body120, %if.then61, %do.body56, %if.end14.if.end148_crit_edge
  %action_flags.3 = phi i16 [ %action_flags.1, %if.then61 ], [ %action_flags.2, %if.then132 ], [ %action_flags.0, %if.end14.if.end148_crit_edge ], [ %action_flags.1, %do.body56 ], [ %action_flags.2, %do.body120 ]
  %60 = ptrtoint ptr %actions1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %actions1, align 8
  %62 = and i32 %61, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %if.end148.if.end163_crit_edge, label %if.then155

if.end148.if.end163_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then155:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req, align 4
  %tunnel_handle156 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %tunnel_handle156 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %tunnel_handle, ptr %tunnel_handle156, align 4
  %67 = or i16 %action_flags.3, 16
  br label %if.end163

if.end163:                                        ; preds = %if.then155, %if.end148.if.end163_crit_edge
  %flow_flags.0 = phi i16 [ 1, %if.then155 ], [ 0, %if.end148.if.end163_crit_edge ]
  %action_flags.4 = phi i16 [ %67, %if.then155 ], [ %action_flags.3, %if.end148.if.end163_crit_edge ]
  %ether_type = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 2, i32 4
  %68 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ether_type, align 2
  %70 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %req, align 4
  %ethertype = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %ethertype to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %69, ptr %ethertype, align 4
  %l4_key = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 6
  %73 = ptrtoint ptr %l4_key to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %l4_key, align 8
  %ip_proto164 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 31
  %75 = ptrtoint ptr %ip_proto164 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %ip_proto164, align 2
  %76 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flow, align 8
  %and166 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end163.if.end177_crit_edge, label %if.then168

if.end163.if.end177_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177

if.then168:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  %l2_key = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 2
  %dmac = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 16
  %78 = call ptr @memcpy(ptr %dmac, ptr %l2_key, i32 6)
  %smac = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 18
  %smac175 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 2, i32 1
  %79 = call ptr @memcpy(ptr %smac, ptr %smac175, i32 6)
  br label %if.end177

if.end177:                                        ; preds = %if.then168, %if.end163.if.end177_crit_edge
  %num_vlans = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 2, i32 5
  %80 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_vlans, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp.not = icmp eq i8 %81, 0
  br i1 %cmp.not, label %if.end177.if.end186_crit_edge, label %if.then181

if.end177.if.end186_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  %82 = or i16 %flow_flags.0, 2
  %inner_vlan_tci = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 2, i32 3
  %83 = ptrtoint ptr %inner_vlan_tci to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %inner_vlan_tci, align 2
  %outer_vlan_tci = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 15
  %85 = ptrtoint ptr %outer_vlan_tci to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %outer_vlan_tci, align 2
  br label %if.end186

if.end186:                                        ; preds = %if.then181, %if.end177.if.end186_crit_edge
  %flow_flags.1 = phi i16 [ %82, %if.then181 ], [ %flow_flags.0, %if.end177.if.end186_crit_edge ]
  %86 = ptrtoint ptr %l3_mask2 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %l3_mask2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp1.not.i474 = icmp eq i8 %87, 0
  br i1 %cmp1.not.i474, label %for.body.i, label %if.end186.if.else195_crit_edge

if.end186.if.else195_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i:                                       ; preds = %if.end186
  %arrayidx.i = getelementptr i8, ptr %l3_mask2, i32 1
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp1.not.i = icmp eq i8 %89, 0
  br i1 %cmp1.not.i, label %for.body.i.1, label %for.body.i.if.else195_crit_edge

for.body.i.if.else195_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.1:                                     ; preds = %for.body.i
  %arrayidx.i.1 = getelementptr i8, ptr %l3_mask2, i32 2
  %90 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp1.not.i.1 = icmp eq i8 %91, 0
  br i1 %cmp1.not.i.1, label %for.body.i.2, label %for.body.i.1.if.else195_crit_edge

for.body.i.1.if.else195_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr i8, ptr %l3_mask2, i32 3
  %92 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp1.not.i.2 = icmp eq i8 %93, 0
  br i1 %cmp1.not.i.2, label %for.body.i.3, label %for.body.i.2.if.else195_crit_edge

for.body.i.2.if.else195_crit_edge:                ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp1.not.i.3 = icmp eq i8 %95, 0
  br i1 %cmp1.not.i.3, label %for.body.i.4, label %for.body.i.3.if.else195_crit_edge

for.body.i.3.if.else195_crit_edge:                ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr i8, ptr %l3_mask2, i32 5
  %96 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp1.not.i.4 = icmp eq i8 %97, 0
  br i1 %cmp1.not.i.4, label %for.body.i.5, label %for.body.i.4.if.else195_crit_edge

for.body.i.4.if.else195_crit_edge:                ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.5:                                     ; preds = %for.body.i.4
  %arrayidx.i.5 = getelementptr i8, ptr %l3_mask2, i32 6
  %98 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp1.not.i.5 = icmp eq i8 %99, 0
  br i1 %cmp1.not.i.5, label %for.body.i.6, label %for.body.i.5.if.else195_crit_edge

for.body.i.5.if.else195_crit_edge:                ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.6:                                     ; preds = %for.body.i.5
  %arrayidx.i.6 = getelementptr i8, ptr %l3_mask2, i32 7
  %100 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp1.not.i.6 = icmp eq i8 %101, 0
  br i1 %cmp1.not.i.6, label %for.body.i.7, label %for.body.i.6.if.else195_crit_edge

for.body.i.6.if.else195_crit_edge:                ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.7:                                     ; preds = %for.body.i.6
  %arrayidx.i.7 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp1.not.i.7 = icmp eq i8 %103, 0
  br i1 %cmp1.not.i.7, label %for.body.i.8, label %for.body.i.7.if.else195_crit_edge

for.body.i.7.if.else195_crit_edge:                ; preds = %for.body.i.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.8:                                     ; preds = %for.body.i.7
  %arrayidx.i.8 = getelementptr i8, ptr %l3_mask2, i32 9
  %104 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp1.not.i.8 = icmp eq i8 %105, 0
  br i1 %cmp1.not.i.8, label %for.body.i.9, label %for.body.i.8.if.else195_crit_edge

for.body.i.8.if.else195_crit_edge:                ; preds = %for.body.i.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.9:                                     ; preds = %for.body.i.8
  %arrayidx.i.9 = getelementptr i8, ptr %l3_mask2, i32 10
  %106 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp1.not.i.9 = icmp eq i8 %107, 0
  br i1 %cmp1.not.i.9, label %for.body.i.10, label %for.body.i.9.if.else195_crit_edge

for.body.i.9.if.else195_crit_edge:                ; preds = %for.body.i.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.10:                                    ; preds = %for.body.i.9
  %arrayidx.i.10 = getelementptr i8, ptr %l3_mask2, i32 11
  %108 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp1.not.i.10 = icmp eq i8 %109, 0
  br i1 %cmp1.not.i.10, label %for.body.i.11, label %for.body.i.10.if.else195_crit_edge

for.body.i.10.if.else195_crit_edge:               ; preds = %for.body.i.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.11:                                    ; preds = %for.body.i.10
  %arrayidx.i.11 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %110 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp1.not.i.11 = icmp eq i8 %111, 0
  br i1 %cmp1.not.i.11, label %for.body.i.12, label %for.body.i.11.if.else195_crit_edge

for.body.i.11.if.else195_crit_edge:               ; preds = %for.body.i.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.12:                                    ; preds = %for.body.i.11
  %arrayidx.i.12 = getelementptr i8, ptr %l3_mask2, i32 13
  %112 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp1.not.i.12 = icmp eq i8 %113, 0
  br i1 %cmp1.not.i.12, label %for.body.i.13, label %for.body.i.12.if.else195_crit_edge

for.body.i.12.if.else195_crit_edge:               ; preds = %for.body.i.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.13:                                    ; preds = %for.body.i.12
  %arrayidx.i.13 = getelementptr i8, ptr %l3_mask2, i32 14
  %114 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp1.not.i.13 = icmp eq i8 %115, 0
  br i1 %cmp1.not.i.13, label %for.body.i.14, label %for.body.i.13.if.else195_crit_edge

for.body.i.13.if.else195_crit_edge:               ; preds = %for.body.i.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.14:                                    ; preds = %for.body.i.13
  %arrayidx.i.14 = getelementptr i8, ptr %l3_mask2, i32 15
  %116 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp1.not.i.14 = icmp eq i8 %117, 0
  br i1 %cmp1.not.i.14, label %for.body.i.15, label %for.body.i.14.if.else195_crit_edge

for.body.i.14.if.else195_crit_edge:               ; preds = %for.body.i.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.15:                                    ; preds = %for.body.i.14
  %arrayidx.i.15 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1
  %118 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp1.not.i.15 = icmp eq i8 %119, 0
  br i1 %cmp1.not.i.15, label %for.body.i.16, label %for.body.i.15.if.else195_crit_edge

for.body.i.15.if.else195_crit_edge:               ; preds = %for.body.i.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.16:                                    ; preds = %for.body.i.15
  %arrayidx.i.16 = getelementptr i8, ptr %l3_mask2, i32 17
  %120 = ptrtoint ptr %arrayidx.i.16 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i.16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp1.not.i.16 = icmp eq i8 %121, 0
  br i1 %cmp1.not.i.16, label %for.body.i.17, label %for.body.i.16.if.else195_crit_edge

for.body.i.16.if.else195_crit_edge:               ; preds = %for.body.i.16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.17:                                    ; preds = %for.body.i.16
  %arrayidx.i.17 = getelementptr i8, ptr %l3_mask2, i32 18
  %122 = ptrtoint ptr %arrayidx.i.17 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i.17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp1.not.i.17 = icmp eq i8 %123, 0
  br i1 %cmp1.not.i.17, label %for.body.i.18, label %for.body.i.17.if.else195_crit_edge

for.body.i.17.if.else195_crit_edge:               ; preds = %for.body.i.17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.18:                                    ; preds = %for.body.i.17
  %arrayidx.i.18 = getelementptr i8, ptr %l3_mask2, i32 19
  %124 = ptrtoint ptr %arrayidx.i.18 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i.18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp1.not.i.18 = icmp eq i8 %125, 0
  br i1 %cmp1.not.i.18, label %for.body.i.19, label %for.body.i.18.if.else195_crit_edge

for.body.i.18.if.else195_crit_edge:               ; preds = %for.body.i.18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.19:                                    ; preds = %for.body.i.18
  %arrayidx.i.19 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %126 = ptrtoint ptr %arrayidx.i.19 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i.19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp1.not.i.19 = icmp eq i8 %127, 0
  br i1 %cmp1.not.i.19, label %for.body.i.20, label %for.body.i.19.if.else195_crit_edge

for.body.i.19.if.else195_crit_edge:               ; preds = %for.body.i.19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.20:                                    ; preds = %for.body.i.19
  %arrayidx.i.20 = getelementptr i8, ptr %l3_mask2, i32 21
  %128 = ptrtoint ptr %arrayidx.i.20 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp1.not.i.20 = icmp eq i8 %129, 0
  br i1 %cmp1.not.i.20, label %for.body.i.21, label %for.body.i.20.if.else195_crit_edge

for.body.i.20.if.else195_crit_edge:               ; preds = %for.body.i.20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.21:                                    ; preds = %for.body.i.20
  %arrayidx.i.21 = getelementptr i8, ptr %l3_mask2, i32 22
  %130 = ptrtoint ptr %arrayidx.i.21 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp1.not.i.21 = icmp eq i8 %131, 0
  br i1 %cmp1.not.i.21, label %for.body.i.22, label %for.body.i.21.if.else195_crit_edge

for.body.i.21.if.else195_crit_edge:               ; preds = %for.body.i.21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.22:                                    ; preds = %for.body.i.21
  %arrayidx.i.22 = getelementptr i8, ptr %l3_mask2, i32 23
  %132 = ptrtoint ptr %arrayidx.i.22 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i.22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp1.not.i.22 = icmp eq i8 %133, 0
  br i1 %cmp1.not.i.22, label %for.body.i.23, label %for.body.i.22.if.else195_crit_edge

for.body.i.22.if.else195_crit_edge:               ; preds = %for.body.i.22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.23:                                    ; preds = %for.body.i.22
  %arrayidx.i.23 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %134 = ptrtoint ptr %arrayidx.i.23 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp1.not.i.23 = icmp eq i8 %135, 0
  br i1 %cmp1.not.i.23, label %for.body.i.24, label %for.body.i.23.if.else195_crit_edge

for.body.i.23.if.else195_crit_edge:               ; preds = %for.body.i.23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.24:                                    ; preds = %for.body.i.23
  %arrayidx.i.24 = getelementptr i8, ptr %l3_mask2, i32 25
  %136 = ptrtoint ptr %arrayidx.i.24 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i.24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp1.not.i.24 = icmp eq i8 %137, 0
  br i1 %cmp1.not.i.24, label %for.body.i.25, label %for.body.i.24.if.else195_crit_edge

for.body.i.24.if.else195_crit_edge:               ; preds = %for.body.i.24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.25:                                    ; preds = %for.body.i.24
  %arrayidx.i.25 = getelementptr i8, ptr %l3_mask2, i32 26
  %138 = ptrtoint ptr %arrayidx.i.25 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp1.not.i.25 = icmp eq i8 %139, 0
  br i1 %cmp1.not.i.25, label %for.body.i.26, label %for.body.i.25.if.else195_crit_edge

for.body.i.25.if.else195_crit_edge:               ; preds = %for.body.i.25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.26:                                    ; preds = %for.body.i.25
  %arrayidx.i.26 = getelementptr i8, ptr %l3_mask2, i32 27
  %140 = ptrtoint ptr %arrayidx.i.26 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i.26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp1.not.i.26 = icmp eq i8 %141, 0
  br i1 %cmp1.not.i.26, label %for.body.i.27, label %for.body.i.26.if.else195_crit_edge

for.body.i.26.if.else195_crit_edge:               ; preds = %for.body.i.26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.27:                                    ; preds = %for.body.i.26
  %arrayidx.i.27 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 3
  %142 = ptrtoint ptr %arrayidx.i.27 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i.27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp1.not.i.27 = icmp eq i8 %143, 0
  br i1 %cmp1.not.i.27, label %for.body.i.28, label %for.body.i.27.if.else195_crit_edge

for.body.i.27.if.else195_crit_edge:               ; preds = %for.body.i.27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.28:                                    ; preds = %for.body.i.27
  %arrayidx.i.28 = getelementptr i8, ptr %l3_mask2, i32 29
  %144 = ptrtoint ptr %arrayidx.i.28 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i.28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp1.not.i.28 = icmp eq i8 %145, 0
  br i1 %cmp1.not.i.28, label %for.body.i.29, label %for.body.i.28.if.else195_crit_edge

for.body.i.28.if.else195_crit_edge:               ; preds = %for.body.i.28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.29:                                    ; preds = %for.body.i.28
  %arrayidx.i.29 = getelementptr i8, ptr %l3_mask2, i32 30
  %146 = ptrtoint ptr %arrayidx.i.29 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i.29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp1.not.i.29 = icmp eq i8 %147, 0
  br i1 %cmp1.not.i.29, label %for.body.i.30, label %for.body.i.29.if.else195_crit_edge

for.body.i.29.if.else195_crit_edge:               ; preds = %for.body.i.29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.body.i.30:                                    ; preds = %for.body.i.29
  %arrayidx.i.30 = getelementptr i8, ptr %l3_mask2, i32 31
  %148 = ptrtoint ptr %arrayidx.i.30 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i.30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp1.not.i.30 = icmp eq i8 %149, 0
  %spec.select = select i1 %cmp1.not.i.30, i1 false, i1 true
  br i1 %spec.select, label %for.body.i.30.if.else195_crit_edge, label %land.lhs.true

for.body.i.30.if.else195_crit_edge:               ; preds = %for.body.i.30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

land.lhs.true:                                    ; preds = %for.body.i.30
  %l4_mask = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 7
  %150 = ptrtoint ptr %l4_mask to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %l4_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp1.not.i446477 = icmp eq i8 %151, 0
  br i1 %cmp1.not.i446477, label %for.cond.i442.preheader, label %land.lhs.true.if.else195_crit_edge

land.lhs.true.if.else195_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.cond.i442.preheader:                          ; preds = %land.lhs.true
  %arrayidx.i445 = getelementptr i8, ptr %l4_mask, i32 1
  %152 = ptrtoint ptr %arrayidx.i445 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.i445, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp1.not.i446 = icmp eq i8 %153, 0
  br i1 %cmp1.not.i446, label %for.cond.i442.1, label %for.cond.i442.preheader.if.else195_crit_edge

for.cond.i442.preheader.if.else195_crit_edge:     ; preds = %for.cond.i442.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.cond.i442.1:                                  ; preds = %for.cond.i442.preheader
  %arrayidx.i445.1 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 7, i32 1
  %154 = ptrtoint ptr %arrayidx.i445.1 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i445.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %cmp1.not.i446.1 = icmp eq i8 %155, 0
  br i1 %cmp1.not.i446.1, label %for.cond.i442.2, label %for.cond.i442.1.if.else195_crit_edge

for.cond.i442.1.if.else195_crit_edge:             ; preds = %for.cond.i442.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.cond.i442.2:                                  ; preds = %for.cond.i442.1
  %arrayidx.i445.2 = getelementptr i8, ptr %l4_mask, i32 3
  %156 = ptrtoint ptr %arrayidx.i445.2 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.i445.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %cmp1.not.i446.2 = icmp eq i8 %157, 0
  br i1 %cmp1.not.i446.2, label %for.cond.i442.3, label %for.cond.i442.2.if.else195_crit_edge

for.cond.i442.2.if.else195_crit_edge:             ; preds = %for.cond.i442.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.cond.i442.3:                                  ; preds = %for.cond.i442.2
  %arrayidx.i445.3 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 7, i32 1, i32 0, i32 1
  %158 = ptrtoint ptr %arrayidx.i445.3 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i445.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp1.not.i446.3 = icmp eq i8 %159, 0
  br i1 %cmp1.not.i446.3, label %for.cond.i442.4, label %for.cond.i442.3.if.else195_crit_edge

for.cond.i442.3.if.else195_crit_edge:             ; preds = %for.cond.i442.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.cond.i442.4:                                  ; preds = %for.cond.i442.3
  %arrayidx.i445.4 = getelementptr i8, ptr %l4_mask, i32 5
  %160 = ptrtoint ptr %arrayidx.i445.4 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i445.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp1.not.i446.4 = icmp eq i8 %161, 0
  br i1 %cmp1.not.i446.4, label %for.cond.i442.4.if.end247_crit_edge, label %for.cond.i442.4.if.else195_crit_edge

for.cond.i442.4.if.else195_crit_edge:             ; preds = %for.cond.i442.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else195

for.cond.i442.4.if.end247_crit_edge:              ; preds = %for.cond.i442.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

if.else195:                                       ; preds = %for.cond.i442.4.if.else195_crit_edge, %for.cond.i442.3.if.else195_crit_edge, %for.cond.i442.2.if.else195_crit_edge, %for.cond.i442.1.if.else195_crit_edge, %for.cond.i442.preheader.if.else195_crit_edge, %land.lhs.true.if.else195_crit_edge, %for.body.i.30.if.else195_crit_edge, %for.body.i.29.if.else195_crit_edge, %for.body.i.28.if.else195_crit_edge, %for.body.i.27.if.else195_crit_edge, %for.body.i.26.if.else195_crit_edge, %for.body.i.25.if.else195_crit_edge, %for.body.i.24.if.else195_crit_edge, %for.body.i.23.if.else195_crit_edge, %for.body.i.22.if.else195_crit_edge, %for.body.i.21.if.else195_crit_edge, %for.body.i.20.if.else195_crit_edge, %for.body.i.19.if.else195_crit_edge, %for.body.i.18.if.else195_crit_edge, %for.body.i.17.if.else195_crit_edge, %for.body.i.16.if.else195_crit_edge, %for.body.i.15.if.else195_crit_edge, %for.body.i.14.if.else195_crit_edge, %for.body.i.13.if.else195_crit_edge, %for.body.i.12.if.else195_crit_edge, %for.body.i.11.if.else195_crit_edge, %for.body.i.10.if.else195_crit_edge, %for.body.i.9.if.else195_crit_edge, %for.body.i.8.if.else195_crit_edge, %for.body.i.7.if.else195_crit_edge, %for.body.i.6.if.else195_crit_edge, %for.body.i.5.if.else195_crit_edge, %for.body.i.4.if.else195_crit_edge, %for.body.i.3.if.else195_crit_edge, %for.body.i.2.if.else195_crit_edge, %for.body.i.1.if.else195_crit_edge, %for.body.i.if.else195_crit_edge, %if.end186.if.else195_crit_edge
  %162 = ptrtoint ptr %ether_type to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %ether_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %163)
  %cmp199 = icmp eq i16 %163, 2048
  %cond = select i1 %cmp199, i16 8, i16 16
  %or202 = or i16 %cond, %flow_flags.1
  %164 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flow, align 8
  %and205 = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.else222, label %if.then207

if.then207:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %l3_key3 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %l3_key3, align 4
  %ip_dst = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 21
  %168 = ptrtoint ptr %ip_dst to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %ip_dst, align 8
  %169 = ptrtoint ptr %l3_mask2 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %l3_mask2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i = icmp eq i32 %170, 0
  %171 = call i32 @llvm.cttz.i32(i32 %170, i1 false) #12, !range !177
  %172 = trunc i32 %171 to i8
  %173 = sub nuw nsw i8 32, %172
  %conv214 = select i1 %tobool.not.i, i8 0, i8 %173
  %ip_dst_mask_len = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 19
  %174 = ptrtoint ptr %ip_dst_mask_len to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv214, ptr %ip_dst_mask_len, align 2
  %saddr215 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %175 = ptrtoint ptr %saddr215 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %saddr215, align 4
  %ip_src = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 22
  %177 = ptrtoint ptr %ip_src to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %ip_src, align 8
  %saddr218 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %178 = ptrtoint ptr %saddr218 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %saddr218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i451 = icmp eq i32 %179, 0
  %180 = call i32 @llvm.cttz.i32(i32 %179, i1 false) #12, !range !177
  %181 = trunc i32 %180 to i8
  %182 = sub nuw nsw i8 32, %181
  %conv221 = select i1 %tobool.not.i451, i8 0, i8 %182
  br label %if.end247.sink.split

if.else222:                                       ; preds = %if.else195
  %and224 = and i32 %165, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.else222.if.end247_crit_edge, label %if.then226

if.else222.if.end247_crit_edge:                   ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

if.then226:                                       ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #14
  %ip_dst227 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 21
  %183 = call ptr @memcpy(ptr %ip_dst227, ptr %l3_key3, i32 16)
  %184 = ptrtoint ptr %l3_mask2 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %l3_mask2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i.i = icmp eq i32 %185, 0
  %186 = call i32 @llvm.cttz.i32(i32 %185, i1 false) #12, !range !177
  %sub.i.i = sub nuw nsw i32 32, %186
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %arrayidx.1.i = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %187 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i.1.i = icmp eq i32 %188, 0
  %189 = call i32 @llvm.cttz.i32(i32 %188, i1 false) #12, !range !177
  %sub.i.1.i = sub nuw nsw i32 32, %189
  %retval.0.i.1.i = select i1 %tobool.not.i.1.i, i32 0, i32 %sub.i.1.i
  %add.1.i = add nuw nsw i32 %retval.0.i.1.i, %retval.0.i.i
  %arrayidx.2.i = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %190 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i.2.i = icmp eq i32 %191, 0
  %192 = call i32 @llvm.cttz.i32(i32 %191, i1 false) #12, !range !177
  %sub.i.2.i = sub nuw nsw i32 32, %192
  %retval.0.i.2.i = select i1 %tobool.not.i.2.i, i32 0, i32 %sub.i.2.i
  %add.2.i = add nuw nsw i32 %add.1.i, %retval.0.i.2.i
  %arrayidx.3.i = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %193 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.not.i.3.i = icmp eq i32 %194, 0
  %195 = call i32 @llvm.cttz.i32(i32 %194, i1 false) #12, !range !177
  %sub.i.3.i = sub nuw nsw i32 32, %195
  %retval.0.i.3.i = select i1 %tobool.not.i.3.i, i32 0, i32 %sub.i.3.i
  %add.3.i = add nuw nsw i32 %add.2.i, %retval.0.i.3.i
  %conv234 = trunc i32 %add.3.i to i8
  %ip_dst_mask_len235 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 19
  %196 = ptrtoint ptr %ip_dst_mask_len235 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv234, ptr %ip_dst_mask_len235, align 2
  %ip_src236 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 22
  %saddr238 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 4, i32 0, i32 0, i32 1
  %197 = call ptr @memcpy(ptr %ip_src236, ptr %saddr238, i32 16)
  %saddr241 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1
  %198 = ptrtoint ptr %saddr241 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %saddr241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.not.i.i454 = icmp eq i32 %199, 0
  %200 = call i32 @llvm.cttz.i32(i32 %199, i1 false) #12, !range !177
  %sub.i.i455 = sub nuw nsw i32 32, %200
  %retval.0.i.i456 = select i1 %tobool.not.i.i454, i32 0, i32 %sub.i.i455
  %arrayidx.1.i457 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %201 = ptrtoint ptr %arrayidx.1.i457 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.1.i457, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.not.i.1.i458 = icmp eq i32 %202, 0
  %203 = call i32 @llvm.cttz.i32(i32 %202, i1 false) #12, !range !177
  %sub.i.1.i459 = sub nuw nsw i32 32, %203
  %retval.0.i.1.i460 = select i1 %tobool.not.i.1.i458, i32 0, i32 %sub.i.1.i459
  %add.1.i461 = add nuw nsw i32 %retval.0.i.1.i460, %retval.0.i.i456
  %arrayidx.2.i462 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %204 = ptrtoint ptr %arrayidx.2.i462 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.2.i462, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i.2.i463 = icmp eq i32 %205, 0
  %206 = call i32 @llvm.cttz.i32(i32 %205, i1 false) #12, !range !177
  %sub.i.2.i464 = sub nuw nsw i32 32, %206
  %retval.0.i.2.i465 = select i1 %tobool.not.i.2.i463, i32 0, i32 %sub.i.2.i464
  %add.2.i466 = add nuw nsw i32 %add.1.i461, %retval.0.i.2.i465
  %arrayidx.3.i467 = getelementptr %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 5, i32 0, i32 0, i32 1, i32 0, i32 0, i32 3
  %207 = ptrtoint ptr %arrayidx.3.i467 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.3.i467, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.not.i.3.i468 = icmp eq i32 %208, 0
  %209 = call i32 @llvm.cttz.i32(i32 %208, i1 false) #12, !range !177
  %sub.i.3.i469 = sub nuw nsw i32 32, %209
  %retval.0.i.3.i470 = select i1 %tobool.not.i.3.i468, i32 0, i32 %sub.i.3.i469
  %add.3.i471 = add nuw nsw i32 %add.2.i466, %retval.0.i.3.i470
  %conv243 = trunc i32 %add.3.i471 to i8
  br label %if.end247.sink.split

if.end247.sink.split:                             ; preds = %if.then226, %if.then207
  %conv221.sink = phi i8 [ %conv221, %if.then207 ], [ %conv243, %if.then226 ]
  %ip_src_mask_len = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 20
  %210 = ptrtoint ptr %ip_src_mask_len to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv221.sink, ptr %ip_src_mask_len, align 1
  br label %if.end247

if.end247:                                        ; preds = %if.end247.sink.split, %if.else222.if.end247_crit_edge, %for.cond.i442.4.if.end247_crit_edge
  %flow_flags.2 = phi i16 [ %or202, %if.else222.if.end247_crit_edge ], [ %flow_flags.1, %for.cond.i442.4.if.end247_crit_edge ], [ %or202, %if.end247.sink.split ]
  %211 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %flow, align 8
  %and249 = and i32 %212, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.else260, label %if.then251

if.then251:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  %213 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 6, i32 1
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %213, align 2
  %l4_src_port = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 23
  %216 = ptrtoint ptr %l4_src_port to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %l4_src_port, align 8
  %217 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 7, i32 1
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %217, align 2
  %l4_src_port_mask = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 24
  %220 = ptrtoint ptr %l4_src_port_mask to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %l4_src_port_mask, align 2
  %dport257 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 6, i32 1, i32 0, i32 1
  %221 = ptrtoint ptr %dport257 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %dport257, align 2
  %l4_dst_port = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 25
  %223 = ptrtoint ptr %l4_dst_port to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %222, ptr %l4_dst_port, align 4
  %dport259 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 7, i32 1, i32 0, i32 1
  %224 = ptrtoint ptr %dport259 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %dport259, align 2
  br label %if.end280.sink.split

if.else260:                                       ; preds = %if.end247
  %and262 = and i32 %212, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.else260.if.end280_crit_edge, label %if.then264

if.else260.if.end280_crit_edge:                   ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end280

if.then264:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #14
  %226 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 6, i32 1
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %226, align 2
  %conv266 = zext i8 %228 to i16
  %l4_src_port267 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 23
  %229 = ptrtoint ptr %l4_src_port267 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv266, ptr %l4_src_port267, align 8
  %230 = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 7, i32 1
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %230, align 2
  %conv270 = zext i8 %232 to i16
  %l4_src_port_mask271 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 24
  %233 = ptrtoint ptr %l4_src_port_mask271 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv270, ptr %l4_src_port_mask271, align 2
  %code = getelementptr inbounds %struct.anon.193, ptr %226, i32 0, i32 1
  %234 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %code, align 1
  %conv273 = zext i8 %235 to i16
  %l4_dst_port274 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 25
  %236 = ptrtoint ptr %l4_dst_port274 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv273, ptr %l4_dst_port274, align 4
  %code276 = getelementptr inbounds %struct.anon.193, ptr %230, i32 0, i32 1
  %237 = ptrtoint ptr %code276 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %code276, align 1
  %conv277 = zext i8 %238 to i16
  br label %if.end280.sink.split

if.end280.sink.split:                             ; preds = %if.then264, %if.then251
  %conv277.sink = phi i16 [ %conv277, %if.then264 ], [ %225, %if.then251 ]
  %l4_dst_port_mask278 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 26
  %239 = ptrtoint ptr %l4_dst_port_mask278 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv277.sink, ptr %l4_dst_port_mask278, align 2
  br label %if.end280

if.end280:                                        ; preds = %if.end280.sink.split, %if.else260.if.end280_crit_edge
  %240 = call i16 @llvm.bswap.i16(i16 %flow_flags.2)
  %flags281 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 5
  %241 = ptrtoint ptr %flags281 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %flags281, align 8
  %242 = ptrtoint ptr %actions1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %actions1, align 8
  %and283 = and i32 %243, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %if.else289, label %if.then285

if.then285:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #14
  %244 = or i16 %action_flags.4, 4
  br label %if.end324

if.else289:                                       ; preds = %if.end280
  %and291 = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %if.else289.if.end298_crit_edge, label %if.then293

if.else289.if.end298_crit_edge:                   ; preds = %if.else289
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end298

if.then293:                                       ; preds = %if.else289
  call void @__sanitizer_cov_trace_pc() #14
  %245 = or i16 %action_flags.4, 1
  %dst_fid = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 1
  %246 = ptrtoint ptr %dst_fid to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %dst_fid, align 4
  %248 = call i16 @llvm.bswap.i16(i16 %247)
  %dst_fid297 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 9
  %249 = ptrtoint ptr %dst_fid297 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %dst_fid297, align 2
  br label %if.end298

if.end298:                                        ; preds = %if.then293, %if.else289.if.end298_crit_edge
  %action_flags.5 = phi i16 [ %245, %if.then293 ], [ %action_flags.4, %if.else289.if.end298_crit_edge ]
  %250 = ptrtoint ptr %actions1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %actions1, align 8
  %and300 = and i32 %251, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %if.end298.if.end310_crit_edge, label %if.then302

if.end298.if.end310_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310

if.then302:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #14
  %252 = or i16 %action_flags.5, 256
  %push_vlan_tpid = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 3
  %253 = ptrtoint ptr %push_vlan_tpid to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %push_vlan_tpid, align 4
  %l2_rewrite_vlan_tpid = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 10
  %255 = ptrtoint ptr %l2_rewrite_vlan_tpid to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %254, ptr %l2_rewrite_vlan_tpid, align 4
  %push_vlan_tci = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10, i32 4
  %256 = ptrtoint ptr %push_vlan_tci to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %push_vlan_tci, align 2
  %l2_rewrite_vlan_tci = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 11
  %258 = ptrtoint ptr %l2_rewrite_vlan_tci to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %257, ptr %l2_rewrite_vlan_tci, align 2
  %l2_rewrite_dmac306 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 28
  %dmac307 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 16
  %259 = call ptr @memcpy(ptr %l2_rewrite_dmac306, ptr %dmac307, i32 6)
  %l2_rewrite_smac308 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 30
  %smac309 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 18
  %260 = call ptr @memcpy(ptr %l2_rewrite_smac308, ptr %smac309, i32 6)
  br label %if.end310

if.end310:                                        ; preds = %if.then302, %if.end298.if.end310_crit_edge
  %action_flags.6 = phi i16 [ %252, %if.then302 ], [ %action_flags.5, %if.end298.if.end310_crit_edge ]
  %261 = ptrtoint ptr %actions1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %actions1, align 8
  %and312 = and i32 %262, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %if.end310.if.end324_crit_edge, label %if.then314

if.end310.if.end324_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end324

if.then314:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #14
  %263 = or i16 %action_flags.6, 256
  %l2_rewrite_vlan_tpid318 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 10
  %264 = ptrtoint ptr %l2_rewrite_vlan_tpid318 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 0, ptr %l2_rewrite_vlan_tpid318, align 4
  %l2_rewrite_dmac319 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 28
  %dmac320 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 16
  %265 = call ptr @memcpy(ptr %l2_rewrite_dmac319, ptr %dmac320, i32 6)
  %l2_rewrite_smac321 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 30
  %smac322 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 18
  %266 = call ptr @memcpy(ptr %l2_rewrite_smac321, ptr %smac322, i32 6)
  br label %if.end324

if.end324:                                        ; preds = %if.then314, %if.end310.if.end324_crit_edge, %if.then285
  %action_flags.7 = phi i16 [ %244, %if.then285 ], [ %263, %if.then314 ], [ %action_flags.6, %if.end310.if.end324_crit_edge ]
  %267 = call i16 @llvm.bswap.i16(i16 %action_flags.7)
  %action_flags325 = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_input, ptr %71, i32 0, i32 8
  %268 = ptrtoint ptr %action_flags325 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %action_flags325, align 8
  %call326 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %71) #12
  %269 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %req, align 4
  %call327 = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %270) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %if.then329, label %if.end324.if.end337_crit_edge

if.end324.if.end337_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end337

if.then329:                                       ; preds = %if.end324
  %flow_handle = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_output, ptr %call326, i32 0, i32 4
  %271 = ptrtoint ptr %flow_handle to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %flow_handle, align 8
  %flow_handle330 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 4
  %273 = ptrtoint ptr %flow_handle330 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %272, ptr %flow_handle330, align 8
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %274 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %fw_cap, align 8
  %and331 = and i32 %275, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and331)
  %tobool332.not = icmp eq i32 %and331, 0
  br i1 %tobool332.not, label %if.then329.if.end337_crit_edge, label %if.then333

if.then329.if.end337_crit_edge:                   ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end337

if.then333:                                       ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #14
  %ext_flow_handle = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_output, ptr %call326, i32 0, i32 7
  %276 = ptrtoint ptr %ext_flow_handle to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %ext_flow_handle, align 8
  %ext_flow_handle334 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 3
  %278 = ptrtoint ptr %ext_flow_handle334 to i32
  call void @__asan_store8_noabort(i32 %278)
  store i64 %277, ptr %ext_flow_handle334, align 8
  %flow_id = getelementptr inbounds %struct.hwrm_cfa_flow_alloc_output, ptr %call326, i32 0, i32 6
  %279 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %flow_id, align 4
  %flow_id335 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 5
  %281 = ptrtoint ptr %flow_id335 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %flow_id335, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then333, %if.then329.if.end337_crit_edge, %if.end324.if.end337_crit_edge
  %282 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %283) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end337, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call327, %if.end337 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 715, ptr noundef nonnull @.str.29) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !178

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !169

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !169

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %25 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #12
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 377, ptr noundef nonnull @.str.34) #12
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.51, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.51, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 732, ptr noundef nonnull @.str.34) #12
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !169

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !178

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 377, ptr noundef nonnull @.str.34) #12
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !179
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #12
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #12
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %60 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_tc_put_tunnel_handle(ptr noundef %bp, ptr nocapture noundef readonly %flow, ptr noundef %flow_node) unnamed_addr #0 align 64 {
entry:
  %req.i.i10 = alloca ptr, align 4
  %req.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %actions = getelementptr inbounds %struct.bnxt_tc_flow, ptr %flow, i32 0, i32 10
  %0 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actions, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %decap_node.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 9
  %2 = ptrtoint ptr %decap_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decap_node.i, align 8
  %tunnel_handle.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tunnel_handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tunnel_handle.i, align 8
  %tc_info1.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %6 = ptrtoint ptr %tc_info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tc_info1.i, align 8
  %decap_l2_node.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 10
  %8 = ptrtoint ptr %decap_l2_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %decap_l2_node.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @bnxt_tc_put_decap_l2_node(ptr noundef %bp, ptr noundef %flow_node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %10 = ptrtoint ptr %decap_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %decap_node.i, align 8
  %refcount.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcount.i.i, align 4
  %dec.i.i = add i32 %13, -1
  store i32 %dec.i.i, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i.i:                                      ; preds = %if.end.i
  %decap_ht_params.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 8
  %decap_table.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 7
  %node.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %decap_ht_params.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack.i.i = load i32, ptr %decap_ht_params.i, align 4
  %15 = insertvalue [7 x i32] undef, i32 %.unpack.i.i, 0
  %.elt15.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %.elt15.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack16.i.i = load i32, ptr %.elt15.i.i, align 4
  %17 = insertvalue [7 x i32] %15, i32 %.unpack16.i.i, 1
  %.elt17.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %.elt17.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack18.i.i = load i32, ptr %.elt17.i.i, align 4
  %19 = insertvalue [7 x i32] %17, i32 %.unpack18.i.i, 2
  %.elt19.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 8, i32 5
  %20 = ptrtoint ptr %.elt19.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack20.i.i = load i32, ptr %.elt19.i.i, align 4
  %21 = insertvalue [7 x i32] %19, i32 %.unpack20.i.i, 3
  %.elt21.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 8, i32 7
  %22 = ptrtoint ptr %.elt21.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack22.i.i = load i32, ptr %.elt21.i.i, align 4
  %23 = insertvalue [7 x i32] %21, i32 %.unpack22.i.i, 4
  %.elt23.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 8, i32 8
  %24 = ptrtoint ptr %.elt23.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack24.i.i = load i32, ptr %.elt23.i.i, align 4
  %25 = insertvalue [7 x i32] %23, i32 %.unpack24.i.i, 5
  %.elt25.i.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %7, i32 0, i32 8, i32 9
  %26 = ptrtoint ptr %.elt25.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack26.i.i = load i32, ptr %.elt25.i.i, align 4
  %27 = insertvalue [7 x i32] %25, i32 %.unpack26.i.i, 6
  %call.i.i = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %decap_table.i, ptr noundef %node.i.i, [7 x i32] %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.do.body.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.do.body.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.46, i32 noundef %call.i.i) #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then1.i.i, %if.then.i.i.do.body.i.i_crit_edge
  %30 = xor i1 %tobool.not.i.i, true
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %do.body.i.i.bnxt_tc_put_tunnel_node.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.bnxt_tc_put_tunnel_node.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_put_tunnel_node.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i.i = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %11, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 88 to ptr)) #12
  br label %bnxt_tc_put_tunnel_node.exit.i

bnxt_tc_put_tunnel_node.exit.i:                   ; preds = %do.end.i.i, %do.body.i.i.bnxt_tc_put_tunnel_node.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, -1
  %or.cond.i = select i1 %30, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %bnxt_tc_put_tunnel_node.exit.i.if.end6_crit_edge, label %if.then4.i

bnxt_tc_put_tunnel_node.exit.i.if.end6_crit_edge: ; preds = %bnxt_tc_put_tunnel_node.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4.i:                                       ; preds = %bnxt_tc_put_tunnel_node.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i) #12
  %31 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i, align 4, !annotation !168
  %call.i15.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i, i16 noundef zeroext 265, i32 noundef 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.end.i.i, label %if.then4.i.if.then3.i.i_crit_edge

if.then4.i.if.then3.i.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i

if.end.i.i:                                       ; preds = %if.then4.i
  %32 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req.i.i, align 4
  %decap_filter_id.i.i = getelementptr inbounds %struct.hwrm_cfa_decap_filter_free_input, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %decap_filter_id.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %5, ptr %decap_filter_id.i.i, align 8
  %call1.i.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i17.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i17.i, label %if.end.i.i.hwrm_cfa_decap_filter_free.exit.i_crit_edge, label %if.end.i.i.if.then3.i.i_crit_edge

if.end.i.i.if.then3.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i

if.end.i.i.hwrm_cfa_decap_filter_free.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwrm_cfa_decap_filter_free.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i.if.then3.i.i_crit_edge, %if.then4.i.if.then3.i.i_crit_edge
  %rc.03.i.i = phi i32 [ %call1.i.i, %if.end.i.i.if.then3.i.i_crit_edge ], [ %call.i15.i, %if.then4.i.if.then3.i.i_crit_edge ]
  %dev.i18.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %35 = ptrtoint ptr %dev.i18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i18.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.hwrm_cfa_decap_filter_free, i32 noundef %rc.03.i.i) #15
  br label %hwrm_cfa_decap_filter_free.exit.i

hwrm_cfa_decap_filter_free.exit.i:                ; preds = %if.then3.i.i, %if.end.i.i.hwrm_cfa_decap_filter_free.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i) #12
  br label %if.end6

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end6_crit_edge, label %if.then5

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.else
  %encap_node = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 8
  %37 = ptrtoint ptr %encap_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %encap_node, align 4
  %tunnel_handle.i11 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %tunnel_handle.i11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tunnel_handle.i11, align 8
  %tc_info1.i12 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %41 = ptrtoint ptr %tc_info1.i12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tc_info1.i12, align 8
  %refcount.i.i13 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %refcount.i.i13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %refcount.i.i13, align 4
  %dec.i.i14 = add i32 %44, -1
  store i32 %dec.i.i14, ptr %refcount.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i14)
  %cmp.i.i15 = icmp eq i32 %dec.i.i14, 0
  br i1 %cmp.i.i15, label %if.then.i.i32, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i.i32:                                    ; preds = %if.then5
  %encap_ht_params.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 10
  %encap_table.i = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 9
  %node.i.i16 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %encap_ht_params.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack.i.i17 = load i32, ptr %encap_ht_params.i, align 4
  %46 = insertvalue [7 x i32] undef, i32 %.unpack.i.i17, 0
  %.elt15.i.i18 = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 10, i32 2
  %47 = ptrtoint ptr %.elt15.i.i18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack16.i.i19 = load i32, ptr %.elt15.i.i18, align 4
  %48 = insertvalue [7 x i32] %46, i32 %.unpack16.i.i19, 1
  %.elt17.i.i20 = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 10, i32 4
  %49 = ptrtoint ptr %.elt17.i.i20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack18.i.i21 = load i32, ptr %.elt17.i.i20, align 4
  %50 = insertvalue [7 x i32] %48, i32 %.unpack18.i.i21, 2
  %.elt19.i.i22 = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 10, i32 5
  %51 = ptrtoint ptr %.elt19.i.i22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack20.i.i23 = load i32, ptr %.elt19.i.i22, align 4
  %52 = insertvalue [7 x i32] %50, i32 %.unpack20.i.i23, 3
  %.elt21.i.i24 = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 10, i32 7
  %53 = ptrtoint ptr %.elt21.i.i24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack22.i.i25 = load i32, ptr %.elt21.i.i24, align 4
  %54 = insertvalue [7 x i32] %52, i32 %.unpack22.i.i25, 4
  %.elt23.i.i26 = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 10, i32 8
  %55 = ptrtoint ptr %.elt23.i.i26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.unpack24.i.i27 = load i32, ptr %.elt23.i.i26, align 4
  %56 = insertvalue [7 x i32] %54, i32 %.unpack24.i.i27, 5
  %.elt25.i.i28 = getelementptr inbounds %struct.bnxt_tc_info, ptr %42, i32 0, i32 10, i32 9
  %57 = ptrtoint ptr %.elt25.i.i28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack26.i.i29 = load i32, ptr %.elt25.i.i28, align 4
  %58 = insertvalue [7 x i32] %56, i32 %.unpack26.i.i29, 6
  %call.i.i30 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %encap_table.i, ptr noundef %node.i.i16, [7 x i32] %58) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %call.i.i30, 0
  br i1 %tobool.not.i.i31, label %if.then.i.i32.do.body.i.i36_crit_edge, label %if.then1.i.i34

if.then.i.i32.do.body.i.i36_crit_edge:            ; preds = %if.then.i.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i36

if.then1.i.i34:                                   ; preds = %if.then.i.i32
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i33 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %59 = ptrtoint ptr %dev.i.i33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i33, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.46, i32 noundef %call.i.i30) #15
  br label %do.body.i.i36

do.body.i.i36:                                    ; preds = %if.then1.i.i34, %if.then.i.i32.do.body.i.i36_crit_edge
  %61 = xor i1 %tobool.not.i.i31, true
  %tobool2.not.i.i35 = icmp eq ptr %38, null
  br i1 %tobool2.not.i.i35, label %do.body.i.i36.bnxt_tc_put_tunnel_node.exit.i41_crit_edge, label %do.end.i.i38

do.body.i.i36.bnxt_tc_put_tunnel_node.exit.i41_crit_edge: ; preds = %do.body.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %bnxt_tc_put_tunnel_node.exit.i41

do.end.i.i38:                                     ; preds = %do.body.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i.i37 = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %38, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i37, ptr noundef nonnull inttoptr (i32 88 to ptr)) #12
  br label %bnxt_tc_put_tunnel_node.exit.i41

bnxt_tc_put_tunnel_node.exit.i41:                 ; preds = %do.end.i.i38, %do.body.i.i36.bnxt_tc_put_tunnel_node.exit.i41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.not.i39 = icmp eq i32 %40, -1
  %or.cond.i40 = select i1 %61, i1 true, i1 %cmp.not.i39
  br i1 %or.cond.i40, label %bnxt_tc_put_tunnel_node.exit.i41.if.end6_crit_edge, label %if.then.i42

bnxt_tc_put_tunnel_node.exit.i41.if.end6_crit_edge: ; preds = %bnxt_tc_put_tunnel_node.exit.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then.i42:                                      ; preds = %bnxt_tc_put_tunnel_node.exit.i41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i.i10) #12
  %62 = ptrtoint ptr %req.i.i10 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i.i10, align 4, !annotation !168
  %call.i8.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i.i10, i16 noundef zeroext 152, i32 noundef 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool.not.i9.i, label %if.end.i.i44, label %if.then.i42.if.then3.i.i46_crit_edge

if.then.i42.if.then3.i.i46_crit_edge:             ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i46

if.end.i.i44:                                     ; preds = %if.then.i42
  %63 = ptrtoint ptr %req.i.i10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %req.i.i10, align 4
  %encap_record_id.i.i = getelementptr inbounds %struct.hwrm_cfa_encap_record_free_input, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %encap_record_id.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %40, ptr %encap_record_id.i.i, align 8
  %call1.i.i43 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i43)
  %tobool2.not.i10.i = icmp eq i32 %call1.i.i43, 0
  br i1 %tobool2.not.i10.i, label %if.end.i.i44.hwrm_cfa_encap_record_free.exit.i_crit_edge, label %if.end.i.i44.if.then3.i.i46_crit_edge

if.end.i.i44.if.then3.i.i46_crit_edge:            ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i46

if.end.i.i44.hwrm_cfa_encap_record_free.exit.i_crit_edge: ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwrm_cfa_encap_record_free.exit.i

if.then3.i.i46:                                   ; preds = %if.end.i.i44.if.then3.i.i46_crit_edge, %if.then.i42.if.then3.i.i46_crit_edge
  %rc.03.i.i45 = phi i32 [ %call1.i.i43, %if.end.i.i44.if.then3.i.i46_crit_edge ], [ %call.i8.i, %if.then.i42.if.then3.i.i46_crit_edge ]
  %dev.i11.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %66 = ptrtoint ptr %dev.i11.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i11.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %67, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.hwrm_cfa_encap_record_free, i32 noundef %rc.03.i.i45) #15
  br label %hwrm_cfa_encap_record_free.exit.i

hwrm_cfa_encap_record_free.exit.i:                ; preds = %if.then3.i.i46, %if.end.i.i44.hwrm_cfa_encap_record_free.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i.i10) #12
  br label %if.end6

if.end6:                                          ; preds = %hwrm_cfa_encap_record_free.exit.i, %bnxt_tc_put_tunnel_node.exit.i41.if.end6_crit_edge, %if.then5.if.end6_crit_edge, %if.else.if.end6_crit_edge, %hwrm_cfa_decap_filter_free.exit.i, %bnxt_tc_put_tunnel_node.exit.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_tc_put_l2_node(ptr nocapture noundef readonly %bp, ptr noundef %flow_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %l2_node1 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 6
  %0 = ptrtoint ptr %l2_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2_node1, align 8
  %tc_info2 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %2 = ptrtoint ptr %tc_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc_info2, align 8
  %l2_list_node = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l2_list_node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %l2_list_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l2_list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %l2_list_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %l2_list_node, align 4
  %prev.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %refcount, align 4
  %dec = add i16 %13, -1
  store i16 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp = icmp eq i16 %dec, 0
  br i1 %cmp, label %if.then, label %list_del.exit.if.end11_crit_edge

list_del.exit.if.end11_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %list_del.exit
  %l2_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 3
  %node = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %1, i32 0, i32 1
  %l2_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %l2_ht_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %l2_ht_params, align 8
  %15 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt1 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %.elt1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack2 = load i32, ptr %.elt1, align 4
  %17 = insertvalue [7 x i32] %15, i32 %.unpack2, 1
  %.elt3 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %.elt3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack4 = load i32, ptr %.elt3, align 8
  %19 = insertvalue [7 x i32] %17, i32 %.unpack4, 2
  %.elt5 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %.elt5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack6 = load i32, ptr %.elt5, align 4
  %21 = insertvalue [7 x i32] %19, i32 %.unpack6, 3
  %.elt7 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 4, i32 7
  %22 = ptrtoint ptr %.elt7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack8 = load i32, ptr %.elt7, align 8
  %23 = insertvalue [7 x i32] %21, i32 %.unpack8, 4
  %.elt9 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %.elt9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack10 = load i32, ptr %.elt9, align 4
  %25 = insertvalue [7 x i32] %23, i32 %.unpack10, 5
  %.elt11 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %.elt11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack12 = load i32, ptr %.elt11, align 8
  %27 = insertvalue [7 x i32] %25, i32 %.unpack12, 6
  %call = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %l2_table, ptr noundef %node, [7 x i32] %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.do.body_crit_edge, label %if.then4

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.bnxt_tc_put_l2_node, i32 noundef %call) #15
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.then.do.body_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %1, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 36 to ptr)) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge, %list_del.exit.if.end11_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_eth_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_icmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_keyid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_tc_parse_pedit(ptr nocapture noundef readonly %bp, ptr noundef %actions, ptr nocapture noundef readonly %act, ptr nocapture noundef %eth_addr, ptr nocapture noundef %eth_addr_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %offset1 = getelementptr inbounds %struct.anon.177, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset1, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %mask3 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask3, align 8
  %neg = xor i32 %6, -1
  %val4 = getelementptr inbounds %struct.anon.177, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val4, align 4
  %trunc = trunc i32 %4 to i8
  %9 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %trunc, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
    i8 3, label %sw.bb46
    i8 4, label %entry.sw.bb82_crit_edge
    i8 5, label %entry.sw.bb82_crit_edge9
  ]

entry.sw.bb82_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb82

entry.sw.bb82_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb82

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp ugt i32 %2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.bnxt_tc_parse_pedit) #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actions, align 8
  %or = or i32 %13, 256
  store i32 %or, ptr %actions, align 8
  %arrayidx = getelementptr i8, ptr %eth_addr, i32 %2
  %arrayidx7 = getelementptr i8, ptr %eth_addr_mask, i32 %2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx, align 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx7, align 1
  %and.i = and i32 %8, %neg
  %and4.i = and i32 %15, %6
  %or.i = or i32 %and4.i, %and.i
  %or6.i = or i32 %17, %neg
  store i32 %or6.i, ptr %arrayidx7, align 1
  store i32 %or.i, ptr %arrayidx, align 1
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %18 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actions, align 8
  %or10 = or i32 %19, 512
  store i32 %or10, ptr %actions, align 8
  %nat = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8
  %l3_is_ipv4 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %l3_is_ipv4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %l3_is_ipv4, align 1
  %21 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %2, label %if.else24 [
    i32 12, label %if.then13
    i32 16, label %if.then18
  ]

if.then13:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %nat to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %nat, align 4
  %saddr = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  br label %do.body28

if.then18:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %nat to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %nat, align 4
  %l322 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 2
  br label %do.body28

if.else24:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %dev25 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %24 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.bnxt_tc_parse_pedit) #15
  br label %cleanup

do.body28:                                        ; preds = %if.then18, %if.then13
  %l322.sink = phi ptr [ %l322, %if.then18 ], [ %saddr, %if.then13 ]
  %26 = ptrtoint ptr %l322.sink to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %8, ptr %l322.sink, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnxt_tc_parse_pedit, %if.then31)) #12
          to label %cleanup [label %if.then31], !srcloc !176

if.then31:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  %dev32 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %27 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev32, align 4
  %29 = ptrtoint ptr %nat to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nat, align 4, !range !171
  %31 = zext i8 %30 to i32
  %l338 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 2
  %saddr39 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug660, ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef %31, ptr noundef %saddr39, ptr noundef %l338) #12
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  %32 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actions, align 8
  %or48 = or i32 %33, 512
  store i32 %or48, ptr %actions, align 8
  %nat49 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8
  %l3_is_ipv450 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %l3_is_ipv450 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %l3_is_ipv450, align 1
  %35 = add i32 %2, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %35)
  %36 = icmp ult i32 %35, 16
  br i1 %36, label %if.then55, label %if.else62

if.then55:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %nat49 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %nat49, align 4
  %div2 = lshr i32 %35, 2
  %saddr60 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 2, i32 0, i32 0, i32 1
  %arrayidx61 = getelementptr [4 x i32], ptr %saddr60, i32 0, i32 %div2
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %8, ptr %arrayidx61, align 4
  br label %cleanup

if.else62:                                        ; preds = %sw.bb46
  %39 = add i32 %2, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %39)
  %40 = icmp ult i32 %39, 16
  br i1 %40, label %if.then68, label %if.else78

if.then68:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %nat49 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %nat49, align 4
  %div721 = lshr i32 %39, 2
  %saddr75 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 2, i32 0, i32 0, i32 1
  %arrayidx77 = getelementptr [4 x i32], ptr %saddr75, i32 0, i32 %div721
  %42 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %8, ptr %arrayidx77, align 4
  br label %cleanup

if.else78:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #14
  %dev79 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %43 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev79, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.bnxt_tc_parse_pedit) #15
  br label %cleanup

sw.bb82:                                          ; preds = %entry.sw.bb82_crit_edge, %entry.sw.bb82_crit_edge9
  %45 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actions, align 8
  %and = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %if.then85, label %if.end87

if.then85:                                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #14
  %dev86 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %47 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.16) #15
  br label %cleanup

if.end87:                                         ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #14
  %nat88 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8
  %49 = ptrtoint ptr %nat88 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nat88, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool90.not = icmp eq i8 %50, 0
  %conv95 = trunc i32 %8 to i16
  %dport = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 3, i32 1, i32 0, i32 1
  %51 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 3, i32 1
  %dport.sink = select i1 %tobool90.not, ptr %dport, ptr %51
  %52 = ptrtoint ptr %dport.sink to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv95, ptr %dport.sink, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug661, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bnxt_tc_parse_pedit, %if.then112)) #12
          to label %cleanup [label %if.then112], !srcloc !176

if.then112:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %dev113 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %53 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev113, align 4
  %55 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 3, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 2
  %conv117 = zext i16 %57 to i32
  %dport120 = getelementptr inbounds %struct.bnxt_tc_actions, ptr %actions, i32 0, i32 8, i32 3, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %dport120 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %dport120, align 2
  %conv121 = zext i16 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug661, ptr noundef %54, ptr noundef nonnull @.str.17, i32 noundef %conv117, i32 noundef %conv121) #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev127 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %60 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev127, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.bnxt_tc_parse_pedit) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then112, %if.end87, %if.then85, %if.else78, %if.then68, %if.then55, %if.then31, %do.body28, %if.else24, %if.end, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.then85 ], [ -22, %if.else78 ], [ -22, %if.else24 ], [ -22, %if.then ], [ 0, %if.then112 ], [ 0, %if.then55 ], [ 0, %if.then68 ], [ 0, %if.then31 ], [ 0, %if.end ], [ 0, %do.body28 ], [ 0, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_port_same_parent_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bnxt_dev_is_vf_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1076, ptr noundef nonnull @.str.29) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !178

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !169

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 377, ptr noundef nonnull @.str.34) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.36, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1032, ptr noundef nonnull @.str.34) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !180
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.38, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1004, ptr noundef nonnull @.str.34) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !181
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !178

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.33, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 1085, ptr noundef nonnull @.str.29) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.31) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %46 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %retval.0.i15.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !182
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !183

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !185
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !169

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %7 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !188
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !178

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !190
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !191
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !192
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  %3 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !194
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !195
  %2 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bnxt_tc_get_l2_node(ptr nocapture noundef readonly %bp, ptr noundef %l2_table, [7 x i32] %ht_params.coerce, ptr noundef %l2_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %l2_table, ptr noundef %l2_key, [7 x i32] %ht_params.coerce)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %l2_key, i32 20)
  %node = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call fastcc i32 @rhashtable_insert_fast(ptr noundef %l2_table, ptr noundef %node, [7 x i32] %ht_params.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call7.i.i, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 36 to ptr)) #12
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.bnxt_tc_get_l2_node, i32 noundef %call4) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %common_l2_flows = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %common_l2_flows to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %common_l2_flows, ptr %common_l2_flows, align 8
  %prev.i = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %common_l2_flows, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end13 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bnxt_tc_get_tunnel_node(ptr nocapture noundef readonly %bp, ptr noundef %tunnel_table, ptr nocapture noundef readonly %ht_params, ptr noundef %tun_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %ht_params, align 4
  %1 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt28 = getelementptr inbounds [7 x i32], ptr %ht_params, i32 0, i32 1
  %2 = ptrtoint ptr %.elt28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack29 = load i32, ptr %.elt28, align 4
  %3 = insertvalue [7 x i32] %1, i32 %.unpack29, 1
  %.elt30 = getelementptr inbounds [7 x i32], ptr %ht_params, i32 0, i32 2
  %4 = ptrtoint ptr %.elt30 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack31 = load i32, ptr %.elt30, align 4
  %5 = insertvalue [7 x i32] %3, i32 %.unpack31, 2
  %.elt32 = getelementptr inbounds [7 x i32], ptr %ht_params, i32 0, i32 3
  %6 = ptrtoint ptr %.elt32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack33 = load i32, ptr %.elt32, align 4
  %7 = insertvalue [7 x i32] %5, i32 %.unpack33, 3
  %.elt34 = getelementptr inbounds [7 x i32], ptr %ht_params, i32 0, i32 4
  %8 = ptrtoint ptr %.elt34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack35 = load i32, ptr %.elt34, align 4
  %9 = insertvalue [7 x i32] %7, i32 %.unpack35, 4
  %.elt36 = getelementptr inbounds [7 x i32], ptr %ht_params, i32 0, i32 5
  %10 = ptrtoint ptr %.elt36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack37 = load i32, ptr %.elt36, align 4
  %11 = insertvalue [7 x i32] %9, i32 %.unpack37, 5
  %.elt38 = getelementptr inbounds [7 x i32], ptr %ht_params, i32 0, i32 6
  %12 = ptrtoint ptr %.elt38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack39 = load i32, ptr %.elt38, align 4
  %13 = insertvalue [7 x i32] %11, i32 %.unpack39, 6
  %call = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %tunnel_table, ptr noundef %tun_key, [7 x i32] %13)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 96) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.err_crit_edge, label %if.end

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %if.then
  %15 = call ptr @memcpy(ptr %call7.i.i, ptr %tun_key, i32 56)
  %tunnel_handle = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %tunnel_handle to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %tunnel_handle, align 8
  %node = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %ht_params to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack40 = load i32, ptr %ht_params, align 4
  %18 = insertvalue [7 x i32] undef, i32 %.unpack40, 0
  %19 = ptrtoint ptr %.elt28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack42 = load i32, ptr %.elt28, align 4
  %20 = insertvalue [7 x i32] %18, i32 %.unpack42, 1
  %21 = ptrtoint ptr %.elt30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack44 = load i32, ptr %.elt30, align 4
  %22 = insertvalue [7 x i32] %20, i32 %.unpack44, 2
  %23 = ptrtoint ptr %.elt32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack46 = load i32, ptr %.elt32, align 4
  %24 = insertvalue [7 x i32] %22, i32 %.unpack46, 3
  %25 = ptrtoint ptr %.elt34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack48 = load i32, ptr %.elt34, align 4
  %26 = insertvalue [7 x i32] %24, i32 %.unpack48, 4
  %27 = ptrtoint ptr %.elt36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack50 = load i32, ptr %.elt36, align 4
  %28 = insertvalue [7 x i32] %26, i32 %.unpack50, 5
  %29 = ptrtoint ptr %.elt38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack52 = load i32, ptr %.elt38, align 4
  %30 = insertvalue [7 x i32] %28, i32 %.unpack52, 6
  %call4 = tail call fastcc i32 @rhashtable_insert_fast(ptr noundef %tunnel_table, ptr noundef %node, [7 x i32] %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %do.end

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %call7.i.i, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 88 to ptr)) #12
  br label %err

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %tunnel_node.0 = phi ptr [ %call, %entry.if.end14_crit_edge ], [ %call7.i.i, %if.end.if.end14_crit_edge ]
  %refcount = getelementptr inbounds %struct.bnxt_tc_tunnel_node, ptr %tunnel_node.0, i32 0, i32 4
  %31 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %refcount, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %refcount, align 4
  br label %cleanup

err:                                              ; preds = %do.end, %if.then.err_crit_edge
  %rc.0 = phi i32 [ %call4, %do.end ], [ -12, %if.then.err_crit_edge ]
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %34, ptr noundef nonnull @.str.1, i32 noundef %rc.0) #15
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end14
  %retval.0 = phi ptr [ %tunnel_node.0, %if.end14 ], [ null, %err ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_tc_resolve_tunnel_hdrs(ptr nocapture noundef readonly %bp, ptr nocapture noundef %tun_key, ptr nocapture noundef writeonly %l2_info) unnamed_addr #0 align 64 {
entry:
  %flow = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %flow) #12
  %2 = call ptr @memset(ptr %flow, i32 0, i32 56)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %flow, i32 0, i32 5
  %3 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 17, ptr %flowic_proto, align 2
  %tp_dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %tun_key, i32 0, i32 7
  %4 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tp_dst, align 2
  %uli = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 3
  %6 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %uli, align 8
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %tun_key, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %tun_key, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst, align 4
  %daddr = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 2
  %9 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %daddr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i, align 4
  %call.i = call ptr @ip_route_output_flow(ptr noundef %11, ptr noundef nonnull %flow, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.40, ptr noundef %daddr) #15
  br label %cleanup34

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %real_dev = getelementptr i8, ptr %15, i32 2416
  %18 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %real_dev, align 4
  %cmp.not = icmp eq ptr %19, %1
  br i1 %cmp.not, label %cleanup.thread, label %if.then10

if.then10:                                        ; preds = %if.then8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then10.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then10.netdev_name.exit_crit_edge:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %call.i72 = call ptr @strchr(ptr noundef %15, i32 noundef 37) #12
  %tobool2.not.i = icmp eq ptr %call.i72, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %15, ptr @.str.44
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then10.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.44, %if.then10.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i73 = icmp eq i8 %25, 0
  br i1 %tobool.not.i73, label %netdev_name.exit.cleanup_crit_edge, label %lor.lhs.false.i77

netdev_name.exit.cleanup_crit_edge:               ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i77:                                ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i74 = call ptr @strchr(ptr noundef %1, i32 noundef 37) #12
  %tobool2.not.i75 = icmp eq ptr %call.i74, null
  %spec.select.i76 = select i1 %tobool2.not.i75, ptr %1, ptr @.str.44
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_id = getelementptr i8, ptr %15, i32 2410
  %26 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vlan_id, align 2
  %inner_vlan_tci = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info, i32 0, i32 3
  %28 = ptrtoint ptr %inner_vlan_tci to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %inner_vlan_tci, align 2
  %vlan_proto = getelementptr i8, ptr %15, i32 2408
  %29 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan_proto, align 4
  %inner_vlan_tpid = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info, i32 0, i32 2
  %31 = ptrtoint ptr %inner_vlan_tpid to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %inner_vlan_tpid, align 2
  %num_vlans = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info, i32 0, i32 5
  %32 = ptrtoint ptr %num_vlans to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %num_vlans, align 2
  br label %if.end22

cleanup:                                          ; preds = %lor.lhs.false.i77, %netdev_name.exit.cleanup_crit_edge
  %retval.0.i78 = phi ptr [ @.str.44, %netdev_name.exit.cleanup_crit_edge ], [ %spec.select.i76, %lor.lhs.false.i77 ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i, ptr noundef %retval.0.i78) #15
  br label %put_rt

if.else:                                          ; preds = %if.end
  %cmp15.not = icmp eq ptr %15, %1
  br i1 %cmp15.not, label %if.else.if.end22_crit_edge, label %if.then16

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then16:                                        ; preds = %if.else
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i80 = icmp eq i8 %36, 0
  br i1 %tobool.not.i80, label %if.then16.netdev_name.exit86_crit_edge, label %lor.lhs.false.i84

if.then16.netdev_name.exit86_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit86

lor.lhs.false.i84:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %call.i81 = call ptr @strchr(ptr noundef %15, i32 noundef 37) #12
  %tobool2.not.i82 = icmp eq ptr %call.i81, null
  %spec.select.i83 = select i1 %tobool2.not.i82, ptr %15, ptr @.str.44
  br label %netdev_name.exit86

netdev_name.exit86:                               ; preds = %lor.lhs.false.i84, %if.then16.netdev_name.exit86_crit_edge
  %retval.0.i85 = phi ptr [ @.str.44, %if.then16.netdev_name.exit86_crit_edge ], [ %spec.select.i83, %lor.lhs.false.i84 ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i87 = icmp eq i8 %38, 0
  br i1 %tobool.not.i87, label %netdev_name.exit86.netdev_name.exit93_crit_edge, label %lor.lhs.false.i91

netdev_name.exit86.netdev_name.exit93_crit_edge:  ; preds = %netdev_name.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit93

lor.lhs.false.i91:                                ; preds = %netdev_name.exit86
  call void @__sanitizer_cov_trace_pc() #14
  %call.i88 = call ptr @strchr(ptr noundef %1, i32 noundef 37) #12
  %tobool2.not.i89 = icmp eq ptr %call.i88, null
  %spec.select.i90 = select i1 %tobool2.not.i89, ptr %1, ptr @.str.44
  br label %netdev_name.exit93

netdev_name.exit93:                               ; preds = %lor.lhs.false.i91, %netdev_name.exit86.netdev_name.exit93_crit_edge
  %retval.0.i92 = phi ptr [ @.str.44, %netdev_name.exit86.netdev_name.exit93_crit_edge ], [ %spec.select.i90, %lor.lhs.false.i91 ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %34, ptr noundef nonnull @.str.42, ptr noundef %retval.0.i85, ptr noundef %daddr, ptr noundef %retval.0.i92) #15
  br label %put_rt

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %cleanup.thread
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i94 = call ptr %42(ptr noundef %call.i, ptr noundef null, ptr noundef %daddr) #12
  %cmp.i.i = icmp ugt ptr %call.i94, inttoptr (i32 -4096 to ptr)
  %tobool.not103 = icmp eq ptr %call.i94, null
  %tobool.not = or i1 %cmp.i.i, %tobool.not103
  br i1 %tobool.not, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %44, ptr noundef nonnull @.str.43, ptr noundef %daddr) #15
  br label %put_rt

if.end29:                                         ; preds = %if.end22
  %saddr = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 1
  %45 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %saddr, align 8
  %47 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %u, align 8
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %49, -4
  %50 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %50, i32 9
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i96 = icmp eq i32 %52, 0
  br i1 %cmp.i96, label %if.then.i, label %if.end29.ip4_dst_hoplimit.exit_crit_edge

if.end29.ip4_dst_hoplimit.exit_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip4_dst_hoplimit.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 127
  %55 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %56, i32 0, i32 35, i32 37
  %57 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i = zext i8 %58 to i32
  br label %ip4_dst_hoplimit.exit

ip4_dst_hoplimit.exit:                            ; preds = %if.then.i, %if.end29.ip4_dst_hoplimit.exit_crit_edge
  %hoplimit.0.i = phi i32 [ %conv.i, %if.then.i ], [ %52, %if.end29.ip4_dst_hoplimit.exit_crit_edge ]
  %conv = trunc i32 %hoplimit.0.i to i8
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %tun_key, i32 0, i32 4
  %59 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv, ptr %ttl, align 1
  %ha_lock.i = getelementptr inbounds %struct.neighbour, ptr %call.i94, i32 0, i32 17
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i94, i32 0, i32 17, i32 0, i32 0, i32 1
  %ha.i = getelementptr inbounds %struct.neighbour, ptr %call.i94, i32 0, i32 18
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 56
  br label %do.body.i

do.body.i:                                        ; preds = %read_seqbegin.exit.i.do.body.i_crit_edge, %ip4_dst_hoplimit.exit
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !196
  %and.i.i.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  %61 = call ptr @llvm.returnaddress(i32 0) #12
  %62 = ptrtoint ptr %61 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %62) #12
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %62) #12
  call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = call ptr @llvm.returnaddress(i32 0) #12
  %64 = ptrtoint ptr %63 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %64) #12
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %64) #12
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !197
  %and.i.i.i.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !178

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #12, !srcloc !198
  %66 = ptrtoint ptr %ha_lock.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %ha_lock.i, align 4
  %and18.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !199
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !200
  %68 = ptrtoint ptr %ha_lock.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %ha_lock.i, align 4
  %and.i.i97 = and i32 %69, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i97, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %67, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %69, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !201
  %70 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %addr_len.i, align 1
  %conv.i98 = zext i8 %71 to i32
  %72 = call ptr @memcpy(ptr %l2_info, ptr %ha.i, i32 %conv.i98)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  %73 = ptrtoint ptr %ha_lock.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %ha_lock.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %74, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %neigh_ha_snapshot.exit, label %read_seqbegin.exit.i.do.body.i_crit_edge

read_seqbegin.exit.i.do.body.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

neigh_ha_snapshot.exit:                           ; preds = %read_seqbegin.exit.i
  %smac = getelementptr inbounds %struct.bnxt_tc_l2_key, ptr %l2_info, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 86
  %75 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr, align 64
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %79 = ptrtoint ptr %smac to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %smac, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 4
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.bnxt_tc_l2_key, ptr %l2_info, i32 0, i32 1, i32 4
  %82 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %add.ptr1.i, align 2
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i94, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !203
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !204
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i99, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %neigh_ha_snapshot.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !169

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %neigh_release.exit

if.then.i99:                                      ; preds = %neigh_ha_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !205
  call void @neigh_destroy(ptr noundef %call.i94) #12
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i99, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  call void @dst_release(ptr noundef %call.i) #12
  br label %cleanup34

put_rt:                                           ; preds = %if.then26, %netdev_name.exit93, %cleanup
  call void @dst_release(ptr noundef %call.i) #12
  br label %cleanup34

cleanup34:                                        ; preds = %put_rt, %neigh_release.exit, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %put_rt ], [ 0, %neigh_release.exit ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %flow) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_tc_put_decap_l2_node(ptr nocapture noundef readonly %bp, ptr noundef %flow_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %decap_l2_node1 = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 10
  %0 = ptrtoint ptr %decap_l2_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %decap_l2_node1, align 4
  %tc_info2 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 154
  %2 = ptrtoint ptr %tc_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tc_info2, align 8
  %decap_l2_list_node = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %decap_l2_list_node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %decap_l2_list_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %decap_l2_list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %decap_l2_list_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %decap_l2_list_node, align 4
  %prev.i = getelementptr inbounds %struct.bnxt_tc_flow_node, ptr %flow_node, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcount = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %refcount, align 4
  %dec = add i16 %13, -1
  store i16 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp = icmp eq i16 %dec, 0
  br i1 %cmp, label %if.then, label %list_del.exit.if.end11_crit_edge

list_del.exit.if.end11_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then:                                          ; preds = %list_del.exit
  %decap_l2_table = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 5
  %node = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %1, i32 0, i32 1
  %decap_l2_ht_params = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %decap_l2_ht_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %decap_l2_ht_params, align 8
  %15 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt19 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %.elt19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack20 = load i32, ptr %.elt19, align 4
  %17 = insertvalue [7 x i32] %15, i32 %.unpack20, 1
  %.elt21 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %.elt21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack22 = load i32, ptr %.elt21, align 8
  %19 = insertvalue [7 x i32] %17, i32 %.unpack22, 2
  %.elt23 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %.elt23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack24 = load i32, ptr %.elt23, align 4
  %21 = insertvalue [7 x i32] %19, i32 %.unpack24, 3
  %.elt25 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 6, i32 7
  %22 = ptrtoint ptr %.elt25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack26 = load i32, ptr %.elt25, align 8
  %23 = insertvalue [7 x i32] %21, i32 %.unpack26, 4
  %.elt27 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 6, i32 8
  %24 = ptrtoint ptr %.elt27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack28 = load i32, ptr %.elt27, align 4
  %25 = insertvalue [7 x i32] %23, i32 %.unpack28, 5
  %.elt29 = getelementptr inbounds %struct.bnxt_tc_info, ptr %3, i32 0, i32 6, i32 9
  %26 = ptrtoint ptr %.elt29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack30 = load i32, ptr %.elt29, align 8
  %27 = insertvalue [7 x i32] %25, i32 %.unpack30, 6
  %call = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %decap_l2_table, ptr noundef %node, [7 x i32] %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.do.body_crit_edge, label %if.then4

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.46, i32 noundef %call) #15
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.then.do.body_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.bnxt_tc_l2_node, ptr %1, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 36 to ptr)) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge, %list_del.exit.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send_silent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_indr_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_tc_setup_indr_block_cb(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bp1 = getelementptr inbounds %struct.bnxt_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 1
  %0 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp1, align 4
  %dev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %4 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extack.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %7, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #12
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tc_can_offload_extack.__msg, ptr %5, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %tc_cls_can_offload_and_chain0.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #12
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %5, align 4
  br label %cleanup

tc_cls_can_offload_and_chain0.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge

tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge: ; preds = %tc_cls_can_offload_and_chain0.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %tc_cls_can_offload_and_chain0.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pf = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 120
  %12 = ptrtoint ptr %pf to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pf, align 4
  %call2 = tail call i32 @bnxt_tc_setup_flower(ptr noundef %1, i16 noundef zeroext %13, ptr noundef %type_data)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb ], [ -95, %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge ], [ -95, %if.then4.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @bnxt_init_tc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 2020, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1724, i32 24}
!5 = !{ptr @bnxt_tc_add_flow.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1582, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1603, i32 22}
!10 = !{ptr @__func__.bnxt_tc_add_flow, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1604, i32 6}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 378, i32 24}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 300, i32 24}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__flow_action_hw_stats_check.__msg, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!21 = distinct !{null, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!23 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !24, !"__msg", i1 false, i1 false}
!24 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 74, i32 24}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 110, i32 24}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 201, i32 8}
!31 = !{ptr @__func__.bnxt_tc_parse_pedit, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 202, i32 8}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 221, i32 8}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 226, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug660, !36, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 250, i32 8}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 262, i32 8}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 269, i32 3}
!46 = !{ptr @bnxt_tc_parse_pedit.__UNIQUE_ID_ddebug661, !45, !"__UNIQUE_ID_ddebug661", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 274, i32 23}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 54, i32 27}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1047, i32 24}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1055, i32 24}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1060, i32 24}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1069, i32 24}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1076, i32 24}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1083, i32 24}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1488, i32 23}
!80 = !{ptr @__func__.__bnxt_tc_del_flow, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1489, i32 7}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 988, i32 8}
!101 = !{ptr @__func__.bnxt_tc_get_l2_node, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 989, i32 8}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1243, i32 24}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1257, i32 9}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1269, i32 8}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1278, i32 24}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 857, i32 24}
!115 = !{ptr @__func__.hwrm_cfa_decap_filter_alloc, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 857, i32 45}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1203, i32 24}
!119 = !{ptr @__func__.hwrm_cfa_encap_record_alloc, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 923, i32 45}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 640, i32 4}
!123 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug662, !122, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 668, i32 4}
!127 = !{ptr @bnxt_hwrm_cfa_flow_alloc.__UNIQUE_ID_ddebug663, !126, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!134 = !{ptr @__func__.bnxt_hwrm_cfa_flow_free, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 519, i32 45}
!136 = !{ptr @__func__.hwrm_cfa_decap_filter_free, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 874, i32 45}
!138 = !{ptr @__func__.hwrm_cfa_encap_record_free, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 940, i32 45}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 959, i32 8}
!142 = !{ptr @__func__.bnxt_tc_put_l2_node, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 960, i32 8}
!144 = !{ptr @bnxt_tc_flow_ht_params, !145, !"bnxt_tc_flow_ht_params", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1978, i32 39}
!146 = !{ptr @bnxt_tc_l2_ht_params, !147, !"bnxt_tc_l2_ht_params", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1985, i32 39}
!148 = !{ptr @bnxt_tc_decap_l2_ht_params, !149, !"bnxt_tc_decap_l2_ht_params", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1992, i32 39}
!150 = !{ptr @bnxt_tc_tunnel_ht_params, !151, !"bnxt_tc_tunnel_ht_params", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_tc.c", i32 1999, i32 39}
!152 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!154 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !155, !"__msg", i1 false, i1 false}
!155 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!156 = !{ptr @tc_can_offload_extack.__msg, !157, !"__msg", i1 false, i1 false}
!157 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"auto-init"}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{!"branch_weights", i32 1073205, i32 2146410443}
!171 = !{i8 0, i8 2}
!172 = !{i64 2149646257}
!173 = !{i64 2159134005}
!174 = !{i64 2159137439}
!175 = !{i64 2149646523}
!176 = !{i64 2149097497, i64 2149097502, i64 2149097515, i64 2149097559, i64 2149097593, i64 2149097614}
!177 = !{i32 0, i32 33}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{i64 2148540232, i64 2148540258, i64 2148540287, i64 2148540321, i64 2148540352, i64 2148540375}
!180 = !{i64 2159201381}
!181 = !{i64 2148542697, i64 2148542723, i64 2148542752, i64 2148542786, i64 2148542817, i64 2148542840}
!182 = !{i64 2152687973}
!183 = !{!"branch_weights", i32 2146410443, i32 1073205}
!184 = !{i64 2148549090, i64 2148549122, i64 2148549151, i64 2148549185, i64 2148549216, i64 2148549239}
!185 = !{i64 2148638195}
!186 = !{i64 2152688133}
!187 = !{i64 2152688410}
!188 = !{i64 2152688252}
!189 = !{i64 2152688615}
!190 = !{i64 2152689678, i64 2152690170, i64 2152689715, i64 2152689771, i64 2152689805, i64 2152689829, i64 2152689870, i64 2152689891, i64 2152689919, i64 2152689953}
!191 = !{i64 2148637082}
!192 = !{i64 2148547477, i64 2148547509, i64 2148547538, i64 2148547572, i64 2148547603, i64 2148547626}
!193 = !{i64 2152691073}
!194 = !{i64 2159127078}
!195 = !{i64 2159129377}
!196 = !{i64 943932, i64 943993}
!197 = !{i64 946664}
!198 = !{i64 946949}
!199 = !{i64 2150413061}
!200 = !{i64 2150412903}
!201 = !{i64 2150413231}
!202 = !{i64 2150398302}
!203 = !{i64 2148629787}
!204 = !{i64 2148544227, i64 2148544259, i64 2148544288, i64 2148544322, i64 2148544353, i64 2148544376}
!205 = !{i64 2149864007}
