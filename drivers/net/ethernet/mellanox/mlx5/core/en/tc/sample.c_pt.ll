; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.esw_vport_tbl_namespace = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.psample_group = type { %struct.list_head, ptr, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.psample_metadata = type { i32, i32, i32, i16, i64, i64, i8 }
%struct.mlx5_mapped_obj = type { i32, %union.anon.166 }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.145, %union.anon.146, [48 x i8], %union.anon.147, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.149, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.145 = type { ptr }
%union.anon.146 = type { i64 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { i32, ptr }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.151, i32, i32, i32, i16, i16, %union.anon.153, i32, %union.anon.154, %union.anon.155, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.151 = type { i32 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5_vport_tbl_attr = type { i32, i16, i16, ptr }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.184 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.184 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.185], ptr, ptr }
%struct.anon.185 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5e_sample_attr = type { i32, i32, i32, i32, i32, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.173, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.175, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.173 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.174] }
%struct.anon.174 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.129 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.129 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.175 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5e_tc_psample = type { ptr, ptr, ptr, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, ptr }
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon.168, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon.168 = type { i8, i32, i32, i32, i32 }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mlx5e_sample_flow = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.mlx5e_sampler = type { %struct.hlist_node, i32, i32, i32, i32, i32 }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.181, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.183, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.179, i32 }
%union.anon.179 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.180, ptr }
%struct.anon.180 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.atomic64_t = type { i64 }
%struct.anon.181 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.183 = type { i32 }
%struct.mlx5e_sample_restore = type { %struct.hlist_node, ptr, ptr, ptr, i32, i32 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.188 }
%struct.anon.188 = type { i32, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.169 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.189, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.189 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.73 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@init_net = external dso_local global %struct.net, align 128
@mlx5e_tc_sample_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tc_psample->ht_lock\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_tc_sample_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&tc_psample->restore_lock\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_esw_vport_tbl_sample_ns = internal constant { %struct.esw_vport_tbl_namespace, [20 x i8] } { %struct.esw_vport_tbl_namespace { i32 65536, i32 0, i32 3 }, [20 x i8] zeroinitializer }, align 32
@sampler_termtbl_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 73, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): termination table is not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sampler_termtbl_create\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sampler_termtbl_create._entry_ptr = internal global ptr @sampler_termtbl_create._entry, section ".printk_index", align 4
@sampler_termtbl_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 79, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): failed to get FDB flow namespace\0A\00", [46 x i8] zeroinitializer }, align 32
@sampler_termtbl_create._entry_ptr.10 = internal global ptr @sampler_termtbl_create._entry.8, section ".printk_index", align 4
@sampler_termtbl_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 91, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): failed to create termtbl, err: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sampler_termtbl_create._entry_ptr.13 = internal global ptr @sampler_termtbl_create._entry.11, section ".printk_index", align 4
@sampler_termtbl_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 100, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): failed to create termtbl rule, err: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sampler_termtbl_create._entry_ptr.16 = internal global ptr @sampler_termtbl_create._entry.14, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 670, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 671, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [29 x i8] c"mlx5_esw_vport_tbl_sample_ns\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 16, i32 45 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 73, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 79, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 91, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 100, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @sampler_termtbl_create._entry, ptr @sampler_termtbl_create._entry.11, ptr @sampler_termtbl_create._entry.14, ptr @sampler_termtbl_create._entry.8, ptr @sampler_termtbl_create._entry_ptr, ptr @sampler_termtbl_create._entry_ptr.10, ptr @sampler_termtbl_create._entry_ptr.13, ptr @sampler_termtbl_create._entry_ptr.16, ptr @mlx5e_tc_sample_init.__key, ptr @.str, ptr @mlx5e_tc_sample_init.__key.1, ptr @.str.2, ptr @mlx5_esw_vport_tbl_sample_ns, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_sample_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_sample_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_vport_tbl_sample_ns to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampler_termtbl_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampler_termtbl_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampler_termtbl_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampler_termtbl_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_sample_skb(ptr noundef %skb, ptr nocapture noundef readonly %mapped_obj) local_unnamed_addr #0 align 64 {
entry:
  %psample_group = alloca %struct.psample_group, align 4
  %md = alloca %struct.psample_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc_size1 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %trunc_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trunc_size1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %psample_group) #7
  %2 = call ptr @memset(ptr %psample_group, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %md) #7
  %3 = getelementptr inbounds i8, ptr %md, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len4, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %1, i32 %6)
  %cond6 = select i1 %tobool.not, i32 %6, i32 %7
  %8 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj, i32 0, i32 1
  %9 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond6, ptr %md, align 8
  %10 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %in_ifindex = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 1
  %15 = ptrtoint ptr %in_ifindex to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %in_ifindex, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %8, align 4
  %group_num = getelementptr inbounds %struct.psample_group, ptr %psample_group, i32 0, i32 2
  %18 = ptrtoint ptr %group_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %group_num, align 4
  %net = getelementptr inbounds %struct.psample_group, ptr %psample_group, i32 0, i32 1
  %19 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @init_net, ptr %net, align 4
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %20 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %21 to i32
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv) #7
  %rate = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate, align 4
  call void @psample_sample_packet(ptr noundef nonnull %psample_group, ptr noundef %skb, i32 noundef %23, ptr noundef nonnull %md) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %md) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %psample_group) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psample_sample_packet(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_tc_sample_offload(ptr noundef %tc_psample, ptr noundef %spec, ptr noundef %attr, i32 noundef %tunnel_id) local_unnamed_addr #0 align 64 {
entry:
  %tbl_attr.i = alloca %struct.mlx5_vport_tbl_attr, align 4
  %mod_acts.i.i = alloca %struct.mlx5e_tc_mod_hdr_acts, align 4
  %in.i.i = alloca [19 x i32], align 4
  %out.i.i = alloca [4 x i32], align 4
  %per_vport_tbl_attr.i = alloca %struct.mlx5_vport_tbl_attr, align 4
  %restore_obj = alloca %struct.mlx5_mapped_obj, align 4
  %obj_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %restore_obj) #7
  %1 = call ptr @memset(ptr %restore_obj, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obj_id) #7
  %2 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %obj_id, align 4, !annotation !38
  %tobool.not.i = icmp eq ptr %tc_psample, null
  %cmp.i = icmp ugt ptr %tc_psample, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup93_crit_edge, label %if.end

entry.cleanup93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup93_crit_edge, label %if.end5

if.end.cleanup93_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup93

if.end5:                                          ; preds = %if.end
  %sample_attr6 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %sample_attr6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sample_attr6, align 4
  %sample_flow7 = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sample_flow7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %sample_flow7, align 4
  %7 = ptrtoint ptr %tc_psample to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tc_psample, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %12, i32 5
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end5.if.then13_crit_edge

if.end5.if.then13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end5
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attr, align 4
  %and11 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end5.if.then13_crit_edge
  %post_act = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 7
  %18 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %post_act, align 4
  %call14 = tail call ptr @mlx5e_tc_post_act_get_ft(ptr noundef %19) #7
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %call14, i32 0, i32 2
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %22 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %post_act, align 4
  %call16 = tail call ptr @mlx5e_tc_post_act_add(ptr noundef %23, ptr noundef %attr) #7
  %cmp.i179 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %post_act_handle21 = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %post_act_handle21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16, ptr %post_act_handle21, align 8
  br label %if.end26

cleanup:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call16 to i32
  br label %err_post_act

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %per_vport_tbl_attr.i) #7
  %26 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %per_vport_tbl_attr.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %per_vport_tbl_attr.i, i32 0, i32 2
  %28 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %per_vport_tbl_attr.i, i32 0, i32 3
  %chain.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 6
  %29 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chain.i, align 4
  %31 = ptrtoint ptr %per_vport_tbl_attr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %per_vport_tbl_attr.i, align 4
  %prio.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 7
  %32 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %prio.i, align 4
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %26, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vport.i, align 4
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %27, align 2
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mlx5_esw_vport_tbl_sample_ns, ptr %28, align 4
  %call.i = call ptr @mlx5_esw_vporttbl_get(ptr noundef %8, ptr noundef nonnull %per_vport_tbl_attr.i) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  br label %add_post_rule.exit

if.end.i:                                         ; preds = %if.else
  %id.i = getelementptr inbounds %struct.mlx5_flow_table, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i, align 4
  %call6.i = call ptr @mlx5_alloc_flow_attr(i32 noundef 8) #7
  %tobool.not.i180 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i180, label %if.end.i.err_attr.i_crit_edge, label %if.end8.i

if.end.i.err_attr.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_attr.i

if.end8.i:                                        ; preds = %if.end.i
  %post_attr9.i = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %post_attr9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call6.i, ptr %post_attr9.i, align 8
  %45 = call ptr @memcpy(ptr %call6.i, ptr %attr, i32 880)
  %chain10.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call6.i, i32 0, i32 6
  %46 = ptrtoint ptr %chain10.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %chain10.i, align 4
  %prio11.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call6.i, i32 0, i32 7
  %47 = ptrtoint ptr %prio11.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %prio11.i, align 4
  %ft.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call6.i, i32 0, i32 9
  %48 = ptrtoint ptr %ft.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %ft.i, align 4
  %flags.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call6.i, i32 0, i32 15
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %flags.i, align 4
  call void @mlx5_eswitch_clear_rule_source_port(ptr noundef %8, ptr noundef %spec) #7
  %call12.i = call ptr @mlx5_eswitch_add_offloaded_rule(ptr noundef %8, ptr noundef %spec, ptr noundef nonnull %call6.i) #7
  %post_rule.i = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %post_rule.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call12.i, ptr %post_rule.i, align 4
  %cmp.i45.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45.i, label %if.then15.i, label %add_post_rule.exit.thread

add_post_rule.exit.thread:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %per_vport_tbl_attr.i) #7
  br label %if.end26

if.then15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call12.i to i32
  call void @kfree(ptr noundef nonnull %call6.i) #7
  br label %err_attr.i

err_attr.i:                                       ; preds = %if.then15.i, %if.end.i.err_attr.i_crit_edge
  %err.0.i = phi i32 [ %51, %if.then15.i ], [ -12, %if.end.i.err_attr.i_crit_edge ]
  call void @mlx5_esw_vporttbl_put(ptr noundef %8, ptr noundef nonnull %per_vport_tbl_attr.i) #7
  br label %add_post_rule.exit

add_post_rule.exit:                               ; preds = %err_attr.i, %if.then.i
  %retval.0.i = phi i32 [ %41, %if.then.i ], [ %err.0.i, %err_attr.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %per_vport_tbl_attr.i) #7
  br label %err_post_act

if.end26:                                         ; preds = %add_post_rule.exit.thread, %cleanup.thread
  %default_tbl_id.1 = phi i32 [ %21, %cleanup.thread ], [ %43, %add_post_rule.exit.thread ]
  %post_act_handle.0 = phi ptr [ %call16, %cleanup.thread ], [ null, %add_post_rule.exit.thread ]
  %rate = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %5, i32 0, i32 1
  %52 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rate, align 4
  %ht_lock.i = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %ht_lock.i, i32 noundef 0) #7
  %add.i.i.i.i = add i32 %53, -559038729
  %add1.i.i.i.i = add i32 %default_tbl_id.1, -559038729
  %xor.i.i.i.i = xor i32 %add1.i.i.i.i, -559038729
  %or.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #7
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i1.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #7
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i1.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i2.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #7
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i2.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i3.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #7
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i3.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i4.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #7
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i4.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i5.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #7
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i5.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i6.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #7
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i6.i.i.i.i
  %mul.i.i.i = mul i32 %sub20.i.i.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 3, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end26
  %sampler.0.in.i = phi ptr [ %arrayidx.i, %if.end26 ], [ %sampler.0.i, %for.body.i.for.cond.i_crit_edge ]
  %54 = ptrtoint ptr %sampler.0.in.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %sampler.0.i = load ptr, ptr %sampler.0.in.i, align 4
  %tobool3.not.i = icmp eq ptr %sampler.0.i, null
  br i1 %tobool3.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %sample_ratio4.i = getelementptr inbounds %struct.mlx5e_sampler, ptr %sampler.0.i, i32 0, i32 2
  %55 = ptrtoint ptr %sample_ratio4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sample_ratio4.i, align 4
  %default_table_id5.i = getelementptr inbounds %struct.mlx5e_sampler, ptr %sampler.0.i, i32 0, i32 4
  %57 = ptrtoint ptr %default_table_id5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %default_table_id5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %53)
  %cmp.not.i.i = icmp eq i32 %56, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %default_tbl_id.1)
  %cmp1.i.i = icmp eq i32 %58, %default_tbl_id.1
  %tobool7.not.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %tobool7.not.i, label %for.body.i.add_ref.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.add_ref.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %add_ref.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 28) #10
  %tobool19.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool19.not.i, label %for.end.i.err_alloc.i_crit_edge, label %if.end21.i

for.end.i.err_alloc.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_alloc.i

if.end21.i:                                       ; preds = %for.end.i
  %termtbl.i = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 1
  %60 = ptrtoint ptr %termtbl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %termtbl.i, align 4
  %id.i181 = getelementptr inbounds %struct.mlx5_flow_table, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %id.i181 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id.i181, align 4
  %sample_table_id.i = getelementptr inbounds %struct.mlx5e_sampler, ptr %call7.i.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %sample_table_id.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sample_table_id.i, align 8
  %default_table_id22.i = getelementptr inbounds %struct.mlx5e_sampler, ptr %call7.i.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %default_table_id22.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %default_tbl_id.1, ptr %default_table_id22.i, align 4
  %sample_ratio23.i = getelementptr inbounds %struct.mlx5e_sampler, ptr %call7.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %sample_ratio23.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %53, ptr %sample_ratio23.i, align 4
  %67 = ptrtoint ptr %tc_psample to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tc_psample, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %in.i.i) #7
  %71 = call ptr @memset(ptr %in.i.i, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i.i) #7
  %72 = getelementptr inbounds [4 x i32], ptr %out.i.i, i32 0, i32 2
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %70, i32 0, i32 8
  %73 = call ptr @memset(ptr %out.i.i, i32 255, i32 16)
  %74 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i64, ptr %75, i32 16
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr.i.i, align 8
  %and.i.i = and i64 %77, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end21.i.err_create.i_crit_edge, label %if.end.i.i

if.end21.i.err_create.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_create.i

if.end.i.i:                                       ; preds = %if.end21.i
  %arrayidx3.i.i = getelementptr %struct.mlx5_core_dev, ptr %70, i32 0, i32 8, i32 0, i32 8
  %78 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx3.i.i, align 8
  %add.ptr6.i.i = getelementptr i32, ptr %79, i32 16
  %80 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr6.i.i, align 4
  %82 = and i32 %81, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool8.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i.err_create.i_crit_edge, label %if.end10.i.i

if.end.i.i.err_create.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_create.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %add.ptr14.i.i = getelementptr inbounds i8, ptr %in.i.i, i32 24
  %83 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr14.i.i, align 4
  %and15.i.i = and i32 %84, 65534
  %or42.i.i = or i32 %and15.i.i, 67174401
  store i32 %or42.i.i, ptr %add.ptr14.i.i, align 4
  %add.ptr51.i.i = getelementptr inbounds i8, ptr %in.i.i, i32 28
  %85 = ptrtoint ptr %add.ptr51.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %53, ptr %add.ptr51.i.i, align 4
  %add.ptr64.i.i = getelementptr inbounds i8, ptr %in.i.i, i32 32
  %86 = ptrtoint ptr %add.ptr64.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr64.i.i, align 4
  %and65.i.i = and i32 %87, -16777216
  %and66.i.i = and i32 %63, 16777215
  %or68.i.i = or i32 %and65.i.i, %and66.i.i
  store i32 %or68.i.i, ptr %add.ptr64.i.i, align 4
  %add.ptr77.i.i = getelementptr inbounds i8, ptr %in.i.i, i32 36
  %88 = ptrtoint ptr %add.ptr77.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr77.i.i, align 4
  %and78.i.i = and i32 %89, -16777216
  %and79.i.i = and i32 %default_tbl_id.1, 16777215
  %or81.i.i = or i32 %and78.i.i, %and79.i.i
  store i32 %or81.i.i, ptr %add.ptr77.i.i, align 4
  %90 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %in.i.i, align 4
  %and92.i.i = and i32 %91, 65535
  %or95.i.i = or i32 %and92.i.i, 167772160
  store i32 %or95.i.i, ptr %in.i.i, align 4
  %add.ptr106.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 1
  %92 = ptrtoint ptr %add.ptr106.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr106.i.i, align 4
  %and107.i.i = and i32 %93, -65536
  %or110.i.i = or i32 %and107.i.i, 32
  store i32 %or110.i.i, ptr %add.ptr106.i.i, align 4
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %70, ptr noundef nonnull %in.i.i, i32 noundef 76, ptr noundef nonnull %out.i.i, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool117.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool117.not.i.i, label %if.end27.i, label %if.end10.i.i.err_create.i_crit_edge

if.end10.i.i.err_create.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_create.i

if.end27.i:                                       ; preds = %if.end10.i.i
  %94 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %72, align 4
  %sampler_id.i.i = getelementptr inbounds %struct.mlx5e_sampler, ptr %call7.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %sampler_id.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %sampler_id.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %in.i.i) #7
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i, align 4
  %99 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %98, ptr %call7.i.i.i, align 8
  %tobool.not.i67.i = icmp eq ptr %98, null
  br i1 %tobool.not.i67.i, label %if.end27.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end27.i.hlist_add_head.exit.i_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %98, i32 0, i32 1
  %100 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end27.i.hlist_add_head.exit.i_crit_edge
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  br label %add_ref.i

add_ref.i:                                        ; preds = %hlist_add_head.exit.i, %for.body.i.add_ref.i_crit_edge
  %sampler.1.i = phi ptr [ %call7.i.i.i, %hlist_add_head.exit.i ], [ %sampler.0.i, %for.body.i.add_ref.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.mlx5e_sampler, ptr %sampler.1.i, i32 0, i32 5
  %103 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %104, 1
  store i32 %inc.i, ptr %count.i, align 4
  call void @mutex_unlock(ptr noundef %ht_lock.i) #7
  br label %sampler_get.exit

err_create.i:                                     ; preds = %if.end10.i.i.err_create.i_crit_edge, %if.end.i.i.err_create.i_crit_edge, %if.end21.i.err_create.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end10.i.i.err_create.i_crit_edge ], [ -95, %if.end.i.i.err_create.i_crit_edge ], [ -95, %if.end21.i.err_create.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %in.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %err_alloc.i

err_alloc.i:                                      ; preds = %err_create.i, %for.end.i.err_alloc.i_crit_edge
  %err.0.i182 = phi i32 [ %retval.0.i.ph.i, %err_create.i ], [ -12, %for.end.i.err_alloc.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %ht_lock.i) #7
  %105 = inttoptr i32 %err.0.i182 to ptr
  br label %sampler_get.exit

sampler_get.exit:                                 ; preds = %err_alloc.i, %add_ref.i
  %retval.0.i183 = phi ptr [ %sampler.1.i, %add_ref.i ], [ %105, %err_alloc.i ]
  %106 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %retval.0.i183, ptr %call7.i.i, align 8
  %cmp.i184 = icmp ugt ptr %retval.0.i183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then30, label %if.end33

if.then30:                                        ; preds = %sampler_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %retval.0.i183 to i32
  br label %err_sampler

if.end33:                                         ; preds = %sampler_get.exit
  %108 = ptrtoint ptr %restore_obj to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %restore_obj, align 4
  %109 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %5, align 4
  %111 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %restore_obj, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %110, ptr %111, align 4
  %113 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rate, align 4
  %rate35 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %restore_obj, i32 0, i32 1, i32 0, i32 1
  %115 = ptrtoint ptr %rate35 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %rate35, align 4
  %trunc_size = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %5, i32 0, i32 2
  %116 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %trunc_size, align 4
  %trunc_size36 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %restore_obj, i32 0, i32 1, i32 0, i32 2
  %118 = ptrtoint ptr %trunc_size36 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %trunc_size36, align 4
  %tunnel_id37 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %restore_obj, i32 0, i32 1, i32 0, i32 3
  %119 = ptrtoint ptr %tunnel_id37 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %tunnel_id, ptr %tunnel_id37, align 4
  %reg_c0_obj_pool = getelementptr inbounds %struct.mlx5_eswitch, ptr %8, i32 0, i32 15, i32 3
  %120 = ptrtoint ptr %reg_c0_obj_pool to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg_c0_obj_pool, align 4
  %call38 = call i32 @mapping_add(ptr noundef %121, ptr noundef nonnull %restore_obj, ptr noundef nonnull %obj_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end33.err_obj_id_crit_edge

if.end33.err_obj_id_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_obj_id

if.end41:                                         ; preds = %if.end33
  %122 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %obj_id, align 4
  %restore_obj_id = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %5, i32 0, i32 3
  %124 = ptrtoint ptr %restore_obj_id to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %restore_obj_id, align 4
  %125 = ptrtoint ptr %tc_psample to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tc_psample, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 8
  %restore_lock.i = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %restore_lock.i, i32 noundef 0) #7
  %129 = ptrtoint ptr %post_act_handle.0 to i32
  %add.i.i.i.i185 = add i32 %123, -559038729
  %add1.i.i.i.i186 = add i32 %129, -559038729
  %xor.i.i.i.i187 = xor i32 %add1.i.i.i.i186, -559038729
  %or.i.i.i.i.i188 = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i186, i32 %add1.i.i.i.i186, i32 14) #7
  %sub.i.i.i.i189 = sub i32 %xor.i.i.i.i187, %or.i.i.i.i.i188
  %xor3.i.i.i.i190 = xor i32 %add.i.i.i.i185, %sub.i.i.i.i189
  %or.i1.i.i.i.i191 = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i189, i32 %sub.i.i.i.i189, i32 11) #7
  %sub5.i.i.i.i192 = sub i32 %xor3.i.i.i.i190, %or.i1.i.i.i.i191
  %xor6.i.i.i.i193 = xor i32 %sub5.i.i.i.i192, %add1.i.i.i.i186
  %or.i2.i.i.i.i194 = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i192, i32 %sub5.i.i.i.i192, i32 25) #7
  %sub8.i.i.i.i195 = sub i32 %xor6.i.i.i.i193, %or.i2.i.i.i.i194
  %xor9.i.i.i.i196 = xor i32 %sub8.i.i.i.i195, %sub.i.i.i.i189
  %or.i3.i.i.i.i197 = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i195, i32 %sub8.i.i.i.i195, i32 16) #7
  %sub11.i.i.i.i198 = sub i32 %xor9.i.i.i.i196, %or.i3.i.i.i.i197
  %xor12.i.i.i.i199 = xor i32 %sub11.i.i.i.i198, %sub5.i.i.i.i192
  %or.i4.i.i.i.i200 = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i198, i32 %sub11.i.i.i.i198, i32 4) #7
  %sub14.i.i.i.i201 = sub i32 %xor12.i.i.i.i199, %or.i4.i.i.i.i200
  %xor15.i.i.i.i202 = xor i32 %sub14.i.i.i.i201, %sub8.i.i.i.i195
  %or.i5.i.i.i.i203 = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i201, i32 %sub14.i.i.i.i201, i32 14) #7
  %sub17.i.i.i.i204 = sub i32 %xor15.i.i.i.i202, %or.i5.i.i.i.i203
  %xor18.i.i.i.i205 = xor i32 %sub17.i.i.i.i204, %sub11.i.i.i.i198
  %or.i6.i.i.i.i206 = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i204, i32 %sub17.i.i.i.i204, i32 24) #7
  %sub20.i.i.i.i207 = sub i32 %xor18.i.i.i.i205, %or.i6.i.i.i.i206
  %mul.i.i.i208 = mul i32 %sub20.i.i.i.i207, 1640531527
  %shr.i.i209 = lshr i32 %mul.i.i.i208, 24
  %arrayidx.i210 = getelementptr %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 5, i32 %shr.i.i209
  %130 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load4_noabort(i32 %130)
  %restore.089.i = load ptr, ptr %arrayidx.i210, align 4
  %tobool4.not90.i = icmp eq ptr %restore.089.i, null
  br i1 %tobool4.not90.i, label %if.end41.for.end.i214_crit_edge, label %if.end41.for.body.i212_crit_edge

if.end41.for.body.i212_crit_edge:                 ; preds = %if.end41
  br label %for.body.i212

if.end41.for.end.i214_crit_edge:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i214

for.body.i212:                                    ; preds = %for.inc.i.for.body.i212_crit_edge, %if.end41.for.body.i212_crit_edge
  %restore.091.i = phi ptr [ %restore.0.i, %for.inc.i.for.body.i212_crit_edge ], [ %restore.089.i, %if.end41.for.body.i212_crit_edge ]
  %obj_id1.i.i = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %restore.091.i, i32 0, i32 4
  %131 = ptrtoint ptr %obj_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %obj_id1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %123)
  %cmp.i.i211 = icmp eq i32 %132, %123
  br i1 %cmp.i.i211, label %restore_equal.exit.i, label %for.body.i212.for.inc.i_crit_edge

for.body.i212.for.inc.i_crit_edge:                ; preds = %for.body.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

restore_equal.exit.i:                             ; preds = %for.body.i212
  %post_act_handle2.i.i = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %restore.091.i, i32 0, i32 3
  %133 = ptrtoint ptr %post_act_handle2.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %post_act_handle2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %134, %post_act_handle.0
  br i1 %cmp3.i.i, label %restore_equal.exit.i.add_ref.i224_crit_edge, label %restore_equal.exit.i.for.inc.i_crit_edge

restore_equal.exit.i.for.inc.i_crit_edge:         ; preds = %restore_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

restore_equal.exit.i.add_ref.i224_crit_edge:      ; preds = %restore_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %add_ref.i224

for.inc.i:                                        ; preds = %restore_equal.exit.i.for.inc.i_crit_edge, %for.body.i212.for.inc.i_crit_edge
  %135 = ptrtoint ptr %restore.091.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %restore.0.i = load ptr, ptr %restore.091.i, align 4
  %tobool4.not.i = icmp eq ptr %restore.0.i, null
  br i1 %tobool4.not.i, label %for.inc.i.for.end.i214_crit_edge, label %for.inc.i.for.body.i212_crit_edge

for.inc.i.for.body.i212_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i212

for.inc.i.for.end.i214_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i214

for.end.i214:                                     ; preds = %for.inc.i.for.end.i214_crit_edge, %if.end41.for.end.i214_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %136 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i213 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %136, i32 noundef 3520, i32 noundef 28) #10
  %tobool17.not.i = icmp eq ptr %call7.i.i.i213, null
  br i1 %tobool17.not.i, label %sample_restore_get.exit.thread, label %if.end19.i

sample_restore_get.exit.thread:                   ; preds = %for.end.i214
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %restore_lock.i) #7
  %restore239 = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %restore239 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 -12 to ptr), ptr %restore239, align 4
  br label %if.then45

if.end19.i:                                       ; preds = %for.end.i214
  %obj_id20.i = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %call7.i.i.i213, i32 0, i32 4
  %138 = ptrtoint ptr %obj_id20.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %123, ptr %obj_id20.i, align 4
  %post_act_handle21.i = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %call7.i.i.i213, i32 0, i32 3
  %139 = ptrtoint ptr %post_act_handle21.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %post_act_handle.0, ptr %post_act_handle21.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mod_acts.i.i) #7
  %140 = call ptr @memset(ptr %mod_acts.i.i, i32 0, i32 16)
  %call.i.i215 = call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %128, ptr noundef nonnull %mod_acts.i.i, i32 noundef 8, i32 noundef 0, i32 noundef %123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i215)
  %tobool.not.i.i216 = icmp eq i32 %call.i.i215, 0
  br i1 %tobool.not.i.i216, label %if.end.i.i217, label %if.end19.i.err_set_regc0.i.i_crit_edge

if.end19.i.err_set_regc0.i.i_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_set_regc0.i.i

if.end.i.i217:                                    ; preds = %if.end19.i
  %tobool1.not.i.i = icmp eq ptr %post_act_handle.0, null
  br i1 %tobool1.not.i.i, label %if.end.i.i217.if.end7.i.i_crit_edge, label %if.then2.i.i

if.end.i.i217.if.end7.i.i_crit_edge:              ; preds = %if.end.i.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i217
  %call3.i.i = call i32 @mlx5e_tc_post_act_set_handle(ptr noundef %128, ptr noundef nonnull %post_act_handle.0, ptr noundef nonnull %mod_acts.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.if.end7.i.i_crit_edge, label %if.then2.i.i.err_post_act.i.i_crit_edge

if.then2.i.i.err_post_act.i.i_crit_edge:          ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_post_act.i.i

if.then2.i.i.if.end7.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then2.i.i.if.end7.i.i_crit_edge, %if.end.i.i217.if.end7.i.i_crit_edge
  %141 = ptrtoint ptr %mod_acts.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %mod_acts.i.i, align 4
  %conv.i.i = trunc i32 %142 to i8
  %actions.i.i = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_acts.i.i, i32 0, i32 3
  %143 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %actions.i.i, align 4
  %call8.i.i = call ptr @mlx5_modify_header_alloc(ptr noundef %128, i8 noundef zeroext 8, i8 noundef zeroext %conv.i.i, ptr noundef %144) #7
  %cmp.i.i.i = icmp ugt ptr %call8.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then10.i.i, label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %call8.i.i to i32
  br label %err_post_act.i.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %mod_acts.i.i) #7
  br label %sample_modify_hdr_get.exit.i

err_post_act.i.i:                                 ; preds = %if.then10.i.i, %if.then2.i.i.err_post_act.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call3.i.i, %if.then2.i.i.err_post_act.i.i_crit_edge ], [ %145, %if.then10.i.i ]
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %mod_acts.i.i) #7
  br label %err_set_regc0.i.i

err_set_regc0.i.i:                                ; preds = %err_post_act.i.i, %if.end19.i.err_set_regc0.i.i_crit_edge
  %err.1.i.i = phi i32 [ %call.i.i215, %if.end19.i.err_set_regc0.i.i_crit_edge ], [ %err.0.i.i, %err_post_act.i.i ]
  %146 = inttoptr i32 %err.1.i.i to ptr
  br label %sample_modify_hdr_get.exit.i

sample_modify_hdr_get.exit.i:                     ; preds = %err_set_regc0.i.i, %if.end12.i.i
  %retval.0.i.i = phi ptr [ %146, %err_set_regc0.i.i ], [ %call8.i.i, %if.end12.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mod_acts.i.i) #7
  %cmp.i83.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83.i, label %sample_modify_hdr_get.exit.i.err_modify_hdr.i_crit_edge, label %if.end26.i

sample_modify_hdr_get.exit.i.err_modify_hdr.i_crit_edge: ; preds = %sample_modify_hdr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_modify_hdr.i

if.end26.i:                                       ; preds = %sample_modify_hdr_get.exit.i
  %modify_hdr27.i = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %call7.i.i.i213, i32 0, i32 1
  %147 = ptrtoint ptr %modify_hdr27.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %retval.0.i.i, ptr %modify_hdr27.i, align 8
  %call28.i = call ptr @esw_add_restore_rule(ptr noundef %126, i32 noundef %123) #7
  %rule.i = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %call7.i.i.i213, i32 0, i32 2
  %148 = ptrtoint ptr %rule.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call28.i, ptr %rule.i, align 4
  %cmp.i84.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.i, label %if.then31.i, label %if.end34.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %modify_hdr27.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %modify_hdr27.i, align 8
  call void @mlx5_modify_header_dealloc(ptr noundef %128, ptr noundef %150) #7
  br label %err_modify_hdr.i

if.end34.i:                                       ; preds = %if.end26.i
  %151 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i210, align 4
  %153 = ptrtoint ptr %call7.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %152, ptr %call7.i.i.i213, align 8
  %tobool.not.i87.i = icmp eq ptr %152, null
  br i1 %tobool.not.i87.i, label %if.end34.i.hlist_add_head.exit.i221_crit_edge, label %do.body12.i.i219

if.end34.i.hlist_add_head.exit.i221_crit_edge:    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.i221

do.body12.i.i219:                                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i218 = getelementptr inbounds %struct.hlist_node, ptr %152, i32 0, i32 1
  %154 = ptrtoint ptr %pprev.i.i218 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %call7.i.i.i213, ptr %pprev.i.i218, align 4
  br label %hlist_add_head.exit.i221

hlist_add_head.exit.i221:                         ; preds = %do.body12.i.i219, %if.end34.i.hlist_add_head.exit.i221_crit_edge
  %155 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %call7.i.i.i213, ptr %arrayidx.i210, align 4
  %pprev34.i.i220 = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i213, i32 0, i32 1
  %156 = ptrtoint ptr %pprev34.i.i220 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %arrayidx.i210, ptr %pprev34.i.i220, align 4
  br label %add_ref.i224

add_ref.i224:                                     ; preds = %hlist_add_head.exit.i221, %restore_equal.exit.i.add_ref.i224_crit_edge
  %restore.1.i = phi ptr [ %call7.i.i.i213, %hlist_add_head.exit.i221 ], [ %restore.091.i, %restore_equal.exit.i.add_ref.i224_crit_edge ]
  %count.i222 = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %restore.1.i, i32 0, i32 5
  %157 = ptrtoint ptr %count.i222 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %count.i222, align 4
  %inc.i223 = add i32 %158, 1
  store i32 %inc.i223, ptr %count.i222, align 4
  br label %sample_restore_get.exit

err_modify_hdr.i:                                 ; preds = %if.then31.i, %sample_modify_hdr_get.exit.i.err_modify_hdr.i_crit_edge
  %err.0.in.i = phi ptr [ %call28.i, %if.then31.i ], [ %retval.0.i.i, %sample_modify_hdr_get.exit.i.err_modify_hdr.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i213) #7
  br label %sample_restore_get.exit

sample_restore_get.exit:                          ; preds = %err_modify_hdr.i, %add_ref.i224
  %retval.0.i225 = phi ptr [ %restore.1.i, %add_ref.i224 ], [ %err.0.in.i, %err_modify_hdr.i ]
  call void @mutex_unlock(ptr noundef %restore_lock.i) #7
  %restore = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %restore to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %retval.0.i225, ptr %restore, align 4
  %cmp.i226 = icmp ugt ptr %retval.0.i225, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %sample_restore_get.exit.if.then45_crit_edge, label %if.end48

sample_restore_get.exit.if.then45_crit_edge:      ; preds = %sample_restore_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.then45:                                        ; preds = %sample_restore_get.exit.if.then45_crit_edge, %sample_restore_get.exit.thread
  %retval.0.i225241 = phi ptr [ inttoptr (i32 -12 to ptr), %sample_restore_get.exit.thread ], [ %retval.0.i225, %sample_restore_get.exit.if.then45_crit_edge ]
  %160 = ptrtoint ptr %retval.0.i225241 to i32
  br label %err_sample_restore

if.end48:                                         ; preds = %sample_restore_get.exit
  %call49 = call ptr @mlx5_alloc_flow_attr(i32 noundef 8) #7
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end48.err_alloc_pre_flow_attr_crit_edge, label %if.end52

if.end48.err_alloc_pre_flow_attr_crit_edge:       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_alloc_pre_flow_attr

if.end52:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tunnel_id)
  %tobool54.not = icmp eq i32 %tunnel_id, 0
  %spec.select = select i1 %tobool54.not, i32 68, i32 100
  %161 = ptrtoint ptr %call49 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %spec.select, ptr %call49, align 4
  %162 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %restore, align 4
  %modify_hdr = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %modify_hdr, align 4
  %modify_hdr59 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 2
  %166 = ptrtoint ptr %modify_hdr59 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %165, ptr %modify_hdr59, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 15
  %167 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 16, ptr %flags, align 4
  %inner_match_level = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 11
  %168 = ptrtoint ptr %inner_match_level to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %inner_match_level, align 4
  %inner_match_level60 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 11
  %170 = ptrtoint ptr %inner_match_level60 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %inner_match_level60, align 4
  %outer_match_level = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 12
  %171 = ptrtoint ptr %outer_match_level to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %outer_match_level, align 1
  %outer_match_level61 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 12
  %173 = ptrtoint ptr %outer_match_level61 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %outer_match_level61, align 1
  %chain = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 6
  %174 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %chain, align 4
  %chain62 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 6
  %176 = ptrtoint ptr %chain62 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %chain62, align 4
  %prio = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 7
  %177 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %prio, align 4
  %prio63 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 7
  %179 = ptrtoint ptr %prio63 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %prio63, align 4
  %180 = ptrtoint ptr %sample_attr6 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sample_attr6, align 4
  %sample_attr65 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 4
  %182 = ptrtoint ptr %sample_attr65 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %sample_attr65, align 4
  %183 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %call7.i.i, align 8
  %sampler_id = getelementptr inbounds %struct.mlx5e_sampler, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %sampler_id to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sampler_id, align 4
  %sampler_id67 = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %5, i32 0, i32 4
  %187 = ptrtoint ptr %sampler_id67 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %sampler_id67, align 4
  %188 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 0, i32 16
  %in_mdev = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 1
  %189 = ptrtoint ptr %in_mdev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %in_mdev, align 4
  %in_mdev69 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call49, i32 1, i32 1
  %191 = ptrtoint ptr %in_mdev69 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %in_mdev69, align 4
  %192 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %0, align 4
  %194 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %188, align 4
  %call71 = call ptr @mlx5_eswitch_add_offloaded_rule(ptr noundef %8, ptr noundef %spec, ptr noundef nonnull %call49) #7
  %pre_rule = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 3
  %195 = ptrtoint ptr %pre_rule to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call71, ptr %pre_rule, align 4
  %cmp.i227 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %call71 to i32
  call void @kfree(ptr noundef nonnull %call49) #7
  br label %err_alloc_pre_flow_attr

if.end77:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %pre_attr78 = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 2
  %197 = ptrtoint ptr %pre_attr78 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call49, ptr %pre_attr78, align 8
  br label %cleanup93

err_alloc_pre_flow_attr:                          ; preds = %if.then74, %if.end48.err_alloc_pre_flow_attr_crit_edge
  %err.1 = phi i32 [ %196, %if.then74 ], [ -12, %if.end48.err_alloc_pre_flow_attr_crit_edge ]
  %198 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %restore, align 4
  call fastcc void @sample_restore_put(ptr noundef %tc_psample, ptr noundef %199)
  br label %err_sample_restore

err_sample_restore:                               ; preds = %err_alloc_pre_flow_attr, %if.then45
  %err.2 = phi i32 [ %160, %if.then45 ], [ %err.1, %err_alloc_pre_flow_attr ]
  %200 = ptrtoint ptr %reg_c0_obj_pool to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reg_c0_obj_pool, align 4
  %202 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %obj_id, align 4
  %call83 = call i32 @mapping_remove(ptr noundef %201, i32 noundef %203) #7
  br label %err_obj_id

err_obj_id:                                       ; preds = %err_sample_restore, %if.end33.err_obj_id_crit_edge
  %err.3 = phi i32 [ %call38, %if.end33.err_obj_id_crit_edge ], [ %err.2, %err_sample_restore ]
  %204 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call7.i.i, align 8
  call fastcc void @sampler_put(ptr noundef %tc_psample, ptr noundef %205)
  br label %err_sampler

err_sampler:                                      ; preds = %err_obj_id, %if.then30
  %err.4 = phi i32 [ %107, %if.then30 ], [ %err.3, %err_obj_id ]
  %post_rule = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 5
  %206 = ptrtoint ptr %post_rule to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %post_rule, align 4
  %tobool85.not = icmp eq ptr %207, null
  br i1 %tobool85.not, label %err_sampler.err_post_rule_crit_edge, label %if.then86

err_sampler.err_post_rule_crit_edge:              ; preds = %err_sampler
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_post_rule

if.then86:                                        ; preds = %err_sampler
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tbl_attr.i) #7
  %208 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %tbl_attr.i, i32 0, i32 1
  %209 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %tbl_attr.i, i32 0, i32 2
  %210 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %tbl_attr.i, i32 0, i32 3
  %post_attr.i = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %call7.i.i, i32 0, i32 4
  %211 = ptrtoint ptr %post_attr.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %post_attr.i, align 8
  call void @mlx5_eswitch_del_offloaded_rule(ptr noundef %8, ptr noundef nonnull %207, ptr noundef %212) #7
  %213 = ptrtoint ptr %post_attr.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %post_attr.i, align 8
  call void @kfree(ptr noundef %214) #7
  %chain.i229 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 6
  %215 = ptrtoint ptr %chain.i229 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %chain.i229, align 4
  %217 = ptrtoint ptr %tbl_attr.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %tbl_attr.i, align 4
  %prio.i230 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 7
  %218 = ptrtoint ptr %prio.i230 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %prio.i230, align 4
  %220 = ptrtoint ptr %208 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %208, align 4
  %221 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %0, align 4
  %vport.i231 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %vport.i231 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %vport.i231, align 4
  %225 = ptrtoint ptr %209 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %224, ptr %209, align 2
  %226 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @mlx5_esw_vport_tbl_sample_ns, ptr %210, align 4
  call void @mlx5_esw_vporttbl_put(ptr noundef %8, ptr noundef nonnull %tbl_attr.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tbl_attr.i) #7
  br label %err_post_rule

err_post_rule:                                    ; preds = %if.then86, %err_sampler.err_post_rule_crit_edge
  %tobool88.not = icmp eq ptr %post_act_handle.0, null
  br i1 %tobool88.not, label %err_post_rule.err_post_act_crit_edge, label %if.then89

err_post_rule.err_post_act_crit_edge:             ; preds = %err_post_rule
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_post_act

if.then89:                                        ; preds = %err_post_rule
  call void @__sanitizer_cov_trace_pc() #9
  %post_act90 = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 7
  %227 = ptrtoint ptr %post_act90 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %post_act90, align 4
  call void @mlx5e_tc_post_act_del(ptr noundef %228, ptr noundef nonnull %post_act_handle.0) #7
  br label %err_post_act

err_post_act:                                     ; preds = %if.then89, %err_post_rule.err_post_act_crit_edge, %add_post_rule.exit, %cleanup
  %err.6 = phi i32 [ %25, %cleanup ], [ %err.4, %if.then89 ], [ %err.4, %err_post_rule.err_post_act_crit_edge ], [ %retval.0.i, %add_post_rule.exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %229 = inttoptr i32 %err.6 to ptr
  br label %cleanup93

cleanup93:                                        ; preds = %err_post_act, %if.end77, %if.end.cleanup93_crit_edge, %entry.cleanup93_crit_edge
  %retval.0 = phi ptr [ %229, %err_post_act ], [ %call71, %if.end77 ], [ inttoptr (i32 -95 to ptr), %entry.cleanup93_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup93_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obj_id) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %restore_obj) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_post_act_get_ft(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_post_act_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_alloc_flow_attr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_add_offloaded_rule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sample_restore_put(ptr noundef %tc_psample, ptr noundef %restore) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %restore_lock = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %restore_lock, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %restore, i32 0, i32 5
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %restore, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  %4 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %restore, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %restore to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %restore, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__hlist_del.exit.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %restore_lock) #7
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rule = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %restore, i32 0, i32 2
  %12 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rule, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %13) #7
  %14 = ptrtoint ptr %tc_psample to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tc_psample, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %modify_hdr = getelementptr inbounds %struct.mlx5e_sample_restore, ptr %restore, i32 0, i32 1
  %18 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modify_hdr, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %17, ptr noundef %19) #7
  tail call void @kfree(ptr noundef %restore) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sampler_put(ptr noundef %tc_psample, ptr noundef %sampler) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ht_lock = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ht_lock, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.mlx5e_sampler, ptr %sampler, i32 0, i32 5
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %sampler, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.then.hash_del.exit_crit_edge, label %if.then.i.i

if.then.hash_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then
  %4 = ptrtoint ptr %sampler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sampler, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %sampler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sampler, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then.hash_del.exit_crit_edge
  %10 = ptrtoint ptr %tc_psample to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tc_psample, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %sampler_id = getelementptr inbounds %struct.mlx5e_sampler, ptr %sampler, i32 0, i32 1
  %14 = ptrtoint ptr %sampler_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sampler_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #7
  %16 = getelementptr inbounds i8, ptr %in.i, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #7
  %18 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  %19 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 167968768, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %20 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %add.ptr13.i, align 4
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %21 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %add.ptr28.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %13, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #7
  call void @kfree(ptr noundef %sampler) #7
  br label %if.end

if.end:                                           ; preds = %hash_del.exit, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %ht_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_post_act_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_sample_unoffload(ptr noundef %tc_psample, ptr nocapture noundef readnone %rule, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %tbl_attr.i = alloca %struct.mlx5_vport_tbl_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tc_psample, null
  %cmp.i = icmp ugt ptr %tc_psample, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %tc_psample to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_psample, align 4
  %sample_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %sample_attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sample_attr, align 4
  %sample_flow2 = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sample_flow2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sample_flow2, align 4
  %pre_rule = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pre_rule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pre_rule, align 4
  %pre_attr = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pre_attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pre_attr, align 4
  tail call void @mlx5_eswitch_del_offloaded_rule(ptr noundef %1, ptr noundef %7, ptr noundef %9) #7
  %restore = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %restore, align 4
  tail call fastcc void @sample_restore_put(ptr noundef nonnull %tc_psample, ptr noundef %11)
  %reg_c0_obj_pool = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %reg_c0_obj_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_c0_obj_pool, align 4
  %14 = ptrtoint ptr %sample_attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sample_attr, align 4
  %restore_obj_id = getelementptr inbounds %struct.mlx5e_sample_attr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %restore_obj_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %restore_obj_id, align 4
  %call4 = tail call i32 @mapping_remove(ptr noundef %13, i32 noundef %17) #7
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  tail call fastcc void @sampler_put(ptr noundef nonnull %tc_psample, ptr noundef %19)
  %post_act_handle = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %post_act_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %post_act_handle, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %post_act = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 7
  %22 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %post_act, align 4
  tail call void @mlx5e_tc_post_act_del(ptr noundef %23, ptr noundef nonnull %21) #7
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tbl_attr.i) #7
  %25 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %tbl_attr.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %tbl_attr.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.mlx5_vport_tbl_attr, ptr %tbl_attr.i, i32 0, i32 3
  %post_rule.i = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %post_rule.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %post_rule.i, align 4
  %post_attr.i = getelementptr inbounds %struct.mlx5e_sample_flow, ptr %5, i32 0, i32 4
  %30 = ptrtoint ptr %post_attr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %post_attr.i, align 4
  tail call void @mlx5_eswitch_del_offloaded_rule(ptr noundef %1, ptr noundef %29, ptr noundef %31) #7
  %32 = ptrtoint ptr %post_attr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %post_attr.i, align 4
  tail call void @kfree(ptr noundef %33) #7
  %chain.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 6
  %34 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chain.i, align 4
  %36 = ptrtoint ptr %tbl_attr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tbl_attr.i, align 4
  %prio.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 7
  %37 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %prio.i, align 4
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %25, align 4
  %40 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %24, align 4
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vport.i, align 4
  %44 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %26, align 2
  %45 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mlx5_esw_vport_tbl_sample_ns, ptr %27, align 4
  call void @mlx5_esw_vporttbl_put(ptr noundef %1, ptr noundef nonnull %tbl_attr.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tbl_attr.i) #7
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %46 = ptrtoint ptr %pre_attr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pre_attr, align 4
  call void @kfree(ptr noundef %47) #7
  call void @kfree(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_del_offloaded_rule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_tc_sample_init(ptr noundef %esw, ptr noundef %post_act) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2248) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %post_act, null
  %cmp.i = icmp ugt ptr %post_act, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %post_act to i32
  br label %err_post_act

if.end5:                                          ; preds = %if.end
  %post_act6 = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %post_act6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %post_act, ptr %post_act6, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %esw, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %4 = getelementptr inbounds i8, ptr %ft_attr.i, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #7
  %6 = call ptr @memset(ptr %dest.i, i32 0, i32 16)
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %act.i) #7
  %9 = getelementptr inbounds i8, ptr %act.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 32)
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %8, i32 0, i32 8, i32 0, i32 8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr i32, ptr %12, i32 16
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i27 = icmp eq i32 %15, 0
  br i1 %tobool.not.i27, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 73, i32 noundef %23) #11
  br label %sampler_termtbl_create.exit.thread

if.end.i:                                         ; preds = %if.end5
  %call3.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %8, i32 noundef 8) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end13.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %8, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i69.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i69.i to ptr
  %task11.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task11.i, align 8
  %pid12.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid12.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef %31) #11
  br label %sampler_termtbl_create.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 3
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %flags.i, align 4
  %autogroup.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 5
  %33 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %autogroup.i, align 4
  %34 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %ft_attr.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %35 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %max_fte.i, align 4
  %level.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %36 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %level.i, align 4
  %call14.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call3.i, ptr noundef nonnull %ft_attr.i) #7
  %termtbl.i = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %termtbl.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call14.i, ptr %termtbl.i, align 4
  %cmp.i.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then17.i, label %if.end27.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call14.i to i32
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %8, align 8
  %41 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i70.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i70.i to ptr
  %task25.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task25.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task25.i, align 8
  %pid26.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid26.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, i32 noundef 91, i32 noundef %46, i32 noundef %38) #11
  br label %sampler_termtbl_create.exit

if.end27.i:                                       ; preds = %if.end13.i
  %47 = ptrtoint ptr %act.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %act.i, align 4
  %manager_vport.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 17
  %48 = ptrtoint ptr %manager_vport.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %manager_vport.i, align 4
  %50 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %50, align 4
  %call29.i = call ptr @mlx5_add_flow_rules(ptr noundef %call14.i, ptr noundef null, ptr noundef nonnull %act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #7
  %termtbl_rule.i = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %termtbl_rule.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call29.i, ptr %termtbl_rule.i, align 8
  %cmp.i71.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i, label %if.then32.i, label %sampler_termtbl_create.exit.thread30

sampler_termtbl_create.exit.thread30:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %ht_lock = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %call7.i.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %ht_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5e_tc_sample_init.__key) #7
  %restore_lock = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %call7.i.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %restore_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx5e_tc_sample_init.__key.1) #7
  br label %cleanup

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call29.i to i32
  %54 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %8, align 8
  %56 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i72.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i72.i to ptr
  %task40.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task40.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task40.i, align 8
  %pid41.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid41.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid41.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, i32 noundef 100, i32 noundef %61, i32 noundef %53) #11
  %62 = ptrtoint ptr %termtbl.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %termtbl.i, align 4
  %call43.i = call i32 @mlx5_destroy_flow_table(ptr noundef %63) #7
  br label %sampler_termtbl_create.exit

sampler_termtbl_create.exit.thread:               ; preds = %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %err_post_act

sampler_termtbl_create.exit:                      ; preds = %if.then32.i, %if.then17.i
  %retval.0.i = phi i32 [ %38, %if.then17.i ], [ %53, %if.then32.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %err_post_act

err_post_act:                                     ; preds = %sampler_termtbl_create.exit, %sampler_termtbl_create.exit.thread, %if.then3
  %err.0 = phi i32 [ %1, %if.then3 ], [ %retval.0.i, %sampler_termtbl_create.exit ], [ -95, %sampler_termtbl_create.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %64 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_post_act, %sampler_termtbl_create.exit.thread30, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %64, %err_post_act ], [ %call7.i.i, %sampler_termtbl_create.exit.thread30 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_sample_cleanup(ptr noundef %tc_psample) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tc_psample, null
  %cmp.i = icmp ugt ptr %tc_psample, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %restore_lock = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %restore_lock) #7
  %ht_lock = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %ht_lock) #7
  %termtbl_rule.i = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 2
  %0 = ptrtoint ptr %termtbl_rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %termtbl_rule.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %1) #7
  %termtbl.i = getelementptr inbounds %struct.mlx5e_tc_psample, ptr %tc_psample, i32 0, i32 1
  %2 = ptrtoint ptr %termtbl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %termtbl.i, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %3) #7
  tail call void @kfree(ptr noundef nonnull %tc_psample) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_esw_vporttbl_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_clear_rule_source_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_vporttbl_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esw_add_restore_rule(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_match_to_reg_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_post_act_set_handle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_mod_hdr_dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @mlx5e_tc_sample_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c", i32 670, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5e_tc_sample_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c", i32 671, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_esw_vport_tbl_sample_ns, !7, !"mlx5_esw_vport_tbl_sample_ns", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c", i32 16, i32 45}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c", i32 73, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sampler_termtbl_create._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @sampler_termtbl_create._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c", i32 79, i32 3}
!18 = !{ptr @sampler_termtbl_create._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sampler_termtbl_create._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c", i32 91, i32 3}
!22 = !{ptr @sampler_termtbl_create._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sampler_termtbl_create._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/sample.c", i32 100, i32 3}
!26 = !{ptr @sampler_termtbl_create._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sampler_termtbl_create._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
