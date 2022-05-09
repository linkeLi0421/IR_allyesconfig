; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_devlink.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devlink_region_ops = type { ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ice_devlink_version = type { i32, ptr, ptr, ptr }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.139 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.139 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.197, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.197 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.138, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.138 = type { ptr }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_vf = type { ptr, %struct.mutex, i16, i16, i16, %struct.ice_vf_fdir, i32, ptr, %struct.virtchnl_version_info, i32, %struct.virtchnl_ether_addr, %struct.virtchnl_ether_addr, %struct.ice_time_mac, [1 x i32], [1 x i32], i16, i8, i16, i32, i32, [1 x i32], i32, i8, i16, i16, %struct.ice_mdd_vf_events, %struct.ice_mdd_vf_events, [2 x i32], ptr, %struct.ice_vc_vf_ops, %struct.devlink_port }
%struct.ice_vf_fdir = type { [28 x [2 x i16]], [28 x [2 x i32]], ptr, %struct.idr, %struct.list_head, %struct.spinlock, %struct.ice_vf_fdir_ctx, %struct.ice_vf_fdir_ctx }
%struct.ice_vf_fdir_ctx = type { %struct.timer_list, i32, i32, %union.ice_32b_rx_flex_desc, i32, ptr }
%union.ice_32b_rx_flex_desc = type { %struct.anon.202 }
%struct.anon.202 = type { i64, i64, i64, i64 }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_ether_addr = type { [6 x i8], i8, i8 }
%struct.ice_time_mac = type { i32, [6 x i8] }
%struct.ice_mdd_vf_events = type { i16, i16 }
%struct.ice_vc_vf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice_info_ctx = type { [128 x i8], %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_hw_dev_caps }

@ice_devlink_ops = internal constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 2, i32 4, i32 0, ptr @ice_devlink_reload_empr_start, ptr @ice_devlink_reload_empr_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ice_eswitch_mode_get, ptr @ice_eswitch_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @ice_devlink_info_get, ptr @ice_devlink_flash_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ice_devlink_params = internal constant { [2 x %struct.devlink_param], [32 x i8] } { [2 x %struct.devlink_param] [%struct.devlink_param { i32 9, ptr @.str.53, i8 1, i32 4, i32 1, ptr @ice_devlink_enable_roce_get, ptr @ice_devlink_enable_roce_set, ptr @ice_devlink_enable_roce_validate }, %struct.devlink_param { i32 14, ptr @.str.54, i8 1, i32 4, i32 1, ptr @ice_devlink_enable_iw_get, ptr @ice_devlink_enable_iw_set, ptr @ice_devlink_enable_iw_validate }], [32 x i8] zeroinitializer }, align 32
@ice_devlink_create_pf_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 713, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to create devlink port for PF %d, error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_devlink_create_pf_port\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ice/ice_devlink.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_devlink_create_pf_port._entry_ptr = internal global ptr @ice_devlink_create_pf_port._entry, section ".printk_index", align 4
@ice_devlink_create_vf_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 769, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to create devlink port for VF %d, error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_devlink_create_vf_port\00", [37 x i8] zeroinitializer }, align 32
@ice_devlink_create_vf_port._entry_ptr = internal global ptr @ice_devlink_create_vf_port._entry, section ".printk_index", align 4
@ice_nvm_region_ops = internal constant { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.55, ptr @vfree, ptr @ice_devlink_nvm_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@ice_devlink_init_regions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 993, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to create NVM devlink region, err %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_devlink_init_regions\00", [39 x i8] zeroinitializer }, align 32
@ice_devlink_init_regions._entry_ptr = internal global ptr @ice_devlink_init_regions._entry, section ".printk_index", align 4
@ice_sram_region_ops = internal constant { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.60, ptr @vfree, ptr @ice_devlink_sram_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@ice_devlink_init_regions._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 1002, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to create shadow-ram devlink region, err %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@ice_devlink_init_regions._entry_ptr.11 = internal global ptr @ice_devlink_init_regions._entry.9, section ".printk_index", align 4
@ice_devcaps_region_ops = internal constant { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.63, ptr @vfree, ptr @ice_devlink_devcaps_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@ice_devlink_init_regions._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 1011, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to create device-caps devlink region, err %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@ice_devlink_init_regions._entry_ptr.14 = internal global ptr @ice_devlink_init_regions._entry.12, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@ice_devlink_reload_empr_start.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ice: No pending firmware update\00", [32 x i8] zeroinitializer }, align 32
@ice_devlink_reload_empr_start.__msg.15 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"ice: EMP reset is not available. To activate firmware, a reboot or power cycle is needed\00", [39 x i8] zeroinitializer }, align 32
@ice_devlink_reload_empr_start.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice_devlink_reload_empr_start\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Issuing device EMP reset to activate firmware\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_devlink_reload_empr_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Failed to trigger EMP device reset to reload firmware, err %d aq_err %s\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_devlink_reload_empr_start._entry_ptr = internal global ptr @ice_devlink_reload_empr_start._entry, section ".printk_index", align 4
@ice_devlink_reload_empr_start.__msg.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ice: Failed to trigger EMP device reset to reload firmware\00", [37 x i8] zeroinitializer }, align 32
@ice_devlink_reload_empr_finish.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ice: Device still resetting after 1 minute\00", [53 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__msg = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice: Device is busy resetting\00", [34 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_devlink_info_get\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to discover device capabilities, status %d aq_err %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__msg.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ice: Unable to discover device capabilities\00", [52 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unable to read inactive Option ROM version data, status %d aq_err %s\0A\00", [58 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Unable to read inactive NVM version data, status %d aq_err %s\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.2, ptr @.str.26, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Unable to read inactive Netlist version data, status %d aq_err %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__msg.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ice: Unable to set driver name\00", [33 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__msg.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ice: Unable to set serial number\00", [63 x i8] zeroinitializer }, align 32
@ice_devlink_versions = internal constant { [17 x %struct.ice_devlink_version], [80 x i8] } { [17 x %struct.ice_devlink_version] [%struct.ice_devlink_version { i32 0, ptr @.str.33, ptr @ice_info_pba, ptr null }, %struct.ice_devlink_version { i32 1, ptr @.str.34, ptr @ice_info_fw_mgmt, ptr null }, %struct.ice_devlink_version { i32 1, ptr @.str.35, ptr @ice_info_fw_api, ptr null }, %struct.ice_devlink_version { i32 1, ptr @.str.36, ptr @ice_info_fw_build, ptr null }, %struct.ice_devlink_version { i32 1, ptr @.str.37, ptr @ice_info_orom_ver, ptr null }, %struct.ice_devlink_version { i32 2, ptr @.str.37, ptr @ice_info_pending_orom_ver, ptr @ice_info_orom_ver }, %struct.ice_devlink_version { i32 1, ptr @.str.38, ptr @ice_info_nvm_ver, ptr null }, %struct.ice_devlink_version { i32 2, ptr @.str.38, ptr @ice_info_pending_nvm_ver, ptr @ice_info_nvm_ver }, %struct.ice_devlink_version { i32 1, ptr @.str.39, ptr @ice_info_eetrack, ptr null }, %struct.ice_devlink_version { i32 2, ptr @.str.39, ptr @ice_info_pending_eetrack, ptr @ice_info_eetrack }, %struct.ice_devlink_version { i32 1, ptr @.str.40, ptr @ice_info_ddp_pkg_name, ptr null }, %struct.ice_devlink_version { i32 1, ptr @.str.41, ptr @ice_info_ddp_pkg_version, ptr null }, %struct.ice_devlink_version { i32 1, ptr @.str.42, ptr @ice_info_ddp_pkg_bundle_id, ptr null }, %struct.ice_devlink_version { i32 1, ptr @.str.43, ptr @ice_info_netlist_ver, ptr null }, %struct.ice_devlink_version { i32 2, ptr @.str.43, ptr @ice_info_pending_netlist_ver, ptr @ice_info_netlist_ver }, %struct.ice_devlink_version { i32 1, ptr @.str.44, ptr @ice_info_netlist_build, ptr null }, %struct.ice_devlink_version { i32 2, ptr @.str.44, ptr @ice_info_pending_netlist_build, ptr @ice_info_netlist_build }], [80 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__msg.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ice: Unable to set fixed version\00", [63 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__msg.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ice: Unable to set running version\00", [61 x i8] zeroinitializer }, align 32
@ice_devlink_info_get.__msg.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ice: Unable to set stored version\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%8phD\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board.id\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.mgmt\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw.mgmt.api\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fw.mgmt.build\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.undi\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw.psid.api\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw.bundle_id\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw.app.name\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw.app\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fw.app.bundle_id\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw.netlist\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fw.netlist.build\00", [47 x i8] zeroinitializer }, align 32
@ice_info_pba.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_info_pba\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to read Product Board Assembly string, status %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%u.%u\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%08x\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%x.%02x\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u.%u.%u\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%x.%x.%x-%x.%x.%x\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_roce\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable_iwarp\00", [19 x i8] zeroinitializer }, align 32
@ice_devlink_enable_roce_validate.__msg = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"ice: iWARP is currently enabled. This device cannot enable iWARP and RoCEv2 simultaneously\00", [37 x i8] zeroinitializer }, align 32
@ice_devlink_enable_iw_validate.__msg = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"ice: RoCEv2 is currently enabled. This device cannot enable iWARP and RoCEv2 simultaneously\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvm-flash\00", [22 x i8] zeroinitializer }, align 32
@ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_devlink_nvm_snapshot\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ice_acquire_nvm failed, err %d aq_err %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ice_devlink_nvm_snapshot.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ice: Failed to acquire NVM semaphore\00", [59 x i8] zeroinitializer }, align 32
@ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.56, ptr @.str.2, ptr @.str.58, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ice_read_flat_nvm failed after reading %u bytes, err %d aq_err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_devlink_nvm_snapshot.__msg.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ice: Failed to read NVM contents\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"shadow-ram\00", [21 x i8] zeroinitializer }, align 32
@ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.61, ptr @.str.2, ptr @.str.57, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_devlink_sram_snapshot\00", [38 x i8] zeroinitializer }, align 32
@ice_devlink_sram_snapshot.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ice: Failed to acquire NVM semaphore\00", [59 x i8] zeroinitializer }, align 32
@ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.61, ptr @.str.2, ptr @.str.58, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ice_devlink_sram_snapshot.__msg.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ice: Failed to read Shadow RAM contents\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device-caps\00", [20 x i8] zeroinitializer }, align 32
@ice_devlink_devcaps_snapshot.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ice_devlink_devcaps_snapshot\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ice_aq_list_caps: failed to read device capabilities, err %d aq_err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_devlink_devcaps_snapshot.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ice: Failed to read device capabilities\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"ice_devlink_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 469, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"ice_devlink_params\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 583, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 712, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 768, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"ice_nvm_region_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 957, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 992, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"ice_sram_region_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 963, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1001, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"ice_devcaps_region_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 969, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 1010, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 414, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 419, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 423, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 427, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 429, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 462, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 261, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 272, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 274, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 281, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 292, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 303, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 313, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 321, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [21 x i8] c"ice_devlink_versions\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 222, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 349, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 356, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 363, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 38, i32 39 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 223, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 224, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 225, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 226, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 227, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 228, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 229, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 230, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 231, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 232, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 233, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 234, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 49, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 57, i32 39 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 73, i32 39 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 99, i32 39 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 133, i32 39 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 141, i32 39 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 156, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 584, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 588, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 525, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 576, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 958, i32 10 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 829, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 831, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 838, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 840, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 964, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 887, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 889, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 899, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 970, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 945, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.310 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ice/ice_devlink.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 947, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @ice_devlink_create_pf_port._entry, ptr @ice_devlink_create_pf_port._entry_ptr, ptr @ice_devlink_create_vf_port._entry, ptr @ice_devlink_create_vf_port._entry_ptr, ptr @ice_devlink_init_regions._entry, ptr @ice_devlink_init_regions._entry.12, ptr @ice_devlink_init_regions._entry.9, ptr @ice_devlink_init_regions._entry_ptr, ptr @ice_devlink_init_regions._entry_ptr.11, ptr @ice_devlink_init_regions._entry_ptr.14, ptr @ice_devlink_reload_empr_start._entry, ptr @ice_devlink_reload_empr_start._entry_ptr, ptr @ice_devlink_ops, ptr @ice_devlink_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ice_nvm_region_ops, ptr @.str.7, ptr @.str.8, ptr @ice_sram_region_ops, ptr @.str.10, ptr @ice_devcaps_region_ops, ptr @.str.13, ptr @ice_devlink_reload_empr_start.__msg, ptr @ice_devlink_reload_empr_start.__msg.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ice_devlink_reload_empr_start.__msg.20, ptr @ice_devlink_reload_empr_finish.__msg, ptr @ice_devlink_info_get.__msg, ptr @.str.21, ptr @.str.22, ptr @ice_devlink_info_get.__msg.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ice_devlink_info_get.__msg.27, ptr @ice_devlink_info_get.__msg.28, ptr @ice_devlink_versions, ptr @ice_devlink_info_get.__msg.29, ptr @ice_devlink_info_get.__msg.30, ptr @ice_devlink_info_get.__msg.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @ice_devlink_enable_roce_validate.__msg, ptr @ice_devlink_enable_iw_validate.__msg, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @ice_devlink_nvm_snapshot.__msg, ptr @.str.58, ptr @ice_devlink_nvm_snapshot.__msg.59, ptr @.str.60, ptr @.str.61, ptr @ice_devlink_sram_snapshot.__msg, ptr @ice_devlink_sram_snapshot.__msg.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @ice_devlink_devcaps_snapshot.__msg], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_params to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_create_pf_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_create_vf_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_nvm_region_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_init_regions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_sram_region_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_init_regions._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devcaps_region_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_init_regions._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_reload_empr_start.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_reload_empr_start.__msg.15 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_reload_empr_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_reload_empr_start.__msg.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_reload_empr_finish.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_info_get.__msg to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_info_get.__msg.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_info_get.__msg.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_info_get.__msg.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_versions to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_info_get.__msg.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_info_get.__msg.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_info_get.__msg.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_enable_roce_validate.__msg to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_enable_iw_validate.__msg to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_nvm_snapshot.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_nvm_snapshot.__msg.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_sram_snapshot.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_sram_snapshot.__msg.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_devlink_devcaps_snapshot.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ice_allocate_pf(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @ice_devlink_ops, i32 noundef 12560, ptr noundef nonnull @init_net, ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i9 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ice_devlink_free, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i, label %if.end4, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devlink_free(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @devlink_priv(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %devm_add_action_or_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %devm_add_action_or_reset.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_devlink_free(ptr noundef %devlink_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @devlink_free(ptr noundef %devlink_ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_devlink_register(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #8
  tail call void @devlink_set_features(ptr noundef %call, i64 noundef 1) #8
  tail call void @devlink_register(ptr noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_set_features(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_devlink_unregister(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #8
  tail call void @devlink_unregister(ptr noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_devlink_register_params(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #8
  %call1 = tail call i32 @devlink_params_register(ptr noundef %call, ptr noundef nonnull @ice_devlink_params, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %call, i32 noundef 14, [8 x i32] [i32 16777215, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]) #8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  %value.sroa.0.sroa.0.0.insert.insert128 = select i1 %tobool4.not, i32 16777215, i32 33554431
  %.fca.0.insert12 = insertvalue [8 x i32] poison, i32 %value.sroa.0.sroa.0.0.insert.insert128, 0
  %.fca.1.insert15 = insertvalue [8 x i32] %.fca.0.insert12, i32 -1, 1
  %.fca.2.insert18 = insertvalue [8 x i32] %.fca.1.insert15, i32 -1, 2
  %.fca.3.insert21 = insertvalue [8 x i32] %.fca.2.insert18, i32 -1, 3
  %.fca.4.insert24 = insertvalue [8 x i32] %.fca.3.insert21, i32 -1, 4
  %.fca.5.insert27 = insertvalue [8 x i32] %.fca.4.insert24, i32 -1, 5
  %.fca.6.insert30 = insertvalue [8 x i32] %.fca.5.insert27, i32 -1, 6
  %.fca.7.insert33 = insertvalue [8 x i32] %.fca.6.insert30, i32 -1, 7
  %call6 = tail call i32 @devlink_param_driverinit_value_set(ptr noundef %call, i32 noundef 9, [8 x i32] %.fca.7.insert33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_driverinit_value_set(ptr noundef, i32 noundef, [8 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_devlink_unregister_params(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #8
  tail call void @devlink_params_unregister(ptr noundef %call, ptr noundef nonnull @ice_devlink_params, i32 noundef 2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_devlink_create_pf_port(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.devlink_port_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs) #8
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 60)
  %1 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %3 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ice_get_main_vsi.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ice_get_main_vsi.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %ice_get_main_vsi.exit.cleanup_crit_edge, label %if.end

ice_get_main_vsi.exit.cleanup_crit_edge:          ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ice_get_main_vsi.exit
  %devlink_port2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 4
  %func = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 25, i32 1
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %func, align 2
  %conv = zext i8 %8 to i32
  %9 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %9, align 4
  call void @devlink_port_attrs_set(ptr noundef %devlink_port2, ptr noundef nonnull %attrs) #8
  %call3 = call ptr @priv_to_devlink(ptr noundef %pf) #8
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %6, i32 0, i32 19
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idx, align 2
  %conv4 = zext i16 %12 to i32
  %call5 = call i32 @devlink_port_register(ptr noundef %call3, ptr noundef %devlink_port2, i32 noundef %conv4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pf_id = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 13
  %13 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pf_id, align 1
  %conv9 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %conv9, i32 noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %ice_get_main_vsi.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ -5, %ice_get_main_vsi.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_devlink_destroy_pf_port(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_port1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 4
  tail call void @devlink_port_type_clear(ptr noundef %devlink_port1) #8
  tail call void @devlink_port_unregister(ptr noundef %devlink_port1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_devlink_create_vf_port(ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.devlink_port_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs) #8
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 60)
  %1 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vf, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %call = tail call ptr @ice_get_vf_vsi(ptr noundef %vf) #8
  %devlink_port3 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 30
  %flavour = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %flavour to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %flavour, align 4
  %func = getelementptr inbounds %struct.ice_pf, ptr %2, i32 0, i32 58, i32 25, i32 1
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %func, align 2
  %conv = zext i8 %7 to i16
  %pf4 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %pf4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %pf4, align 4
  %vf_id = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 2
  %9 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vf_id, align 8
  %vf5 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4, i32 0, i32 2
  %11 = ptrtoint ptr %vf5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %vf5, align 2
  call void @devlink_port_attrs_set(ptr noundef %devlink_port3, ptr noundef nonnull %attrs) #8
  %call6 = call ptr @priv_to_devlink(ptr noundef %2) #8
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %call, i32 0, i32 19
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idx, align 2
  %conv7 = zext i16 %13 to i32
  %call8 = call i32 @devlink_port_register(ptr noundef %call6, ptr noundef %devlink_port3, i32 noundef %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %14 = ptrtoint ptr %vf_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vf_id, align 8
  %conv10 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.5, i32 noundef %conv10, i32 noundef %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs) #8
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_get_vf_vsi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_devlink_destroy_vf_port(ptr noundef %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_port1 = getelementptr inbounds %struct.ice_vf, ptr %vf, i32 0, i32 30
  tail call void @devlink_port_type_clear(ptr noundef %devlink_port1) #8
  tail call void @devlink_port_unregister(ptr noundef %devlink_port1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_devlink_init_regions(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %pf) #8
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %flash_size = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 5
  %2 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_size, align 4
  %conv = zext i32 %3 to i64
  %call2 = tail call ptr @devlink_region_create(ptr noundef %call, ptr noundef nonnull @ice_nvm_region_ops, i32 noundef 1, i64 noundef %conv) #8
  %nvm_region = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 1
  %4 = ptrtoint ptr %nvm_region to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %nvm_region, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %5) #11
  %6 = ptrtoint ptr %nvm_region to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %nvm_region, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sr_words = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 4
  %7 = ptrtoint ptr %sr_words to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sr_words, align 4
  %conv10 = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv10, 1
  %conv11 = zext i32 %mul to i64
  %call12 = tail call ptr @devlink_region_create(ptr noundef %call, ptr noundef nonnull @ice_sram_region_ops, i32 noundef 1, i64 noundef %conv11) #8
  %sram_region = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 2
  %9 = ptrtoint ptr %sram_region to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %sram_region, align 8
  %cmp.i53 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %do.end18, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %10) #11
  %11 = ptrtoint ptr %sram_region to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sram_region, align 8
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %if.end.if.end22_crit_edge
  %call23 = tail call ptr @devlink_region_create(ptr noundef %call, ptr noundef nonnull @ice_devcaps_region_ops, i32 noundef 10, i64 noundef 4096) #8
  %devcaps_region = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 3
  %12 = ptrtoint ptr %devcaps_region to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23, ptr %devcaps_region, align 4
  %cmp.i54 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %do.end29, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %13) #11
  %14 = ptrtoint ptr %devcaps_region to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %devcaps_region, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %if.end22.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_devlink_destroy_regions(ptr nocapture noundef readonly %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_region = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %nvm_region to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm_region, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devlink_region_destroy(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sram_region = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 2
  %2 = ptrtoint ptr %sram_region to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram_region, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devlink_region_destroy(ptr noundef nonnull %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %devcaps_region = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 3
  %4 = ptrtoint ptr %devcaps_region to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devcaps_region, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @devlink_region_destroy(ptr noundef nonnull %5) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_reload_empr_start(ptr noundef %devlink, i1 noundef zeroext %netns_change, i32 noundef %action, i32 noundef %limit, ptr noundef %extack) #0 align 64 {
entry:
  %pending = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pending) #8
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pending, align 1, !annotation !173
  %call3 = call i32 @ice_get_pending_updates(ptr noundef %call, ptr noundef nonnull %pending, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_reload_empr_start.__msg) #8
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fw_emp_reset_disabled = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 38
  %5 = ptrtoint ptr %fw_emp_reset_disabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_emp_reset_disabled, align 8, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %do.body21, label %do.body12

do.body12:                                        ; preds = %if.end9
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_reload_empr_start.__msg.15) #8
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body12.cleanup.sink.split_crit_edge

do.body12.cleanup.sink.split_crit_edge:           ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body21:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_reload_empr_start.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_reload_empr_start, %if.then27)) #8
          to label %do.end30 [label %if.then27], !srcloc !175

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_reload_empr_start.__UNIQUE_ID_ddebug618, ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body21
  %call31 = call i32 @ice_aq_nvm_update_empr(ptr noundef %hw2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end30.cleanup_crit_edge, label %do.end36

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %do.end30
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %7 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sq_last_status, align 4
  %call37 = call ptr @ice_aq_str(i32 noundef %8) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call31, ptr noundef %call37) #11
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_reload_empr_start.__msg.20) #8
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.end36.cleanup_crit_edge, label %do.end36.cleanup.sink.split_crit_edge

do.end36.cleanup.sink.split_crit_edge:            ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end36.cleanup.sink.split_crit_edge, %do.body12.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %ice_devlink_reload_empr_start.__msg.20.sink = phi ptr [ @ice_devlink_reload_empr_start.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @ice_devlink_reload_empr_start.__msg.15, %do.body12.cleanup.sink.split_crit_edge ], [ @ice_devlink_reload_empr_start.__msg.20, %do.end36.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -125, %do.body.cleanup.sink.split_crit_edge ], [ -125, %do.body12.cleanup.sink.split_crit_edge ], [ %call31, %do.end36.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ice_devlink_reload_empr_start.__msg.20.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end36.cleanup_crit_edge, %do.end30.cleanup_crit_edge, %do.body12.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ -125, %do.body.cleanup_crit_edge ], [ -125, %do.body12.cleanup_crit_edge ], [ %call31, %do.end36.cleanup_crit_edge ], [ 0, %do.end30.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pending) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_reload_empr_finish(ptr noundef %devlink, i32 noundef %action, i32 noundef %limit, ptr nocapture noundef writeonly %actions_performed, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %actions_performed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %actions_performed, align 4
  %call1 = tail call i32 @ice_wait_for_reset(ptr noundef %call, i32 noundef 6000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_reload_empr_finish.__msg) #8
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ice_devlink_reload_empr_finish.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_eswitch_mode_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_eswitch_mode_set(ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_info_get(ptr noundef %devlink, ptr noundef %req, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %dsn.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58
  %call3 = tail call i32 @ice_wait_for_reset(ptr noundef %call, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_info_get.__msg) #8
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup217_crit_edge, label %if.then5

do.body.cleanup217_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup217

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ice_devlink_info_get.__msg, ptr %extack, align 4
  br label %cleanup217

if.end6:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 244) #12
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup217_crit_edge, label %if.end10

if.end6.cleanup217_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup217

if.end10:                                         ; preds = %if.end6
  %dev_caps = getelementptr inbounds %struct.ice_info_ctx, ptr %call7.i.i, i32 0, i32 4
  %call11 = tail call i32 @ice_discover_dev_caps(ptr noundef %hw2, ptr noundef %dev_caps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end32, label %do.body14

do.body14:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_info_get, %if.then19)) #8
          to label %do.body24 [label %if.then19], !srcloc !175

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %4 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sq_last_status, align 4
  %call20 = tail call ptr @ice_aq_str(i32 noundef %5) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_info_get.__UNIQUE_ID_ddebug614, ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call11, ptr noundef %call20) #8
  br label %do.body24

do.body24:                                        ; preds = %if.then19, %do.body14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_info_get.__msg.23) #8
  %tobool26.not = icmp eq ptr %extack, null
  br i1 %tobool26.not, label %do.body24.out_free_ctx_crit_edge, label %do.body24.out_free_ctx.sink.split_crit_edge

do.body24.out_free_ctx.sink.split_crit_edge:      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx.sink.split

do.body24.out_free_ctx_crit_edge:                 ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx

if.end32:                                         ; preds = %if.end10
  %nvm_update_pending_orom = getelementptr inbounds %struct.ice_info_ctx, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 17
  %6 = ptrtoint ptr %nvm_update_pending_orom to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nvm_update_pending_orom, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool34.not = icmp eq i8 %7, 0
  br i1 %tobool34.not, label %if.end32.if.end62_crit_edge, label %if.then35

if.end32.if.end62_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then35:                                        ; preds = %if.end32
  %pending_orom = getelementptr inbounds %struct.ice_info_ctx, ptr %call7.i.i, i32 0, i32 1
  %call36 = tail call i32 @ice_get_inactive_orom_ver(ptr noundef %hw2, ptr noundef %pending_orom) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end62_crit_edge, label %do.body39

if.then35.if.end62_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.body39:                                        ; preds = %if.then35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_info_get, %if.then51)) #8
          to label %do.end57 [label %if.then51], !srcloc !175

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %sq_last_status53 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %8 = ptrtoint ptr %sq_last_status53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sq_last_status53, align 4
  %call54 = tail call ptr @ice_aq_str(i32 noundef %9) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_info_get.__UNIQUE_ID_ddebug615, ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call36, ptr noundef %call54) #8
  br label %do.end57

do.end57:                                         ; preds = %if.then51, %do.body39
  %10 = ptrtoint ptr %nvm_update_pending_orom to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %nvm_update_pending_orom, align 1
  br label %if.end62

if.end62:                                         ; preds = %do.end57, %if.then35.if.end62_crit_edge, %if.end32.if.end62_crit_edge
  %nvm_update_pending_nvm = getelementptr inbounds %struct.ice_info_ctx, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 16
  %11 = ptrtoint ptr %nvm_update_pending_nvm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nvm_update_pending_nvm, align 2, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool65.not = icmp eq i8 %12, 0
  br i1 %tobool65.not, label %if.end62.if.end93_crit_edge, label %if.then66

if.end62.if.end93_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then66:                                        ; preds = %if.end62
  %pending_nvm = getelementptr inbounds %struct.ice_info_ctx, ptr %call7.i.i, i32 0, i32 2
  %call67 = tail call i32 @ice_get_inactive_nvm_ver(ptr noundef %hw2, ptr noundef %pending_nvm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then66.if.end93_crit_edge, label %do.body70

if.then66.if.end93_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.body70:                                        ; preds = %if.then66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_info_get, %if.then82)) #8
          to label %do.end88 [label %if.then82], !srcloc !175

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %sq_last_status84 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %13 = ptrtoint ptr %sq_last_status84 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sq_last_status84, align 4
  %call85 = tail call ptr @ice_aq_str(i32 noundef %14) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_info_get.__UNIQUE_ID_ddebug616, ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call67, ptr noundef %call85) #8
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body70
  %15 = ptrtoint ptr %nvm_update_pending_nvm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %nvm_update_pending_nvm, align 2
  br label %if.end93

if.end93:                                         ; preds = %do.end88, %if.then66.if.end93_crit_edge, %if.end62.if.end93_crit_edge
  %nvm_update_pending_netlist = getelementptr inbounds %struct.ice_info_ctx, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 18
  %16 = ptrtoint ptr %nvm_update_pending_netlist to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nvm_update_pending_netlist, align 8, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool96.not = icmp eq i8 %17, 0
  br i1 %tobool96.not, label %if.end93.if.end124_crit_edge, label %if.then97

if.end93.if.end124_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then97:                                        ; preds = %if.end93
  %pending_netlist = getelementptr inbounds %struct.ice_info_ctx, ptr %call7.i.i, i32 0, i32 3
  %call98 = tail call i32 @ice_get_inactive_netlist_ver(ptr noundef %hw2, ptr noundef %pending_netlist) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then97.if.end124_crit_edge, label %do.body101

if.then97.if.end124_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

do.body101:                                       ; preds = %if.then97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_info_get, %if.then113)) #8
          to label %do.end119 [label %if.then113], !srcloc !175

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %sq_last_status115 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %18 = ptrtoint ptr %sq_last_status115 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sq_last_status115, align 4
  %call116 = tail call ptr @ice_aq_str(i32 noundef %19) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_info_get.__UNIQUE_ID_ddebug617, ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call98, ptr noundef %call116) #8
  br label %do.end119

do.end119:                                        ; preds = %if.then113, %do.body101
  %20 = ptrtoint ptr %nvm_update_pending_netlist to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %nvm_update_pending_netlist, align 8
  br label %if.end124

if.end124:                                        ; preds = %do.end119, %if.then97.if.end124_crit_edge, %if.end93.if.end124_crit_edge
  %call125 = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str.16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end136, label %do.body128

do.body128:                                       ; preds = %if.end124
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_info_get.__msg.27) #8
  %tobool130.not = icmp eq ptr %extack, null
  br i1 %tobool130.not, label %do.body128.out_free_ctx_crit_edge, label %do.body128.out_free_ctx.sink.split_crit_edge

do.body128.out_free_ctx.sink.split_crit_edge:     ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx.sink.split

do.body128.out_free_ctx_crit_edge:                ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx

if.end136:                                        ; preds = %if.end124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dsn.i) #8
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 8
  %call.i = tail call i64 @pci_get_dsn(ptr noundef %22) #8
  %23 = ptrtoint ptr %dsn.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call.i, ptr %dsn.i, align 8
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str.32, ptr noundef nonnull %dsn.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dsn.i) #8
  %call137 = call i32 @devlink_info_serial_number_put(ptr noundef %req, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end136.for.body_crit_edge, label %do.body140

if.end136.for.body_crit_edge:                     ; preds = %if.end136
  br label %for.body

do.body140:                                       ; preds = %if.end136
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_info_get.__msg.28) #8
  %tobool142.not = icmp eq ptr %extack, null
  br i1 %tobool142.not, label %do.body140.out_free_ctx_crit_edge, label %do.body140.out_free_ctx.sink.split_crit_edge

do.body140.out_free_ctx.sink.split_crit_edge:     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx.sink.split

do.body140.out_free_ctx_crit_edge:                ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end136.for.body_crit_edge
  %i.0315 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end136.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.ice_devlink_version], ptr @ice_devlink_versions, i32 0, i32 %i.0315
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %key151 = getelementptr [17 x %struct.ice_devlink_version], ptr @ice_devlink_versions, i32 0, i32 %i.0315, i32 1
  %26 = ptrtoint ptr %key151 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %key151, align 4
  %28 = call ptr @memset(ptr %call7.i.i, i32 0, i32 128)
  %getter = getelementptr [17 x %struct.ice_devlink_version], ptr @ice_devlink_versions, i32 0, i32 %i.0315, i32 2
  %29 = ptrtoint ptr %getter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %getter, align 4
  call void %30(ptr noundef %call, ptr noundef nonnull %call7.i.i) #8
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp157 = icmp eq i8 %32, 0
  br i1 %cmp157, label %land.lhs.true, label %for.body.if.end171_crit_edge

for.body.if.end171_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

land.lhs.true:                                    ; preds = %for.body
  %33 = lshr i32 48479, %i.0315
  %34 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool160.not.not = icmp eq i32 %34, 0
  br i1 %tobool160.not.not, label %if.then161, label %land.lhs.true.if.end164_crit_edge

land.lhs.true.if.end164_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then161:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fallback = getelementptr [17 x %struct.ice_devlink_version], ptr @ice_devlink_versions, i32 0, i32 %i.0315, i32 3
  %35 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fallback, align 4
  call void %36(ptr noundef %call, ptr noundef nonnull %call7.i.i) #8
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %land.lhs.true.if.end164_crit_edge
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp168 = icmp eq i8 %.pr, 0
  br i1 %cmp168, label %if.end164.for.inc_crit_edge, label %if.end164.if.end171_crit_edge

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.end164.for.inc_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end171:                                        ; preds = %if.end164.if.end171_crit_edge, %for.body.if.end171_crit_edge
  %38 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end171.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb186
    i32 2, label %sw.bb201
  ]

if.end171.for.inc_crit_edge:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %if.end171
  %call174 = call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef %27, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %sw.bb.for.inc_crit_edge, label %do.body177

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body177:                                       ; preds = %sw.bb
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_info_get.__msg.29) #8
  %tobool179.not = icmp eq ptr %extack, null
  br i1 %tobool179.not, label %do.body177.out_free_ctx_crit_edge, label %do.body177.out_free_ctx.sink.split_crit_edge

do.body177.out_free_ctx.sink.split_crit_edge:     ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx.sink.split

do.body177.out_free_ctx_crit_edge:                ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx

sw.bb186:                                         ; preds = %if.end171
  %call189 = call i32 @devlink_info_version_running_put(ptr noundef %req, ptr noundef %27, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %sw.bb186.for.inc_crit_edge, label %do.body192

sw.bb186.for.inc_crit_edge:                       ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body192:                                       ; preds = %sw.bb186
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_info_get.__msg.30) #8
  %tobool194.not = icmp eq ptr %extack, null
  br i1 %tobool194.not, label %do.body192.out_free_ctx_crit_edge, label %do.body192.out_free_ctx.sink.split_crit_edge

do.body192.out_free_ctx.sink.split_crit_edge:     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx.sink.split

do.body192.out_free_ctx_crit_edge:                ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx

sw.bb201:                                         ; preds = %if.end171
  %call204 = call i32 @devlink_info_version_stored_put(ptr noundef %req, ptr noundef %27, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %sw.bb201.for.inc_crit_edge, label %do.body207

sw.bb201.for.inc_crit_edge:                       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body207:                                       ; preds = %sw.bb201
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_info_get.__msg.31) #8
  %tobool209.not = icmp eq ptr %extack, null
  br i1 %tobool209.not, label %do.body207.out_free_ctx_crit_edge, label %do.body207.out_free_ctx.sink.split_crit_edge

do.body207.out_free_ctx.sink.split_crit_edge:     ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx.sink.split

do.body207.out_free_ctx_crit_edge:                ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx

for.inc:                                          ; preds = %sw.bb201.for.inc_crit_edge, %sw.bb186.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %if.end171.for.inc_crit_edge, %if.end164.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0315, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc.out_free_ctx_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_free_ctx_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_ctx

out_free_ctx.sink.split:                          ; preds = %do.body207.out_free_ctx.sink.split_crit_edge, %do.body192.out_free_ctx.sink.split_crit_edge, %do.body177.out_free_ctx.sink.split_crit_edge, %do.body140.out_free_ctx.sink.split_crit_edge, %do.body128.out_free_ctx.sink.split_crit_edge, %do.body24.out_free_ctx.sink.split_crit_edge
  %ice_devlink_info_get.__msg.31.sink = phi ptr [ @ice_devlink_info_get.__msg.23, %do.body24.out_free_ctx.sink.split_crit_edge ], [ @ice_devlink_info_get.__msg.27, %do.body128.out_free_ctx.sink.split_crit_edge ], [ @ice_devlink_info_get.__msg.28, %do.body140.out_free_ctx.sink.split_crit_edge ], [ @ice_devlink_info_get.__msg.29, %do.body177.out_free_ctx.sink.split_crit_edge ], [ @ice_devlink_info_get.__msg.30, %do.body192.out_free_ctx.sink.split_crit_edge ], [ @ice_devlink_info_get.__msg.31, %do.body207.out_free_ctx.sink.split_crit_edge ]
  %err.3.ph = phi i32 [ %call11, %do.body24.out_free_ctx.sink.split_crit_edge ], [ %call125, %do.body128.out_free_ctx.sink.split_crit_edge ], [ %call137, %do.body140.out_free_ctx.sink.split_crit_edge ], [ %call174, %do.body177.out_free_ctx.sink.split_crit_edge ], [ %call189, %do.body192.out_free_ctx.sink.split_crit_edge ], [ %call204, %do.body207.out_free_ctx.sink.split_crit_edge ]
  %39 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ice_devlink_info_get.__msg.31.sink, ptr %extack, align 4
  br label %out_free_ctx

out_free_ctx:                                     ; preds = %out_free_ctx.sink.split, %for.inc.out_free_ctx_crit_edge, %do.body207.out_free_ctx_crit_edge, %do.body192.out_free_ctx_crit_edge, %do.body177.out_free_ctx_crit_edge, %do.body140.out_free_ctx_crit_edge, %do.body128.out_free_ctx_crit_edge, %do.body24.out_free_ctx_crit_edge
  %err.3 = phi i32 [ %call11, %do.body24.out_free_ctx_crit_edge ], [ %call125, %do.body128.out_free_ctx_crit_edge ], [ %call137, %do.body140.out_free_ctx_crit_edge ], [ %call204, %do.body207.out_free_ctx_crit_edge ], [ %call189, %do.body192.out_free_ctx_crit_edge ], [ %call174, %do.body177.out_free_ctx_crit_edge ], [ %err.3.ph, %out_free_ctx.sink.split ], [ 0, %for.inc.out_free_ctx_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup217

cleanup217:                                       ; preds = %out_free_ctx, %if.end6.cleanup217_crit_edge, %if.then5, %do.body.cleanup217_crit_edge
  %retval.0 = phi i32 [ %err.3, %out_free_ctx ], [ %call3, %if.then5 ], [ %call3, %do.body.cleanup217_crit_edge ], [ -12, %if.end6.cleanup217_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_devlink_flash_update(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_pending_updates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_nvm_update_empr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_aq_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_wait_for_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_discover_dev_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_inactive_orom_ver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_inactive_nvm_ver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_get_inactive_netlist_ver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_serial_number_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_fixed_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_running_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_stored_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pci_get_dsn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_pba(ptr noundef %pf, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58
  %call = tail call i32 @ice_read_pba_string(ptr noundef %hw1, ptr noundef %ctx, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_info_pba.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_info_pba, %if.then6)) #8
          to label %if.end7 [label %if.then6], !srcloc !175

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_info_pba.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_fw_mgmt(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_maj_ver = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 38
  %0 = ptrtoint ptr %fw_maj_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_maj_ver, align 1
  %conv = zext i8 %1 to i32
  %fw_min_ver = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 39
  %2 = ptrtoint ptr %fw_min_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_min_ver, align 2
  %conv2 = zext i8 %3 to i32
  %fw_patch = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 40
  %4 = ptrtoint ptr %fw_patch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_patch, align 1
  %conv3 = zext i8 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_fw_api(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %api_maj_ver = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 34
  %0 = ptrtoint ptr %api_maj_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %api_maj_ver, align 1
  %conv = zext i8 %1 to i32
  %api_min_ver = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 35
  %2 = ptrtoint ptr %api_min_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %api_min_ver, align 2
  %conv2 = zext i8 %3 to i32
  %api_patch = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 36
  %4 = ptrtoint ptr %api_patch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %api_patch, align 1
  %conv3 = zext i8 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_fw_build(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_build = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 41
  %0 = ptrtoint ptr %fw_build to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_build, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.48, i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_orom_ver(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flash = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flash, align 2
  %conv = zext i8 %1 to i32
  %build = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 0, i32 2
  %2 = ptrtoint ptr %build to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %build, align 2
  %conv2 = zext i16 %3 to i32
  %patch = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 0, i32 1
  %4 = ptrtoint ptr %patch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %patch, align 1
  %conv3 = zext i8 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_pending_orom_ver(ptr nocapture noundef readnone %pf, ptr nocapture noundef %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_update_pending_orom = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 4, i32 0, i32 17
  %0 = ptrtoint ptr %nvm_update_pending_orom to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvm_update_pending_orom, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pending_orom = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %pending_orom to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pending_orom, align 2
  %conv = zext i8 %3 to i32
  %build = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %build to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %build, align 2
  %conv1 = zext i16 %5 to i32
  %patch = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %patch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %patch, align 1
  %conv2 = zext i8 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_nvm_ver(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %major = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 1, i32 1
  %0 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %major, align 4
  %conv = zext i8 %1 to i32
  %minor = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 1, i32 2
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor, align 1
  %conv2 = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %conv2)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_pending_nvm_ver(ptr nocapture noundef readnone %pf, ptr nocapture noundef %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_update_pending_nvm = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 4, i32 0, i32 16
  %0 = ptrtoint ptr %nvm_update_pending_nvm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvm_update_pending_nvm, align 2, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %major = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %major, align 4
  %conv = zext i8 %3 to i32
  %minor = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minor, align 1
  %conv1 = zext i8 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_eetrack(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 1
  %0 = ptrtoint ptr %nvm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvm1, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.48, i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_pending_eetrack(ptr nocapture noundef readnone %pf, ptr nocapture noundef %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_update_pending_nvm = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 4, i32 0, i32 16
  %0 = ptrtoint ptr %nvm_update_pending_nvm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvm_update_pending_nvm, align 2, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pending_nvm = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %pending_nvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_nvm, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.48, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_ddp_pkg_name(ptr noundef %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_pkg_name = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 48
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.50, ptr noundef %active_pkg_name)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_ddp_pkg_version(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_pkg_ver = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 46
  %0 = ptrtoint ptr %active_pkg_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_pkg_ver, align 1
  %conv = zext i8 %1 to i32
  %minor = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 46, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor, align 1
  %conv1 = zext i8 %3 to i32
  %update = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 46, i32 2
  %4 = ptrtoint ptr %update to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %update, align 1
  %conv2 = zext i8 %5 to i32
  %draft = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 46, i32 3
  %6 = ptrtoint ptr %draft to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %draft, align 1
  %conv3 = zext i8 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_ddp_pkg_bundle_id(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_track_id = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 47
  %0 = ptrtoint ptr %active_track_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_track_id, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.48, i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_netlist_ver(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netlist1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 2
  %0 = ptrtoint ptr %netlist1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %netlist1, align 4
  %minor = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 2, i32 1
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %type = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 2, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %shr = lshr i32 %5, 16
  %and = and i32 %5, 65535
  %rev = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 2, i32 3
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev, align 4
  %cust_ver = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 2, i32 5
  %8 = ptrtoint ptr %cust_ver to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cust_ver, align 4
  %conv = zext i16 %9 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.52, i32 noundef %1, i32 noundef %3, i32 noundef %shr, i32 noundef %and, i32 noundef %7, i32 noundef %conv)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_pending_netlist_ver(ptr nocapture noundef readnone %pf, ptr nocapture noundef %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_update_pending_netlist = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 4, i32 0, i32 18
  %0 = ptrtoint ptr %nvm_update_pending_netlist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvm_update_pending_netlist, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pending_netlist = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %pending_netlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_netlist, align 4
  %minor = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 4
  %type = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %shr = lshr i32 %7, 16
  %and = and i32 %7, 65535
  %rev = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rev, align 4
  %cust_ver = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %cust_ver to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cust_ver, align 4
  %conv = zext i16 %11 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.52, i32 noundef %3, i32 noundef %5, i32 noundef %shr, i32 noundef %and, i32 noundef %9, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_netlist_build(ptr nocapture noundef readonly %pf, ptr nocapture noundef writeonly %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 58, i32 26, i32 2, i32 4
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.48, i32 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ice_info_pending_netlist_build(ptr nocapture noundef readnone %pf, ptr nocapture noundef %ctx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_update_pending_netlist = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 4, i32 0, i32 18
  %0 = ptrtoint ptr %nvm_update_pending_netlist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvm_update_pending_netlist, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hash = getelementptr inbounds %struct.ice_info_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ctx, i32 noundef 128, ptr noundef nonnull @.str.48, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_pba_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_enable_roce_get(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  %0 = ptrtoint ptr %rdma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rdma_mode, align 1
  %2 = lshr i8 %1, 1
  %.lobit = and i8 %2, 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.lobit, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_enable_roce_set(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctx, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ice_unplug_aux_dev(ptr noundef %call) #8
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %rdma_mode3 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  %2 = ptrtoint ptr %rdma_mode3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rdma_mode3, align 1
  %4 = or i8 %3, 2
  store i8 %4, ptr %rdma_mode3, align 1
  %call6 = tail call i32 @ice_plug_aux_dev(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.then
  %rdma_mode3.sink22 = phi ptr [ %rdma_mode, %if.then ], [ %rdma_mode3, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then ], [ %call6, %if.end.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %rdma_mode3.sink22 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rdma_mode3.sink22, align 1
  %7 = and i8 %6, -3
  store i8 %7, ptr %rdma_mode3.sink22, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_enable_roce_validate(ptr noundef %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  %3 = ptrtoint ptr %rdma_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rdma_mode, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_enable_roce_validate.__msg) #8
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ice_devlink_enable_roce_validate.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then5 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_enable_iw_get(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  %0 = ptrtoint ptr %rdma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rdma_mode, align 1
  %2 = and i8 %1, 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %ctx, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_enable_iw_set(ptr noundef %devlink, i32 noundef %id, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctx, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ice_unplug_aux_dev(ptr noundef %call) #8
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %rdma_mode3 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  %2 = ptrtoint ptr %rdma_mode3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rdma_mode3, align 1
  %4 = or i8 %3, 1
  store i8 %4, ptr %rdma_mode3, align 1
  %call6 = tail call i32 @ice_plug_aux_dev(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.then
  %rdma_mode3.sink22 = phi ptr [ %rdma_mode, %if.then ], [ %rdma_mode3, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then ], [ %call6, %if.end.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %rdma_mode3.sink22 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rdma_mode3.sink22, align 1
  %7 = and i8 %6, -2
  store i8 %7, ptr %rdma_mode3.sink22, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_enable_iw_validate(ptr noundef %devlink, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %flags = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdma_mode = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 60
  %3 = ptrtoint ptr %rdma_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rdma_mode, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_enable_iw_validate.__msg) #8
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ice_devlink_enable_iw_validate.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then5 ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_unplug_aux_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_plug_aux_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_nvm_snapshot(ptr noundef %devlink, ptr nocapture noundef readnone %ops, ptr noundef writeonly %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %nvm_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvm_size) #8
  %flash_size = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 26, i32 5
  %2 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_size, align 4
  %4 = ptrtoint ptr %nvm_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nvm_size, align 4
  %call3 = tail call noalias ptr @vzalloc(i32 noundef %3) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @ice_acquire_nvm(ptr noundef %hw2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_nvm_snapshot, %if.then11)) #8
          to label %do.body13 [label %if.then11], !srcloc !175

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %5 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sq_last_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug619, ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %call4, i32 noundef %6) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %do.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_nvm_snapshot.__msg) #8
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body13.if.end16_crit_edge, label %if.then15

do.body13.if.end16_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ice_devlink_nvm_snapshot.__msg, ptr %extack, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body13.if.end16_crit_edge
  tail call void @vfree(ptr noundef nonnull %call3) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = call i32 @ice_read_flat_nvm(ptr noundef %hw2, i32 noundef 0, ptr noundef nonnull %nvm_size, ptr noundef nonnull %call3, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end49, label %do.body23

do.body23:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_nvm_snapshot, %if.then35)) #8
          to label %do.body41 [label %if.then35], !srcloc !175

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %nvm_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nvm_size, align 4
  %sq_last_status37 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %10 = ptrtoint ptr %sq_last_status37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sq_last_status37, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug620, ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %9, i32 noundef %call20, i32 noundef %11) #8
  br label %do.body41

do.body41:                                        ; preds = %if.then35, %do.body23
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_nvm_snapshot.__msg.59) #8
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.if.end46_crit_edge, label %if.then44

do.body41.if.end46_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ice_devlink_nvm_snapshot.__msg.59, ptr %extack, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body41.if.end46_crit_edge
  call void @ice_release_nvm(ptr noundef %hw2) #8
  call void @vfree(ptr noundef nonnull %call3) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @ice_release_nvm(ptr noundef %hw2) #8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end46, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end16 ], [ %call20, %if.end46 ], [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvm_size) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_acquire_nvm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_read_flat_nvm(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_nvm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_sram_snapshot(ptr noundef %devlink, ptr nocapture noundef readnone %ops, ptr noundef writeonly %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %sram_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sram_size) #8
  %sr_words = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 26, i32 4
  %2 = ptrtoint ptr %sr_words to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sr_words, align 4
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %4 = ptrtoint ptr %sram_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %sram_size, align 4
  %call3 = tail call noalias ptr @vzalloc(i32 noundef %mul) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @ice_acquire_nvm(ptr noundef %hw2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_sram_snapshot, %if.then11)) #8
          to label %do.body13 [label %if.then11], !srcloc !175

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %5 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sq_last_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug621, ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %call4, i32 noundef %6) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %do.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_sram_snapshot.__msg) #8
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body13.if.end16_crit_edge, label %if.then15

do.body13.if.end16_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ice_devlink_sram_snapshot.__msg, ptr %extack, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body13.if.end16_crit_edge
  tail call void @vfree(ptr noundef nonnull %call3) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = call i32 @ice_read_flat_nvm(ptr noundef %hw2, i32 noundef 0, ptr noundef nonnull %sram_size, ptr noundef nonnull %call3, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end49, label %do.body23

do.body23:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_sram_snapshot, %if.then35)) #8
          to label %do.body41 [label %if.then35], !srcloc !175

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sram_size, align 4
  %sq_last_status37 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %10 = ptrtoint ptr %sq_last_status37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sq_last_status37, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug622, ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %9, i32 noundef %call20, i32 noundef %11) #8
  br label %do.body41

do.body41:                                        ; preds = %if.then35, %do.body23
  call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_sram_snapshot.__msg.62) #8
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.if.end46_crit_edge, label %if.then44

do.body41.if.end46_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ice_devlink_sram_snapshot.__msg.62, ptr %extack, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body41.if.end46_crit_edge
  call void @ice_release_nvm(ptr noundef %hw2) #8
  call void @vfree(ptr noundef nonnull %call3) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @ice_release_nvm(ptr noundef %hw2) #8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end46, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end16 ], [ %call20, %if.end46 ], [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sram_size) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_devlink_devcaps_snapshot(ptr noundef %devlink, ptr nocapture noundef readnone %ops, ptr noundef writeonly %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call3 = tail call noalias ptr @vzalloc(i32 noundef 4096) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw2 = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58
  %call4 = tail call i32 @ice_aq_list_caps(ptr noundef %hw2, ptr noundef nonnull %call3, i16 noundef zeroext 4096, ptr noundef null, i32 noundef 11, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_devlink_devcaps_snapshot.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_devlink_devcaps_snapshot, %if.then11)) #8
          to label %do.body13 [label %if.then11], !srcloc !175

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sq_last_status = getelementptr inbounds %struct.ice_pf, ptr %call, i32 0, i32 58, i32 30, i32 8
  %2 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sq_last_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_devlink_devcaps_snapshot.__UNIQUE_ID_ddebug623, ptr noundef %dev1, ptr noundef nonnull @.str.65, i32 noundef %call4, i32 noundef %3) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %do.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ice_devlink_devcaps_snapshot.__msg) #8
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body13.if.end16_crit_edge, label %if.then15

do.body13.if.end16_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ice_devlink_devcaps_snapshot.__msg, ptr %extack, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body13.if.end16_crit_edge
  tail call void @vfree(ptr noundef nonnull %call3) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end16 ], [ 0, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_list_caps(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !51, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !136, !138, !139, !141, !143, !145, !147, !148, !150, !152, !154, !156, !158, !160, !161, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 712, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ice_devlink_create_pf_port._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ice_devlink_create_pf_port._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 768, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ice_devlink_create_vf_port._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ice_devlink_create_vf_port._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 992, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ice_devlink_init_regions._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ice_devlink_init_regions._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 1001, i32 3}
!20 = !{ptr @ice_devlink_init_regions._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ice_devlink_init_regions._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 1010, i32 3}
!24 = !{ptr @ice_devlink_init_regions._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ice_devlink_init_regions._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ice_devlink_ops, !27, !"ice_devlink_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 469, i32 33}
!28 = !{ptr @ice_devlink_reload_empr_start.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 414, i32 3}
!30 = !{ptr @ice_devlink_reload_empr_start.__msg.15, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 419, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 423, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ice_devlink_reload_empr_start.__UNIQUE_ID_ddebug618, !33, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 427, i32 3}
!39 = !{ptr @ice_devlink_reload_empr_start._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ice_devlink_reload_empr_start._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ice_devlink_reload_empr_start.__msg.20, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 429, i32 3}
!43 = !{ptr @ice_devlink_reload_empr_finish.__msg, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 462, i32 3}
!45 = !{ptr @ice_devlink_info_get.__msg, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 261, i32 3}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 272, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug614, !48, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!51 = !{ptr @ice_devlink_info_get.__msg.23, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 274, i32 3}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 281, i32 4}
!55 = !{ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug615, !54, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 292, i32 4}
!58 = !{ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug616, !57, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 303, i32 4}
!61 = !{ptr @ice_devlink_info_get.__UNIQUE_ID_ddebug617, !60, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!62 = !{ptr @ice_devlink_info_get.__msg.27, !63, !"__msg", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 313, i32 3}
!64 = !{ptr @ice_devlink_info_get.__msg.28, !65, !"__msg", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 321, i32 3}
!66 = !{ptr @ice_devlink_info_get.__msg.29, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 349, i32 5}
!68 = !{ptr @ice_devlink_info_get.__msg.30, !69, !"__msg", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 356, i32 5}
!70 = !{ptr @ice_devlink_info_get.__msg.31, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 363, i32 5}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 38, i32 39}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 223, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 224, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 225, i32 2}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 226, i32 2}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 227, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 228, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 229, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 230, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 231, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 232, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 233, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 234, i32 2}
!98 = !{ptr @ice_devlink_versions, !99, !"ice_devlink_versions", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 222, i32 3}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 49, i32 3}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ice_info_pba.__UNIQUE_ID_ddebug613, !101, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 57, i32 39}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 73, i32 39}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 99, i32 39}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 133, i32 39}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 141, i32 39}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 156, i32 39}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 584, i32 2}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 588, i32 2}
!120 = !{ptr @ice_devlink_params, !121, !"ice_devlink_params", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 583, i32 35}
!122 = !{ptr @ice_devlink_enable_roce_validate.__msg, !123, !"__msg", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 525, i32 3}
!124 = !{ptr @ice_devlink_enable_iw_validate.__msg, !125, !"__msg", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 576, i32 3}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 958, i32 10}
!128 = !{ptr @ice_nvm_region_ops, !129, !"ice_nvm_region_ops", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 957, i32 40}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 829, i32 3}
!132 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug619, !131, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!134 = !{ptr @ice_devlink_nvm_snapshot.__msg, !135, !"__msg", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 831, i32 3}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 838, i32 3}
!138 = !{ptr @ice_devlink_nvm_snapshot.__UNIQUE_ID_ddebug620, !137, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!139 = !{ptr @ice_devlink_nvm_snapshot.__msg.59, !140, !"__msg", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 840, i32 3}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 964, i32 10}
!143 = !{ptr @ice_sram_region_ops, !144, !"ice_sram_region_ops", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 963, i32 40}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 887, i32 3}
!147 = !{ptr @ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug621, !146, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!148 = !{ptr @ice_devlink_sram_snapshot.__msg, !149, !"__msg", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 889, i32 3}
!150 = !{ptr @ice_devlink_sram_snapshot.__UNIQUE_ID_ddebug622, !151, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 897, i32 3}
!152 = !{ptr @ice_devlink_sram_snapshot.__msg.62, !153, !"__msg", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 899, i32 3}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 970, i32 10}
!156 = !{ptr @ice_devcaps_region_ops, !157, !"ice_devcaps_region_ops", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 969, i32 40}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 945, i32 3}
!160 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ice_devlink_devcaps_snapshot.__UNIQUE_ID_ddebug623, !159, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!162 = !{ptr @ice_devlink_devcaps_snapshot.__msg, !163, !"__msg", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/ice/ice_devlink.c", i32 947, i32 3}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"auto-init"}
!174 = !{i8 0, i8 2}
!175 = !{i64 2148339221, i64 2148339226, i64 2148339239, i64 2148339283, i64 2148339317, i64 2148339338}
