; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_lag.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_lag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.200, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.200 = type { ptr }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.162 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.162 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.201, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.201 = type { ptr }
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
%struct.ice_lag = type { ptr, ptr, ptr, ptr, %struct.notifier_block, i8, i16, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.178, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.178 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_bonding_info = type { %struct.netdev_notifier_info, %struct.netdev_bonding_info }
%struct.netdev_bonding_info = type { %struct.ifslave, %struct.ifbond }
%struct.ifslave = type { i32, [16 x i8], i8, i8, i32 }
%struct.ifbond = type { i32, i32, i32 }

@ice_init_lag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"couldn't get main vsi, link aggregation init fail\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_init_lag\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/ice/ice_lag.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_init_lag._entry_ptr = internal global ptr @ice_init_lag._entry, section ".printk_index", align 4
@ice_init_lag._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 416, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"INIT LAG: Failed to register event handler\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ice_init_lag._entry_ptr.8 = internal global ptr @ice_init_lag._entry.5, section ".printk_index", align 4
@ice_init_lag.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INIT LAG complete\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_register_lag_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FAIL register LAG event handler!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ice_register_lag_handler\00", [39 x i8] zeroinitializer }, align 32
@ice_register_lag_handler._entry_ptr = internal global ptr @ice_register_lag_handler._entry, section ".printk_index", align 4
@ice_register_lag_handler.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LAG event handler registered\0A\00", [34 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@ice_lag_changeupper_event.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_lag_changeupper_event\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"changeupper rcvd, but no upper defined\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_lag_changeupper_event.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bonding %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINK\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNLINK\00", [25 x i8] zeroinitializer }, align 32
@ice_lag_changeupper_event.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"changeupper rcvd, but not master. bail\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_lag_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 149, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s Already part of a bond\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_lag_link\00", [19 x i8] zeroinitializer }, align 32
@ice_lag_link._entry_ptr = internal global ptr @ice_lag_link._entry, section ".printk_index", align 4
@ice_lag_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ice_lag_unlink.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ice_lag_unlink\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bonding unlink event on non-LAG netdev\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_lag_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ice_lag_changelower_event.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_lag_changelower_event\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bonding info\0A\00", [18 x i8] zeroinitializer }, align 32
@ice_lag_changelower_event.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CHANGELOWER rcvd, but netdev not in LAG. Bail\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_lag_info_event.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_lag_info_event\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Bonding event recv, but mode not active/backup\0A\00", [48 x i8] zeroinitializer }, align 32
@ice_lag_info_event.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Bonding event recv, but slave info not for us\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_lag_set_backup.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_lag_set_backup\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Attempt to be Backup, but incompatible state\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_lag_set_primary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 31, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Attempt to be Primary, but incompatible state.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_lag_set_primary\00", [44 x i8] zeroinitializer }, align 32
@ice_lag_set_primary._entry_ptr = internal global ptr @ice_lag_set_primary._entry, section ".printk_index", align 4
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"unset\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRUE\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FALSE\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BONDED\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UNBONDED\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PRIMARY\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BACKUP\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UNSET\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@ice_display_lag_info.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_display_lag_info\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s, peer:%s, upper:%s, role:%s, master:%s\0A\00", [50 x i8] zeroinitializer }, align 32
@ice_unregister_lag_handler.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ice_unregister_lag_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LAG event handler unregistered\0A\00", [32 x i8] zeroinitializer }, align 32
@switch.table.ice_display_lag_info = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 21, i64 25, i64 27]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 401, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 416, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 422, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 356, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 359, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 260, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 264, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 267, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 148, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 152, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 4963, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 695, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 723, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 185, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 293, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 296, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 117, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 122, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 50, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 30, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 67, i32 50 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 70, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 70, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 71, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 71, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 75, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 78, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 81, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 84, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 87, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 90, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [44 x i8] c"../drivers/net/ethernet/intel/ice/ice_lag.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 376, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [34 x i8] c"switch.table.ice_display_lag_info\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @ice_init_lag._entry, ptr @ice_init_lag._entry.5, ptr @ice_init_lag._entry_ptr, ptr @ice_init_lag._entry_ptr.8, ptr @ice_lag_link._entry, ptr @ice_lag_link._entry_ptr, ptr @ice_lag_set_primary._entry, ptr @ice_lag_set_primary._entry_ptr, ptr @ice_register_lag_handler._entry, ptr @ice_register_lag_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @switch.table.ice_display_lag_info], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_lag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_lag._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_register_lag_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_lag_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_lag_set_primary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ice_display_lag_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_lag_nop_handler(ptr nocapture noundef readnone %pskb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_lag(ptr noundef %pf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #11
  %lag2 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 74
  %3 = ptrtoint ptr %lag2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %lag2, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsi.i = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 9
  %4 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %ice_get_main_vsi.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

ice_get_main_vsi.exit:                            ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %ice_get_main_vsi.exit.do.end_crit_edge, label %if.then.i52

ice_get_main_vsi.exit.do.end_crit_edge:           ; preds = %ice_get_main_vsi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %ice_get_main_vsi.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #12
  br label %lag_error

if.then.i52:                                      ; preds = %ice_get_main_vsi.exit
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pf, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 128
  %netdev10 = getelementptr inbounds %struct.ice_lag, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %netdev10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %netdev10, align 4
  %role = getelementptr inbounds %struct.ice_lag, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %role, align 8
  %bonded = getelementptr inbounds %struct.ice_lag, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %bonded to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %bonded, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %bonded, align 4
  %peer_netdev = getelementptr inbounds %struct.ice_lag, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %peer_netdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %peer_netdev, align 8
  %upper_netdev = getelementptr inbounds %struct.ice_lag, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %upper_netdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %upper_netdev, align 4
  %notif_block = getelementptr inbounds %struct.ice_lag, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %notif_block to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ice_lag_event_handler, ptr %notif_block, align 8
  %call.i = tail call i32 @register_netdevice_notifier(ptr noundef %notif_block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %do.body6.i, label %do.end16

do.body6.i:                                       ; preds = %if.then.i52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_register_lag_handler.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_lag, %ice_register_lag_handler.exit.thread)) #8
          to label %if.end17 [label %ice_register_lag_handler.exit.thread], !srcloc !121

ice_register_lag_handler.exit.thread:             ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_register_lag_handler.__UNIQUE_ID_ddebug627, ptr noundef %dev1.i, ptr noundef nonnull @.str.13) #8
  br label %if.end17

do.end16:                                         ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %notif_block to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %notif_block, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.11) #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.6) #12
  br label %lag_error

if.end17:                                         ; preds = %ice_register_lag_handler.exit.thread, %do.body6.i
  tail call fastcc void @ice_display_lag_info(ptr noundef nonnull %call7.i.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_lag.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_lag, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !121

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_lag.__UNIQUE_ID_ddebug629, ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %cleanup

lag_error:                                        ; preds = %do.end16, %do.end
  %err.0 = phi i32 [ -22, %do.end16 ], [ -5, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %20 = ptrtoint ptr %lag2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %lag2, align 8
  br label %cleanup

cleanup:                                          ; preds = %lag_error, %if.then23, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %lag_error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_display_lag_info(ptr nocapture noundef readonly %lag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %cond.true.cond.end_crit_edge, label %lor.lhs.false.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @strchr(ptr noundef nonnull %5, i32 noundef 37) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %5, ptr @.str.23
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ @.str.39, %entry.cond.end_crit_edge ], [ @.str.23, %cond.true.cond.end_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %peer_netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 2
  %8 = ptrtoint ptr %peer_netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_netdev, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %cond.end.cond.end8_crit_edge, label %cond.true4

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8

cond.true4:                                       ; preds = %cond.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i47 = icmp eq i8 %11, 0
  br i1 %tobool.not.i47, label %cond.true4.cond.end8_crit_edge, label %lor.lhs.false.i51

cond.true4.cond.end8_crit_edge:                   ; preds = %cond.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8

lor.lhs.false.i51:                                ; preds = %cond.true4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i48 = tail call ptr @strchr(ptr noundef nonnull %9, i32 noundef 37) #8
  %tobool2.not.i49 = icmp eq ptr %call.i48, null
  %spec.select.i50 = select i1 %tobool2.not.i49, ptr %9, ptr @.str.23
  br label %cond.end8

cond.end8:                                        ; preds = %lor.lhs.false.i51, %cond.true4.cond.end8_crit_edge, %cond.end.cond.end8_crit_edge
  %cond9 = phi ptr [ @.str.39, %cond.end.cond.end8_crit_edge ], [ @.str.23, %cond.true4.cond.end8_crit_edge ], [ %spec.select.i50, %lor.lhs.false.i51 ]
  %upper_netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 3
  %12 = ptrtoint ptr %upper_netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %upper_netdev, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %cond.end8.cond.end15_crit_edge, label %cond.true11

cond.end8.cond.end15_crit_edge:                   ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

cond.true11:                                      ; preds = %cond.end8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i54 = icmp eq i8 %15, 0
  br i1 %tobool.not.i54, label %cond.true11.cond.end15_crit_edge, label %lor.lhs.false.i58

cond.true11.cond.end15_crit_edge:                 ; preds = %cond.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end15

lor.lhs.false.i58:                                ; preds = %cond.true11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i55 = tail call ptr @strchr(ptr noundef nonnull %13, i32 noundef 37) #8
  %tobool2.not.i56 = icmp eq ptr %call.i55, null
  %spec.select.i57 = select i1 %tobool2.not.i56, ptr %13, ptr @.str.23
  br label %cond.end15

cond.end15:                                       ; preds = %lor.lhs.false.i58, %cond.true11.cond.end15_crit_edge, %cond.end8.cond.end15_crit_edge
  %cond16 = phi ptr [ @.str.39, %cond.end8.cond.end15_crit_edge ], [ @.str.23, %cond.true11.cond.end15_crit_edge ], [ %spec.select.i57, %lor.lhs.false.i58 ]
  %master17 = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 5
  %16 = ptrtoint ptr %master17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %master17, align 4
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.41, ptr @.str.40
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool24.not = icmp sgt i8 %bf.load, -1
  %cond25 = select i1 %tobool24.not, ptr @.str.43, ptr @.str.42
  %role26 = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 7
  %18 = ptrtoint ptr %role26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %role26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %switch.lookup, label %cond.end15.do.body_crit_edge

cond.end15.do.body_crit_edge:                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

switch.lookup:                                    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #10
  %21 = sext i8 %19 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ice_display_lag_info, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %cond.end15.do.body_crit_edge
  %role.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.48, %cond.end15.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_display_lag_info.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_display_lag_info, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_display_lag_info.__UNIQUE_ID_ddebug614, ptr noundef %dev1, ptr noundef nonnull @.str.50, ptr noundef %cond, ptr noundef nonnull %cond25, ptr noundef %cond9, ptr noundef %cond16, ptr noundef nonnull %role.0, ptr noundef nonnull %cond19) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_deinit_lag(ptr nocapture noundef %pf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lag1 = getelementptr inbounds %struct.ice_pf, ptr %pf, i32 0, i32 74
  %0 = ptrtoint ptr %lag1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %notif_block.i = getelementptr inbounds %struct.ice_lag, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %notif_block.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notif_block.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then4.if.end5_crit_edge, label %if.then.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @unregister_netdevice_notifier(ptr noundef %notif_block.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_unregister_lag_handler.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_deinit_lag, %if.then6.i)) #8
          to label %if.end5 [label %if.then6.i], !srcloc !121

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_unregister_lag_handler.__UNIQUE_ID_ddebug628, ptr noundef %dev1.i, ptr noundef nonnull @.str.52) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then6.i, %if.then.i, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %upper_netdev = getelementptr inbounds %struct.ice_lag, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %upper_netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %upper_netdev, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %do.body1.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body1.i:                                       ; preds = %if.end5
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !122
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !123
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !124

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #8, !srcloc !125
  br label %if.end9

if.end9:                                          ; preds = %dev_put.exit, %if.end5.if.end9_crit_edge
  %peer_netdev = getelementptr inbounds %struct.ice_lag, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %peer_netdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer_netdev, align 4
  %tobool10.not = icmp eq ptr %25, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %do.body1.i35

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body1.i35:                                     ; preds = %if.end9
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !122
  %pcpu_refcnt.i27 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 118
  %27 = ptrtoint ptr %pcpu_refcnt.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcpu_refcnt.i27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i28 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i28 to ptr
  %cpu.i29 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i29, align 4
  %arrayidx.i30 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i30, align 4
  %add.i31 = add i32 %35, %29
  %36 = inttoptr i32 %add.i31 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add13.i32 = add i32 %38, -1
  store i32 %add13.i32, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !123
  %and.i.i.i33 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i33)
  %tobool24.not.i34 = icmp eq i32 %and.i.i.i33, 0
  br i1 %tobool24.not.i34, label %if.then28.i36, label %do.body1.i35.dev_put.exit38_crit_edge, !prof !124

do.body1.i35.dev_put.exit38_crit_edge:            ; preds = %do.body1.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit38

if.then28.i36:                                    ; preds = %do.body1.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit38

dev_put.exit38:                                   ; preds = %if.then28.i36, %do.body1.i35.dev_put.exit38_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #8, !srcloc !125
  br label %if.end13

if.end13:                                         ; preds = %dev_put.exit38, %if.end9.if.end13_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #8
  %40 = ptrtoint ptr %lag1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %lag1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice_lag_event_handler(ptr nocapture noundef %notif_blk, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %add.ptr = getelementptr i8, ptr %notif_blk, i32 -16
  %netdev1 = getelementptr i8, ptr %notif_blk, i32 -12
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %5, @init_net
  br i1 %cmp.i.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end6.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 27, label %sw.bb7
    i32 25, label %sw.bb8
    i32 6, label %sw.bb9
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_lag_changeupper_event(ptr noundef %add.ptr, ptr noundef %ptr)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end6
  %7 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev1, align 4
  %cmp.not.i = icmp eq ptr %1, %8
  br i1 %cmp.not.i, label %do.body2.i, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2.i:                                       ; preds = %sw.bb7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_changelower_event.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_event_handler, %if.then6.i)) #8
          to label %do.end9.i [label %if.then6.i], !srcloc !121

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_changelower_event.__UNIQUE_ID_ddebug625, ptr noundef %1, ptr noundef nonnull @.str.30) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %do.body2.i
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end9.i.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i

do.end9.i.netif_is_lag_port.exit.i_crit_edge:     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_is_lag_port.exit.i

netif_is_bond_slave.exit.i.i:                     ; preds = %do.end9.i
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i.i.i, align 16
  %and1.i.i.i = and i64 %12, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i)
  %tobool2.i.not.i.i = icmp eq i64 %and1.i.i.i, 0
  br i1 %tobool2.i.not.i.i, label %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i.cleanup_crit_edge

netif_is_bond_slave.exit.i.i.cleanup_crit_edge:   ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge: ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_is_lag_port.exit.i

netif_is_lag_port.exit.i:                         ; preds = %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, %do.end9.i.netif_is_lag_port.exit.i_crit_edge
  %priv_flags.i3.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags.i3.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags.i3.i.i, align 16
  %and.i4.i.i = and i64 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i4.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body13.i, label %netif_is_lag_port.exit.i.cleanup_crit_edge

netif_is_lag_port.exit.i.cleanup_crit_edge:       ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body13.i:                                      ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_changelower_event.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_event_handler, %if.then25.i)) #8
          to label %cleanup [label %if.then25.i], !srcloc !121

if.then25.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_changelower_event.__UNIQUE_ID_ddebug626, ptr noundef %1, ptr noundef nonnull @.str.31) #8
  br label %cleanup

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_lag_info_event(ptr noundef %add.ptr, ptr noundef %ptr)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end6
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %17 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev1, align 4
  %cmp.not.i19 = icmp eq ptr %18, %1
  br i1 %cmp.not.i19, label %lor.lhs.false.i, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb9
  %bonded.i = getelementptr i8, ptr %notif_blk, i32 12
  %19 = ptrtoint ptr %bonded.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %bonded.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %upper_netdev.i = getelementptr i8, ptr %notif_blk, i32 -4
  %20 = ptrtoint ptr %upper_netdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %upper_netdev.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %do.body1.i.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

do.body1.i.i:                                     ; preds = %if.end.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !122
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i.i20 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i20 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i.i = add i32 %34, -1
  store i32 %add13.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !123
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !124

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #8, !srcloc !125
  %36 = ptrtoint ptr %upper_netdev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %upper_netdev.i, align 4
  %sr_iov_1_1.i.i = getelementptr inbounds %struct.ice_pf, ptr %16, i32 0, i32 58, i32 28, i32 0, i32 10
  %37 = ptrtoint ptr %sr_iov_1_1.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sr_iov_1_1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i18.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i18.i, label %dev_put.exit.i.ice_set_sriov_cap.exit.i_crit_edge, label %if.then.i.i

dev_put.exit.i.ice_set_sriov_cap.exit.i_crit_edge: ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_set_sriov_cap.exit.i

if.then.i.i:                                      ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i = getelementptr inbounds %struct.ice_pf, ptr %16, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i.i) #8
  br label %ice_set_sriov_cap.exit.i

ice_set_sriov_cap.exit.i:                         ; preds = %if.then.i.i, %dev_put.exit.i.ice_set_sriov_cap.exit.i_crit_edge
  %rdma.i.i = getelementptr inbounds %struct.ice_pf, ptr %16, i32 0, i32 58, i32 28, i32 0, i32 15
  %39 = ptrtoint ptr %rdma.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rdma.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i19.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i19.i, label %ice_set_sriov_cap.exit.i.if.end7.i_crit_edge, label %land.lhs.true.i.i

ice_set_sriov_cap.exit.i.if.end7.i_crit_edge:     ; preds = %ice_set_sriov_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

land.lhs.true.i.i:                                ; preds = %ice_set_sriov_cap.exit.i
  %num_rdma_msix.i.i = getelementptr inbounds %struct.ice_pf, ptr %16, i32 0, i32 33
  %41 = ptrtoint ptr %num_rdma_msix.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_rdma_msix.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool2.not.i.i = icmp eq i16 %42, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end7.i_crit_edge, label %if.then.i21.i

land.lhs.true.i.i.if.end7.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i21.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i20.i = getelementptr inbounds %struct.ice_pf, ptr %16, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i20.i) #8
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i20.i) #8
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags.i20.i) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i21.i, %land.lhs.true.i.i.if.end7.i_crit_edge, %ice_set_sriov_cap.exit.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %43 = ptrtoint ptr %bonded.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load9.i = load i8, ptr %bonded.i, align 4
  %bf.clear.i = and i8 %bf.load9.i, 127
  store i8 %bf.clear.i, ptr %bonded.i, align 4
  %role.i = getelementptr i8, ptr %notif_blk, i32 16
  %44 = ptrtoint ptr %role.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %role.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7.i, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb8, %if.then25.i, %do.body13.i, %netif_is_lag_port.exit.i.cleanup_crit_edge, %netif_is_bond_slave.exit.i.i.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_lag_changeupper_event(ptr nocapture noundef %lag, ptr nocapture noundef readonly %ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev1 = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upper_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body3, label %do.body14

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_changeupper_event.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_changeupper_event, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !121

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_changeupper_event.__UNIQUE_ID_ddebug622, ptr noundef %1, ptr noundef nonnull @.str.15) #8
  br label %cleanup

do.body14:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_changeupper_event.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_changeupper_event, %if.then26)) #8
          to label %do.end32 [label %if.then26], !srcloc !121

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %6 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %linking, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool27.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool27.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_changeupper_event.__UNIQUE_ID_ddebug623, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then26, %do.body14
  %8 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %upper_dev, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end32.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

do.end32.netif_is_lag_master.exit_crit_edge:      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %do.end32
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 15
  %12 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %13, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.end55_crit_edge

netif_is_bond_master.exit.i.if.end55_crit_edge:   ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %do.end32.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 15
  %14 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %do.body37, label %netif_is_lag_master.exit.if.end55_crit_edge

netif_is_lag_master.exit.if.end55_crit_edge:      ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.body37:                                        ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_changeupper_event.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_changeupper_event, %if.then49)) #8
          to label %cleanup [label %if.then49], !srcloc !121

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_changeupper_event.__UNIQUE_ID_ddebug624, ptr noundef %1, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end55:                                         ; preds = %netif_is_lag_master.exit.if.end55_crit_edge, %netif_is_bond_master.exit.i.if.end55_crit_edge
  %linking56 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %16 = ptrtoint ptr %linking56 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %linking56, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool57.not = icmp eq i8 %17, 0
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end55
  %18 = ptrtoint ptr %lag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lag, align 4
  %bonded.i = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 5
  %20 = ptrtoint ptr %bonded.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %bonded.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then58.if.end.i_crit_edge, label %do.end.i

if.then58.if.end.i_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then58
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i56.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i56.i, label %do.end.i.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.netdev_name.exit.i_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i57.i = tail call ptr @strchr(ptr noundef %24, i32 noundef 37) #8
  %tobool2.not.i.i = icmp eq ptr %call.i57.i, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %24, ptr @.str.23
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %do.end.i.netdev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.23, %do.end.i.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %netdev_name.exit.i, %if.then58.if.end.i_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i79 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i79, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call3.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b55.i = load i1, ptr @ice_lag_link.__warned, align 1
  br i1 %.b55.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ice_lag_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 152, ptr noundef nonnull @.str.22) #8
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn72.i = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not73.i = icmp eq ptr %.pn72.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not73.i, label %do.end12.i.for.end.i_crit_edge, label %do.end12.i.for.body.i_crit_edge

do.end12.i.for.body.i_crit_edge:                  ; preds = %do.end12.i
  br label %for.body.i

do.end12.i.for.end.i_crit_edge:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end12.i.for.body.i_crit_edge
  %.pn75.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn72.i, %do.end12.i.for.body.i_crit_edge ]
  %peers.074.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end12.i.for.body.i_crit_edge ]
  %netdev_tmp.0.i = getelementptr i8, ptr %.pn75.i, i32 -40
  %call17.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %netdev_tmp.0.i) #8
  %cmp18.i = icmp eq ptr %call17.i, %9
  %inc.i = zext i1 %cmp18.i to i32
  %spec.select.i = add i32 %peers.074.i, %inc.i
  %31 = ptrtoint ptr %.pn75.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load volatile ptr, ptr %.pn75.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end12.i.for.end.i_crit_edge
  %peers.0.lcssa.i = phi i32 [ 0, %do.end12.i.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  %call.i58.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i58.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i61.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i61.i:                              ; preds = %for.end.i
  %call1.i59.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59.i)
  %tobool.not.i60.i = icmp eq i32 %call1.i59.i, 0
  br i1 %tobool.not.i60.i, label %land.lhs.true.i61.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i63.i

land.lhs.true.i61.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i63.i:                             ; preds = %land.lhs.true.i61.i
  %.b4.i62.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62.i, label %land.lhs.true2.i63.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i64.i

land.lhs.true2.i63.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i64.i:                                    ; preds = %land.lhs.true2.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i64.i, %land.lhs.true2.i63.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i61.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %32 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i.i.i.i65.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i65.i to ptr
  %preempt_count.i.i.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i66.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i66.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %upper_netdev.i = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 3
  %36 = ptrtoint ptr %upper_netdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %upper_netdev.i, align 4
  %cmp29.not.i = icmp eq ptr %37, %9
  br i1 %cmp29.not.i, label %rcu_read_unlock.exit.i.if.end32.i_crit_edge, label %if.then30.i

rcu_read_unlock.exit.i.if.end32.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then30.i:                                      ; preds = %rcu_read_unlock.exit.i
  %tobool.not.i67.i = icmp eq ptr %9, null
  br i1 %tobool.not.i67.i, label %if.then30.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.then30.i.dev_hold.exit.i_crit_edge:            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.then30.i
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !122
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %39 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %47, %41
  %48 = inttoptr i32 %add.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add13.i.i = add i32 %50, 1
  store i32 %add13.i.i, ptr %48, align 4
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !123
  %and.i.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !124

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #8, !srcloc !125
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.then30.i.dev_hold.exit.i_crit_edge
  %52 = ptrtoint ptr %upper_netdev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %9, ptr %upper_netdev.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %dev_hold.exit.i, %rcu_read_unlock.exit.i.if.end32.i_crit_edge
  %flags.i.i80 = getelementptr inbounds %struct.ice_pf, ptr %19, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i.i80) #8
  %call.i69.i = tail call i32 @_test_and_clear_bit(i32 noundef 25, ptr noundef %flags.i.i80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool.not.i70.i = icmp eq i32 %call.i69.i, 0
  br i1 %tobool.not.i70.i, label %if.then.i71.i, label %if.end32.i.ice_lag_link.exit_crit_edge

if.end32.i.ice_lag_link.exit_crit_edge:           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_lag_link.exit

if.then.i71.i:                                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ice_unplug_aux_dev(ptr noundef %19) #8
  br label %ice_lag_link.exit

ice_lag_link.exit:                                ; preds = %if.then.i71.i, %if.end32.i.ice_lag_link.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i.i80) #8
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags.i.i80) #8
  %53 = ptrtoint ptr %bonded.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load34.i = load i8, ptr %bonded.i, align 4
  %role.i = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 7
  %54 = ptrtoint ptr %role.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %peers.0.lcssa.i)
  %cmp35.i = icmp eq i32 %peers.0.lcssa.i, 1
  %bf.set.i = and i8 %bf.load34.i, 63
  %bf.clear38.i = select i1 %cmp35.i, i8 -64, i8 -128
  %bf.set39.i = or i8 %bf.clear38.i, %bf.set.i
  %55 = ptrtoint ptr %bonded.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %bf.set39.i, ptr %bonded.i, align 4
  br label %if.end59

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_lag_unlink(ptr noundef %lag, ptr noundef %ptr)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %ice_lag_link.exit
  tail call fastcc void @ice_display_lag_info(ptr noundef %lag)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then49, %do.body37, %if.then8, %do.body3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_lag_info_event(ptr nocapture noundef %lag, ptr nocapture noundef readonly %ptr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.netdev_name.exit_crit_edge, label %lor.lhs.false.i

entry.netdev_name.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @strchr(ptr noundef %3, i32 noundef 37) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %3, ptr @.str.23
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %entry.netdev_name.exit_crit_edge
  %retval.0.i64 = phi ptr [ @.str.23, %entry.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %netdev_name.exit.cleanup_crit_edge

netdev_name.exit.cleanup_crit_edge:               ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %netdev_name.exit
  %bonded = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 5
  %6 = ptrtoint ptr %bonded to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %bonded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %upper_netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 3
  %7 = ptrtoint ptr %upper_netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %upper_netdev, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %master = getelementptr inbounds %struct.netdev_notifier_bonding_info, ptr %ptr, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6.not = icmp eq i32 %10, 1
  br i1 %cmp6.not, label %if.end18, label %do.body8

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_info_event.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_info_event, %if.then13)) #8
          to label %lag_out [label %if.then13], !srcloc !121

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_info_event.__UNIQUE_ID_ddebug615, ptr noundef %12, ptr noundef nonnull @.str.33) #8
  br label %lag_out

if.end18:                                         ; preds = %if.end
  %slave_name = getelementptr inbounds %struct.netdev_notifier_bonding_info, ptr %ptr, i32 0, i32 1, i32 0, i32 1
  %call19 = tail call i32 @strcmp(ptr noundef %slave_name, ptr noundef %retval.0.i64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end42, label %do.body23

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_info_event.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_info_event, %if.then35)) #8
          to label %lag_out [label %if.then35], !srcloc !121

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_info_event.__UNIQUE_ID_ddebug616, ptr noundef %14, ptr noundef nonnull @.str.34) #8
  br label %lag_out

if.end42:                                         ; preds = %if.end18
  %state = getelementptr inbounds %struct.netdev_notifier_bonding_info, ptr %ptr, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool44.not = icmp eq i8 %16, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_lag_set_backup(ptr noundef %lag)
  br label %lag_out

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ice_lag_set_primary(ptr noundef %lag)
  br label %lag_out

lag_out:                                          ; preds = %if.else, %if.then45, %if.then35, %do.body23, %if.then13, %do.body8
  tail call fastcc void @ice_display_lag_info(ptr noundef %lag)
  br label %cleanup

cleanup:                                          ; preds = %lag_out, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %netdev_name.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_lag_unlink(ptr nocapture noundef %lag, ptr nocapture noundef readonly %info) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %upper_dev, align 4
  %2 = ptrtoint ptr %lag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lag, align 4
  %bonded = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 5
  %4 = ptrtoint ptr %bonded to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %bonded, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body2, label %if.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_unlink.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_unlink, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !121

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ice_lag_unlink.__UNIQUE_ID_ddebug619, ptr noundef %6, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end9:                                          ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end9.rcu_read_lock.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end9.rcu_read_lock.exit_crit_edge
  %call11 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end20_crit_edge

rcu_read_lock.exit.do.end20_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b68 = load i1, ptr @ice_lag_unlink.__warned, align 1
  br i1 %.b68, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ice_lag_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 191, ptr noundef nonnull @.str.22) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %rcu_read_lock.exit.do.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn97 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not99 = icmp eq ptr %.pn97, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not99, label %do.end20.if.end44.critedge_crit_edge, label %for.body.lr.ph

do.end20.if.end44.critedge_crit_edge:             ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.critedge

for.body.lr.ph:                                   ; preds = %do.end20
  %netdev29 = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn100 = phi ptr [ %.pn97, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %netdev_tmp.0101 = getelementptr i8, ptr %.pn100, i32 -40
  %call26 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %netdev_tmp.0101) #8
  %cmp27 = icmp eq ptr %call26, %1
  br i1 %cmp27, label %if.then28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then28:                                        ; preds = %for.body
  %11 = ptrtoint ptr %netdev29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev29, align 4
  %cmp30 = icmp eq ptr %netdev_tmp.0101, %12
  br i1 %cmp30, label %if.then43.critedge, label %if.then28.for.inc_crit_edge

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn100 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load volatile ptr, ptr %.pn100, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc.if.end44.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end44.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.critedge

if.then43.critedge:                               ; preds = %if.then28
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i69, label %if.then43.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i72

if.then43.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %if.then43.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i72:                                ; preds = %if.then43.critedge
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i72.rcu_read_unlock.exit_crit_edge, %if.then43.critedge.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %14 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i.i.i.i76 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i76 to ptr
  %preempt_count.i.i.i.i77 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i77, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i77, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end44.critedge:                                ; preds = %for.inc.if.end44.critedge_crit_edge, %do.end20.if.end44.critedge_crit_edge
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i78, label %if.end44.critedge.rcu_read_unlock.exit88_crit_edge, label %land.lhs.true.i81

if.end44.critedge.rcu_read_unlock.exit88_crit_edge: ; preds = %if.end44.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit88

land.lhs.true.i81:                                ; preds = %if.end44.critedge
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit88

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit88

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_unlock.exit88

rcu_read_unlock.exit88:                           ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge, %if.end44.critedge.rcu_read_unlock.exit88_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %18 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i.i.i.i85 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i87 = add i32 %21, -1
  store volatile i32 %sub.i.i.i87, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %upper_netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 3
  %22 = ptrtoint ptr %upper_netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %upper_netdev, align 4
  %tobool45.not = icmp eq ptr %23, null
  br i1 %tobool45.not, label %rcu_read_unlock.exit88.if.end49_crit_edge, label %do.body1.i

rcu_read_unlock.exit88.if.end49_crit_edge:        ; preds = %rcu_read_unlock.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body1.i:                                       ; preds = %rcu_read_unlock.exit88
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !122
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 118
  %25 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_refcnt.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !111) #8
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add13.i = add i32 %36, -1
  store i32 %add13.i, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !123
  %and.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !124

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #8, !srcloc !125
  %38 = ptrtoint ptr %upper_netdev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %upper_netdev, align 4
  br label %if.end49

if.end49:                                         ; preds = %dev_put.exit, %rcu_read_unlock.exit88.if.end49_crit_edge
  %peer_netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 2
  %39 = ptrtoint ptr %peer_netdev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %peer_netdev, align 4
  %sr_iov_1_1.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 10
  %40 = ptrtoint ptr %sr_iov_1_1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sr_iov_1_1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i90 = icmp eq i8 %41, 0
  br i1 %tobool.not.i90, label %if.end49.ice_set_sriov_cap.exit_crit_edge, label %if.then.i91

if.end49.ice_set_sriov_cap.exit_crit_edge:        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_set_sriov_cap.exit

if.then.i91:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #8
  br label %ice_set_sriov_cap.exit

ice_set_sriov_cap.exit:                           ; preds = %if.then.i91, %if.end49.ice_set_sriov_cap.exit_crit_edge
  %rdma.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 58, i32 28, i32 0, i32 15
  %42 = ptrtoint ptr %rdma.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rdma.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i92 = icmp eq i8 %43, 0
  br i1 %tobool.not.i92, label %ice_set_sriov_cap.exit.ice_set_rdma_cap.exit_crit_edge, label %land.lhs.true.i93

ice_set_sriov_cap.exit.ice_set_rdma_cap.exit_crit_edge: ; preds = %ice_set_sriov_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_set_rdma_cap.exit

land.lhs.true.i93:                                ; preds = %ice_set_sriov_cap.exit
  %num_rdma_msix.i = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 33
  %44 = ptrtoint ptr %num_rdma_msix.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_rdma_msix.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool2.not.i = icmp eq i16 %45, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i93.ice_set_rdma_cap.exit_crit_edge, label %if.then.i95

land.lhs.true.i93.ice_set_rdma_cap.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %ice_set_rdma_cap.exit

if.then.i95:                                      ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i94 = getelementptr inbounds %struct.ice_pf, ptr %3, i32 0, i32 21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i94) #8
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i94) #8
  tail call void @_set_bit(i32 noundef 25, ptr noundef %flags.i94) #8
  br label %ice_set_rdma_cap.exit

ice_set_rdma_cap.exit:                            ; preds = %if.then.i95, %land.lhs.true.i93.ice_set_rdma_cap.exit_crit_edge, %ice_set_sriov_cap.exit.ice_set_rdma_cap.exit_crit_edge
  %46 = ptrtoint ptr %bonded to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load51 = load i8, ptr %bonded, align 4
  %bf.clear = and i8 %bf.load51, 127
  store i8 %bf.clear, ptr %bonded, align 4
  %role = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 7
  %47 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %role, align 4
  br label %cleanup

cleanup:                                          ; preds = %ice_set_rdma_cap.exit, %rcu_read_unlock.exit, %if.then6, %do.body2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_unplug_aux_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_lag_set_backup(ptr nocapture noundef %lag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %role = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 7
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %3, label %do.body [
    i8 3, label %if.end.if.end14_crit_edge
    i8 1, label %if.end.if.end14_crit_edge23
  ]

if.end.if.end14_crit_edge23:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_lag_set_backup.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_lag_set_backup, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !121

if.then11:                                        ; preds = %do.body
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then11.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then11.netdev_name.exit_crit_edge:             ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %8, ptr @.str.23
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then11.netdev_name.exit_crit_edge
  %retval.0.i21 = phi ptr [ @.str.23, %if.then11.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_lag_set_backup.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i21) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge23
  %11 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %role, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %netdev_name.exit, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_lag_set_primary(ptr nocapture noundef %lag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %role = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 7
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %role, align 4
  %4 = and i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch = icmp eq i8 %4, 2
  br i1 %switch, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %netdev = getelementptr inbounds %struct.ice_lag, ptr %lag, i32 0, i32 1
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #8
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %8, ptr @.str.23
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.23, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %retval.0.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %role to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %role, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %netdev_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 401, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ice_init_lag._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ice_init_lag._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 416, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ice_init_lag._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ice_init_lag._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 422, i32 2}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ice_init_lag.__UNIQUE_ID_ddebug629, !14, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 356, i32 4}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ice_register_lag_handler._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ice_register_lag_handler._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 359, i32 3}
!24 = !{ptr @ice_register_lag_handler.__UNIQUE_ID_ddebug627, !23, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 260, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ice_lag_changeupper_event.__UNIQUE_ID_ddebug622, !26, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 264, i32 2}
!31 = !{ptr @ice_lag_changeupper_event.__UNIQUE_ID_ddebug623, !30, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!32 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 267, i32 3}
!36 = !{ptr @ice_lag_changeupper_event.__UNIQUE_ID_ddebug624, !35, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 148, i32 3}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ice_lag_link._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ice_lag_link._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 152, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 185, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ice_lag_unlink.__UNIQUE_ID_ddebug619, !55, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 191, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 293, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ice_lag_changelower_event.__UNIQUE_ID_ddebug625, !61, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 296, i32 3}
!66 = !{ptr @ice_lag_changelower_event.__UNIQUE_ID_ddebug626, !65, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 117, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ice_lag_info_event.__UNIQUE_ID_ddebug615, !68, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 122, i32 3}
!73 = !{ptr @ice_lag_info_event.__UNIQUE_ID_ddebug616, !72, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 50, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ice_lag_set_backup.__UNIQUE_ID_ddebug613, !75, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 30, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ice_lag_set_primary._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ice_lag_set_primary._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 67, i32 50}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 70, i32 25}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 70, i32 34}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 71, i32 25}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 71, i32 36}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 75, i32 10}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 78, i32 10}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 81, i32 10}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 84, i32 10}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 87, i32 10}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 90, i32 2}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ice_display_lag_info.__UNIQUE_ID_ddebug614, !104, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ice/ice_lag.c", i32 376, i32 3}
!109 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ice_unregister_lag_handler.__UNIQUE_ID_ddebug628, !108, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148729005, i64 2148729010, i64 2148729023, i64 2148729067, i64 2148729101, i64 2148729122}
!122 = !{i64 639671, i64 639732}
!123 = !{i64 642403}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 642688}
!126 = !{i8 0, i8 2}
!127 = !{i64 2149392121}
!128 = !{i64 2149392387}
