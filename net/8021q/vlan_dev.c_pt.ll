; ModuleID = '/llk/IR_all_yes/net/8021q/vlan_dev.c_pt.bc'
source_filename = "../net/8021q/vlan_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.42, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.42 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
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
%struct.vlan_dev_priv = type { i32, [8 x i32], i32, [16 x ptr], i16, i16, i16, ptr, ptr, [6 x i8], ptr, ptr, ptr }
%struct.vlan_priority_tci_mapping = type { i32, i16, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.vlan_pcpu_stats = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.vlan_ethhdr = type { %union.anon.123, i16, i16, i16 }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type { [6 x i8], [6 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device_path = type { i32, ptr, %union.anon.111 }
%union.anon.111 = type { %struct.anon.113, [4 x i8] }
%struct.anon.113 = type { i32, i16, i16 }
%struct.anon.112 = type { i16, i16, [6 x i8] }
%struct.net_device_path_ctx = type { ptr, ptr, i32, [2 x %struct.anon.110] }
%struct.anon.110 = type { i16, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@vlan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @vlan_dev_init, ptr @vlan_dev_uninit, ptr @vlan_dev_open, ptr @vlan_dev_stop, ptr @vlan_dev_hard_start_xmit, ptr null, ptr null, ptr @vlan_dev_change_rx_flags, ptr @vlan_dev_set_rx_mode, ptr @vlan_dev_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @vlan_dev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @vlan_dev_change_mtu, ptr @vlan_dev_neigh_setup, ptr null, ptr @vlan_dev_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlan_dev_poll_controller, ptr @vlan_dev_netpoll_setup, ptr @vlan_dev_netpoll_cleanup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlan_dev_fcoe_enable, ptr @vlan_dev_fcoe_disable, ptr @vlan_dev_fcoe_ddp_setup, ptr @vlan_dev_fcoe_ddp_done, ptr @vlan_dev_fcoe_ddp_target, ptr null, ptr @vlan_dev_fcoe_get_wwn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlan_dev_fix_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlan_dev_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlan_dev_fill_forward_path }, [80 x i8] zeroinitializer }, align 32
@vlan_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @vlan_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlan_ethtool_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vlan_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"VLAN features are set incorrectly.  Q-in-Q configurations may not work correctly.\0A\00", [45 x i8] zeroinitializer }, align 32
@vlan_passthru_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @vlan_passthru_hard_header, ptr @eth_header_parse, ptr null, ptr null, ptr null, ptr @vlan_parse_protocol }, [40 x i8] zeroinitializer }, align 32
@vlan_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @vlan_dev_hard_header, ptr @eth_header_parse, ptr null, ptr null, ptr null, ptr @vlan_parse_protocol }, [40 x i8] zeroinitializer }, align 32
@vlan_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@vlan_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vlan\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&vlan_netdev_addr_lock_key\00", [37 x i8] zeroinitializer }, align 32
@vlan_netdev_addr_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&vlan_netdev_xmit_lock_key\00", [37 x i8] zeroinitializer }, align 32
@vlan_netdev_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@vlan_fullname = external dso_local constant [0 x i8], align 1
@vlan_version = external dso_local constant [0 x i8], align 1
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 35143, i64 35144, i64 35145, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"vlan_netdev_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 819, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"vlan_ethtool_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 812, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 579, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"vlan_passthru_header_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 540, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"vlan_header_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 520, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"vlan_type\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 546, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 614, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 598, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 547, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 508, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"vlan_netdev_addr_lock_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 497, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 503, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"vlan_netdev_xmit_lock_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 496, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 271, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [24 x i8] c"../net/8021q/vlan_dev.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 685, i32 28 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @vlan_netdev_ops, ptr @vlan_ethtool_ops, ptr @.str, ptr @vlan_passthru_header_ops, ptr @vlan_header_ops, ptr @vlan_type, ptr @vlan_dev_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vlan_netdev_addr_lock_key, ptr @.str.5, ptr @vlan_netdev_xmit_lock_key, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_passthru_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_netdev_addr_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_netdev_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vlan_dev_set_ingress_priority(ptr nocapture noundef %dev, i32 noundef %skb_prio, i16 noundef zeroext %vlan_prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = and i16 %vlan_prio, 7
  %and = zext i16 %0 to i32
  %arrayidx = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i, i32 0, i32 1, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skb_prio)
  %tobool1.not = icmp eq i32 %skb_prio, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end11.sink.split_crit_edge, label %if.else

entry.if.end11.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.sink.split

if.else:                                          ; preds = %entry
  %or.cond24 = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond24, label %if.else.if.end11_crit_edge, label %if.else.if.end11.sink.split_crit_edge

if.else.if.end11.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.sink.split

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end11.sink.split:                              ; preds = %if.else.if.end11.sink.split_crit_edge, %entry.if.end11.sink.split_crit_edge
  %.sink25 = phi i32 [ -1, %entry.if.end11.sink.split_crit_edge ], [ 1, %if.else.if.end11.sink.split_crit_edge ]
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %inc = add i32 %4, %.sink25
  store i32 %inc, ptr %add.ptr.i.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %skb_prio, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_dev_set_egress_priority(ptr nocapture noundef %dev, i32 noundef %skb_prio, i16 noundef zeroext %vlan_prio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %conv = zext i16 %vlan_prio to i32
  %shl = shl nuw nsw i32 %conv, 13
  %and = and i32 %shl, 57344
  %and1 = and i32 %skb_prio, 15
  %arrayidx = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i, i32 0, i32 3, i32 %and1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %mp.068 = load ptr, ptr %arrayidx, align 4
  %tobool.not69 = icmp eq ptr %mp.068, null
  br i1 %tobool.not69, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %entry.while.body_crit_edge
  %mp.070 = phi ptr [ %mp.0, %if.end17.while.body_crit_edge ], [ %mp.068, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %mp.070 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mp.070, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %skb_prio)
  %cmp = icmp eq i32 %2, %skb_prio
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %while.body
  %vlan_qos3 = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.070, i32 0, i32 1
  %3 = ptrtoint ptr %vlan_qos3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_qos3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool5.not = icmp ne i16 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.then.if.end14.sink.split_crit_edge, label %if.else

if.then.if.end14.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.sink.split

if.else:                                          ; preds = %if.then
  %or.cond66 = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond66, label %if.else.if.end14_crit_edge, label %if.else.if.end14.sink.split_crit_edge

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.sink.split

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end14.sink.split:                              ; preds = %if.else.if.end14.sink.split_crit_edge, %if.then.if.end14.sink.split_crit_edge
  %.sink73 = phi i32 [ -1, %if.then.if.end14.sink.split_crit_edge ], [ 1, %if.else.if.end14.sink.split_crit_edge ]
  %nr_egress_mappings = getelementptr i8, ptr %dev, i32 2340
  %5 = ptrtoint ptr %nr_egress_mappings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_egress_mappings, align 4
  %inc = add i32 %6, %.sink73
  store i32 %inc, ptr %nr_egress_mappings, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge
  %conv15 = trunc i32 %shl to i16
  %7 = ptrtoint ptr %vlan_qos3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv15, ptr %vlan_qos3, align 4
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %next = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.070, i32 0, i32 2
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %8)
  %mp.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %mp.0, null
  br i1 %tobool.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %entry.while.end_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 12) #18
  %tobool22.not = icmp eq ptr %call7.i, null
  br i1 %tobool22.not, label %while.end.cleanup_crit_edge, label %if.end24

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %while.end
  %next25 = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %next25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %next25, align 8
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %skb_prio, ptr %call7.i, align 8
  %conv27 = trunc i32 %shl to i16
  %vlan_qos28 = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %vlan_qos28 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv27, ptr %vlan_qos28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !42
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end24.cleanup_crit_edge, label %if.then36

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then36:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %nr_egress_mappings37 = getelementptr i8, ptr %dev, i32 2340
  %16 = ptrtoint ptr %nr_egress_mappings37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_egress_mappings37, align 4
  %inc38 = add i32 %17, 1
  store i32 %inc38, ptr %nr_egress_mappings37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end24.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -105, %while.end.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_dev_change_flags(ptr noundef %dev, i32 noundef %flags, i32 noundef %mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mask)
  %tobool.not = icmp ult i32 %mask, 32
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %1 to i32
  %neg = xor i32 %mask, -1
  %and2 = and i32 %conv, %neg
  %and3 = and i32 %mask, %flags
  %or = or i32 %and2, %and3
  %conv4 = trunc i32 %or to i16
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv4, ptr %flags1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end20_crit_edge, label %land.lhs.true

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %xor56 = xor i16 %1, %conv4
  %5 = and i16 %xor56, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool11.not = icmp eq i16 %5, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end20_crit_edge, label %if.then12

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then12:                                        ; preds = %land.lhs.true
  %6 = and i16 %conv4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool16.not = icmp eq i16 %6, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call i32 @vlan_gvrp_request_join(ptr noundef %dev) #15
  br label %if.end20

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vlan_gvrp_request_leave(ptr noundef %dev) #15
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17, %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i58 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i58)
  %tobool.i59.not = icmp eq i32 %and1.i.i58, 0
  br i1 %tobool.i59.not, label %if.end20.cleanup_crit_edge, label %land.lhs.true23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end20
  %9 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags1, align 4
  %xor2655 = xor i16 %10, %1
  %11 = and i16 %xor2655, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool28.not = icmp eq i16 %11, 0
  br i1 %tobool28.not, label %land.lhs.true23.cleanup_crit_edge, label %if.then29

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true23
  %12 = and i16 %10, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool33.not = icmp eq i16 %12, 0
  br i1 %tobool33.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %call35 = tail call i32 @vlan_mvrp_request_join(ptr noundef %dev) #15
  br label %cleanup

if.else36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vlan_mvrp_request_leave(ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.then34, %land.lhs.true23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.else36 ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_gvrp_request_join(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_gvrp_request_leave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_mvrp_request_join(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_mvrp_request_leave(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_dev_get_realdev_name(ptr nocapture noundef readonly %dev, ptr noundef %result, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 4
  %call1 = tail call i32 @strscpy_pad(ptr noundef %result, ptr noundef %1, i32 noundef %size) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vlan_dev_inherit_address(ptr noundef %dev, ptr nocapture noundef readonly %real_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_assign_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %3, i32 noundef 6) #15
  %call = tail call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %dev) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_dev_free_egress_priority(ptr nocapture noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i, i32 0, i32 3, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not9 = icmp eq ptr %1, null
  br i1 %cmp1.not9, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %2) #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %7, null
  br i1 %cmp1.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vlan_setup(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #15
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %or2 = and i64 %1, -661538
  %and = or i64 %or2, 528385
  store i64 %and, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vlan_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %3 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %4 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vlan_dev_free, ptr %priv_destructor, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %5 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vlan_ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %7 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %max_mtu, align 4
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %8 = call ptr @memset(ptr %broadcast, i32 0, i32 6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_dev_free(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_pcpu_stats = getelementptr i8, ptr %dev, i32 2436
  %0 = ptrtoint ptr %vlan_pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan_pcpu_stats, align 4
  tail call void @free_percpu(ptr noundef %1) #15
  %2 = ptrtoint ptr %vlan_pcpu_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vlan_pcpu_stats, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, -3842
  %flags2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %flags2, align 8
  %state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %and3 = and i32 %6, 20
  %or = or i32 %and3, 2
  %state4 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %state4, align 4
  %flags5 = getelementptr i8, ptr %dev, i32 2412
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags5, align 4
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or8 = or i32 %and3, 6
  %11 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or8, ptr %state4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 267629953129, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features, align 16
  %or11 = or i64 %14, 267629957225
  store i64 %or11, ptr %features, align 16
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 137
  %15 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gso_max_size, align 8
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 137
  %17 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %16, ptr %gso_max_size.i, align 8
  %gso_max_segs = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 138
  %18 = ptrtoint ptr %gso_max_segs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_max_segs, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 138
  %20 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store volatile i16 %19, ptr %gso_max_segs.i, align 4
  %and14 = and i64 %14, 246290604622720
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str) #19
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vlan_features, align 8
  %and18 = and i64 %22, -171800788993
  %vlan_features19 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 26
  %23 = ptrtoint ptr %vlan_features19 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %and18, ptr %vlan_features19, align 8
  %hw_enc_features.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %hw_enc_features.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %hw_enc_features.i, align 16
  %and1.i = and i64 %25, 264241152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool.not.i = icmp eq i64 %and1.i, 0
  %and2.i = and i64 %25, 26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool3.not.i
  %and4.i = and i64 %25, 27109687296
  %or.i = or i64 %and4.i, 8
  %retval.0.i = select i1 %or.cond.i, i64 0, i64 %or.i
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %26 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %retval.0.i, ptr %hw_enc_features, align 16
  %mpls_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 28
  %27 = ptrtoint ptr %mpls_features to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %mpls_features, align 8
  %mpls_features21 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 28
  %29 = ptrtoint ptr %mpls_features21 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %mpls_features21, align 8
  %dev_id = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 60
  %30 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dev_id, align 2
  %dev_id22 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 60
  %32 = ptrtoint ptr %dev_id22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %dev_id22, align 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %38 to i32
  %or.i119 = or i32 %36, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i119)
  %cmp.i = icmp eq i32 %or.i119, 0
  br i1 %cmp.i, label %if.then24, label %if.end17.if.end26_crit_edge

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %dev_addr25 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %39 = ptrtoint ptr %dev_addr25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr25, align 64
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %40, i32 noundef 6) #15
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %41 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %addr_assign_type, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end17.if.end26_crit_edge
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %42 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %broadcast, align 4
  %add.ptr.i120 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 4
  %44 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i120, align 2
  %conv.i121 = zext i16 %45 to i32
  %or.i122 = or i32 %43, %conv.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i122)
  %cmp.i123 = icmp eq i32 %or.i122, 0
  br i1 %cmp.i123, label %if.then28, label %if.end26.if.end34_crit_edge

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %broadcast31 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %46 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr_len, align 1
  %conv33 = zext i8 %47 to i32
  %48 = call ptr @memcpy(ptr %broadcast, ptr %broadcast31, i32 %conv33)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end26.if.end34_crit_edge
  %fcoe_ddp_xid = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 143
  %49 = ptrtoint ptr %fcoe_ddp_xid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fcoe_ddp_xid, align 8
  %fcoe_ddp_xid35 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 143
  %51 = ptrtoint ptr %fcoe_ddp_xid35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %fcoe_ddp_xid35, align 8
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %52 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %needed_headroom, align 8
  %needed_headroom36 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %54 = ptrtoint ptr %needed_headroom36 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %needed_headroom36, align 8
  %features37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %55 = ptrtoint ptr %features37 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %features37, align 16
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %57 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %58)
  %cmp.i124 = icmp ne i16 %58, -32512
  %and.i = and i64 %56, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i125 = icmp eq i64 %and.i, 0
  %or.cond.i126 = or i1 %cmp.i124, %tobool.not.i125
  br i1 %or.cond.i126, label %vlan_hw_offload_capable.exit, label %if.end34.if.then39_crit_edge

if.end34.if.then39_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then39

vlan_hw_offload_capable.exit:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %58)
  %cmp3.i = icmp eq i16 %58, -30552
  %and6.i = and i64 %56, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i)
  %tobool7.not.i = icmp ne i64 %and6.i, 0
  %not.or.cond12.i = and i1 %cmp3.i, %tobool7.not.i
  br i1 %not.or.cond12.i, label %vlan_hw_offload_capable.exit.if.then39_crit_edge, label %if.else

vlan_hw_offload_capable.exit.if.then39_crit_edge: ; preds = %vlan_hw_offload_capable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then39

if.then39:                                        ; preds = %vlan_hw_offload_capable.exit.if.then39_crit_edge, %if.end34.if.then39_crit_edge
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %59 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @vlan_passthru_header_ops, ptr %header_ops, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %60 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hard_header_len, align 2
  br label %if.end46

if.else:                                          ; preds = %vlan_hw_offload_capable.exit
  call void @__sanitizer_cov_trace_pc() #17
  %header_ops41 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %62 = ptrtoint ptr %header_ops41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @vlan_header_ops, ptr %header_ops41, align 4
  %hard_header_len42 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %63 = ptrtoint ptr %hard_header_len42 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hard_header_len42, align 2
  %add = add i16 %64, 4
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then39
  %add.sink = phi i16 [ %add, %if.else ], [ %61, %if.then39 ]
  %hard_header_len45 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %65 = ptrtoint ptr %hard_header_len45 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %add.sink, ptr %hard_header_len45, align 2
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %66 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @vlan_netdev_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %67 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @vlan_type, ptr %type, align 4
  %dep_map.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %68 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @vlan_netdev_addr_lock_key, i32 noundef 0, i8 noundef zeroext %69, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %70 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp1.not.i.i = icmp eq i32 %71, 0
  br i1 %cmp1.not.i.i, label %if.end46.vlan_dev_set_lockdep_class.exit_crit_edge, label %for.body.lr.ph.i.i

if.end46.vlan_dev_set_lockdep_class.exit_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_dev_set_lockdep_class.exit

for.body.lr.ph.i.i:                               ; preds = %if.end46
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %72 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %_tx.i.i, align 128
  %dep_map.i.i.i = getelementptr %struct.netdev_queue, ptr %73, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner.i.i.i = getelementptr %struct.netdev_queue, ptr %73, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %74 = ptrtoint ptr %wait_type_inner.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %wait_type_inner.i.i.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @vlan_netdev_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %75, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %76 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %77
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.vlan_dev_set_lockdep_class.exit_crit_edge

for.body.i.i.vlan_dev_set_lockdep_class.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_dev_set_lockdep_class.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

vlan_dev_set_lockdep_class.exit:                  ; preds = %for.body.i.i.vlan_dev_set_lockdep_class.exit_crit_edge, %if.end46.vlan_dev_set_lockdep_class.exit_crit_edge
  %call48 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 80, i32 noundef 8, i32 noundef 3264) #20
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then62.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %vlan_dev_set_lockdep_class.exit
  %call51132 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %78 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call51132, i32 %78)
  %cmp133 = icmp ult i32 %call51132, %78
  br i1 %cmp133, label %for.body.lr.ph, label %for.cond.preheader.if.end63_crit_edge

for.cond.preheader.if.end63_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %79 = ptrtoint ptr %call48 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call51134 = phi i32 [ %call51132, %for.body.lr.ph ], [ %call51, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call51134
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  %add54 = add i32 %81, %79
  %82 = inttoptr i32 %add54 to ptr
  %syncp = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %82, i32 0, i32 5
  %dep_map.i128 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %82, i32 0, i32 5, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i128, ptr noundef nonnull @.str.1, ptr noundef nonnull @vlan_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %83 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %syncp, align 4
  %call51 = tail call i32 @cpumask_next(i32 noundef %call51134, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call51, %84
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end63_crit_edge

for.body.if.end63_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.then62.critedge:                               ; preds = %vlan_dev_set_lockdep_class.exit
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_pcpu_stats.c = getelementptr i8, ptr %dev, i32 2436
  %85 = ptrtoint ptr %vlan_pcpu_stats.c to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %vlan_pcpu_stats.c, align 4
  br label %cleanup

if.end63:                                         ; preds = %for.body.if.end63_crit_edge, %for.cond.preheader.if.end63_crit_edge
  %vlan_pcpu_stats = getelementptr i8, ptr %dev, i32 2436
  %86 = ptrtoint ptr %vlan_pcpu_stats to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call48, ptr %vlan_pcpu_stats, align 4
  %dev_tracker = getelementptr i8, ptr %dev, i32 2420
  %tobool.not.i129 = icmp eq ptr %1, null
  br i1 %tobool.not.i129, label %if.end63.cleanup_crit_edge, label %do.body1.i.i

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end63
  %87 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !43
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %88 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %96, %90
  %97 = inttoptr i32 %add.i.i to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %add13.i.i = add i32 %99, 1
  store i32 %add13.i.i, ptr %97, align 4
  %100 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !44
  %and.i.i.i.i = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !45

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #15, !srcloc !46
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 3264) #15
  br label %cleanup

cleanup:                                          ; preds = %dev_hold.exit.i, %if.end63.cleanup_crit_edge, %if.then62.critedge
  %retval.0 = phi i32 [ -12, %if.then62.critedge ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %dev_hold.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_dev_uninit(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.while.cond.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i, i32 0, i32 3, i32 %i.010.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.not9.i = icmp eq ptr %1, null
  br i1 %cmp1.not9.i, label %while.cond.preheader.i.for.inc.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.inc.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %2 = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef nonnull %2) #15
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.not.i = icmp eq ptr %7, null
  br i1 %cmp1.not.i, label %while.body.i.for.inc.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.body.i.for.inc.i_crit_edge, %while.cond.preheader.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %vlan_dev_free_egress_priority.exit, label %for.inc.i.while.cond.preheader.i_crit_edge

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader.i

vlan_dev_free_egress_priority.exit:               ; preds = %for.inc.i
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %8 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %real_dev, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %vlan_dev_free_egress_priority.exit.dev_put_track.exit_crit_edge, label %do.body1.i.i

vlan_dev_free_egress_priority.exit.dev_put_track.exit_crit_edge: ; preds = %vlan_dev_free_egress_priority.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %vlan_dev_free_egress_priority.exit
  %dev_tracker = getelementptr i8, ptr %dev, i32 2420
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #15
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !43
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i.i = add i32 %22, -1
  store i32 %add13.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !44
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !45

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #15, !srcloc !46
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %vlan_dev_free_egress_priority.exit.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags2 = getelementptr i8, ptr %dev, i32 2412
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags2, align 4
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool4.not = icmp eq i16 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %dev_addr5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr5, align 64
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %10, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end.if.end15_crit_edge, label %land.lhs.true7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

land.lhs.true7:                                   ; preds = %if.end
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %19 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr_assign_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.not.i = icmp eq i8 %20, 2
  br i1 %cmp.not.i, label %vlan_dev_inherit_address.exit.thread, label %if.then9

vlan_dev_inherit_address.exit.thread:             ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %10, i32 noundef 6) #15
  %call.i = tail call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %dev) #15
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true7
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  %call11 = tail call i32 @dev_uc_add(ptr noundef %1, ptr noundef %22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then9.out_crit_edge, label %if.then9.if.end15_crit_edge

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %vlan_dev_inherit_address.exit.thread, %if.end.if.end15_crit_edge
  %flags16 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %23 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags16, align 8
  %and17 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end25_crit_edge, label %if.then19

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then19:                                        ; preds = %if.end15
  %call20 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then19.del_unicast_crit_edge, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then19.del_unicast_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %del_unicast

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %25 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags16, align 8
  %and27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end35_crit_edge, label %if.then29

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then29:                                        ; preds = %if.end25
  %call30 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %clear_allmulti, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %real_dev_addr = getelementptr i8, ptr %dev, i32 2424
  %27 = ptrtoint ptr %dev_addr5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr5, align 64
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = ptrtoint ptr %real_dev_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %real_dev_addr, align 4
  %add.ptr.i105 = getelementptr i8, ptr %28, i32 4
  %32 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i105, align 2
  %add.ptr1.i106 = getelementptr i8, ptr %dev, i32 2428
  %34 = ptrtoint ptr %add.ptr1.i106 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i106, align 2
  %flags37 = getelementptr i8, ptr %dev, i32 2412
  %35 = ptrtoint ptr %flags37 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags37, align 4
  %37 = and i16 %36, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool40.not = icmp eq i16 %37, 0
  br i1 %tobool40.not, label %if.end35.if.end43_crit_edge, label %if.then41

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %call42 = tail call i32 @vlan_gvrp_request_join(ptr noundef %dev) #15
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end35.if.end43_crit_edge
  %38 = ptrtoint ptr %flags37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags37, align 4
  %40 = and i16 %39, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool47.not = icmp eq i16 %40, 0
  br i1 %tobool47.not, label %if.end43.if.end50_crit_edge, label %if.then48

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %call49 = tail call i32 @vlan_mvrp_request_join(ptr noundef %dev) #15
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end43.if.end50_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %land.lhs.true53, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end50
  %44 = ptrtoint ptr %flags37 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags37, align 4
  %46 = and i16 %45, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool57.not = icmp eq i16 %46, 0
  br i1 %tobool57.not, label %if.then58, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_on(ptr noundef %dev) #15
  br label %cleanup

clear_allmulti:                                   ; preds = %if.then29
  %47 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags16, align 8
  %and61 = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %clear_allmulti.del_unicast_crit_edge, label %if.then63

clear_allmulti.del_unicast_crit_edge:             ; preds = %clear_allmulti
  call void @__sanitizer_cov_trace_pc() #17
  br label %del_unicast

if.then63:                                        ; preds = %clear_allmulti
  call void @__sanitizer_cov_trace_pc() #17
  %call64 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef -1) #15
  br label %del_unicast

del_unicast:                                      ; preds = %if.then63, %clear_allmulti.del_unicast_crit_edge, %if.then19.del_unicast_crit_edge
  %err.0 = phi i32 [ %call20, %if.then19.del_unicast_crit_edge ], [ %call30, %if.then63 ], [ %call30, %clear_allmulti.del_unicast_crit_edge ]
  %49 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr, align 64
  %51 = ptrtoint ptr %dev_addr5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr5, align 64
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 4
  %xor.i107 = xor i32 %56, %54
  %add.ptr.i108 = getelementptr i8, ptr %50, i32 4
  %57 = ptrtoint ptr %add.ptr.i108 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i108, align 2
  %add.ptr1.i109 = getelementptr i8, ptr %52, i32 4
  %59 = ptrtoint ptr %add.ptr1.i109 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr1.i109, align 2
  %xor37.i110 = xor i16 %60, %58
  %xor3.i111 = zext i16 %xor37.i110 to i32
  %or.i112 = or i32 %xor.i107, %xor3.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i112)
  %cmp.i113 = icmp eq i32 %or.i112, 0
  br i1 %cmp.i113, label %del_unicast.out_crit_edge, label %if.then69

del_unicast.out_crit_edge:                        ; preds = %del_unicast
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then69:                                        ; preds = %del_unicast
  call void @__sanitizer_cov_trace_pc() #17
  %call71 = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef %50) #15
  br label %out

out:                                              ; preds = %if.then69, %del_unicast.out_crit_edge, %if.then9.out_crit_edge
  %err.1 = phi i32 [ %err.0, %del_unicast.out_crit_edge ], [ %err.0, %if.then69 ], [ %call11, %if.then9.out_crit_edge ]
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then58, %land.lhs.true53.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -100, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %land.lhs.true53.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  tail call void @dev_mc_unsync(ptr noundef %1, ptr noundef %dev) #15
  tail call void @dev_uc_unsync(ptr noundef %1, ptr noundef %dev) #15
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef -1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and4 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef -1) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %dev_addr9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr9, align 64
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
  br i1 %cmp.i, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef %7) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %flags15 = getelementptr i8, ptr %dev, i32 2412
  %18 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags15, align 4
  %20 = and i16 %19, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool17.not = icmp eq i16 %20, 0
  br i1 %tobool17.not, label %if.then18, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_hard_start_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %h_vlan_proto = getelementptr inbounds %struct.vlan_ethhdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %h_vlan_proto to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %h_vlan_proto, align 2
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %4 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp eq i16 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr i8, ptr %dev, i32 2412
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %vlan_id = getelementptr i8, ptr %dev, i32 2410
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 2
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !47
  %and.i = and i32 %12, 15
  %arrayidx.i = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i, i32 0, i32 3, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %mp.09.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not10.i = icmp eq ptr %mp.09.i, null
  br i1 %tobool.not10.i, label %if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_dev_get_egress_qos_mask.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %mp.011.i = phi ptr [ %mp.0.i, %if.end.i.while.body.i_crit_edge ], [ %mp.09.i, %if.then.while.body.i_crit_edge ]
  %14 = ptrtoint ptr %mp.011.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mp.011.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp.i = icmp eq i32 %15, %12
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_qos.i = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.011.i, i32 0, i32 1
  %16 = ptrtoint ptr %vlan_qos.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_qos.i, align 4
  br label %vlan_dev_get_egress_qos_mask.exit

if.end.i:                                         ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.011.i, i32 0, i32 2
  %18 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %mp.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %mp.0.i, null
  br i1 %tobool.not.i, label %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_dev_get_egress_qos_mask.exit

vlan_dev_get_egress_qos_mask.exit:                ; preds = %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge, %if.then.i, %if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge
  %retval.0.i = phi i16 [ %17, %if.then.i ], [ 0, %if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge ], [ 0, %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge ]
  %or114 = or i16 %retval.0.i, %10
  %19 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vlan_proto, align 4
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %21 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %22 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or114, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %23 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end

if.end:                                           ; preds = %vlan_dev_get_egress_qos_mask.exit, %lor.lhs.false.if.end_crit_edge
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %24 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %real_dev, align 4
  %26 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %26, align 8
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len9, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !44
  %and.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not, label %if.end15, label %if.then13, !prof !48

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %netpoll.i = getelementptr i8, ptr %dev, i32 2440
  %31 = ptrtoint ptr %netpoll.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netpoll.i, align 4
  %call.i = tail call i32 @netpoll_send_skb(ptr noundef %32, ptr noundef %skb) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #15
  %33 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16, label %do.body34 [
    i32 2, label %if.end15.if.then27_crit_edge
    i32 0, label %if.end15.if.then27_crit_edge124
  ]

if.end15.if.then27_crit_edge124:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

if.end15.if.then27_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27

if.then27:                                        ; preds = %if.end15.if.then27_crit_edge, %if.end15.if.then27_crit_edge124
  %vlan_pcpu_stats = getelementptr i8, ptr %dev, i32 2436
  %34 = ptrtoint ptr %vlan_pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vlan_pcpu_stats, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i115 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i115 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %add = add i32 %42, %36
  %43 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %43, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %if.then27.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

if.then27.u64_stats_update_begin.exit_crit_edge:  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %if.then27
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !49
  %47 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %52, ptrtoint (ptr @lockdep_recursion to i32)
  %53 = inttoptr i32 %add.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !50
  %56 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i.i.i7.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool20.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %60 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %64 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i.i.i9.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %67, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !51
  %68 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %71, ptrtoint (ptr @hardirqs_enabled to i32)
  %72 = inttoptr i32 %add47.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !52
  %75 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i.i.i12.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %78, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool54.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !48

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %if.then27.u64_stats_update_begin.exit_crit_edge
  %79 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !53
  %dep_map.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %43, i32 0, i32 5, i32 0, i32 1
  %81 = tail call ptr @llvm.returnaddress(i32 0) #15
  %82 = ptrtoint ptr %81 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %82) #15
  %tx_packets = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %43, i32 0, i32 3
  %83 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %tx_packets, align 8
  %inc = add i64 %84, 1
  store i64 %inc, ptr %tx_packets, align 8
  %conv30 = zext i32 %29 to i64
  %tx_bytes = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %43, i32 0, i32 4
  %85 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %tx_bytes, align 8
  %add31 = add i64 %86, %conv30
  store i64 %add31, ptr %tx_bytes, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %82) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !54
  %87 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %88, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %cleanup

do.body34:                                        ; preds = %if.end15
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !43
  %vlan_pcpu_stats53 = getelementptr i8, ptr %dev, i32 2436
  %90 = ptrtoint ptr %vlan_pcpu_stats53 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vlan_pcpu_stats53, align 4
  %tx_dropped = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %tx_dropped to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !32) #15
  %and.i116 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i116 to ptr
  %cpu56 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu56 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu56, align 4
  %arrayidx57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx57, align 4
  %add58 = add i32 %98, %92
  %99 = inttoptr i32 %add58 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add59 = add i32 %101, 1
  store i32 %add59, ptr %99, align 4
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !44
  %and.i.i117 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i117)
  %tobool70.not = icmp eq i32 %and.i.i117, 0
  br i1 %tobool70.not, label %if.then79, label %do.body34.do.end82_crit_edge, !prof !45

do.body34.do.end82_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end82

if.then79:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.body34.do.end82_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %89) #15, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %u64_stats_update_begin.exit, %if.then13
  %retval.0 = phi i32 [ %call.i, %if.then13 ], [ %call16, %do.end82 ], [ %call16, %u64_stats_update_begin.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_dev_change_rx_flags(ptr nocapture noundef readonly %dev, i32 noundef %change) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then:                                          ; preds = %entry
  %and2 = and i32 %change, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond = select i1 %tobool7.not, i32 -1, i32 1
  %call8 = tail call i32 @dev_set_allmulti(ptr noundef %1, i32 noundef %cond) #15
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %and9 = and i32 %change, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end18_crit_edge, label %if.then11

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and13 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, i32 -1, i32 1
  %call16 = tail call i32 @dev_set_promiscuity(ptr noundef %1, i32 noundef %cond15) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_dev_set_rx_mode(ptr noundef %vlan_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr i8, ptr %vlan_dev, i32 2416
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 4
  %call1 = tail call i32 @dev_mc_sync(ptr noundef %1, ptr noundef %vlan_dev) #15
  %2 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %real_dev, align 4
  %call4 = tail call i32 @dev_uc_sync(ptr noundef %3, ptr noundef %vlan_dev) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i37 = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i37, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4:                                          ; preds = %if.end
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %xor.i = xor i32 %12, %3
  %13 = ptrtoint ptr %add.ptr.i.i37 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i37, align 2
  %add.ptr1.i = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %16, %14
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end4.if.end14_crit_edge, label %if.then8

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then8:                                         ; preds = %if.end4
  %call11 = tail call i32 @dev_uc_add(ptr noundef %1, ptr noundef %sa_data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %dev_addr15 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr15, align 64
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %xor.i38 = xor i32 %24, %22
  %add.ptr.i39 = getelementptr i8, ptr %18, i32 4
  %25 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i39, align 2
  %add.ptr1.i40 = getelementptr i8, ptr %20, i32 4
  %27 = ptrtoint ptr %add.ptr1.i40 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i40, align 2
  %xor37.i41 = xor i16 %28, %26
  %xor3.i42 = zext i16 %xor37.i41 to i32
  %or.i43 = or i32 %xor.i38, %xor3.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i43)
  %cmp.i44 = icmp eq i32 %or.i43, 0
  br i1 %cmp.i44, label %if.end14.out_crit_edge, label %if.then18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = tail call i32 @dev_uc_del(ptr noundef %1, ptr noundef %18) #15
  br label %out

out:                                              ; preds = %if.then18, %if.end14.out_crit_edge, %if.end.out_crit_edge
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call11, %if.then8.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  %ifrr = alloca %struct.ifreq, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ifrr) #15
  %4 = call ptr @memset(ptr %ifrr, i32 255, i32 32)
  %call3 = call i32 @strscpy_pad(ptr noundef nonnull %ifrr, ptr noundef %1, i32 noundef 16) #15
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifrr, i32 0, i32 1
  %ifr_ifru4 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %ifr_ifru, ptr %ifr_ifru4, i32 16)
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %cmd, label %entry.if.end18_crit_edge [
    i32 35248, label %sw.bb
    i32 35143, label %entry.sw.bb7_crit_edge
    i32 35144, label %entry.sw.bb7_crit_edge30
    i32 35145, label %entry.sw.bb7_crit_edge31
    i32 35249, label %entry.sw.bb7_crit_edge32
  ]

entry.sw.bb7_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

entry.sw.bb7_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

entry.sw.bb7_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.bb:                                            ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %8, @init_net
  br i1 %cmp.i.not, label %sw.bb.sw.bb7_crit_edge, label %sw.bb.if.end18_crit_edge

sw.bb.if.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge30, %entry.sw.bb7_crit_edge31, %entry.sw.bb7_crit_edge32
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %sw.bb7.if.end18_crit_edge, label %land.lhs.true

sw.bb7.if.end18_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true:                                    ; preds = %sw.bb7
  %ndo_eth_ioctl = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %ndo_eth_ioctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndo_eth_ioctl, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.if.end18_crit_edge, label %sw.epilog

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.epilog:                                        ; preds = %land.lhs.true
  %call12 = call i32 %13(ptr noundef %1, ptr noundef nonnull %ifrr, i32 noundef %cmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.then15, label %sw.epilog.if.end18_crit_edge

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then15:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %14 = call ptr @memcpy(ptr %ifr_ifru4, ptr %ifr_ifru, i32 16)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %sw.epilog.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %sw.bb7.if.end18_crit_edge, %sw.bb.if.end18_crit_edge, %entry.if.end18_crit_edge
  %err.029 = phi i32 [ 0, %if.then15 ], [ %call12, %sw.epilog.if.end18_crit_edge ], [ -95, %entry.if.end18_crit_edge ], [ -95, %land.lhs.true.if.end18_crit_edge ], [ -95, %sw.bb7.if.end18_crit_edge ], [ -95, %sw.bb.if.end18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ifrr) #15
  ret i32 %err.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vlan_dev_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  %sub = add i32 %3, -4
  %spec.select = select i1 %tobool.i.i.not, i32 %3, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %new_mtu)
  %cmp = icmp ult i32 %spec.select, %new_mtu
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mtu5 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_mtu, ptr %mtu5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_neigh_setup(ptr nocapture noundef readonly %dev, ptr noundef %pa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ndo_neigh_setup = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %ndo_neigh_setup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndo_neigh_setup, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 %8(ptr noundef %1, ptr noundef %pa) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_dev_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call48 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call48, i32 %0)
  %cmp49 = icmp ult i32 %call48, %0
  br i1 %cmp49, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vlan_pcpu_stats = getelementptr i8, ptr %dev, i32 2436
  %rx_bytes11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %tx_packets14 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes16 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end8.for.body_crit_edge, %for.body.lr.ph
  %call52 = phi i32 [ %call48, %for.body.lr.ph ], [ %call, %do.end8.for.body_crit_edge ]
  %rx_errors.051 = phi i32 [ 0, %for.body.lr.ph ], [ %add19, %do.end8.for.body_crit_edge ]
  %tx_dropped.050 = phi i32 [ 0, %for.body.lr.ph ], [ %add21, %do.end8.for.body_crit_edge ]
  %1 = ptrtoint ptr %vlan_pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vlan_pcpu_stats, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call52
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 5
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 5, i32 0, i32 1
  %rx_bytes = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 1
  %rx_multicast = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 2
  %tx_packets = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 3
  %tx_bytes = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 4
  br label %do.body3

do.body3:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge, %for.body
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !43
  %and.i.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %8 = tail call ptr @llvm.returnaddress(i32 0) #15
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %9) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  %10 = tail call ptr @llvm.returnaddress(i32 0) #15
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %11) #15
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !44
  %and.i.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !45

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #15, !srcloc !46
  %13 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !55
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !56
  %15 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %16, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %14, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %16, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !57
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %6, align 8
  %19 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_bytes, align 8
  %21 = ptrtoint ptr %rx_multicast to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_multicast, align 8
  %23 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_packets, align 8
  %25 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !58
  %27 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %28, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end8, label %u64_stats_fetch_begin_irq.exit.do.body3_crit_edge

u64_stats_fetch_begin_irq.exit.do.body3_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body3

do.end8:                                          ; preds = %u64_stats_fetch_begin_irq.exit
  %29 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stats, align 8
  %add10 = add i64 %30, %18
  store i64 %add10, ptr %stats, align 8
  %31 = ptrtoint ptr %rx_bytes11 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rx_bytes11, align 8
  %add12 = add i64 %32, %20
  store i64 %add12, ptr %rx_bytes11, align 8
  %33 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %multicast, align 8
  %add13 = add i64 %34, %22
  store i64 %add13, ptr %multicast, align 8
  %35 = ptrtoint ptr %tx_packets14 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_packets14, align 8
  %add15 = add i64 %36, %24
  store i64 %add15, ptr %tx_packets14, align 8
  %37 = ptrtoint ptr %tx_bytes16 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_bytes16, align 8
  %add17 = add i64 %38, %26
  store i64 %add17, ptr %tx_bytes16, align 8
  %rx_errors18 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 6
  %39 = ptrtoint ptr %rx_errors18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_errors18, align 8
  %add19 = add i32 %40, %rx_errors.051
  %tx_dropped20 = getelementptr inbounds %struct.vlan_pcpu_stats, ptr %6, i32 0, i32 7
  %41 = ptrtoint ptr %tx_dropped20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dropped20, align 4
  %add21 = add i32 %42, %tx_dropped.050
  %call = tail call i32 @cpumask_next(i32 noundef %call52, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %43
  br i1 %cmp, label %do.end8.for.body_crit_edge, label %do.end8.for.end_crit_edge

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %do.end8.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_dropped.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add21, %do.end8.for.end_crit_edge ]
  %rx_errors.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add19, %do.end8.for.end_crit_edge ]
  %conv = zext i32 %rx_errors.0.lcssa to i64
  %rx_errors22 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %44 = ptrtoint ptr %rx_errors22 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv, ptr %rx_errors22, align 8
  %conv23 = zext i32 %tx_dropped.0.lcssa to i64
  %tx_dropped24 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %45 = ptrtoint ptr %tx_dropped24 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv23, ptr %tx_dropped24, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vlan_dev_poll_controller(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_netpoll_setup(ptr nocapture noundef %dev, ptr nocapture noundef readnone %npinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @__netpoll_setup(ptr noundef nonnull %call7.i.i, ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %netpoll7 = getelementptr i8, ptr %dev, i32 2440
  %3 = ptrtoint ptr %netpoll7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %netpoll7, align 4
  br label %out

out:                                              ; preds = %if.end6, %if.then5, %entry.out_crit_edge
  %err.0 = phi i32 [ %call3, %if.then5 ], [ 0, %if.end6 ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_dev_netpoll_cleanup(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netpoll1 = getelementptr i8, ptr %dev, i32 2440
  %0 = ptrtoint ptr %netpoll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netpoll1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %netpoll1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %netpoll1, align 4
  tail call void @__netpoll_free(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_fcoe_enable(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_enable = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %ndo_fcoe_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_fcoe_enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 %5(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call3, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_fcoe_disable(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_disable = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %ndo_fcoe_disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_fcoe_disable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 %5(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call3, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_fcoe_ddp_setup(ptr nocapture noundef readonly %dev, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_ddp_setup = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %ndo_fcoe_ddp_setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_fcoe_ddp_setup, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 %5(ptr noundef %1, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_fcoe_ddp_done(ptr nocapture noundef readonly %dev, i16 noundef zeroext %xid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_ddp_done = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %ndo_fcoe_ddp_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_fcoe_ddp_done, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 %5(ptr noundef %1, i16 noundef zeroext %xid) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_fcoe_ddp_target(ptr nocapture noundef readonly %dev, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_ddp_target = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %ndo_fcoe_ddp_target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_fcoe_ddp_target, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 %5(ptr noundef %1, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_fcoe_get_wwn(ptr nocapture noundef readonly %dev, ptr noundef %wwn, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_fcoe_get_wwn = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %ndo_fcoe_get_wwn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_fcoe_get_wwn, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 %5(ptr noundef %1, ptr noundef %wwn, i32 noundef %type) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call3, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @vlan_dev_fix_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vlan_features, align 8
  %or = or i64 %3, 1099511627776
  %features2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %features2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features2, align 16
  %xor.i = xor i64 %5, %3
  %and.i = and i64 %xor.i, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.netdev_intersect_features.exit_crit_edge, label %if.then.i

entry.netdev_intersect_features.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_intersect_features.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i64 %3, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %or.i = or i64 %3, 1099511627794
  br label %netdev_intersect_features.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %or4.i = or i64 %5, 18
  br label %netdev_intersect_features.exit

netdev_intersect_features.exit:                   ; preds = %if.else.i, %if.then3.i, %entry.netdev_intersect_features.exit_crit_edge
  %f1.addr.0.i = phi i64 [ %or.i, %if.then3.i ], [ %or, %if.else.i ], [ %or, %entry.netdev_intersect_features.exit_crit_edge ]
  %f2.addr.0.i = phi i64 [ %5, %if.then3.i ], [ %or4.i, %if.else.i ], [ %5, %entry.netdev_intersect_features.exit_crit_edge ]
  %and6.i = and i64 %f2.addr.0.i, %f1.addr.0.i
  %and = and i64 %and6.i, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %or4 = or i64 %and6.i, 8
  %spec.select = select i1 %tobool.not, i64 %and6.i, i64 %or4
  %xor.i16 = xor i64 %spec.select, %features
  %and.i17 = and i64 %xor.i16, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i17)
  %tobool.not.i18 = icmp eq i64 %and.i17, 0
  br i1 %tobool.not.i18, label %netdev_intersect_features.exit.netdev_intersect_features.exit29_crit_edge, label %if.then.i21

netdev_intersect_features.exit.netdev_intersect_features.exit29_crit_edge: ; preds = %netdev_intersect_features.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_intersect_features.exit29

if.then.i21:                                      ; preds = %netdev_intersect_features.exit
  %and1.i19 = and i64 %features, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i19)
  %tobool2.not.i20 = icmp eq i64 %and1.i19, 0
  br i1 %tobool2.not.i20, label %if.else.i25, label %if.then3.i23

if.then3.i23:                                     ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #17
  %or.i22 = or i64 %features, 18
  br label %netdev_intersect_features.exit29

if.else.i25:                                      ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #17
  %or4.i24 = or i64 %spec.select, 18
  br label %netdev_intersect_features.exit29

netdev_intersect_features.exit29:                 ; preds = %if.else.i25, %if.then3.i23, %netdev_intersect_features.exit.netdev_intersect_features.exit29_crit_edge
  %f1.addr.0.i26 = phi i64 [ %or.i22, %if.then3.i23 ], [ %features, %if.else.i25 ], [ %features, %netdev_intersect_features.exit.netdev_intersect_features.exit29_crit_edge ]
  %f2.addr.0.i27 = phi i64 [ %spec.select, %if.then3.i23 ], [ %or4.i24, %if.else.i25 ], [ %spec.select, %netdev_intersect_features.exit.netdev_intersect_features.exit29_crit_edge ]
  %and6.i28 = and i64 %f2.addr.0.i27, %f1.addr.0.i26
  %and6 = and i64 %features, 26845464576
  %or7 = or i64 %and6, %and6.i28
  %or8 = or i64 %or7, 4096
  ret i64 %or8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vlan_dev_get_iflink(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifindex, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vlan_dev_fill_forward_path(ptr nocapture noundef %ctx, ptr nocapture noundef writeonly %path) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %path, align 4
  %vlan_id = getelementptr i8, ptr %1, i32 2410
  %3 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_id, align 2
  %5 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %4, ptr %5, align 4
  %vlan_proto = getelementptr i8, ptr %1, i32 2408
  %7 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_proto, align 4
  %proto = getelementptr inbounds %struct.anon.112, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %proto, align 2
  %10 = load ptr, ptr %ctx, align 4
  %dev2 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 1
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev2, align 4
  %real_dev = getelementptr i8, ptr %1, i32 2416
  %12 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %real_dev, align 4
  store ptr %13, ptr %ctx, align 4
  %num_vlans = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 2
  %14 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp ugt i32 %15, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_id, align 2
  %arrayidx = getelementptr %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 3, i32 %15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vlan_proto, align 4
  %21 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_vlans, align 4
  %proto12 = getelementptr %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 3, i32 %22, i32 1
  %23 = ptrtoint ptr %proto12 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %proto12, align 2
  %24 = load i32, ptr %num_vlans, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %num_vlans, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_passthru_hard_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %cmp = icmp eq ptr %saddr, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %saddr.addr.0 = phi ptr [ %3, %if.then ], [ %saddr, %entry.if.end_crit_edge ]
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

if.end.dev_hard_header.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 %7(ptr noundef %skb, ptr noundef %1, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %saddr.addr.0, i32 noundef %len) #15
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %if.end.dev_hard_header.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %lor.lhs.false.i.dev_hard_header.exit_crit_edge ], [ 0, %if.end.dev_hard_header.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_parse(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vlan_parse_protocol(ptr noundef %skb) #2 align 64 {
entry:
  %vhdr.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %h_vlan_proto = getelementptr inbounds %struct.vlan_ethhdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %h_vlan_proto to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %h_vlan_proto, align 2
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %4 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %5 to i32
  %6 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %3, label %entry.__vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i_crit_edge
    i16 -32512, label %entry.if.then.i_crit_edge3
  ]

entry.if.then.i_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.__vlan_get_protocol.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vlan_get_protocol.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %if.then.i.if.end26.i_crit_edge, label %if.then1.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp.i = icmp ult i16 %5, 4
  br i1 %cmp.i, label %do.end.i, label %if.end25.i, !prof !45

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #15
  br label %__vlan_get_protocol.exit

if.end25.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add nsw i32 %conv.i, -4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end25.i, %if.then.i.if.end26.i_crit_edge
  %vlan_depth.0.i = phi i32 [ %sub.i, %if.end25.i ], [ 14, %if.then.i.if.end26.i_crit_edge ]
  %7 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i, i32 0, i32 1
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.backedge.i, %if.end26.i
  %vlan_depth.1.i = phi i32 [ %vlan_depth.0.i, %if.end26.i ], [ %add.i, %do.body27.backedge.i ]
  %parse_depth.0.i = phi i32 [ 8, %if.end26.i ], [ %dec.i, %do.body27.backedge.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i) #15
  %8 = ptrtoint ptr %vhdr.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %vhdr.i, align 2, !annotation !59
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %7, align 2, !annotation !59
  %10 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i, align 8
  %14 = add i32 %vlan_depth.1.i, %13
  %sub.i1.i.i = sub i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !prof !48

if.then.i.i.i:                                    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %vlan_depth.1.i
  br label %skb_header_pointer.exit.i

if.end.i.i.i:                                     ; preds = %do.body27.i
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup.thread.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i, ptr noundef nonnull %vhdr.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp3.i.i.i, ptr null, ptr %vhdr.i, !prof !45
  br label %skb_header_pointer.exit.i

skb_header_pointer.exit.i:                        ; preds = %lor.lhs.false.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ %spec.select.i.i.i, %lor.lhs.false.i.i.i ]
  %tobool29.not.i = icmp eq ptr %retval.0.i.i.i, null
  %dec.i = add nsw i32 %parse_depth.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool30.not.i = icmp eq i32 %dec.i, 0
  %17 = select i1 %tobool29.not.i, i1 true, i1 %tobool30.not.i, !prof !45
  br i1 %17, label %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, label %do.cond42.i, !prof !45

skb_header_pointer.exit.i.cleanup.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, %if.end.i.i.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i) #15
  br label %__vlan_get_protocol.exit

do.cond42.i:                                      ; preds = %skb_header_pointer.exit.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i) #15
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %19, label %do.cond42.i.__vlan_get_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.do.body27.backedge.i_crit_edge
    i16 -32512, label %do.cond42.i.do.body27.backedge.i_crit_edge4
  ]

do.cond42.i.do.body27.backedge.i_crit_edge4:      ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i

do.cond42.i.do.body27.backedge.i_crit_edge:       ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27.backedge.i

do.cond42.i.__vlan_get_protocol.exit_crit_edge:   ; preds = %do.cond42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vlan_get_protocol.exit

do.body27.backedge.i:                             ; preds = %do.cond42.i.do.body27.backedge.i_crit_edge, %do.cond42.i.do.body27.backedge.i_crit_edge4
  %add.i = add nsw i32 %vlan_depth.1.i, 4
  br label %do.body27.i

__vlan_get_protocol.exit:                         ; preds = %do.cond42.i.__vlan_get_protocol.exit_crit_edge, %cleanup.thread.i, %do.end.i, %entry.__vlan_get_protocol.exit_crit_edge
  %retval.2.i = phi i16 [ 0, %do.end.i ], [ %3, %entry.__vlan_get_protocol.exit_crit_edge ], [ 0, %cleanup.thread.i ], [ %19, %do.cond42.i.__vlan_get_protocol.exit_crit_edge ]
  ret i16 %retval.2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_dev_hard_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #15
  %vlan_id = getelementptr i8, ptr %dev, i32 2410
  %3 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_id, align 2
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !47
  %and.i = and i32 %6, 15
  %arrayidx.i = getelementptr %struct.vlan_dev_priv, ptr %add.ptr.i.i, i32 0, i32 3, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %mp.09.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not10.i = icmp eq ptr %mp.09.i, null
  br i1 %tobool.not10.i, label %if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_dev_get_egress_qos_mask.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %mp.011.i = phi ptr [ %mp.0.i, %if.end.i.while.body.i_crit_edge ], [ %mp.09.i, %if.then.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %mp.011.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mp.011.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp.i = icmp eq i32 %9, %6
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_qos.i = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.011.i, i32 0, i32 1
  %10 = ptrtoint ptr %vlan_qos.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_qos.i, align 4
  br label %vlan_dev_get_egress_qos_mask.exit

if.end.i:                                         ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.vlan_priority_tci_mapping, ptr %mp.011.i, i32 0, i32 2
  %12 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %mp.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %mp.0.i, null
  br i1 %tobool.not.i, label %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vlan_dev_get_egress_qos_mask.exit

vlan_dev_get_egress_qos_mask.exit:                ; preds = %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge, %if.then.i, %if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge
  %retval.0.i = phi i16 [ %11, %if.then.i ], [ 0, %if.then.vlan_dev_get_egress_qos_mask.exit_crit_edge ], [ 0, %if.end.i.vlan_dev_get_egress_qos_mask.exit_crit_edge ]
  %or47 = or i16 %retval.0.i, %4
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or47, ptr %call1, align 2
  %14 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %type, label %vlan_dev_get_egress_qos_mask.exit.if.end_crit_edge [
    i16 1, label %vlan_dev_get_egress_qos_mask.exit.if.else_crit_edge
    i16 4, label %vlan_dev_get_egress_qos_mask.exit.if.else_crit_edge60
  ]

vlan_dev_get_egress_qos_mask.exit.if.else_crit_edge60: ; preds = %vlan_dev_get_egress_qos_mask.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

vlan_dev_get_egress_qos_mask.exit.if.else_crit_edge: ; preds = %vlan_dev_get_egress_qos_mask.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

vlan_dev_get_egress_qos_mask.exit.if.end_crit_edge: ; preds = %vlan_dev_get_egress_qos_mask.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %vlan_dev_get_egress_qos_mask.exit.if.else_crit_edge, %vlan_dev_get_egress_qos_mask.exit.if.else_crit_edge60
  %conv12 = trunc i32 %len to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %vlan_dev_get_egress_qos_mask.exit.if.end_crit_edge
  %conv12.sink = phi i16 [ %conv12, %if.else ], [ %type, %vlan_dev_get_egress_qos_mask.exit.if.end_crit_edge ]
  %h_vlan_encapsulated_proto13 = getelementptr inbounds %struct.vlan_hdr, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %h_vlan_encapsulated_proto13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12.sink, ptr %h_vlan_encapsulated_proto13, align 2
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %16 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_proto, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %protocol, align 8
  %19 = load i16, ptr %vlan_proto, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  %type.addr.0 = phi i16 [ %type, %entry.if.end15_crit_edge ], [ %19, %if.end ]
  %vhdrlen.0 = phi i32 [ 0, %entry.if.end15_crit_edge ], [ 4, %if.end ]
  %cmp16 = icmp eq ptr %saddr, null
  br i1 %cmp16, label %if.then18, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %saddr.addr.0 = phi ptr [ %21, %if.then18 ], [ %saddr, %if.end15.if.end19_crit_edge ]
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %22 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %real_dev, align 4
  %add = add i32 %vhdrlen.0, %len
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 49
  %24 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i48 = icmp eq ptr %25, null
  br i1 %tobool.not.i48, label %if.end19.dev_hard_header.exit.thread_crit_edge, label %lor.lhs.false.i

if.end19.dev_hard_header.exit.thread_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hard_header.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end19
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit.thread_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.dev_hard_header.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hard_header.exit.thread

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 %27(ptr noundef %skb, ptr noundef %23, i16 noundef zeroext %type.addr.0, ptr noundef %daddr, ptr noundef %saddr.addr.0, i32 noundef %add) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp sgt i32 %call.i, 0
  %add24 = select i1 %cmp21, i32 %vhdrlen.0, i32 0
  %spec.select = add i32 %add24, %call.i
  br label %dev_hard_header.exit.thread

dev_hard_header.exit.thread:                      ; preds = %dev_hard_header.exit, %lor.lhs.false.i.dev_hard_header.exit.thread_crit_edge, %if.end19.dev_hard_header.exit.thread_crit_edge
  %28 = phi i32 [ 0, %lor.lhs.false.i.dev_hard_header.exit.thread_crit_edge ], [ 0, %if.end19.dev_hard_header.exit.thread_crit_edge ], [ %spec.select, %dev_hard_header.exit ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_mc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_uc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_sync(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netpoll_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netpoll_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_ethtool_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @vlan_fullname, i32 noundef 32) #15
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @vlan_version, i32 noundef 32) #15
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call4 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.7, i32 noundef 32) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_ethtool_get_ts_info(ptr nocapture noundef readonly %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethtool_ops, align 16
  %phydev2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %4 = ptrtoint ptr %phydev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev2, align 16
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %land.lhs.true.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true.i:                                  ; preds = %entry
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_ts.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else_crit_edge, label %phy_has_tsinfo.exit

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

phy_has_tsinfo.exit:                              ; preds = %land.lhs.true.i
  %ts_info.i = getelementptr inbounds %struct.mii_timestamper, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ts_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts_info.i, align 4
  %tobool3.i.not = icmp eq ptr %9, null
  br i1 %tobool3.i.not, label %phy_has_tsinfo.exit.if.else_crit_edge, label %if.then

phy_has_tsinfo.exit.if.else_crit_edge:            ; preds = %phy_has_tsinfo.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then:                                          ; preds = %phy_has_tsinfo.exit
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mii_ts.i, align 4
  %ts_info.i21 = getelementptr inbounds %struct.mii_timestamper, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ts_info.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ts_info.i21, align 4
  %call.i = tail call i32 %13(ptr noundef %11, ptr noundef %info) #15
  br label %cleanup

if.else:                                          ; preds = %phy_has_tsinfo.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %entry.if.else_crit_edge
  %get_ts_info = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 47
  %14 = ptrtoint ptr %get_ts_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_ts_info, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else9, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 %15(ptr noundef %1, ptr noundef %info) #15
  br label %cleanup

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 24, ptr %so_timestamping, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %phc_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else9, %if.then5, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call8, %if.then5 ], [ 0, %if.else9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_ethtool_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev, align 4
  %call1 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef %1, ptr noundef %cmd) #15
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @vlan_netdev_ops, !1, !"vlan_netdev_ops", i1 false, i1 false}
!1 = !{!"../net/8021q/vlan_dev.c", i32 819, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/8021q/vlan_dev.c", i32 579, i32 25}
!4 = !{ptr @vlan_dev_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../net/8021q/vlan_dev.c", i32 614, i32 26}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vlan_passthru_header_ops, !8, !"vlan_passthru_header_ops", i1 false, i1 false}
!8 = !{!"../net/8021q/vlan_dev.c", i32 540, i32 32}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!11 = !{ptr @vlan_header_ops, !12, !"vlan_header_ops", i1 false, i1 false}
!12 = !{!"../net/8021q/vlan_dev.c", i32 520, i32 32}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/8021q/vlan_dev.c", i32 547, i32 10}
!15 = !{ptr @vlan_type, !16, !"vlan_type", i1 false, i1 false}
!16 = !{!"../net/8021q/vlan_dev.c", i32 546, i32 27}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/8021q/vlan_dev.c", i32 508, i32 2}
!19 = !{ptr @vlan_netdev_addr_lock_key, !20, !"vlan_netdev_addr_lock_key", i1 false, i1 false}
!20 = !{!"../net/8021q/vlan_dev.c", i32 497, i32 30}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/8021q/vlan_dev.c", i32 503, i32 2}
!23 = !{ptr @vlan_netdev_xmit_lock_key, !24, !"vlan_netdev_xmit_lock_key", i1 false, i1 false}
!24 = !{!"../net/8021q/vlan_dev.c", i32 496, i32 30}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vlan_ethtool_ops, !29, !"vlan_ethtool_ops", i1 false, i1 false}
!29 = !{!"../net/8021q/vlan_dev.c", i32 812, i32 33}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/8021q/vlan_dev.c", i32 685, i32 28}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2156722884}
!43 = !{i64 765932, i64 765993}
!44 = !{i64 768664}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 768949}
!47 = !{i64 2156682247}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2149886390}
!50 = !{i64 2149891322}
!51 = !{i64 2149913034}
!52 = !{i64 2149917926}
!53 = !{i64 2149994383}
!54 = !{i64 2149994708}
!55 = !{i64 2154907373}
!56 = !{i64 2154907215}
!57 = !{i64 2154907543}
!58 = !{i64 2149994058}
!59 = !{!"auto-init"}
