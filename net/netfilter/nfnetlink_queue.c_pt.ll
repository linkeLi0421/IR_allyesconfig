; ModuleID = '/llk/IR_all_yes/net/netfilter/nfnetlink_queue.c_pt.bc'
source_filename = "../net/netfilter/nfnetlink_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nf_queue_handler = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.9 }
%union.anon.9 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.177, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.177 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfnl_queue_net = type { %struct.spinlock, [16 x %struct.hlist_head] }
%struct.nfqnl_instance = type { %struct.hlist_node, %struct.callback_head, i32, i32, i32, i32, i32, i16, i8, i32, [84 x i8], %struct.spinlock, i32, i32, %struct.list_head, [68 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.nf_queue_entry = type { %struct.list_head, ptr, i32, i32, ptr, ptr, %struct.nf_hook_state, i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.178, %union.anon.179, [48 x i8], %union.anon.180, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.182, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { i64 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, ptr }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.184, i32, i32, i32, i16, i16, %union.anon.186, i32, %union.anon.187, %union.anon.188, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_bridge_info = type { i16, i16, ptr, ptr, %union.anon.213 }
%union.anon.213 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.106 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nfgenmsg = type { i8, i8, i16 }
%struct.nfnl_ct_hook = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_notify = type { ptr, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.iter_state = type { %struct.seq_net_private, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nfqnl_msg_packet_hw = type { i16, i16, [8 x i8] }
%struct.nfqnl_msg_packet_timestamp = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.sock_common = type { %union.anon.147, %union.anon.149, %union.anon.150, i16, i8, i8, i32, %union.anon.152, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon.147 = type { i64 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i32 }
%union.anon.152 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.215, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.215 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.216, %union.anon.217, i16, i16 }
%union.anon.216 = type { %struct.in6_addr }
%union.anon.217 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.214, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.205 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.205 = type { %union.nf_inet_addr, %union.anon.206, i8, i8 }
%union.anon.206 = type { i16 }
%struct.anon.214 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.44, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.44 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.56 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.56 = type { %struct.callback_head }

@nfqnl_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nfqnl_rcv_dev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nfqnl_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str.7, i8 3, i8 4, ptr @nfqnl_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfqnl_rtnl_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nfqnl_rcv_nl_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nfnl_queue_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nfnl_queue_net_init, ptr null, ptr @nfnl_queue_net_exit, ptr null, ptr @nfnl_queue_net_id, i32 108 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description782 = internal constant [59 x i8] c"nfnetlink_queue.description=netfilter packet queue handler\00", section ".modinfo", align 1
@__UNIQUE_ID_author783 = internal constant [60 x i8] c"nfnetlink_queue.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file784 = internal constant [51 x i8] c"nfnetlink_queue.file=net/netfilter/nfnetlink_queue\00", section ".modinfo", align 1
@__UNIQUE_ID_license785 = internal constant [28 x i8] c"nfnetlink_queue.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias786 = internal constant [41 x i8] c"nfnetlink_queue.alias=nfnetlink-subsys-3\00", section ".modinfo", align 1
@__initcall__kmod_nfnetlink_queue__787_1596_nfnetlink_queue_init6 = internal global ptr @nfnetlink_queue_init, section ".initcall6.init", align 4
@__exitcall_nfnetlink_queue_fini = internal global ptr @nfnetlink_queue_fini, section ".exitcall.exit", align 4
@nfqnl_dev_drop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/nfnetlink_queue.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nfnl_queue_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@nf_ct_hook = external dso_local global ptr, align 4
@nfqnl_reinject.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nf_queue\00", [23 x i8] zeroinitializer }, align 32
@nfqnl_cb = internal constant { [4 x %struct.nfnl_callback], [32 x i8] } { [4 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @nfqnl_recv_unsupp, ptr null, i32 2, i16 20 }, %struct.nfnl_callback { ptr @nfqnl_recv_verdict, ptr @nfqa_verdict_policy, i32 2, i16 20 }, %struct.nfnl_callback { ptr @nfqnl_recv_config, ptr @nfqa_cfg_policy, i32 1, i16 5 }, %struct.nfnl_callback { ptr @nfqnl_recv_verdict_batch, ptr @nfqa_verdict_batch_policy, i32 2, i16 20 }], [32 x i8] zeroinitializer }, align 32
@nfqa_verdict_policy = internal constant { [21 x %struct.nla_policy], [56 x i8] } { [21 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nfqa_cfg_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 5, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@nfnl_ct_hook = external dso_local global ptr, align 4
@nfqnl_recv_verdict.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@instance_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfqa_vlan_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_conntrack_netlink\00", [43 x i8] zeroinitializer }, align 32
@instance_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&inst->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfqa_verdict_batch_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [17 x %struct.nla_policy] }>, [56 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [17 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, [17 x %struct.nla_policy] zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@nfnl_queue_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&q->instances_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfnetlink_queue\00", [16 x i8] zeroinitializer }, align 32
@nfqnl_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @seq_start, ptr @seq_stop, ptr @seq_next, ptr @seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%5u %6u %5u %1u %5u %5u %5u %8u %2d\0A\00", [59 x i8] zeroinitializer }, align 32
@nfnl_queue_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfnetlink_queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nfnetlink_queue: failed to register pernet ops\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfnetlink_queue_init\00", [43 x i8] zeroinitializer }, align 32
@nfnetlink_queue_init._entry_ptr = internal global ptr @nfnetlink_queue_init._entry, section ".printk_index", align 4
@nfnetlink_queue_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str, i32 1557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nfnetlink_queue: failed to create netlink socket\0A\00", [44 x i8] zeroinitializer }, align 32
@nfnetlink_queue_init._entry_ptr.19 = internal global ptr @nfnetlink_queue_init._entry.17, section ".printk_index", align 4
@nfnetlink_queue_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013nfnetlink_queue: failed to register netdevice notifier\0A\00", [38 x i8] zeroinitializer }, align 32
@nfnetlink_queue_init._entry_ptr.22 = internal global ptr @nfnetlink_queue_init._entry.20, section ".printk_index", align 4
@nfqh = internal constant { %struct.nf_queue_handler, [24 x i8] } { %struct.nf_queue_handler { ptr @nfqnl_enqueue_packet, ptr @nfqnl_nf_hook_drop }, [24 x i8] zeroinitializer }, align 32
@__nfqnl_enqueue_packet._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 675, ptr null, ptr null }, align 1
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014nfnetlink_queue: nf_queue: full at %d entries, dropping packets(s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__nfqnl_enqueue_packet\00", [41 x i8] zeroinitializer }, align 32
@__nfqnl_enqueue_packet._entry_ptr = internal global ptr @__nfqnl_enqueue_packet._entry, section ".printk_index", align 4
@nfqnl_build_packet_message.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfqnl_build_packet_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013nfnetlink_queue: nf_queue: error creating packet message\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfqnl_build_packet_message\00", [37 x i8] zeroinitializer }, align 32
@nfqnl_build_packet_message._entry_ptr = internal global ptr @nfqnl_build_packet_message._entry, section ".printk_index", align 4
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/netfilter/../bridge/br_private.h\00", [59 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@nfqnl_nf_hook_drop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"nfqnl_dev_notifier\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 952, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"nfqnl_subsys\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1407, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"nfqnl_rtnl_notifier\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1007, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"nfnl_queue_net_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1537, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 933, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 45, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 723, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1408, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"nfqnl_cb\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1381, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"nfqa_verdict_policy\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1016, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"nfqa_cfg_policy\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1244, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"nfqa_vlan_policy\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1011, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1302, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 139, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"nfqa_verdict_batch_policy\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1025, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1515, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1518, i32 7 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"nfqnl_seq_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1499, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1490, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1550, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1557, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1563, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [5 x i8] c"nfqh\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1252, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 674, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private constant [35 x i8] c"../net/netfilter/nfnetlink_queue.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 630, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [40 x i8] c"../net/netfilter/../bridge/br_private.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 416, i32 9 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias786, ptr @__UNIQUE_ID_author783, ptr @__UNIQUE_ID_description782, ptr @__UNIQUE_ID_file784, ptr @__UNIQUE_ID_license785, ptr @__exitcall_nfnetlink_queue_fini, ptr @__initcall__kmod_nfnetlink_queue__787_1596_nfnetlink_queue_init6, ptr @__nfqnl_enqueue_packet._entry, ptr @__nfqnl_enqueue_packet._entry_ptr, ptr @nfnetlink_queue_fini, ptr @nfnetlink_queue_init._entry, ptr @nfnetlink_queue_init._entry.17, ptr @nfnetlink_queue_init._entry.20, ptr @nfnetlink_queue_init._entry_ptr, ptr @nfnetlink_queue_init._entry_ptr.19, ptr @nfnetlink_queue_init._entry_ptr.22, ptr @nfqnl_build_packet_message._entry, ptr @nfqnl_build_packet_message._entry_ptr, ptr @nfqnl_dev_notifier, ptr @nfqnl_subsys, ptr @nfqnl_rtnl_notifier, ptr @nfnl_queue_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nfqnl_cb, ptr @nfqa_verdict_policy, ptr @nfqa_cfg_policy, ptr @nfqa_vlan_policy, ptr @.str.9, ptr @instance_create.__key, ptr @.str.10, ptr @nfqa_verdict_batch_policy, ptr @nfnl_queue_net_init.__key, ptr @.str.12, ptr @.str.13, ptr @nfqnl_seq_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @nfqh, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqnl_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqnl_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqnl_rtnl_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_queue_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqnl_cb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqa_verdict_policy to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqa_cfg_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqa_vlan_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instance_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqa_verdict_batch_policy to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_queue_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqnl_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnetlink_queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnetlink_queue_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnetlink_queue_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqh to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqnl_build_packet_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfnetlink_queue_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nf_unregister_queue_handler() #10
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @nfqnl_dev_notifier) #10
  %call1 = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfqnl_subsys) #10
  %call2 = tail call i32 @netlink_unregister_notifier(ptr noundef nonnull @nfqnl_rtnl_notifier) #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfnl_queue_net_ops) #10
  tail call void @rcu_barrier() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_queue_handler() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnetlink_queue_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nfnl_queue_net_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @netlink_register_notifier(ptr noundef nonnull @nfqnl_rtnl_notifier) #10
  %call3 = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @nfqnl_subsys) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %cleanup_netlink_notifier

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @nfqnl_dev_notifier) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  %call21 = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfqnl_subsys) #10
  br label %cleanup_netlink_notifier

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nf_register_queue_handler(ptr noundef nonnull @nfqh) #10
  br label %cleanup

cleanup_netlink_notifier:                         ; preds = %do.end17, %do.end8
  %status.0 = phi i32 [ %call3, %do.end8 ], [ %call12, %do.end17 ]
  %call22 = tail call i32 @netlink_unregister_notifier(ptr noundef nonnull @nfqnl_rtnl_notifier) #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfnl_queue_net_ops) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup_netlink_notifier, %if.end20, %do.end
  %retval.0 = phi i32 [ %call12, %if.end20 ], [ %call, %do.end ], [ %status.0, %cleanup_netlink_notifier ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqnl_rcv_dev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %call.i = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %3) #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then.for.body.i.preheader_crit_edge, label %land.lhs.true.i.i

if.then.for.body.i.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.body.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.for.body.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.for.body.i.preheader_crit_edge, %land.lhs.true.i.i.for.body.i.preheader_crit_edge, %if.then.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.061.i = phi i32 [ %inc.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.nfnl_queue_net, ptr %call.i, i32 0, i32 1, i32 %i.061.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b40.i = load i1, ptr @nfqnl_dev_drop.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfqnl_dev_drop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 933, ptr noundef nonnull @.str.1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %inst.058.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool14.not59.i = icmp eq ptr %inst.058.i, null
  br i1 %tobool14.not59.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body15.i_crit_edge

do.end.i.for.body15.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body15.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body15.i:                                     ; preds = %nfqnl_flush.exit.i.for.body15.i_crit_edge, %do.end.i.for.body15.i_crit_edge
  %inst.060.i = phi ptr [ %inst.0.i, %nfqnl_flush.exit.i.for.body15.i_crit_edge ], [ %inst.058.i, %do.end.i.for.body15.i_crit_edge ]
  %lock.i.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.060.i, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  %queue_list.i.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.060.i, i32 0, i32 14
  %11 = ptrtoint ptr %queue_list.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue_list.i.i, align 4
  %cmp.not28.i.i = icmp eq ptr %12, %queue_list.i.i
  br i1 %cmp.not28.i.i, label %for.body15.i.nfqnl_flush.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body15.i.nfqnl_flush.exit.i_crit_edge:        ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_flush.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body15.i
  %queue_total.i.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.060.i, i32 0, i32 12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry1.029.i.i = phi ptr [ %12, %for.body.lr.ph.i.i ], [ %next.030.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %entry1.029.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %next.030.i.i = load ptr, ptr %entry1.029.i.i, align 4
  %skb.i.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1.029.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i.i, align 4
  %active_extensions.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %active_extensions.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active_extensions.i.i.i.i.i.i, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not.i.i.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %for.body.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge, label %nf_bridge_info_get.exit.i.i.i

for.body.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_bridge_get_physoutif.exit.i.i

nf_bridge_info_get.exit.i.i.i:                    ; preds = %for.body.i.i
  %extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 22
  %19 = ptrtoint ptr %extensions.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extensions.i.i.i.i.i, align 8
  %offset.i.i.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %offset.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %22 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 3
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %20, i32 %shl.i.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %nf_bridge_info_get.exit.i.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge, label %if.end.i.i.i

nf_bridge_info_get.exit.i.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_bridge_get_physoutif.exit.i.i

if.end.i.i.i:                                     ; preds = %nf_bridge_info_get.exit.i.i.i
  %physindev.i.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %physindev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %physindev.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.if.end.i43.i.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.if.end.i43.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43.i.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex.i.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %ifindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex.i.i.i, align 4
  br label %if.end.i43.i.i

if.end.i43.i.i:                                   ; preds = %cond.true.i.i.i, %if.end.i.i.i.if.end.i43.i.i_crit_edge
  %retval.0.i.ph.i.ph.i = phi i32 [ %26, %cond.true.i.i.i ], [ 0, %if.end.i.i.i.if.end.i43.i.i_crit_edge ]
  %physoutdev.i.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %physoutdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %physoutdev.i.i.i, align 4
  %tobool1.not.i42.i.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i42.i.i, label %if.end.i43.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge, label %cond.true.i45.i.i

if.end.i43.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge: ; preds = %if.end.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_bridge_get_physoutif.exit.i.i

cond.true.i45.i.i:                                ; preds = %if.end.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex.i44.i.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %ifindex.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifindex.i44.i.i, align 4
  br label %nf_bridge_get_physoutif.exit.i.i

nf_bridge_get_physoutif.exit.i.i:                 ; preds = %cond.true.i45.i.i, %if.end.i43.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge, %nf_bridge_info_get.exit.i.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge, %for.body.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge
  %retval.0.i49.i.i = phi i32 [ %retval.0.i.ph.i.ph.i, %cond.true.i45.i.i ], [ %retval.0.i.ph.i.ph.i, %if.end.i43.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge ], [ 0, %for.body.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge ], [ 0, %nf_bridge_info_get.exit.i.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge ]
  %retval.0.i46.i.i = phi i32 [ %30, %cond.true.i45.i.i ], [ 0, %if.end.i43.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge ], [ 0, %for.body.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge ], [ 0, %nf_bridge_info_get.exit.i.i.i.nf_bridge_get_physoutif.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i49.i.i, i32 %5)
  %cmp.i.i = icmp eq i32 %retval.0.i49.i.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i46.i.i, i32 %5)
  %cmp4.i.i = icmp eq i32 %retval.0.i46.i.i, %5
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp4.i.i
  br i1 %or.cond.i.i, label %nf_bridge_get_physoutif.exit.i.i.if.then.i43.i_crit_edge, label %if.end.i.i

nf_bridge_get_physoutif.exit.i.i.if.then.i43.i_crit_edge: ; preds = %nf_bridge_get_physoutif.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i43.i

if.end.i.i:                                       ; preds = %nf_bridge_get_physoutif.exit.i.i
  %in.i.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1.029.i.i, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %in.i.i, align 4
  %tobool.not.i53.i = icmp eq ptr %32, null
  br i1 %tobool.not.i53.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %ifindex8.i.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %ifindex8.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ifindex8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %5)
  %cmp9.i.i = icmp eq i32 %34, %5
  br i1 %cmp9.i.i, label %if.then5.i.i.if.then.i43.i_crit_edge, label %if.then5.i.i.if.end12.i.i_crit_edge

if.then5.i.i.if.end12.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then5.i.i.if.then.i43.i_crit_edge:             ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i43.i

if.end12.i.i:                                     ; preds = %if.then5.i.i.if.end12.i.i_crit_edge, %if.end.i.i.if.end12.i.i_crit_edge
  %out.i.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1.029.i.i, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %out.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %36, null
  br i1 %tobool14.not.i.i, label %if.end12.i.i.for.inc.i.i_crit_edge, label %if.then15.i.i

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  %ifindex18.i.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %ifindex18.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ifindex18.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %5)
  %cmp19.i.i = icmp eq i32 %38, %5
  br i1 %cmp19.i.i, label %if.then15.i.i.if.then.i43.i_crit_edge, label %if.then15.i.i.for.inc.i.i_crit_edge

if.then15.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then15.i.i.if.then.i43.i_crit_edge:            ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i43.i

if.then.i43.i:                                    ; preds = %if.then15.i.i.if.then.i43.i_crit_edge, %if.then5.i.i.if.then.i43.i_crit_edge, %nf_bridge_get_physoutif.exit.i.i.if.then.i43.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.029.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i43.i.list_del.exit.i.i_crit_edge

if.then.i43.i.list_del.exit.i.i_crit_edge:        ; preds = %if.then.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i.i, align 4
  %41 = ptrtoint ptr %entry1.029.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %entry1.029.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i43.i.list_del.exit.i.i_crit_edge
  %45 = ptrtoint ptr %entry1.029.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %queue_total.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %queue_total.i.i, align 4
  %dec.i.i = add i32 %48, -1
  store i32 %dec.i.i, ptr %queue_total.i.i, align 4
  tail call void @nf_reinject(ptr noundef %entry1.029.i.i, i32 noundef 0) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del.exit.i.i, %if.then15.i.i.for.inc.i.i_crit_edge, %if.end12.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %next.030.i.i, %queue_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.nfqnl_flush.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.nfqnl_flush.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_flush.exit.i

nfqnl_flush.exit.i:                               ; preds = %for.inc.i.i.nfqnl_flush.exit.i_crit_edge, %for.body15.i.nfqnl_flush.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  %49 = ptrtoint ptr %inst.060.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %inst.0.i = load volatile ptr, ptr %inst.060.i, align 4
  %tobool14.not.i = icmp eq ptr %inst.0.i, null
  br i1 %tobool14.not.i, label %nfqnl_flush.exit.i.for.end.i_crit_edge, label %nfqnl_flush.exit.i.for.body15.i_crit_edge

nfqnl_flush.exit.i.for.body15.i_crit_edge:        ; preds = %nfqnl_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i

nfqnl_flush.exit.i.for.end.i_crit_edge:           ; preds = %nfqnl_flush.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %nfqnl_flush.exit.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end32.i, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end32.i:                                      ; preds = %for.end.i
  %call.i44.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i44.i, label %for.end32.i.nfqnl_dev_drop.exit_crit_edge, label %land.lhs.true.i47.i

for.end32.i.nfqnl_dev_drop.exit_crit_edge:        ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_dev_drop.exit

land.lhs.true.i47.i:                              ; preds = %for.end32.i
  %call1.i45.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i)
  %tobool.not.i46.i = icmp eq i32 %call1.i45.i, 0
  br i1 %tobool.not.i46.i, label %land.lhs.true.i47.i.nfqnl_dev_drop.exit_crit_edge, label %land.lhs.true2.i49.i

land.lhs.true.i47.i.nfqnl_dev_drop.exit_crit_edge: ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_dev_drop.exit

land.lhs.true2.i49.i:                             ; preds = %land.lhs.true.i47.i
  %.b4.i48.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48.i, label %land.lhs.true2.i49.i.nfqnl_dev_drop.exit_crit_edge, label %if.then.i50.i

land.lhs.true2.i49.i.nfqnl_dev_drop.exit_crit_edge: ; preds = %land.lhs.true2.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_dev_drop.exit

if.then.i50.i:                                    ; preds = %land.lhs.true2.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %nfqnl_dev_drop.exit

nfqnl_dev_drop.exit:                              ; preds = %if.then.i50.i, %land.lhs.true2.i49.i.nfqnl_dev_drop.exit_crit_edge, %land.lhs.true.i47.i.nfqnl_dev_drop.exit_crit_edge, %for.end32.i.nfqnl_dev_drop.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %50 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i51.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i51.i to ptr
  %preempt_count.i.i.i.i52.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i52.i, align 4
  %sub.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i52.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end

if.end:                                           ; preds = %nfqnl_dev_drop.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfnl_queue_pernet(ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nfnl_queue_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %9 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfqnl_reinject(ptr noundef %entry1, i32 noundef %verdict) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %verdict to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %verdict, label %entry.if.end21_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge38
    i32 5, label %entry.if.then_crit_edge39
  ]

entry.if.then_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge38, %entry.if.then_crit_edge39
  %1 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ct_hook to i32))
  %5 = load volatile ptr, ptr @nf_ct_hook, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @nfqnl_reinject.__warned, align 1
  br i1 %.b28, label %land.lhs.true8.do.end12_crit_edge, label %if.then10

land.lhs.true8.do.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfqnl_reinject.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @.str.3) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %land.lhs.true8.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %do.end12.if.end20_crit_edge, label %if.then15

do.end12.if.end20_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %net = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 5
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %skb = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 1
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %call16 = tail call i32 %7(ptr noundef %9, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  %spec.select = select i1 %cmp17, i32 0, i32 %verdict
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %do.end12.if.end20_crit_edge
  %verdict.addr.0 = phi i32 [ %verdict, %do.end12.if.end20_crit_edge ], [ %spec.select, %if.then15 ]
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i29, label %if.end20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

if.end20.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %if.end20
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %if.end20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %12 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i36 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end21

if.end21:                                         ; preds = %rcu_read_unlock.exit, %entry.if.end21_crit_edge
  %verdict.addr.1 = phi i32 [ %verdict.addr.0, %rcu_read_unlock.exit ], [ %verdict, %entry.if.end21_crit_edge ]
  tail call void @nf_reinject(ptr noundef %entry1, i32 noundef %verdict.addr.1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_reinject(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfqnl_recv_unsupp(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %cda) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqnl_recv_verdict(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %nfqa) #2 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %1)
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nfmsg, align 4
  %res_id = getelementptr inbounds %struct.nfgenmsg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %res_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %res_id, align 2
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid, align 4
  %8 = lshr i16 %5, 8
  %xor.i.i.i = xor i16 %8, %5
  %9 = and i16 %xor.i.i.i, 15
  %conv2.i.i.i = zext i16 %9 to i32
  %arrayidx.i.i = getelementptr %struct.nfnl_queue_net, ptr %call, i32 0, i32 1, i32 %conv2.i.i.i
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.for.cond.i.i.preheader_crit_edge

entry.for.cond.i.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.preheader

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b42.i.i = load i1, ptr @instance_lookup.__warned, align 1
  br i1 %.b42.i.i, label %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @instance_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #10
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %entry.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %inst.0.in.i.i = phi ptr [ %inst.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arrayidx.i.i, %for.cond.i.i.preheader ]
  %10 = ptrtoint ptr %inst.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %inst.0.i.i = load volatile ptr, ptr %inst.0.in.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %inst.0.i.i, null
  br i1 %tobool13.not.i.i, label %for.cond.i.i.if.then_crit_edge, label %for.body.i.i

for.cond.i.i.if.then_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i.i:                                     ; preds = %for.cond.i.i
  %queue_num14.i.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %queue_num14.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_num14.i.i, align 4
  %cmp.i.i = icmp eq i16 %12, %5
  br i1 %cmp.i.i, label %if.end.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.end.i:                                         ; preds = %for.body.i.i
  %peer_portid.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %peer_portid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %peer_portid.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %7)
  %cmp.not.i = icmp eq i32 %14, %7
  br i1 %cmp.not.i, label %verdict_instance_lookup.exit, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

verdict_instance_lookup.exit:                     ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %inst.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %verdict_instance_lookup.exit.if.then_crit_edge, label %if.end

verdict_instance_lookup.exit.if.then_crit_edge:   ; preds = %verdict_instance_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %verdict_instance_lookup.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %for.cond.i.i.if.then_crit_edge
  %retval.0.i148 = phi ptr [ %inst.0.i.i, %verdict_instance_lookup.exit.if.then_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.cond.i.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i148 to i32
  br label %cleanup

if.end:                                           ; preds = %verdict_instance_lookup.exit
  %arrayidx.i = getelementptr ptr, ptr %nfqa, i32 2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i114

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i114:                                      ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  %and.i = and i32 %19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp.i112 = icmp ugt i32 %and.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 2
  %or.cond.i = or i1 %cmp.i112, %cmp3.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond160 = or i1 %tobool.not, %or.cond.i
  br i1 %or.cond160, label %if.end.i114.cleanup_crit_edge, label %if.end7

if.end.i114.cleanup_crit_edge:                    ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end.i114
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %id = getelementptr i8, ptr %17, i32 8
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %lock.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %queue_list.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7
  %i.0.in.i = phi ptr [ %queue_list.i, %if.end7 ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %24 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %cmp.not.i116 = icmp eq ptr %i.0.i, %queue_list.i
  br i1 %cmp.not.i116, label %for.cond.i.find_dequeue_entry.exit.thread_crit_edge, label %for.body.i

for.cond.i.find_dequeue_entry.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_dequeue_entry.exit.thread

for.body.i:                                       ; preds = %for.cond.i
  %id3.i = getelementptr inbounds %struct.nf_queue_entry, ptr %i.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id3.i, align 4
  %cmp4.i = icmp eq i32 %26, %23
  br i1 %cmp4.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i117 = icmp eq ptr %i.0.i, null
  br i1 %tobool.not.i117, label %for.end.i.find_dequeue_entry.exit.thread_crit_edge, label %if.then10.i

for.end.i.find_dequeue_entry.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_dequeue_entry.exit.thread

if.then10.i:                                      ; preds = %for.end.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %i.0.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then10.i.if.end11_crit_edge

if.then10.i.if.end11_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i.i.i.i:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %i.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i.0.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %if.end11

find_dequeue_entry.exit.thread:                   ; preds = %for.end.i.find_dequeue_entry.exit.thread_crit_edge, %for.cond.i.find_dequeue_entry.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i.i.i, %if.then10.i.if.end11_crit_edge
  %33 = ptrtoint ptr %i.0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %i.0.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %queue_total.i.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 12
  %35 = ptrtoint ptr %queue_total.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queue_total.i.i, align 4
  %dec.i.i = add i32 %36, -1
  store i32 %dec.i.i, ptr %queue_total.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  %37 = load volatile ptr, ptr @nfnl_ct_hook, align 4
  %call13 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end11.do.end22_crit_edge

if.end11.do.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

land.lhs.true:                                    ; preds = %if.end11
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b110 = load i1, ptr @nfqnl_recv_verdict.__warned, align 1
  br i1 %.b110, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfqnl_recv_verdict.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1205, ptr noundef nonnull @.str.3) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %if.end11.do.end22_crit_edge
  %arrayidx = getelementptr ptr, ptr %nfqa, i32 11
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %39, null
  %cmp26.not = icmp eq ptr %37, null
  %or.cond = select i1 %tobool24.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %do.end22.if.end30_crit_edge, label %if.then27

do.end22.if.end30_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %do.end22
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %40 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nlh, align 4
  %skb.i = getelementptr inbounds %struct.nf_queue_entry, ptr %i.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb.i, align 4
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i = and i32 %45, 7
  %and1.i.i = and i32 %45, -8
  %46 = inttoptr i32 %and1.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i118 = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i118, label %if.then27.if.end30_crit_edge, label %if.end.i121

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end.i121:                                      ; preds = %if.then27
  %parse.i = getelementptr inbounds %struct.nfnl_ct_hook, ptr %37, i32 0, i32 2
  %47 = ptrtoint ptr %parse.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parse.i, align 4
  %call2.i = tail call i32 %48(ptr noundef nonnull %39, ptr noundef nonnull %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i120 = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i120, label %if.end.i121.if.end30_crit_edge, label %if.end5.i

if.end.i121.if.end30_crit_edge:                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end5.i:                                        ; preds = %if.end.i121
  %arrayidx6.i = getelementptr ptr, ptr %nfqa, i32 15
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i122 = icmp eq ptr %50, null
  br i1 %tobool.not.i122, label %if.end5.i.if.end30_crit_edge, label %if.then7.i

if.end5.i.if.end30_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then7.i:                                       ; preds = %if.end5.i
  %attach_expect.i = getelementptr inbounds %struct.nfnl_ct_hook, ptr %37, i32 0, i32 3
  %51 = ptrtoint ptr %attach_expect.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %attach_expect.i, align 4
  %53 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %skb.i, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 12
  %55 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %portid.i, align 4
  %tobool.not.i.i123 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i123, label %if.then7.i.nlmsg_report.exit.i_crit_edge, label %cond.true.i.i

if.then7.i.nlmsg_report.exit.i_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_report.exit.i

cond.true.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %nlmsg_flags.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %41, i32 0, i32 2
  %57 = ptrtoint ptr %nlmsg_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %nlmsg_flags.i.i, align 2
  %59 = lshr i16 %58, 3
  %.lobit.i.i = and i16 %59, 1
  %60 = zext i16 %.lobit.i.i to i32
  br label %nlmsg_report.exit.i

nlmsg_report.exit.i:                              ; preds = %cond.true.i.i, %if.then7.i.nlmsg_report.exit.i_crit_edge
  %cond.i.i = phi i32 [ %60, %cond.true.i.i ], [ 0, %if.then7.i.nlmsg_report.exit.i_crit_edge ]
  %call11.i = tail call i32 %52(ptr noundef nonnull %50, ptr noundef nonnull %46, i32 noundef %56, i32 noundef %cond.i.i) #10
  br label %if.end30

if.end30:                                         ; preds = %nlmsg_report.exit.i, %if.end5.i.if.end30_crit_edge, %if.end.i121.if.end30_crit_edge, %if.then27.if.end30_crit_edge, %do.end22.if.end30_crit_edge
  %ctinfo.0 = phi i32 [ -1, %do.end22.if.end30_crit_edge ], [ %and.i.i, %if.then27.if.end30_crit_edge ], [ %and.i.i, %if.end.i121.if.end30_crit_edge ], [ %and.i.i, %if.end5.i.if.end30_crit_edge ], [ %and.i.i, %nlmsg_report.exit.i ]
  %ct.0 = phi ptr [ null, %do.end22.if.end30_crit_edge ], [ null, %if.then27.if.end30_crit_edge ], [ null, %if.end.i121.if.end30_crit_edge ], [ %46, %if.end5.i.if.end30_crit_edge ], [ %46, %nlmsg_report.exit.i ]
  %pf = getelementptr inbounds %struct.nf_queue_entry, ptr %i.0.i, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %62)
  %cmp31 = icmp eq i8 %62, 7
  br i1 %cmp31, label %if.then33, label %if.end30.if.end39_crit_edge

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then33:                                        ; preds = %if.end30
  %arrayidx.i125 = getelementptr ptr, ptr %nfqa, i32 19
  %63 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i125, align 4
  %tobool.not.i126 = icmp eq ptr %64, null
  br i1 %tobool.not.i126, label %if.then33.if.end15.i_crit_edge, label %if.then.i

if.then33.if.end15.i_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #10
  %65 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !120
  %66 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %66, align 4, !annotation !120
  %68 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %68, align 4, !annotation !120
  %add.ptr.i.i.i = getelementptr i8, ptr %64, i32 4
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %64, align 2
  %conv.i.i.i = zext i16 %71 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i127 = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nfqa_vlan_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i127)
  %cmp.i128 = icmp slt i32 %call2.i.i127, 0
  br i1 %cmp.i128, label %if.then.i.cleanup.thread.i_crit_edge, label %if.end.i129

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end.i129:                                      ; preds = %if.then.i
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %68, align 4
  %tobool5.not.i = icmp eq ptr %73, null
  br i1 %tobool5.not.i, label %if.end.i129.cleanup.thread.i_crit_edge, label %lor.lhs.false.i

if.end.i129.cleanup.thread.i_crit_edge:           ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %if.end.i129
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %66, align 4
  %tobool7.not.i = icmp eq ptr %75, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.cleanup.thread.i_crit_edge, label %cleanup.i

lor.lhs.false.i.cleanup.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %lor.lhs.false.i.cleanup.thread.i_crit_edge, %if.end.i129.cleanup.thread.i_crit_edge, %if.then.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ -22, %if.end.i129.cleanup.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.cleanup.thread.i_crit_edge ], [ %call2.i.i127, %if.then.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #10
  br label %cleanup

cleanup.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %skb.i130 = getelementptr inbounds %struct.nf_queue_entry, ptr %i.0.i, i32 0, i32 1
  %76 = ptrtoint ptr %skb.i130 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skb.i130, align 4
  %add.ptr.i.i53.i = getelementptr i8, ptr %75, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i53.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i.i53.i, align 2
  %add.ptr.i.i54.i = getelementptr i8, ptr %73, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i54.i, align 2
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15, i32 0, i32 9
  %82 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %79, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15, i32 0, i32 10
  %83 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %81, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15, i32 0, i32 3
  %84 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %cleanup.i, %if.then33.if.end15.i_crit_edge
  %arrayidx16.i = getelementptr ptr, ptr %nfqa, i32 20
  %85 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx16.i, align 4
  %tobool17.not.i = icmp eq ptr %86, null
  br i1 %tobool17.not.i, label %if.end15.i.if.end39_crit_edge, label %if.then18.i

if.end15.i.if.end39_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then18.i:                                      ; preds = %if.end15.i
  %skb19.i = getelementptr inbounds %struct.nf_queue_entry, ptr %i.0.i, i32 0, i32 1
  %87 = ptrtoint ptr %skb19.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %skb19.i, align 4
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 15, i32 0, i32 20
  %89 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %90 to i32
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 15, i32 0, i32 21
  %91 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %mac_header.i, align 2
  %conv21.i = zext i16 %92 to i32
  %sub.i = sub nsw i32 %conv.i, %conv21.i
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %86, align 2
  %conv.i.i = zext i16 %94 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.i.i)
  %cmp24.not.i = icmp eq i32 %sub.i, %sub.i.i
  br i1 %cmp24.not.i, label %if.else.i, label %if.then18.i.cleanup_crit_edge

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp27.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i.if.end39_crit_edge

if.else.i.if.end39_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 18
  %95 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i.i131 = getelementptr i8, ptr %96, i32 %conv21.i
  %add.ptr.i56.i = getelementptr i8, ptr %86, i32 4
  %97 = call ptr @memcpy(ptr %add.ptr.i.i131, ptr %add.ptr.i56.i, i32 %sub.i)
  br label %if.end39

if.end39:                                         ; preds = %if.then29.i, %if.else.i.if.end39_crit_edge, %if.end15.i.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %arrayidx40 = getelementptr ptr, ptr %nfqa, i32 10
  %98 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %99, null
  br i1 %tobool41.not, label %if.end39.if.end62_crit_edge, label %if.then42

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then42:                                        ; preds = %if.end39
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %99, align 2
  %102 = add i16 %101, -4
  %conv46 = zext i16 %102 to i32
  %skb47 = getelementptr inbounds %struct.nf_queue_entry, ptr %i.0.i, i32 0, i32 1
  %103 = ptrtoint ptr %skb47 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %skb47, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  %sub = sub i32 %conv46, %106
  %add.ptr.i = getelementptr i8, ptr %99, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i134 = icmp slt i32 %sub, 0
  br i1 %cmp.i134, label %if.then.i137, label %if.else.i140

if.then.i137:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv46)
  %cmp.i.i136 = icmp ugt i32 %106, %conv46
  br i1 %cmp.i.i136, label %cond.true.i.i138, label %if.then.i137.if.end24.i_crit_edge

if.then.i137.if.end24.i_crit_edge:                ; preds = %if.then.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

cond.true.i.i138:                                 ; preds = %if.then.i137
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 7
  %107 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i.i.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv46, ptr %len, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 19
  %110 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %111, i32 %conv46
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 16
  %112 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end24.i

pskb_trim.exit.i:                                 ; preds = %cond.true.i.i138
  %call.i.i.i = call i32 @___pskb_trim(ptr noundef %104, i32 noundef %conv46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i139 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i139, label %pskb_trim.exit.i.if.end24.i_crit_edge, label %pskb_trim.exit.i._crit_edge

pskb_trim.exit.i._crit_edge:                      ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %137

pskb_trim.exit.i.if.end24.i_crit_edge:            ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.else.i140:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv46)
  %cmp2.not.i = icmp eq i32 %106, %conv46
  br i1 %cmp2.not.i, label %if.else.i140.if.end24.i_crit_edge, label %if.end6.i

if.else.i140.if.end24.i_crit_edge:                ; preds = %if.else.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end6.i:                                        ; preds = %if.else.i140
  %data_len.i.i49.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 7
  %113 = ptrtoint ptr %data_len.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i.i49.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.i.not.i.i = icmp eq i32 %114, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end6.i.skb_tailroom.exit.i_crit_edge

if.end6.i.skb_tailroom.exit.i_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 17
  %115 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 16
  %117 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %116 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %118 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end6.i.skb_tailroom.exit.i_crit_edge
  %cond.i50.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end6.i.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i50.i, i32 %sub)
  %cmp9.i = icmp slt i32 %cond.i50.i, %sub
  br i1 %cmp9.i, label %if.then10.i142, label %skb_tailroom.exit.i.if.end20.i_crit_edge

skb_tailroom.exit.i.if.end20.i_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then10.i142:                                   ; preds = %skb_tailroom.exit.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 19
  %119 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i.i, align 4
  %head.i.i141 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 18
  %121 = ptrtoint ptr %head.i.i141 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i141, align 8
  %sub.ptr.lhs.cast.i51.i = ptrtoint ptr %120 to i32
  %sub.ptr.rhs.cast.i52.i = ptrtoint ptr %122 to i32
  %sub.ptr.sub.i53.i = sub i32 %sub.ptr.lhs.cast.i51.i, %sub.ptr.rhs.cast.i52.i
  %call14.i = call ptr @skb_copy_expand(ptr noundef %104, i32 noundef %sub.ptr.sub.i53.i, i32 noundef %sub, i32 noundef 2592) #10
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.then10.i142._crit_edge, label %if.end17.i

if.then10.i142._crit_edge:                        ; preds = %if.then10.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %137

if.end17.i:                                       ; preds = %if.then10.i142
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %skb47 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %skb47, align 4
  call void @kfree_skb_reason(ptr noundef %124, i32 noundef 0) #10
  %125 = ptrtoint ptr %skb47 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call14.i, ptr %skb47, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end17.i, %skb_tailroom.exit.i.if.end20.i_crit_edge
  %126 = ptrtoint ptr %skb47 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %skb47, align 4
  %call22.i = call ptr @skb_put(ptr noundef %127, i32 noundef %sub) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end20.i, %if.else.i140.if.end24.i_crit_edge, %pskb_trim.exit.i.if.end24.i_crit_edge, %__skb_trim.exit.i.i.i, %if.then.i137.if.end24.i_crit_edge
  %128 = ptrtoint ptr %skb47 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %skb47, align 4
  %call26.i = call i32 @skb_ensure_writable(ptr noundef %129, i32 noundef %conv46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %nfqnl_mangle.exit, label %if.end24.i._crit_edge

if.end24.i._crit_edge:                            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %137

nfqnl_mangle.exit:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %skb47 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %skb47, align 4
  %data.i54.i = getelementptr inbounds %struct.sk_buff, ptr %131, i32 0, i32 19
  %132 = ptrtoint ptr %data.i54.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i54.i, align 4
  %134 = call ptr @memcpy(ptr %133, ptr %add.ptr.i, i32 %conv46)
  %135 = load ptr, ptr %skb47, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 15
  %136 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  br label %137

137:                                              ; preds = %nfqnl_mangle.exit, %if.end24.i._crit_edge, %if.then10.i142._crit_edge, %pskb_trim.exit.i._crit_edge
  %138 = phi i32 [ %21, %nfqnl_mangle.exit ], [ 0, %pskb_trim.exit.i._crit_edge ], [ 0, %if.then10.i142._crit_edge ], [ 0, %if.end24.i._crit_edge ]
  %tobool56.not = icmp eq ptr %ct.0, null
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv46)
  %tobool58.not = icmp eq i32 %106, %conv46
  %or.cond111 = select i1 %tobool56.not, i1 true, i1 %tobool58.not
  br i1 %or.cond111, label %.if.end62_crit_edge, label %if.then59

.if.end62_crit_edge:                              ; preds = %137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then59:                                        ; preds = %137
  call void @__sanitizer_cov_trace_pc() #12
  %seq_adjust = getelementptr inbounds %struct.nfnl_ct_hook, ptr %37, i32 0, i32 4
  %139 = ptrtoint ptr %seq_adjust to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %seq_adjust, align 4
  %141 = ptrtoint ptr %skb47 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %skb47, align 4
  call void %140(ptr noundef %142, ptr noundef nonnull %ct.0, i32 noundef %ctinfo.0, i32 noundef %sub) #10
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %.if.end62_crit_edge, %if.end39.if.end62_crit_edge
  %verdict.1 = phi i32 [ %21, %if.end39.if.end62_crit_edge ], [ %138, %if.then59 ], [ %138, %.if.end62_crit_edge ]
  %arrayidx63 = getelementptr ptr, ptr %nfqa, i32 3
  %143 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %144, null
  br i1 %tobool64.not, label %if.end62.if.end69_crit_edge, label %if.then65

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i145 = getelementptr i8, ptr %144, i32 4
  %145 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i.i145, align 4
  %skb68 = getelementptr inbounds %struct.nf_queue_entry, ptr %i.0.i, i32 0, i32 1
  %147 = ptrtoint ptr %skb68 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %skb68, align 4
  %149 = getelementptr inbounds %struct.sk_buff, ptr %148, i32 0, i32 15, i32 0, i32 13
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %146, ptr %149, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end62.if.end69_crit_edge
  call fastcc void @nfqnl_reinject(ptr noundef nonnull %i.0.i, i32 noundef %verdict.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then18.i.cleanup_crit_edge, %cleanup.thread.i, %find_dequeue_entry.exit.thread, %if.end.i114.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ 0, %if.end69 ], [ -2, %find_dequeue_entry.exit.thread ], [ %retval.0.ph.i, %cleanup.thread.i ], [ -22, %if.then18.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqnl_recv_config(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %nfqa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %1)
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nfmsg, align 4
  %res_id = getelementptr inbounds %struct.nfgenmsg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %res_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %res_id, align 2
  %arrayidx = getelementptr ptr, ptr %nfqa, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i, align 2
  %.off = add i8 %9, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then.cleanup_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd.0 = phi ptr [ %add.ptr.i, %if.then.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %arrayidx4 = getelementptr ptr, ptr %nfqa, i32 5
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.if.end33_crit_edge, label %if.then6

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then6:                                         ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %nfqa, i32 4
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i138 = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %15)
  %cmp = icmp ugt i32 %15, 31
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %and = and i32 %15, 2
  %and18 = and i32 %and, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end33_crit_edge, label %land.lhs.true

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  %18 = load volatile ptr, ptr @nfnl_ct_hook, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nfnl_unlock(i8 noundef zeroext 3) #10
  %call23 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.9) #10
  tail call void @nfnl_lock(i8 noundef zeroext 3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  %19 = load volatile ptr, ptr @nfnl_ct_hook, align 4
  %tobool29.not = icmp eq ptr %19, null
  %. = select i1 %tobool29.not, i32 -95, i32 -11
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end17.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %mask.0 = phi i32 [ %17, %land.lhs.true.if.end33_crit_edge ], [ %17, %if.end17.if.end33_crit_edge ], [ 0, %if.end.if.end33_crit_edge ]
  %flags.0 = phi i32 [ %15, %land.lhs.true.if.end33_crit_edge ], [ %15, %if.end17.if.end33_crit_edge ], [ 0, %if.end.if.end33_crit_edge ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end33.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end33.rcu_read_lock.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end33
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end33.rcu_read_lock.exit_crit_edge
  %24 = lshr i16 %5, 8
  %xor.i.i = xor i16 %24, %5
  %25 = and i16 %xor.i.i, 15
  %conv2.i.i = zext i16 %25 to i32
  %arrayidx.i = getelementptr %struct.nfnl_queue_net, ptr %call, i32 0, i32 1, i32 %conv2.i.i
  %call1.i139 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139)
  %tobool.not.i140 = icmp eq i32 %call1.i139, 0
  br i1 %tobool.not.i140, label %land.lhs.true.i141, label %rcu_read_lock.exit.for.cond.i.preheader_crit_edge

rcu_read_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true.i141:                               ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i141.for.cond.i.preheader_crit_edge, label %land.lhs.true4.i

land.lhs.true.i141.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i141
  %.b42.i = load i1, ptr @instance_lookup.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %if.then.i142

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

if.then.i142:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @instance_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #10
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i142, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i141.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %inst.0.in.i = phi ptr [ %inst.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i, %for.cond.i.preheader ]
  %26 = ptrtoint ptr %inst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %inst.0.i = load volatile ptr, ptr %inst.0.in.i, align 4
  %tobool13.not.i = icmp eq ptr %inst.0.i, null
  br i1 %tobool13.not.i, label %for.cond.i.if.end40_crit_edge, label %for.body.i

for.cond.i.if.end40_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

for.body.i:                                       ; preds = %for.cond.i
  %queue_num14.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i, i32 0, i32 7
  %27 = ptrtoint ptr %queue_num14.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %queue_num14.i, align 4
  %cmp.i = icmp eq i16 %28, %5
  br i1 %cmp.i, label %land.lhs.true36, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

land.lhs.true36:                                  ; preds = %for.body.i
  %peer_portid = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %peer_portid, align 16
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %portid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp37.not = icmp eq i32 %30, %32
  br i1 %cmp37.not, label %land.lhs.true36.if.end40_crit_edge, label %land.lhs.true36.err_out_unlock_crit_edge

land.lhs.true36.err_out_unlock_crit_edge:         ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

land.lhs.true36.if.end40_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true36.if.end40_crit_edge, %for.cond.i.if.end40_crit_edge
  %cmp41.not = icmp eq ptr %cmd.0, null
  br i1 %cmp41.not, label %if.end40.if.end63_crit_edge, label %if.then43

if.end40.if.end63_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then43:                                        ; preds = %if.end40
  %33 = ptrtoint ptr %cmd.0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cmd.0, align 2
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %34, label %if.then43.err_out_unlock_crit_edge [
    i8 1, label %sw.bb46
    i8 2, label %sw.bb57
    i8 3, label %if.then43.if.end63_crit_edge
    i8 4, label %if.then43.if.end63_crit_edge181
  ]

if.then43.if.end63_crit_edge181:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then43.if.end63_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then43.err_out_unlock_crit_edge:               ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

sw.bb46:                                          ; preds = %if.then43
  br i1 %tobool13.not.i, label %if.end49, label %sw.bb46.err_out_unlock_crit_edge

sw.bb46.err_out_unlock_crit_edge:                 ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

if.end49:                                         ; preds = %sw.bb46
  %portid51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %36 = ptrtoint ptr %portid51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %portid51, align 4
  %call52 = tail call fastcc ptr @instance_create(ptr noundef %call, i16 noundef zeroext %5, i32 noundef %37)
  %cmp.i143 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then54, label %if.end49.if.end63_crit_edge

if.end49.if.end63_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call52 to i32
  br label %err_out_unlock

sw.bb57:                                          ; preds = %if.then43
  br i1 %tobool13.not.i, label %sw.bb57.err_out_unlock_crit_edge, label %if.end60

sw.bb57.err_out_unlock_crit_edge:                 ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

if.end60:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @instance_destroy(ptr noundef %call, ptr noundef nonnull %inst.0.i)
  br label %err_out_unlock

if.end63:                                         ; preds = %if.end49.if.end63_crit_edge, %if.then43.if.end63_crit_edge, %if.then43.if.end63_crit_edge181, %if.end40.if.end63_crit_edge
  %queue.0 = phi ptr [ %inst.0.i, %if.then43.if.end63_crit_edge ], [ %inst.0.i, %if.then43.if.end63_crit_edge181 ], [ %call52, %if.end49.if.end63_crit_edge ], [ %inst.0.i, %if.end40.if.end63_crit_edge ]
  %tobool64.not = icmp eq ptr %queue.0, null
  br i1 %tobool64.not, label %if.end63.err_out_unlock_crit_edge, label %if.end66

if.end63.err_out_unlock_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

if.end66:                                         ; preds = %if.end63
  %arrayidx67 = getelementptr ptr, ptr %nfqa, i32 2
  %39 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %40, null
  br i1 %tobool68.not, label %if.end66.if.end73_crit_edge, label %if.then69

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then69:                                        ; preds = %if.end66
  %add.ptr.i144 = getelementptr i8, ptr %40, i32 4
  %copy_mode = getelementptr i8, ptr %40, i32 8
  %41 = ptrtoint ptr %copy_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %copy_mode, align 1
  %43 = ptrtoint ptr %add.ptr.i144 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %add.ptr.i144, align 1
  %lock.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %45 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %42, label %if.then69.nfqnl_set_mode.exit_crit_edge [
    i8 0, label %if.then69.sw.bb.i_crit_edge
    i8 1, label %if.then69.sw.bb.i_crit_edge182
    i8 2, label %sw.bb1.i
  ]

if.then69.sw.bb.i_crit_edge182:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then69.sw.bb.i_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then69.nfqnl_set_mode.exit_crit_edge:          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_set_mode.exit

sw.bb.i:                                          ; preds = %if.then69.sw.bb.i_crit_edge, %if.then69.sw.bb.i_crit_edge182
  %copy_mode.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 8
  %46 = ptrtoint ptr %copy_mode.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %42, ptr %copy_mode.i, align 2
  %copy_range.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 4
  %47 = ptrtoint ptr %copy_range.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %copy_range.i, align 8
  br label %nfqnl_set_mode.exit

sw.bb1.i:                                         ; preds = %if.then69
  %copy_mode2.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 8
  %48 = ptrtoint ptr %copy_mode2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %copy_mode2.i, align 2
  %49 = add i32 %44, -65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65531, i32 %49)
  %50 = icmp ult i32 %49, -65531
  %copy_range6.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 4
  br i1 %50, label %if.then.i145, label %if.else.i

if.then.i145:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %copy_range6.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65531, ptr %copy_range6.i, align 8
  br label %nfqnl_set_mode.exit

if.else.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %copy_range6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %44, ptr %copy_range6.i, align 8
  br label %nfqnl_set_mode.exit

nfqnl_set_mode.exit:                              ; preds = %if.else.i, %if.then.i145, %sw.bb.i, %if.then69.nfqnl_set_mode.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  br label %if.end73

if.end73:                                         ; preds = %nfqnl_set_mode.exit, %if.end66.if.end73_crit_edge
  %arrayidx74 = getelementptr ptr, ptr %nfqa, i32 3
  %53 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx74, align 4
  %tobool75.not = icmp eq ptr %54, null
  br i1 %tobool75.not, label %if.end73.if.end81_crit_edge, label %if.then76

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i146 = getelementptr i8, ptr %54, i32 4
  %lock = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %55 = ptrtoint ptr %add.ptr.i146 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i146, align 4
  %queue_maxlen79 = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 3
  %57 = ptrtoint ptr %queue_maxlen79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %queue_maxlen79, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end73.if.end81_crit_edge
  %58 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx4, align 4
  %tobool83.not = icmp eq ptr %59, null
  br i1 %tobool83.not, label %if.end81.err_out_unlock_crit_edge, label %if.then84

if.end81.err_out_unlock_crit_edge:                ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %lock85 = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock85) #10
  %neg = xor i32 %mask.0, -1
  %flags86 = getelementptr inbounds %struct.nfqnl_instance, ptr %queue.0, i32 0, i32 9
  %60 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags86, align 8
  %and87 = and i32 %61, %neg
  %and88 = and i32 %flags.0, %mask.0
  %or = or i32 %and87, %and88
  store i32 %or, ptr %flags86, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock85) #10
  br label %err_out_unlock

err_out_unlock:                                   ; preds = %if.then84, %if.end81.err_out_unlock_crit_edge, %if.end63.err_out_unlock_crit_edge, %if.end60, %sw.bb57.err_out_unlock_crit_edge, %if.then54, %sw.bb46.err_out_unlock_crit_edge, %if.then43.err_out_unlock_crit_edge, %land.lhs.true36.err_out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.then84 ], [ 0, %if.end81.err_out_unlock_crit_edge ], [ 0, %if.end60 ], [ %38, %if.then54 ], [ -1, %land.lhs.true36.err_out_unlock_crit_edge ], [ -16, %sw.bb46.err_out_unlock_crit_edge ], [ -19, %sw.bb57.err_out_unlock_crit_edge ], [ -524, %if.then43.err_out_unlock_crit_edge ], [ -19, %if.end63.err_out_unlock_crit_edge ]
  %call.i147 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i147, label %err_out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i150

err_out_unlock.rcu_read_unlock.exit_crit_edge:    ; preds = %err_out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i150:                               ; preds = %err_out_unlock
  %call1.i148 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148)
  %tobool.not.i149 = icmp eq i32 %call1.i148, 0
  br i1 %tobool.not.i149, label %land.lhs.true.i150.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i152

land.lhs.true.i150.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i152:                              ; preds = %land.lhs.true.i150
  %.b4.i151 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i151, label %land.lhs.true2.i152.rcu_read_unlock.exit_crit_edge, label %if.then.i153

land.lhs.true2.i152.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i153:                                     ; preds = %land.lhs.true2.i152
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i153, %land.lhs.true2.i152.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i150.rcu_read_unlock.exit_crit_edge, %err_out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %62 = tail call i32 @llvm.read_register.i32(metadata !108) #10
  %and.i.i.i.i.i154 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i154 to ptr
  %preempt_count.i.i.i.i155 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i155, align 4
  %sub.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i155, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then22, %if.end10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 0, %if.then.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -95, %if.end10.cleanup_crit_edge ], [ %., %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqnl_recv_verdict_batch(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %nfqa) #2 align 64 {
entry:
  %batch_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %1)
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nfmsg, align 4
  %res_id = getelementptr inbounds %struct.nfgenmsg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %res_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %res_id, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %batch_list) #10
  %6 = getelementptr inbounds %struct.list_head, ptr %batch_list, i32 0, i32 1
  %7 = ptrtoint ptr %batch_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %batch_list, ptr %batch_list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %batch_list, ptr %6, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %portid, align 4
  %11 = lshr i16 %5, 8
  %xor.i.i.i = xor i16 %11, %5
  %12 = and i16 %xor.i.i.i, 15
  %conv2.i.i.i = zext i16 %12 to i32
  %arrayidx.i.i = getelementptr %struct.nfnl_queue_net, ptr %call, i32 0, i32 1, i32 %conv2.i.i.i
  %call1.i.i = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.for.cond.i.i.preheader_crit_edge

entry.for.cond.i.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.preheader

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b42.i.i = load i1, ptr @instance_lookup.__warned, align 1
  br i1 %.b42.i.i, label %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @instance_lookup.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #10
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %entry.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %inst.0.in.i.i = phi ptr [ %inst.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arrayidx.i.i, %for.cond.i.i.preheader ]
  %13 = ptrtoint ptr %inst.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %inst.0.i.i = load volatile ptr, ptr %inst.0.in.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %inst.0.i.i, null
  br i1 %tobool13.not.i.i, label %for.cond.i.i.if.then_crit_edge, label %for.body.i.i

for.cond.i.i.if.then_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i.i:                                     ; preds = %for.cond.i.i
  %queue_num14.i.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %queue_num14.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %queue_num14.i.i, align 4
  %cmp.i.i = icmp eq i16 %15, %5
  br i1 %cmp.i.i, label %if.end.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.end.i:                                         ; preds = %for.body.i.i
  %peer_portid.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %peer_portid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %peer_portid.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %10)
  %cmp.not.i = icmp eq i32 %17, %10
  br i1 %cmp.not.i, label %verdict_instance_lookup.exit, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

verdict_instance_lookup.exit:                     ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %inst.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %verdict_instance_lookup.exit.if.then_crit_edge, label %if.end

verdict_instance_lookup.exit.if.then_crit_edge:   ; preds = %verdict_instance_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %verdict_instance_lookup.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %for.cond.i.i.if.then_crit_edge
  %retval.0.i100 = phi ptr [ %inst.0.i.i, %verdict_instance_lookup.exit.if.then_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.cond.i.i.if.then_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i100 to i32
  br label %cleanup

if.end:                                           ; preds = %verdict_instance_lookup.exit
  %arrayidx.i = getelementptr ptr, ptr %nfqa, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i92

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i92:                                       ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %and.i = and i32 %22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp.i90 = icmp ugt i32 %and.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 2
  %or.cond.i = or i1 %cmp.i90, %cmp3.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = or i1 %tobool.not, %or.cond.i
  br i1 %or.cond, label %if.end.i92.cleanup_crit_edge, label %if.end7

if.end.i92.cleanup_crit_edge:                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end.i92
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %id = getelementptr i8, ptr %20, i32 8
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  %lock = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %queue_list = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 14
  %27 = ptrtoint ptr %queue_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue_list, align 4
  %cmp.not106 = icmp eq ptr %28, %queue_list
  br i1 %cmp.not106, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %queue_total.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i.i, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %entry1.0107 = phi ptr [ %28, %for.body.lr.ph ], [ %tmp.0108, %list_add_tail.exit.for.body_crit_edge ]
  %29 = ptrtoint ptr %entry1.0107 to i32
  call void @__asan_load4_noabort(i32 %29)
  %tmp.0108 = load ptr, ptr %entry1.0107, align 4
  %id17 = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1.0107, i32 0, i32 2
  %30 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id17, align 4
  %sub.i = sub i32 %31, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i94 = icmp slt i32 %sub.i, 1
  br i1 %cmp.i94, label %if.end21, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end21:                                         ; preds = %for.body
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0107) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end21.__dequeue_entry.exit_crit_edge

if.end21.__dequeue_entry.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %__dequeue_entry.exit

if.end.i.i.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0107, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %entry1.0107 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %entry1.0107, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %__dequeue_entry.exit

__dequeue_entry.exit:                             ; preds = %if.end.i.i.i, %if.end21.__dequeue_entry.exit_crit_edge
  %38 = ptrtoint ptr %entry1.0107 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0107, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0107, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %queue_total.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %queue_total.i, align 4
  %dec.i = add i32 %41, -1
  store i32 %dec.i, ptr %queue_total.i, align 4
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry1.0107, ptr noundef %43, ptr noundef nonnull %batch_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %__dequeue_entry.exit.list_add_tail.exit_crit_edge

__dequeue_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__dequeue_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__dequeue_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry1.0107, ptr %6, align 4
  %45 = ptrtoint ptr %entry1.0107 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %batch_list, ptr %entry1.0107, align 4
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry1.0107, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__dequeue_entry.exit.list_add_tail.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0108, %queue_list
  br i1 %cmp.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %48 = ptrtoint ptr %batch_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %batch_list, align 4
  %cmp.i95.not = icmp eq ptr %49, %batch_list
  br i1 %cmp.i95.not, label %for.end.cleanup_crit_edge, label %for.cond42.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond42.preheader:                             ; preds = %for.end
  %arrayidx = getelementptr ptr, ptr %nfqa, i32 3
  br label %for.body46

for.body46:                                       ; preds = %if.end52.for.body46_crit_edge, %for.cond42.preheader
  %entry1.1111 = phi ptr [ %49, %for.cond42.preheader ], [ %tmp.1112, %if.end52.for.body46_crit_edge ]
  %50 = ptrtoint ptr %entry1.1111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %tmp.1112 = load ptr, ptr %entry1.1111, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %tobool47.not = icmp eq ptr %52, null
  br i1 %tobool47.not, label %for.body46.if.end52_crit_edge, label %if.then48

for.body46.if.end52_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then48:                                        ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i97 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i97, align 4
  %skb51 = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1.1111, i32 0, i32 1
  %55 = ptrtoint ptr %skb51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb51, align 4
  %57 = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 15, i32 0, i32 13
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %54, ptr %57, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %for.body46.if.end52_crit_edge
  call fastcc void @nfqnl_reinject(ptr noundef %entry1.1111, i32 noundef %24)
  %cmp44.not = icmp eq ptr %tmp.1112, %batch_list
  br i1 %cmp44.not, label %if.end52.cleanup_crit_edge, label %if.end52.for.body46_crit_edge

if.end52.for.body46_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end52.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.i92.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %18, %if.then ], [ -2, %for.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i92.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %batch_list) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfnl_unlock(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfnl_lock(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @instance_create(ptr noundef %q, i16 noundef zeroext %queue_num, i32 noundef %portid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %q) #10
  %0 = lshr i16 %queue_num, 8
  %xor.i.i = xor i16 %0, %queue_num
  %1 = and i16 %xor.i.i, 15
  %conv2.i.i = zext i16 %1 to i32
  %arrayidx.i = getelementptr %struct.nfnl_queue_net, ptr %q, i32 0, i32 1, i32 %conv2.i.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b42.i = load i1, ptr @instance_lookup.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @instance_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #10
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %inst.0.in.i = phi ptr [ %inst.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i, %for.cond.i.preheader ]
  %2 = ptrtoint ptr %inst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %inst.0.i = load volatile ptr, ptr %inst.0.in.i, align 4
  %tobool13.not.i = icmp eq ptr %inst.0.i, null
  br i1 %tobool13.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %queue_num14.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i, i32 0, i32 7
  %3 = ptrtoint ptr %queue_num14.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %queue_num14.i, align 4
  %cmp.i = icmp eq i16 %4, %queue_num
  br i1 %cmp.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 256) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %queue_num5 = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %queue_num5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %queue_num, ptr %queue_num5, align 4
  %peer_portid = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %peer_portid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %portid, ptr %peer_portid, align 16
  %queue_maxlen = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %queue_maxlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1024, ptr %queue_maxlen, align 4
  %copy_range = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %copy_range to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65531, ptr %copy_range, align 8
  %copy_mode = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %copy_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %copy_mode, align 2
  %lock = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @instance_create.__key, i16 noundef signext 3) #10
  %queue_list = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 14
  %11 = ptrtoint ptr %queue_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue_list, ptr %queue_list, align 4
  %prev.i = getelementptr inbounds %struct.nfqnl_instance, ptr %call7.i.i, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue_list, ptr %prev.i, align 8
  %call7 = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %call7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i32 = icmp eq ptr %14, null
  br i1 %tobool.not.i32, label %if.end9.cleanup_crit_edge, label %do.body49.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body49.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %pprev51.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body49.i, %if.end9.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end9.cleanup_crit_edge ], [ %call7.i.i, %do.body49.i ], [ inttoptr (i32 -11 to ptr), %if.then8 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %for.body.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %q) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @instance_destroy(ptr noundef %q, ptr noundef %inst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %q) #10
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %inst, i32 0, i32 1
  %2 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev2.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %3, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.__instance_destroy.exit_crit_edge, label %do.body13.i.i.i

entry.__instance_destroy.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__instance_destroy.exit

do.body13.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__instance_destroy.exit

__instance_destroy.exit:                          ; preds = %do.body13.i.i.i, %entry.__instance_destroy.exit_crit_edge
  %6 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @instance_destroy_rcu) #10
  tail call void @_raw_spin_unlock(ptr noundef %q) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @instance_destroy_rcu(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %head, i32 120
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %queue_list.i = getelementptr i8, ptr %head, i32 172
  %0 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue_list.i, align 4
  %cmp.not28.i = icmp eq ptr %1, %queue_list.i
  br i1 %cmp.not28.i, label %entry.nfqnl_flush.exit_crit_edge, label %for.body.lr.ph.i

entry.nfqnl_flush.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_flush.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %queue_total.i = getelementptr i8, ptr %head, i32 164
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.029.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %next.030.i, %list_del.exit.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.030.i = load ptr, ptr %entry1.029.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.029.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1.029.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %queue_total.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue_total.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %queue_total.i, align 4
  tail call void @nf_reinject(ptr noundef %entry1.029.i, i32 noundef 0) #10
  %cmp.not.i = icmp eq ptr %next.030.i, %queue_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.nfqnl_flush.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.nfqnl_flush.exit_crit_edge:       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_flush.exit

nfqnl_flush.exit:                                 ; preds = %list_del.exit.i.nfqnl_flush.exit_crit_edge, %entry.nfqnl_flush.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  tail call void @module_put(ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqnl_rcv_nl_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp = icmp eq i32 %event, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %entry
  %protocol = getelementptr inbounds %struct.netlink_notify, ptr %ptr, i32 0, i32 2
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp1 = icmp eq i32 %3, 12
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then:                                          ; preds = %land.lhs.true
  tail call void @_raw_spin_lock(ptr noundef %call) #10
  %portid = getelementptr inbounds %struct.netlink_notify, ptr %ptr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.then
  %i.040 = phi i32 [ 0, %if.then ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfnl_queue_net, ptr %call, i32 0, i32 1, i32 %i.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not38 = icmp eq ptr %5, null
  br i1 %tobool5.not38, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %inst.039 = phi ptr [ %7, %for.inc.land.rhs_crit_edge ], [ %5, %for.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %inst.039 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inst.039, align 128
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid, align 4
  %peer_portid = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.039, i32 0, i32 2
  %10 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %peer_portid, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9 = icmp eq i32 %9, %11
  br i1 %cmp9, label %if.then10, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %land.rhs
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %inst.039, i32 0, i32 1
  %12 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev2.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %13, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.then10.__instance_destroy.exit_crit_edge, label %do.body13.i.i.i

if.then10.__instance_destroy.exit_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %__instance_destroy.exit

do.body13.i.i.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %__instance_destroy.exit

__instance_destroy.exit:                          ; preds = %do.body13.i.i.i, %if.then10.__instance_destroy.exit_crit_edge
  %16 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.039, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @instance_destroy_rcu) #10
  br label %for.inc

for.inc:                                          ; preds = %__instance_destroy.exit, %land.rhs.for.inc_crit_edge
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end22, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %call) #10
  br label %if.end24

if.end24:                                         ; preds = %for.end22, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_queue_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %net)
  %uglygep = getelementptr i8, ptr %call, i32 44
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  tail call void @__raw_spin_lock_init(ptr noundef %call, ptr noundef nonnull @.str.12, ptr noundef nonnull @nfnl_queue_net_init.__key, i16 noundef signext 3) #10
  %nf = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39
  %1 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nf, align 8
  %call2 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.13, i16 noundef zeroext 288, ptr noundef %2, ptr noundef nonnull @nfqnl_seq_ops, i32 noundef 12, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call2, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfnl_queue_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %net)
  %nf = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39
  %0 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.13, ptr noundef %1) #10
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 0, %entry ], [ %inc, %if.end30.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfnl_queue_net, ptr %call, i32 0, i32 1, i32 %i.044
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.not, label %for.body.if.end30_crit_edge, label %land.rhs

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.rhs:                                         ; preds = %for.body
  %.b43 = load i1, ptr @nfnl_queue_net_exit.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !122

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfnl_queue_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1534, i32 noundef 9, ptr noundef null) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @seq_start(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %3)
  tail call void @_raw_spin_lock(ptr noundef %call1) #10
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.get_idx.exit_crit_edge, label %if.end.i.i

entry.get_idx.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_idx.exit

if.end.i.i:                                       ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1.i.i = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %9) #10
  %bucket.i.i = getelementptr inbounds %struct.iter_state, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bucket.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.not.i.i, label %for.cond.i.i, label %if.end.i.i.get_first.exit.i_crit_edge

if.end.i.i.get_first.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.i.i:                                     ; preds = %if.end.i.i
  %13 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %bucket.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.i.not.1.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.get_first.exit.i_crit_edge

for.cond.i.i.get_first.exit.i_crit_edge:          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %16 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %bucket.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.2.i.i, align 4
  %tobool.not.i.not.2.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.get_first.exit.i_crit_edge

for.cond.1.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %19 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %bucket.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.3.i.i, align 4
  %tobool.not.i.not.3.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.get_first.exit.i_crit_edge

for.cond.2.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %22 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %bucket.i.i, align 4
  %arrayidx.4.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx.4.i.i, align 4
  %tobool.not.i.not.4.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.not.4.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.get_first.exit.i_crit_edge

for.cond.3.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %25 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %bucket.i.i, align 4
  %arrayidx.5.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.5.i.i, align 4
  %tobool.not.i.not.5.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.not.5.i.i, label %for.cond.5.i.i, label %for.cond.4.i.i.get_first.exit.i_crit_edge

for.cond.4.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %28 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %bucket.i.i, align 4
  %arrayidx.6.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.6.i.i, align 4
  %tobool.not.i.not.6.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.not.6.i.i, label %for.cond.6.i.i, label %for.cond.5.i.i.get_first.exit.i_crit_edge

for.cond.5.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %31 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %bucket.i.i, align 4
  %arrayidx.7.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx.7.i.i, align 4
  %tobool.not.i.not.7.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.not.7.i.i, label %for.cond.7.i.i, label %for.cond.6.i.i.get_first.exit.i_crit_edge

for.cond.6.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %34 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %bucket.i.i, align 4
  %arrayidx.8.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %arrayidx.8.i.i, align 4
  %tobool.not.i.not.8.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.not.8.i.i, label %for.cond.8.i.i, label %for.cond.7.i.i.get_first.exit.i_crit_edge

for.cond.7.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %37 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9, ptr %bucket.i.i, align 4
  %arrayidx.9.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 9
  %38 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %arrayidx.9.i.i, align 4
  %tobool.not.i.not.9.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.not.9.i.i, label %for.cond.9.i.i, label %for.cond.8.i.i.get_first.exit.i_crit_edge

for.cond.8.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  %40 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 10, ptr %bucket.i.i, align 4
  %arrayidx.10.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 10
  %41 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %arrayidx.10.i.i, align 4
  %tobool.not.i.not.10.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.not.10.i.i, label %for.cond.10.i.i, label %for.cond.9.i.i.get_first.exit.i_crit_edge

for.cond.9.i.i.get_first.exit.i_crit_edge:        ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.10.i.i:                                  ; preds = %for.cond.9.i.i
  %43 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 11, ptr %bucket.i.i, align 4
  %arrayidx.11.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 11
  %44 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %arrayidx.11.i.i, align 4
  %tobool.not.i.not.11.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.not.11.i.i, label %for.cond.11.i.i, label %for.cond.10.i.i.get_first.exit.i_crit_edge

for.cond.10.i.i.get_first.exit.i_crit_edge:       ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.11.i.i:                                  ; preds = %for.cond.10.i.i
  %46 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 12, ptr %bucket.i.i, align 4
  %arrayidx.12.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 12
  %47 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %arrayidx.12.i.i, align 4
  %tobool.not.i.not.12.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.not.12.i.i, label %for.cond.12.i.i, label %for.cond.11.i.i.get_first.exit.i_crit_edge

for.cond.11.i.i.get_first.exit.i_crit_edge:       ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.12.i.i:                                  ; preds = %for.cond.11.i.i
  %49 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 13, ptr %bucket.i.i, align 4
  %arrayidx.13.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 13
  %50 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %arrayidx.13.i.i, align 4
  %tobool.not.i.not.13.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.not.13.i.i, label %for.cond.13.i.i, label %for.cond.12.i.i.get_first.exit.i_crit_edge

for.cond.12.i.i.get_first.exit.i_crit_edge:       ; preds = %for.cond.12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.13.i.i:                                  ; preds = %for.cond.12.i.i
  %52 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 14, ptr %bucket.i.i, align 4
  %arrayidx.14.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 14
  %53 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %arrayidx.14.i.i, align 4
  %tobool.not.i.not.14.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.not.14.i.i, label %for.cond.14.i.i, label %for.cond.13.i.i.get_first.exit.i_crit_edge

for.cond.13.i.i.get_first.exit.i_crit_edge:       ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.14.i.i:                                  ; preds = %for.cond.13.i.i
  %55 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 15, ptr %bucket.i.i, align 4
  %arrayidx.15.i.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i.i, i32 0, i32 1, i32 15
  %56 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx.15.i.i, align 4
  %tobool.not.i.not.15.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.not.15.i.i, label %for.cond.15.i.i, label %for.cond.14.i.i.get_first.exit.i_crit_edge

for.cond.14.i.i.get_first.exit.i_crit_edge:       ; preds = %for.cond.14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_first.exit.i

for.cond.15.i.i:                                  ; preds = %for.cond.14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %bucket.i.i, align 4
  br label %get_idx.exit

get_first.exit.i:                                 ; preds = %for.cond.14.i.i.get_first.exit.i_crit_edge, %for.cond.13.i.i.get_first.exit.i_crit_edge, %for.cond.12.i.i.get_first.exit.i_crit_edge, %for.cond.11.i.i.get_first.exit.i_crit_edge, %for.cond.10.i.i.get_first.exit.i_crit_edge, %for.cond.9.i.i.get_first.exit.i_crit_edge, %for.cond.8.i.i.get_first.exit.i_crit_edge, %for.cond.7.i.i.get_first.exit.i_crit_edge, %for.cond.6.i.i.get_first.exit.i_crit_edge, %for.cond.5.i.i.get_first.exit.i_crit_edge, %for.cond.4.i.i.get_first.exit.i_crit_edge, %for.cond.3.i.i.get_first.exit.i_crit_edge, %for.cond.2.i.i.get_first.exit.i_crit_edge, %for.cond.1.i.i.get_first.exit.i_crit_edge, %for.cond.i.i.get_first.exit.i_crit_edge, %if.end.i.i.get_first.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i.get_first.exit.i_crit_edge ], [ %15, %for.cond.i.i.get_first.exit.i_crit_edge ], [ %18, %for.cond.1.i.i.get_first.exit.i_crit_edge ], [ %21, %for.cond.2.i.i.get_first.exit.i_crit_edge ], [ %24, %for.cond.3.i.i.get_first.exit.i_crit_edge ], [ %27, %for.cond.4.i.i.get_first.exit.i_crit_edge ], [ %30, %for.cond.5.i.i.get_first.exit.i_crit_edge ], [ %33, %for.cond.6.i.i.get_first.exit.i_crit_edge ], [ %36, %for.cond.7.i.i.get_first.exit.i_crit_edge ], [ %39, %for.cond.8.i.i.get_first.exit.i_crit_edge ], [ %42, %for.cond.9.i.i.get_first.exit.i_crit_edge ], [ %45, %for.cond.10.i.i.get_first.exit.i_crit_edge ], [ %48, %for.cond.11.i.i.get_first.exit.i_crit_edge ], [ %51, %for.cond.12.i.i.get_first.exit.i_crit_edge ], [ %54, %for.cond.13.i.i.get_first.exit.i_crit_edge ], [ %57, %for.cond.14.i.i.get_first.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not30.i = icmp eq i64 %5, 0
  br i1 %tobool1.not30.i, label %get_first.exit.i.get_idx.exit_crit_edge, label %get_first.exit.i.land.rhs.i_crit_edge

get_first.exit.i.land.rhs.i_crit_edge:            ; preds = %get_first.exit.i
  br label %land.rhs.i

get_first.exit.i.get_idx.exit_crit_edge:          ; preds = %get_first.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_idx.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %get_first.exit.i.land.rhs.i_crit_edge
  %head.032.i = phi ptr [ %h.addr.0.lcssa.i.ph.i, %while.body.i.land.rhs.i_crit_edge ], [ %retval.0.i.i, %get_first.exit.i.land.rhs.i_crit_edge ]
  %pos.addr.031.i = phi i64 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %5, %get_first.exit.i.land.rhs.i_crit_edge ]
  %59 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %private.i, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %bucket.i11.i = getelementptr inbounds %struct.iter_state, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %head.032.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %h.addr.010.i.i = load ptr, ptr %head.032.i, align 4
  %tobool.not11.i.i = icmp eq ptr %h.addr.010.i.i, null
  br i1 %tobool.not11.i.i, label %land.rhs.i.while.body.i.i_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

land.rhs.i.while.body.i.i_crit_edge:              ; preds = %land.rhs.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %land.rhs.i.while.body.i.i_crit_edge
  %64 = ptrtoint ptr %bucket.i11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bucket.i11.i, align 4
  %inc.i.i = add i32 %65, 1
  store i32 %inc.i.i, ptr %bucket.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i.i)
  %cmp.i.i = icmp ugt i32 %inc.i.i, 15
  br i1 %cmp.i.i, label %while.body.i.i.get_idx.exit_crit_edge, label %cleanup.i.i

while.body.i.i.get_idx.exit_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_idx.exit

cleanup.i.i:                                      ; preds = %while.body.i.i
  %call1.i12.i = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %62) #10
  %66 = ptrtoint ptr %bucket.i11.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bucket.i11.i, align 4
  %arrayidx.i13.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i12.i, i32 0, i32 1, i32 %67
  %68 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %h.addr.0.i.i = load ptr, ptr %arrayidx.i13.i, align 4
  %tobool.not.i14.i = icmp eq ptr %h.addr.0.i.i, null
  br i1 %tobool.not.i14.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.while.body.i_crit_edge

cleanup.i.i.while.body.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i:                                     ; preds = %cleanup.i.i.while.body.i_crit_edge, %land.rhs.i.while.body.i_crit_edge
  %h.addr.0.lcssa.i.ph.i = phi ptr [ %h.addr.010.i.i, %land.rhs.i.while.body.i_crit_edge ], [ %h.addr.0.i.i, %cleanup.i.i.while.body.i_crit_edge ]
  %dec.i = add i64 %pos.addr.031.i, -1
  %tobool1.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool1.not.i, label %while.body.i.get_idx.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.get_idx.exit_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_idx.exit

get_idx.exit:                                     ; preds = %while.body.i.get_idx.exit_crit_edge, %while.body.i.i.get_idx.exit_crit_edge, %get_first.exit.i.get_idx.exit_crit_edge, %for.cond.15.i.i, %entry.get_idx.exit_crit_edge
  %69 = phi ptr [ null, %entry.get_idx.exit_crit_edge ], [ null, %for.cond.15.i.i ], [ %retval.0.i.i, %get_first.exit.i.get_idx.exit_crit_edge ], [ null, %while.body.i.i.get_idx.exit_crit_edge ], [ %h.addr.0.lcssa.i.ph.i, %while.body.i.get_idx.exit_crit_edge ]
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seq_stop(ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %3)
  tail call void @_raw_spin_unlock(ptr noundef %call1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @seq_next(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %v, ptr nocapture noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %private.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bucket.i = getelementptr inbounds %struct.iter_state, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %h.addr.010.i = load ptr, ptr %v, align 4
  %tobool.not11.i = icmp eq ptr %h.addr.010.i, null
  br i1 %tobool.not11.i, label %entry.while.body.i_crit_edge, label %entry.get_next.exit_crit_edge

entry.get_next.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_next.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %7 = ptrtoint ptr %bucket.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bucket.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %bucket.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 15
  br i1 %cmp.i, label %while.body.i.get_next.exit_crit_edge, label %cleanup.i

while.body.i.get_next.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_next.exit

cleanup.i:                                        ; preds = %while.body.i
  %call1.i = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %5) #10
  %9 = ptrtoint ptr %bucket.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bucket.i, align 4
  %arrayidx.i = getelementptr %struct.nfnl_queue_net, ptr %call1.i, i32 0, i32 1, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %h.addr.0.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %h.addr.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.get_next.exit_crit_edge

cleanup.i.get_next.exit_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_next.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

get_next.exit:                                    ; preds = %cleanup.i.get_next.exit_crit_edge, %while.body.i.get_next.exit_crit_edge, %entry.get_next.exit_crit_edge
  %h.addr.0.lcssa.i = phi ptr [ %h.addr.010.i, %entry.get_next.exit_crit_edge ], [ %h.addr.0.i, %cleanup.i.get_next.exit_crit_edge ], [ null, %while.body.i.get_next.exit_crit_edge ]
  ret ptr %h.addr.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_num = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 7
  %0 = ptrtoint ptr %queue_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_num, align 4
  %conv = zext i16 %1 to i32
  %peer_portid = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_portid, align 16
  %queue_total = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 12
  %4 = ptrtoint ptr %queue_total to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_total, align 4
  %copy_mode = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 8
  %6 = ptrtoint ptr %copy_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %copy_mode, align 2
  %conv1 = zext i8 %7 to i32
  %copy_range = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 4
  %8 = ptrtoint ptr %copy_range to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %copy_range, align 8
  %queue_dropped = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 5
  %10 = ptrtoint ptr %queue_dropped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue_dropped, align 4
  %queue_user_dropped = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 6
  %12 = ptrtoint ptr %queue_user_dropped to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_user_dropped, align 32
  %id_sequence = getelementptr inbounds %struct.nfqnl_instance, ptr %v, i32 0, i32 13
  %14 = ptrtoint ptr %id_sequence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id_sequence, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %3, i32 noundef %5, i32 noundef %conv1, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_register_queue_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqnl_enqueue_packet(ptr noundef %entry1, i32 noundef %queuenum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net2 = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net2, align 4
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %1)
  %conv = trunc i32 %queuenum to i16
  %2 = lshr i16 %conv, 8
  %xor.i.i = xor i16 %2, %conv
  %3 = and i16 %xor.i.i, 15
  %conv2.i.i = zext i16 %3 to i32
  %arrayidx.i = getelementptr %struct.nfnl_queue_net, ptr %call, i32 0, i32 1, i32 %conv2.i.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b42.i = load i1, ptr @instance_lookup.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @instance_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #10
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %inst.0.in.i = phi ptr [ %inst.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i, %for.cond.i.preheader ]
  %4 = ptrtoint ptr %inst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %inst.0.i = load volatile ptr, ptr %inst.0.in.i, align 4
  %tobool13.not.i = icmp eq ptr %inst.0.i, null
  br i1 %tobool13.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %queue_num14.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i, i32 0, i32 7
  %5 = ptrtoint ptr %queue_num14.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queue_num14.i, align 4
  %cmp.i = icmp eq i16 %6, %conv
  br i1 %cmp.i, label %if.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %copy_mode = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i, i32 0, i32 8
  %7 = ptrtoint ptr %copy_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %copy_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %skb8 = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 1
  %9 = ptrtoint ptr %skb8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb8, align 4
  %pf = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pf, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %12, label %if.end7.sw.epilog_crit_edge [
    i8 2, label %if.end7.sw.epilog.sink.split_crit_edge
    i8 10, label %sw.bb11
  ]

if.end7.sw.epilog.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11, %if.end7.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ -31011, %sw.bb11 ], [ 2048, %if.end7.sw.epilog.sink.split_crit_edge ]
  %protocol12 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %.sink, ptr %protocol12, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end7.sw.epilog_crit_edge
  %flags = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.0.i, i32 0, i32 9
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %sw.epilog.if.then15_crit_edge

sw.epilog.if.then15_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

lor.lhs.false:                                    ; preds = %sw.epilog
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.i.not = icmp eq i16 %20, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then15_crit_edge, label %if.end17

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %sw.epilog.if.then15_crit_edge
  %call16 = tail call fastcc i32 @__nfqnl_enqueue_packet(ptr noundef %1, ptr noundef nonnull %inst.0.i, ptr noundef %entry1)
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 13
  %21 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.not.i.i.i, label %if.end17.nf_bridge_adjust_skb_data.exit_crit_edge, label %nf_bridge_info_get.exit.i

if.end17.nf_bridge_adjust_skb_data.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_bridge_adjust_skb_data.exit

nf_bridge_info_get.exit.i:                        ; preds = %if.end17
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 22
  %24 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extensions.i.i.i, align 8
  %offset.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %27 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %shl.i.i.i
  %tobool.not.i81 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i81, label %nf_bridge_info_get.exit.i.nf_bridge_adjust_skb_data.exit_crit_edge, label %if.then.i82

nf_bridge_info_get.exit.i.nf_bridge_adjust_skb_data.exit_crit_edge: ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_bridge_adjust_skb_data.exit

if.then.i82:                                      ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %29 to i32
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 21
  %30 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mac_header.i, align 2
  %conv1.i = zext i16 %31 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %idx.neg.i.i = sub nsw i32 0, %sub.i
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %idx.neg.i.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %34 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len1.i.i, align 4
  %add.i.i = add i32 %35, %sub.i
  store i32 %add.i.i, ptr %len1.i.i, align 4
  br label %nf_bridge_adjust_skb_data.exit

nf_bridge_adjust_skb_data.exit:                   ; preds = %if.then.i82, %nf_bridge_info_get.exit.i.nf_bridge_adjust_skb_data.exit_crit_edge, %if.end17.nf_bridge_adjust_skb_data.exit_crit_edge
  %call.i = tail call ptr @__skb_gso_segment(ptr noundef %10, i64 noundef 0, i1 noundef zeroext true) #10
  %tobool.not.i83 = icmp eq ptr %call.i, null
  %cmp.i84 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i83, %cmp.i84
  br i1 %spec.select.i, label %nf_bridge_adjust_skb_data.exit.out_err_crit_edge, label %cond.end

nf_bridge_adjust_skb_data.exit.out_err_crit_edge: ; preds = %nf_bridge_adjust_skb_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

cond.end:                                         ; preds = %nf_bridge_adjust_skb_data.exit
  %size.i.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end
  %err.0122 = phi i32 [ 0, %cond.end ], [ %err.1111, %for.inc.for.body_crit_edge ]
  %segs.0120 = phi ptr [ %call.i, %cond.end ], [ %nskb.0121, %for.inc.for.body_crit_edge ]
  %queued.0118 = phi i32 [ 0, %cond.end ], [ %queued.1, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %segs.0120 to i32
  call void @__asan_load4_noabort(i32 %36)
  %nskb.0121 = load ptr, ptr %segs.0120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0122)
  %cmp24 = icmp eq i32 %err.0122, 0
  br i1 %cmp24, label %if.then26, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then26:                                        ; preds = %for.body
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0120, i32 0, i32 13
  %37 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i.not.i.i.i.i = icmp eq i8 %39, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.then26.nf_bridge_adjust_segmented_data.exit.i_crit_edge, label %nf_bridge_info_get.exit.i.i

if.then26.nf_bridge_adjust_segmented_data.exit.i_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_bridge_adjust_segmented_data.exit.i

nf_bridge_info_get.exit.i.i:                      ; preds = %if.then26
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0120, i32 0, i32 22
  %40 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extensions.i.i.i.i, align 8
  %offset.i.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %offset.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %43 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %41, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %nf_bridge_info_get.exit.i.i.nf_bridge_adjust_segmented_data.exit.i_crit_edge, label %if.then.i.i

nf_bridge_info_get.exit.i.i.nf_bridge_adjust_segmented_data.exit.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_bridge_adjust_segmented_data.exit.i

if.then.i.i:                                      ; preds = %nf_bridge_info_get.exit.i.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0120, i32 0, i32 15, i32 0, i32 20
  %44 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %45 to i32
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0120, i32 0, i32 15, i32 0, i32 21
  %46 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mac_header.i.i, align 2
  %conv1.i.i = zext i16 %47 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0120, i32 0, i32 6
  %48 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len1.i.i.i, align 4
  %sub.i.i.i = sub i32 %49, %sub.i.i
  store i32 %sub.i.i.i, ptr %len1.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0120, i32 0, i32 7
  %50 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %51)
  %cmp.i.i.i = icmp ult i32 %sub.i.i.i, %51
  br i1 %cmp.i.i.i, label %do.body4.i.i.i, label %__skb_pull.exit.i.i, !prof !123

do.body4.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !124
  unreachable

__skb_pull.exit.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %segs.0120, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i85 = getelementptr i8, ptr %53, i32 %sub.i.i
  store ptr %add.ptr.i.i.i85, ptr %data.i.i.i, align 4
  br label %nf_bridge_adjust_segmented_data.exit.i

nf_bridge_adjust_segmented_data.exit.i:           ; preds = %__skb_pull.exit.i.i, %nf_bridge_info_get.exit.i.i.nf_bridge_adjust_segmented_data.exit.i_crit_edge, %if.then26.nf_bridge_adjust_segmented_data.exit.i_crit_edge
  %54 = ptrtoint ptr %segs.0120 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %segs.0120, align 8
  %cmp.i86 = icmp eq ptr %55, null
  br i1 %cmp.i86, label %if.then.i89, label %if.end6.i

if.then.i89:                                      ; preds = %nf_bridge_adjust_segmented_data.exit.i
  %56 = ptrtoint ptr %skb8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb8, align 4
  store ptr %segs.0120, ptr %skb8, align 4
  %call.i87 = tail call fastcc i32 @__nfqnl_enqueue_packet(ptr noundef %1, ptr noundef nonnull %inst.0.i, ptr noundef %entry1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.then.i89.if.then31_crit_edge, label %if.then4.i

if.then.i89.if.then31_crit_edge:                  ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.then4.i:                                       ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %skb8 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %skb8, align 4
  br label %if.else

if.end6.i:                                        ; preds = %nf_bridge_adjust_segmented_data.exit.i
  %59 = ptrtoint ptr %segs.0120 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %segs.0120, align 8
  %60 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %size.i.i, align 4
  %conv.i33.i = zext i16 %61 to i32
  %call.i.i = tail call ptr @kmemdup(ptr noundef %entry1, i32 noundef %conv.i33.i, i32 noundef 2592) #10
  %tobool.not.i34.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i34.i, label %if.end6.i.if.else_crit_edge, label %if.end.i.i

if.end6.i.if.else_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end.i.i:                                       ; preds = %if.end6.i
  %call2.i.i = tail call zeroext i1 @nf_queue_entry_get_refs(ptr noundef nonnull %call.i.i) #10
  br i1 %call2.i.i, label %if.then9.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call.i.i) #10
  br label %if.else

if.then9.i:                                       ; preds = %if.end.i.i
  %skb10.i = getelementptr inbounds %struct.nf_queue_entry, ptr %call.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %skb10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %segs.0120, ptr %skb10.i, align 4
  %call11.i = tail call fastcc i32 @__nfqnl_enqueue_packet(ptr noundef %1, ptr noundef nonnull %inst.0.i, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then9.i.if.then31_crit_edge, label %if.then13.i

if.then9.i.if.then31_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.then13.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nf_queue_entry_free(ptr noundef nonnull %call.i.i) #10
  br label %if.else

if.then31:                                        ; preds = %if.then9.i.if.then31_crit_edge, %if.then.i89.if.then31_crit_edge
  %inc = add i32 %queued.0118, 1
  br label %for.inc

if.else:                                          ; preds = %if.then13.i, %if.end4.i.i, %if.end6.i.if.else_crit_edge, %if.then4.i, %for.body.if.else_crit_edge
  %err.1.ph = phi i32 [ -12, %if.end6.i.if.else_crit_edge ], [ -12, %if.end4.i.i ], [ %call11.i, %if.then13.i ], [ %call.i87, %if.then4.i ], [ %err.0122, %for.body.if.else_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %segs.0120, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then31
  %err.1111 = phi i32 [ 0, %if.then31 ], [ %err.1.ph, %if.else ]
  %queued.1 = phi i32 [ %inc, %if.then31 ], [ %queued.0118, %if.else ]
  %tobool33.not = icmp eq ptr %nskb.0121, null
  br i1 %tobool33.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queued.1)
  %tobool39.not = icmp eq i32 %queued.1, 0
  br i1 %tobool39.not, label %for.end.out_err_crit_edge, label %if.then40

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1111)
  %tobool41.not = icmp eq i32 %err.1111, 0
  br i1 %tobool41.not, label %if.then40.if.end43_crit_edge, label %if.then42

if.then40.if.end43_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nf_queue_entry_free(ptr noundef %entry1) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then40.if.end43_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #10
  br label %cleanup

out_err:                                          ; preds = %for.end.out_err_crit_edge, %nf_bridge_adjust_skb_data.exit.out_err_crit_edge
  %err.2 = phi i32 [ -105, %nf_bridge_adjust_skb_data.exit.out_err_crit_edge ], [ %err.1111, %for.end.out_err_crit_edge ]
  %63 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.i.not.i.i.i91 = icmp eq i8 %65, 0
  br i1 %tobool.i.not.i.i.i91, label %out_err.cleanup_crit_edge, label %nf_bridge_info_get.exit.i98

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nf_bridge_info_get.exit.i98:                      ; preds = %out_err
  %extensions.i.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 22
  %66 = ptrtoint ptr %extensions.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %extensions.i.i.i92, align 8
  %offset.i.i.i93 = getelementptr inbounds %struct.skb_ext, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %offset.i.i.i93 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %offset.i.i.i93, align 1
  %conv.i.i.i94 = zext i8 %69 to i32
  %shl.i.i.i95 = shl nuw nsw i32 %conv.i.i.i94, 3
  %add.ptr.i.i.i96 = getelementptr i8, ptr %67, i32 %shl.i.i.i95
  %tobool.not.i97 = icmp eq ptr %add.ptr.i.i.i96, null
  br i1 %tobool.not.i97, label %nf_bridge_info_get.exit.i98.cleanup_crit_edge, label %if.then.i106

nf_bridge_info_get.exit.i98.cleanup_crit_edge:    ; preds = %nf_bridge_info_get.exit.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i106:                                     ; preds = %nf_bridge_info_get.exit.i98
  %network_header.i99 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 20
  %70 = ptrtoint ptr %network_header.i99 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i99, align 4
  %conv.i100 = zext i16 %71 to i32
  %mac_header.i101 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 21
  %72 = ptrtoint ptr %mac_header.i101 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mac_header.i101, align 2
  %conv1.i102 = zext i16 %73 to i32
  %sub.i103 = sub nsw i32 %conv.i100, %conv1.i102
  %len1.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %74 = ptrtoint ptr %len1.i.i104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len1.i.i104, align 4
  %sub.i.i105 = sub i32 %75, %sub.i103
  store i32 %sub.i.i105, ptr %len1.i.i104, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 7
  %76 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i105, i32 %77)
  %cmp.i.i = icmp ult i32 %sub.i.i105, %77
  br i1 %cmp.i.i, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !123

do.body4.i.i:                                     ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !124
  unreachable

__skb_pull.exit.i:                                ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i107 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i107, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %79, i32 %sub.i103
  store ptr %add.ptr.i.i108, ptr %data.i.i107, align 4
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit.i, %nf_bridge_info_get.exit.i98.cleanup_crit_edge, %out_err.cleanup_crit_edge, %if.end43, %if.then15, %if.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ 0, %if.end43 ], [ -22, %if.end.cleanup_crit_edge ], [ %err.2, %out_err.cleanup_crit_edge ], [ %err.2, %nf_bridge_info_get.exit.i98.cleanup_crit_edge ], [ %err.2, %__skb_pull.exit.i ], [ -3, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfqnl_nf_hook_drop(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_queue_pernet(ptr noundef %net)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfnl_queue_net, ptr %call, i32 0, i32 1, i32 %i.050
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @nfqnl_nf_hook_drop.__warned, align 1
  br i1 %.b45, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfqnl_nf_hook_drop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 975, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %inst.047 = load volatile ptr, ptr %arrayidx, align 4
  %tobool17.not48 = icmp eq ptr %inst.047, null
  br i1 %tobool17.not48, label %do.end.for.end_crit_edge, label %do.end.for.body18_crit_edge

do.end.for.body18_crit_edge:                      ; preds = %do.end
  br label %for.body18

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body18:                                       ; preds = %nfqnl_flush.exit.for.body18_crit_edge, %do.end.for.body18_crit_edge
  %inst.049 = phi ptr [ %inst.0, %nfqnl_flush.exit.for.body18_crit_edge ], [ %inst.047, %do.end.for.body18_crit_edge ]
  %lock.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.049, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  %queue_list.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.049, i32 0, i32 14
  %1 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %queue_list.i, align 4
  %cmp.not28.i = icmp eq ptr %2, %queue_list.i
  br i1 %cmp.not28.i, label %for.body18.nfqnl_flush.exit_crit_edge, label %for.body.lr.ph.i

for.body18.nfqnl_flush.exit_crit_edge:            ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_flush.exit

for.body.lr.ph.i:                                 ; preds = %for.body18
  %queue_total.i = getelementptr inbounds %struct.nfqnl_instance, ptr %inst.049, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.029.i = phi ptr [ %2, %for.body.lr.ph.i ], [ %next.030.i, %list_del.exit.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %next.030.i = load ptr, ptr %entry1.029.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.029.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1.029.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %entry1.029.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.029.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %queue_total.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_total.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %queue_total.i, align 4
  tail call void @nf_reinject(ptr noundef %entry1.029.i, i32 noundef 0) #10
  %cmp.not.i = icmp eq ptr %next.030.i, %queue_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.nfqnl_flush.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.nfqnl_flush.exit_crit_edge:       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_flush.exit

nfqnl_flush.exit:                                 ; preds = %list_del.exit.i.nfqnl_flush.exit_crit_edge, %for.body18.nfqnl_flush.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %14 = ptrtoint ptr %inst.049 to i32
  call void @__asan_load4_noabort(i32 %14)
  %inst.0 = load volatile ptr, ptr %inst.049, align 4
  %tobool17.not = icmp eq ptr %inst.0, null
  br i1 %tobool17.not, label %nfqnl_flush.exit.for.end_crit_edge, label %nfqnl_flush.exit.for.body18_crit_edge

nfqnl_flush.exit.for.body18_crit_edge:            ; preds = %nfqnl_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

nfqnl_flush.exit.for.end_crit_edge:               ; preds = %nfqnl_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %nfqnl_flush.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nfqnl_enqueue_packet(ptr noundef %net, ptr noundef %queue, ptr noundef %entry1) unnamed_addr #2 align 64 {
entry:
  %tmp.i90.i = alloca i32, align 4
  %tmp.i54.i.i = alloca i16, align 2
  %tmp.i.i.i = alloca i16, align 2
  %tmp.i66.i = alloca i32, align 4
  %tmp.i64.i = alloca i32, align 4
  %tmp.i48.i = alloca i32, align 4
  %tmp.i46.i = alloca i32, align 4
  %tmp.i34.i = alloca i32, align 4
  %tmp.i32.i = alloca i32, align 4
  %tmp.i24.i = alloca i32, align 4
  %tmp.i22.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %seclen.i.i = alloca i32, align 4
  %secdata.i = alloca ptr, align 4
  %phw.i = alloca %struct.nfqnl_msg_packet_hw, align 2
  %ts.i = alloca %struct.nfqnl_msg_packet_timestamp, align 8
  %kts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb2.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secdata.i) #10
  %2 = ptrtoint ptr %secdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %secdata.i, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.i = icmp eq i64 %5, 0
  %spec.select109.i = select i1 %tobool.not.i, i32 104, i32 124
  %pf.i.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 7
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.nfqnl_get_bridge_size.exit.i_crit_edge

entry.nfqnl_get_bridge_size.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_get_bridge_size.exit.i

lor.lhs.false.i.i:                                ; preds = %entry
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.i.not.i.i = icmp eq i16 %9, -1
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i.nfqnl_get_bridge_size.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.nfqnl_get_bridge_size.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_get_bridge_size.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 3
  %10 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i.i)
  %tobool3.not.inv.i.i = icmp slt i32 %bf.load.i.i, 0
  %spec.select.i.i = select i1 %tobool3.not.inv.i.i, i32 20, i32 0
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %9)
  %cmp12.i.i = icmp ugt i16 %12, %9
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end.i.i.nfqnl_get_bridge_size.exit.i_crit_edge

if.end.i.i.nfqnl_get_bridge_size.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_get_bridge_size.exit.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv11.i.i = zext i16 %9 to i32
  %conv10.i.i = zext i16 %12 to i32
  %sub.i.i = sub nsw i32 7, %conv11.i.i
  %sub.i.i.i = add nsw i32 %sub.i.i, %conv10.i.i
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %add20.i.i = add nsw i32 %and.i.i.i, %spec.select.i.i
  br label %nfqnl_get_bridge_size.exit.i

nfqnl_get_bridge_size.exit.i:                     ; preds = %if.then14.i.i, %if.end.i.i.nfqnl_get_bridge_size.exit.i_crit_edge, %lor.lhs.false.i.i.nfqnl_get_bridge_size.exit.i_crit_edge, %entry.nfqnl_get_bridge_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %lor.lhs.false.i.i.nfqnl_get_bridge_size.exit.i_crit_edge ], [ 0, %entry.nfqnl_get_bridge_size.exit.i_crit_edge ], [ %add20.i.i, %if.then14.i.i ], [ %spec.select.i.i, %if.end.i.i.nfqnl_get_bridge_size.exit.i_crit_edge ]
  %add23.i = add nsw i32 %retval.0.i.i, %spec.select109.i
  %state.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp.i = icmp ult i8 %14, 3
  br i1 %cmp.i, label %nfqnl_get_bridge_size.exit.i.if.then32.i_crit_edge, label %lor.lhs.false.i

nfqnl_get_bridge_size.exit.i.if.then32.i_crit_edge: ; preds = %nfqnl_get_bridge_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %nfqnl_get_bridge_size.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp28.i = icmp eq i8 %14, 4
  br i1 %cmp28.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end35.i_crit_edge

lor.lhs.false.i.if.end35.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp30.i = icmp eq ptr %17, null
  br i1 %cmp30.i, label %land.lhs.true.i.if.then32.i_crit_edge, label %land.lhs.true.i.if.end35.i_crit_edge

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

land.lhs.true.i.if.then32.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

if.then32.i:                                      ; preds = %land.lhs.true.i.if.then32.i_crit_edge, %nfqnl_get_bridge_size.exit.i.if.then32.i_crit_edge
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i3.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i3.i, 9
  %19 = and i16 %bf.lshr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp.i.i = icmp ne i16 %19, 1
  %20 = and i16 %bf.load.i3.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i = icmp eq i16 %20, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then32.i.skb_csum_unnecessary.exit.i_crit_edge

if.then32.i.skb_csum_unnecessary.exit.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_csum_unnecessary.exit.i

lor.rhs.i.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp12.i4.i = icmp eq i16 %19, 3
  br i1 %cmp12.i4.i, label %land.rhs.i.i, label %lor.rhs.i.i.skb_csum_unnecessary.exit.i_crit_edge

lor.rhs.i.i.skb_csum_unnecessary.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_csum_unnecessary.exit.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 8
  %conv.i.i.i = zext i16 %23 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i5.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %28 = xor i32 %sub.i.i5.i, -1
  %call.lobit.not.i.i = lshr i32 %28, 31
  br label %skb_csum_unnecessary.exit.i

skb_csum_unnecessary.exit.i:                      ; preds = %land.rhs.i.i, %lor.rhs.i.i.skb_csum_unnecessary.exit.i_crit_edge, %if.then32.i.skb_csum_unnecessary.exit.i_crit_edge
  %29 = phi i32 [ 1, %if.then32.i.skb_csum_unnecessary.exit.i_crit_edge ], [ 0, %lor.rhs.i.i.skb_csum_unnecessary.exit.i_crit_edge ], [ %call.lobit.not.i.i, %land.rhs.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool34.not.i = icmp eq i32 %29, 0
  br label %if.end35.i

if.end35.i:                                       ; preds = %skb_csum_unnecessary.exit.i, %land.lhs.true.i.if.end35.i_crit_edge, %lor.lhs.false.i.if.end35.i_crit_edge
  %csum_verify.0.off0.i = phi i1 [ %tobool34.not.i, %skb_csum_unnecessary.exit.i ], [ false, %land.lhs.true.i.if.end35.i_crit_edge ], [ false, %lor.lhs.false.i.if.end35.i_crit_edge ]
  %out.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out.i, align 4
  %copy_mode.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 8
  %32 = ptrtoint ptr %copy_mode.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %copy_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cond354.i = icmp eq i8 %33, 2
  br i1 %cond354.i, label %sw.bb38.i, label %if.end35.i.sw.epilog.i_crit_edge

if.end35.i.sw.epilog.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %if.end35.i
  %flags.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 9
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %sw.bb38.i.do.end51.i_crit_edge

sw.bb38.i.do.end51.i_crit_edge:                   ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51.i

land.lhs.true40.i:                                ; preds = %sw.bb38.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %37 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %37)
  %cmp42.i = icmp eq i16 %37, 1536
  br i1 %cmp42.i, label %land.lhs.true44.i, label %land.lhs.true40.i.do.end51.i_crit_edge

land.lhs.true40.i.do.end51.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51.i

land.lhs.true44.i:                                ; preds = %land.lhs.true40.i
  %call45.i = tail call i32 @skb_checksum_help(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.do.end51.i_crit_edge, label %land.lhs.true44.i.nfqnl_build_packet_message.exit.thread_crit_edge

land.lhs.true44.i.nfqnl_build_packet_message.exit.thread_crit_edge: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_build_packet_message.exit.thread

land.lhs.true44.i.do.end51.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %land.lhs.true44.i.do.end51.i_crit_edge, %land.lhs.true40.i.do.end51.i_crit_edge, %sw.bb38.i.do.end51.i_crit_edge
  %copy_range.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 4
  %38 = ptrtoint ptr %copy_range.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %copy_range.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %39, i32 %41) #10
  %call58.i = tail call i32 @skb_zerocopy_headlen(ptr noundef %1) #10
  %43 = tail call i32 @llvm.umin.i32(i32 %call58.i, i32 %42) #10
  %add62.i = add i32 %add23.i, 4
  %add63.i = add i32 %add62.i, %43
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end51.i, %if.end35.i.sw.epilog.i_crit_edge
  %hlen.0.i = phi i32 [ %43, %do.end51.i ], [ 0, %if.end35.i.sw.epilog.i_crit_edge ]
  %cap_len.0.i = phi i32 [ %45, %do.end51.i ], [ 0, %if.end35.i.sw.epilog.i_crit_edge ]
  %data_len.1.i = phi i32 [ %42, %do.end51.i ], [ 0, %if.end35.i.sw.epilog.i_crit_edge ]
  %size.1.i = phi i32 [ %add63.i, %do.end51.i ], [ %add23.i, %if.end35.i.sw.epilog.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  %46 = load volatile ptr, ptr @nfnl_ct_hook, align 4
  %call70.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %land.lhs.true72.i, label %sw.epilog.i.do.end80.i_crit_edge

sw.epilog.i.do.end80.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80.i

land.lhs.true72.i:                                ; preds = %sw.epilog.i
  %call73.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %land.lhs.true72.i.do.end80.i_crit_edge, label %land.lhs.true75.i

land.lhs.true72.i.do.end80.i_crit_edge:           ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80.i

land.lhs.true75.i:                                ; preds = %land.lhs.true72.i
  %.b1.i = load i1, ptr @nfqnl_build_packet_message.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true75.i.do.end80.i_crit_edge, label %if.then77.i

land.lhs.true75.i.do.end80.i_crit_edge:           ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80.i

if.then77.i:                                      ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfqnl_build_packet_message.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 444, ptr noundef nonnull @.str.3) #10
  br label %do.end80.i

do.end80.i:                                       ; preds = %if.then77.i, %land.lhs.true75.i.do.end80.i_crit_edge, %land.lhs.true72.i.do.end80.i_crit_edge, %sw.epilog.i.do.end80.i_crit_edge
  %flags82.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 9
  %47 = ptrtoint ptr %flags82.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags82.i, align 8
  %and83.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  %cmp86.not.i = icmp eq ptr %46, null
  %or.cond.i = select i1 %tobool84.not.i, i1 true, i1 %cmp86.not.i
  br i1 %or.cond.i, label %do.end80.i.if.end97.i_crit_edge, label %if.then88.i

do.end80.i.if.end97.i_crit_edge:                  ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i

if.then88.i:                                      ; preds = %do.end80.i
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i = and i32 %50, 7
  %and1.i.i = and i32 %50, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp90.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp90.not.i, label %if.then88.i.if.end97.i_crit_edge, label %if.then92.i

if.then88.i.if.end97.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97.i

if.then92.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = inttoptr i32 %and1.i.i to ptr
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %46, align 4
  %call93.i = tail call i32 %53(ptr noundef nonnull %51) #10
  %add94.i = add i32 %call93.i, %size.1.i
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then92.i, %if.then88.i.if.end97.i_crit_edge, %do.end80.i.if.end97.i_crit_edge
  %ctinfo.0.i = phi i32 [ 0, %do.end80.i.if.end97.i_crit_edge ], [ %and.i.i, %if.then88.i.if.end97.i_crit_edge ], [ %and.i.i, %if.then92.i ]
  %ct.0.i = phi ptr [ null, %do.end80.i.if.end97.i_crit_edge ], [ null, %if.then88.i.if.end97.i_crit_edge ], [ %51, %if.then92.i ]
  %size.2.i = phi i32 [ %size.1.i, %do.end80.i.if.end97.i_crit_edge ], [ %size.1.i, %if.then88.i.if.end97.i_crit_edge ], [ %add94.i, %if.then92.i ]
  %54 = ptrtoint ptr %flags82.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags82.i, align 8
  %and99.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  %add105.i = add i32 %size.2.i, 16
  %spec.select110.i = select i1 %tobool100.not.i, i32 %size.2.i, i32 %add105.i
  %and108.i = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %if.end97.i.if.end119.i_crit_edge, label %land.lhs.true110.i

if.end97.i.if.end119.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

land.lhs.true110.i:                               ; preds = %if.end97.i
  %56 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %tobool111.not.i = icmp eq ptr %58, null
  br i1 %tobool111.not.i, label %land.lhs.true110.i.if.end119.i_crit_edge, label %if.then112.i

land.lhs.true110.i.if.end119.i_crit_edge:         ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

if.then112.i:                                     ; preds = %land.lhs.true110.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seclen.i.i) #10
  %59 = ptrtoint ptr %seclen.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %seclen.i.i, align 4
  %tobool.not.i6.i = icmp eq ptr %1, null
  br i1 %tobool.not.i6.i, label %if.then112.i.nfqnl_get_sk_secctx.exit.thread.i_crit_edge, label %lor.lhs.false.i9.i

if.then112.i.nfqnl_get_sk_secctx.exit.thread.i_crit_edge: ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_get_sk_secctx.exit.thread.i

lor.lhs.false.i9.i:                               ; preds = %if.then112.i
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 4
  %60 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i7.i = zext i8 %61 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i7.i
  %and.i.i8.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i8.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i8.i, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i9.i.nfqnl_get_sk_secctx.exit.thread.i_crit_edge, label %if.end.i10.i

lor.lhs.false.i9.i.nfqnl_get_sk_secctx.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_get_sk_secctx.exit.thread.i

if.end.i10.i:                                     ; preds = %lor.lhs.false.i9.i
  %sk_callback_lock.i.i = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock.i.i) #10
  %secmark.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 12
  %62 = ptrtoint ptr %secmark.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %secmark.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool1.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool1.not.i.i, label %if.end.i10.i.nfqnl_get_sk_secctx.exit.i_crit_edge, label %if.then2.i.i

if.end.i10.i.nfqnl_get_sk_secctx.exit.i_crit_edge: ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_get_sk_secctx.exit.i

if.then2.i.i:                                     ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = call i32 @security_secid_to_secctx(i32 noundef %63, ptr noundef nonnull %secdata.i, ptr noundef nonnull %seclen.i.i) #10
  br label %nfqnl_get_sk_secctx.exit.i

nfqnl_get_sk_secctx.exit.thread.i:                ; preds = %lor.lhs.false.i9.i.nfqnl_get_sk_secctx.exit.thread.i_crit_edge, %if.then112.i.nfqnl_get_sk_secctx.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seclen.i.i) #10
  br label %if.end119.i

nfqnl_get_sk_secctx.exit.i:                       ; preds = %if.then2.i.i, %if.end.i10.i.nfqnl_get_sk_secctx.exit.i_crit_edge
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %56, align 4
  %sk_callback_lock6.i.i = getelementptr inbounds %struct.sock, ptr %65, i32 0, i32 50
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock6.i.i) #10
  %66 = ptrtoint ptr %seclen.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %seclen.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seclen.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool114.not.i = icmp eq i32 %67, 0
  br i1 %tobool114.not.i, label %nfqnl_get_sk_secctx.exit.i.if.end119.i_crit_edge, label %if.then115.i

nfqnl_get_sk_secctx.exit.i.if.end119.i_crit_edge: ; preds = %nfqnl_get_sk_secctx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

if.then115.i:                                     ; preds = %nfqnl_get_sk_secctx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i12.i = add i32 %67, 7
  %and.i13.i = and i32 %sub.i12.i, -4
  %add117.i = add i32 %and.i13.i, %spec.select110.i
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then115.i, %nfqnl_get_sk_secctx.exit.i.if.end119.i_crit_edge, %nfqnl_get_sk_secctx.exit.thread.i, %land.lhs.true110.i.if.end119.i_crit_edge, %if.end97.i.if.end119.i_crit_edge
  %seclen.0.i = phi i32 [ %67, %if.then115.i ], [ 0, %nfqnl_get_sk_secctx.exit.i.if.end119.i_crit_edge ], [ 0, %land.lhs.true110.i.if.end119.i_crit_edge ], [ 0, %if.end97.i.if.end119.i_crit_edge ], [ 0, %nfqnl_get_sk_secctx.exit.thread.i ]
  %size.4.i = phi i32 [ %add117.i, %if.then115.i ], [ %spec.select110.i, %nfqnl_get_sk_secctx.exit.i.if.end119.i_crit_edge ], [ %spec.select110.i, %land.lhs.true110.i.if.end119.i_crit_edge ], [ %spec.select110.i, %if.end97.i.if.end119.i_crit_edge ], [ %spec.select110.i, %nfqnl_get_sk_secctx.exit.thread.i ]
  %call.i.i = call ptr @__alloc_skb(i32 noundef %size.4.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool121.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool121.not.i, label %if.then122.i, label %if.end123.i

if.then122.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @skb_tx_error(ptr noundef %1) #10
  br label %nlmsg_failure.i

if.end123.i:                                      ; preds = %if.end119.i
  %68 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pf.i.i, align 1
  %queue_num.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 7
  %70 = ptrtoint ptr %queue_num.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %queue_num.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not.i.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end123.i.if.then129.i_crit_edge

if.end123.i.if.then129.i_crit_edge:               ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then129.i

skb_tailroom.exit.i.i.i:                          ; preds = %if.end123.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %74 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i14.i = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i.i.i15.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i14.i, %sub.ptr.rhs.cast.i.i.i15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.if.then129.i_crit_edge, label %nlmsg_put.exit.i.i, !prof !123

skb_tailroom.exit.i.i.i.if.then129.i_crit_edge:   ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then129.i

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 768, i32 noundef 4, i32 noundef 0) #10
  %tobool.not.i16.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i16.i, label %nlmsg_put.exit.i.i.if.then129.i_crit_edge, label %if.end130.i

nlmsg_put.exit.i.i.if.then129.i_crit_edge:        ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then129.i

if.then129.i:                                     ; preds = %nlmsg_put.exit.i.i.if.then129.i_crit_edge, %skb_tailroom.exit.i.i.i.if.then129.i_crit_edge, %if.end123.i.if.then129.i_crit_edge
  call void @skb_tx_error(ptr noundef %1) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  br label %nlmsg_failure.i

if.end130.i:                                      ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %78 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %69, ptr %add.ptr.i.i.i.i, align 2
  %version1.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17
  %79 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %version1.i.i.i, align 1
  %res_id2.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 18
  %80 = ptrtoint ptr %res_id2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %71, ptr %res_id2.i.i.i, align 2
  %call131.i = call ptr @__nla_reserve(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 7) #10
  %add.ptr.i.i = getelementptr i8, ptr %call131.i, i32 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %81 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %protocol.i, align 8
  %hw_protocol.i = getelementptr i8, ptr %call131.i, i32 8
  %83 = ptrtoint ptr %hw_protocol.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %82, ptr %hw_protocol.i, align 1
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %state.i, align 4
  %hook135.i = getelementptr i8, ptr %call131.i, i32 10
  %86 = ptrtoint ptr %hook135.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %hook135.i, align 1
  %in.i = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 2
  %87 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %in.i, align 4
  %tobool137.not.i = icmp eq ptr %88, null
  br i1 %tobool137.not.i, label %if.end130.i.if.end168.i_crit_edge, label %if.then138.i

if.end130.i.if.end168.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

if.then138.i:                                     ; preds = %if.end130.i
  %89 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %90)
  %cmp142.i = icmp eq i8 %90, 7
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 17
  %91 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ifindex.i, align 4
  br i1 %cmp142.i, label %if.then144.i, label %if.else154.i

if.then144.i:                                     ; preds = %if.then138.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %93 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tmp.i.i, align 4
  %call.i19.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool146.not.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool146.not.i, label %lor.lhs.false147.i, label %if.then144.i.nla_put_failure.i_crit_edge

if.then144.i.nla_put_failure.i_crit_edge:         ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

lor.lhs.false147.i:                               ; preds = %if.then144.i
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 95
  %94 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i20.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i.i, label %lor.lhs.false147.i.br_port_get_rcu.exit.i_crit_edge

lor.lhs.false147.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %lor.lhs.false147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false147.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 416, ptr noundef nonnull @.str.3) #10
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %lor.lhs.false147.i.br_port_get_rcu.exit.i_crit_edge
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 4
  %ifindex149.i = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 17
  %100 = ptrtoint ptr %ifindex149.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ifindex149.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i22.i) #10
  %102 = ptrtoint ptr %tmp.i22.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %tmp.i22.i, align 4
  %call.i23.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i22.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i22.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool151.not.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool151.not.i, label %br_port_get_rcu.exit.i.if.end168.i_crit_edge, label %br_port_get_rcu.exit.i.nla_put_failure.i_crit_edge

br_port_get_rcu.exit.i.nla_put_failure.i_crit_edge: ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

br_port_get_rcu.exit.i.if.end168.i_crit_edge:     ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

if.else154.i:                                     ; preds = %if.then138.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24.i) #10
  %103 = ptrtoint ptr %tmp.i24.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %92, ptr %tmp.i24.i, align 4
  %call.i25.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i24.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool157.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool157.not.i, label %if.end159.i, label %if.else154.i.nla_put_failure.i_crit_edge

if.else154.i.nla_put_failure.i_crit_edge:         ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end159.i:                                      ; preds = %if.else154.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %104 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %106 = and i8 %105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.i.not.i.i.i26.i = icmp eq i8 %106, 0
  br i1 %tobool.i.not.i.i.i26.i, label %if.end159.i.if.end168.i_crit_edge, label %nf_bridge_info_get.exit.i.i

if.end159.i.if.end168.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

nf_bridge_info_get.exit.i.i:                      ; preds = %if.end159.i
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 22
  %107 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %extensions.i.i.i.i, align 8
  %offset.i.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %offset.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %110 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i27.i = getelementptr i8, ptr %108, i32 %shl.i.i.i.i
  %tobool.not.i28.i = icmp eq ptr %add.ptr.i.i.i27.i, null
  br i1 %tobool.not.i28.i, label %nf_bridge_info_get.exit.i.i.if.end168.i_crit_edge, label %if.end.i30.i

nf_bridge_info_get.exit.i.i.if.end168.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

if.end.i30.i:                                     ; preds = %nf_bridge_info_get.exit.i.i
  %physindev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i27.i, i32 0, i32 2
  %111 = ptrtoint ptr %physindev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %physindev.i.i, align 4
  %tobool1.not.i29.i = icmp eq ptr %112, null
  br i1 %tobool1.not.i29.i, label %if.end.i30.i.if.end168.i_crit_edge, label %nf_bridge_get_physinif.exit.i

if.end.i30.i.if.end168.i_crit_edge:               ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

nf_bridge_get_physinif.exit.i:                    ; preds = %if.end.i30.i
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 17
  %113 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ifindex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool161.not.i = icmp eq i32 %114, 0
  br i1 %tobool161.not.i, label %nf_bridge_get_physinif.exit.i.if.end168.i_crit_edge, label %land.lhs.true162.i

nf_bridge_get_physinif.exit.i.if.end168.i_crit_edge: ; preds = %nf_bridge_get_physinif.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

land.lhs.true162.i:                               ; preds = %nf_bridge_get_physinif.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i32.i) #10
  %115 = ptrtoint ptr %tmp.i32.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %tmp.i32.i, align 4
  %call.i33.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i32.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i32.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool164.not.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool164.not.i, label %land.lhs.true162.i.if.end168.i_crit_edge, label %land.lhs.true162.i.nla_put_failure.i_crit_edge

land.lhs.true162.i.nla_put_failure.i_crit_edge:   ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

land.lhs.true162.i.if.end168.i_crit_edge:         ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

if.end168.i:                                      ; preds = %land.lhs.true162.i.if.end168.i_crit_edge, %nf_bridge_get_physinif.exit.i.if.end168.i_crit_edge, %if.end.i30.i.if.end168.i_crit_edge, %nf_bridge_info_get.exit.i.i.if.end168.i_crit_edge, %if.end159.i.if.end168.i_crit_edge, %br_port_get_rcu.exit.i.if.end168.i_crit_edge, %if.end130.i.if.end168.i_crit_edge
  %tobool169.not.i = icmp eq ptr %31, null
  br i1 %tobool169.not.i, label %if.end168.i.if.end206.i_crit_edge, label %if.then170.i

if.end168.i.if.end206.i_crit_edge:                ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.then170.i:                                     ; preds = %if.end168.i
  %116 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %117)
  %cmp174.i = icmp eq i8 %117, 7
  %ifindex177.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 17
  %118 = ptrtoint ptr %ifindex177.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ifindex177.i, align 4
  br i1 %cmp174.i, label %if.then176.i, label %if.else189.i

if.then176.i:                                     ; preds = %if.then170.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i34.i) #10
  %120 = ptrtoint ptr %tmp.i34.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %tmp.i34.i, align 4
  %call.i35.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i34.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i34.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool179.not.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool179.not.i, label %lor.lhs.false180.i, label %if.then176.i.nla_put_failure.i_crit_edge

if.then176.i.nla_put_failure.i_crit_edge:         ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

lor.lhs.false180.i:                               ; preds = %if.then176.i
  %rx_handler_data.i36.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 95
  %121 = ptrtoint ptr %rx_handler_data.i36.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %rx_handler_data.i36.i, align 4
  %call.i37.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i41.i, label %lor.lhs.false180.i.br_port_get_rcu.exit45.i_crit_edge

lor.lhs.false180.i.br_port_get_rcu.exit45.i_crit_edge: ; preds = %lor.lhs.false180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit45.i

land.lhs.true.i41.i:                              ; preds = %lor.lhs.false180.i
  %call2.i39.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i39.i)
  %tobool3.not.i40.i = icmp eq i32 %call2.i39.i, 0
  br i1 %tobool3.not.i40.i, label %land.lhs.true.i41.i.br_port_get_rcu.exit45.i_crit_edge, label %land.lhs.true4.i43.i

land.lhs.true.i41.i.br_port_get_rcu.exit45.i_crit_edge: ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit45.i

land.lhs.true4.i43.i:                             ; preds = %land.lhs.true.i41.i
  %.b9.i42.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i42.i, label %land.lhs.true4.i43.i.br_port_get_rcu.exit45.i_crit_edge, label %if.then.i44.i

land.lhs.true4.i43.i.br_port_get_rcu.exit45.i_crit_edge: ; preds = %land.lhs.true4.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %br_port_get_rcu.exit45.i

if.then.i44.i:                                    ; preds = %land.lhs.true4.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 416, ptr noundef nonnull @.str.3) #10
  br label %br_port_get_rcu.exit45.i

br_port_get_rcu.exit45.i:                         ; preds = %if.then.i44.i, %land.lhs.true4.i43.i.br_port_get_rcu.exit45.i_crit_edge, %land.lhs.true.i41.i.br_port_get_rcu.exit45.i_crit_edge, %lor.lhs.false180.i.br_port_get_rcu.exit45.i_crit_edge
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %dev183.i = getelementptr inbounds %struct.net_bridge, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %dev183.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev183.i, align 4
  %ifindex184.i = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 17
  %127 = ptrtoint ptr %ifindex184.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ifindex184.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i46.i) #10
  %129 = ptrtoint ptr %tmp.i46.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %tmp.i46.i, align 4
  %call.i47.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i46.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i46.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool186.not.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool186.not.i, label %br_port_get_rcu.exit45.i.if.end206.i_crit_edge, label %br_port_get_rcu.exit45.i.nla_put_failure.i_crit_edge

br_port_get_rcu.exit45.i.nla_put_failure.i_crit_edge: ; preds = %br_port_get_rcu.exit45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

br_port_get_rcu.exit45.i.if.end206.i_crit_edge:   ; preds = %br_port_get_rcu.exit45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.else189.i:                                     ; preds = %if.then170.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i48.i) #10
  %130 = ptrtoint ptr %tmp.i48.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %119, ptr %tmp.i48.i, align 4
  %call.i49.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i48.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i48.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool192.not.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool192.not.i, label %if.end194.i, label %if.else189.i.nla_put_failure.i_crit_edge

if.else189.i.nla_put_failure.i_crit_edge:         ; preds = %if.else189.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end194.i:                                      ; preds = %if.else189.i
  %active_extensions.i.i.i.i50.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %131 = ptrtoint ptr %active_extensions.i.i.i.i50.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %active_extensions.i.i.i.i50.i, align 1
  %133 = and i8 %132, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.i.not.i.i.i51.i = icmp eq i8 %133, 0
  br i1 %tobool.i.not.i.i.i51.i, label %if.end194.i.if.end206.i_crit_edge, label %nf_bridge_info_get.exit.i58.i

if.end194.i.if.end206.i_crit_edge:                ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

nf_bridge_info_get.exit.i58.i:                    ; preds = %if.end194.i
  %extensions.i.i.i52.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 22
  %134 = ptrtoint ptr %extensions.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %extensions.i.i.i52.i, align 8
  %offset.i.i.i53.i = getelementptr inbounds %struct.skb_ext, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %offset.i.i.i53.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %offset.i.i.i53.i, align 1
  %conv.i.i.i54.i = zext i8 %137 to i32
  %shl.i.i.i55.i = shl nuw nsw i32 %conv.i.i.i54.i, 3
  %add.ptr.i.i.i56.i = getelementptr i8, ptr %135, i32 %shl.i.i.i55.i
  %tobool.not.i57.i = icmp eq ptr %add.ptr.i.i.i56.i, null
  br i1 %tobool.not.i57.i, label %nf_bridge_info_get.exit.i58.i.if.end206.i_crit_edge, label %if.end.i60.i

nf_bridge_info_get.exit.i58.i.if.end206.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end.i60.i:                                     ; preds = %nf_bridge_info_get.exit.i58.i
  %physoutdev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i56.i, i32 0, i32 3
  %138 = ptrtoint ptr %physoutdev.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %physoutdev.i.i, align 4
  %tobool1.not.i59.i = icmp eq ptr %139, null
  br i1 %tobool1.not.i59.i, label %if.end.i60.i.if.end206.i_crit_edge, label %nf_bridge_get_physoutif.exit.i

if.end.i60.i.if.end206.i_crit_edge:               ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

nf_bridge_get_physoutif.exit.i:                   ; preds = %if.end.i60.i
  %ifindex.i61.i = getelementptr inbounds %struct.net_device, ptr %139, i32 0, i32 17
  %140 = ptrtoint ptr %ifindex.i61.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ifindex.i61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool196.not.i = icmp eq i32 %141, 0
  br i1 %tobool196.not.i, label %nf_bridge_get_physoutif.exit.i.if.end206.i_crit_edge, label %land.lhs.true197.i

nf_bridge_get_physoutif.exit.i.if.end206.i_crit_edge: ; preds = %nf_bridge_get_physoutif.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

land.lhs.true197.i:                               ; preds = %nf_bridge_get_physoutif.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i64.i) #10
  %142 = ptrtoint ptr %tmp.i64.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %tmp.i64.i, align 4
  %call.i65.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i64.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i64.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool199.not.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool199.not.i, label %land.lhs.true197.i.if.end206.i_crit_edge, label %land.lhs.true197.i.nla_put_failure.i_crit_edge

land.lhs.true197.i.nla_put_failure.i_crit_edge:   ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

land.lhs.true197.i.if.end206.i_crit_edge:         ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206.i

if.end206.i:                                      ; preds = %land.lhs.true197.i.if.end206.i_crit_edge, %nf_bridge_get_physoutif.exit.i.if.end206.i_crit_edge, %if.end.i60.i.if.end206.i_crit_edge, %nf_bridge_info_get.exit.i58.i.if.end206.i_crit_edge, %if.end194.i.if.end206.i_crit_edge, %br_port_get_rcu.exit45.i.if.end206.i_crit_edge, %if.end168.i.if.end206.i_crit_edge
  %143 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 13
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool207.not.i = icmp eq i32 %145, 0
  br i1 %tobool207.not.i, label %if.end206.i.if.end212.i_crit_edge, label %land.lhs.true208.i

if.end206.i.if.end212.i_crit_edge:                ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212.i

land.lhs.true208.i:                               ; preds = %if.end206.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i66.i) #10
  %146 = ptrtoint ptr %tmp.i66.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %tmp.i66.i, align 4
  %call.i67.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i66.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i66.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool210.not.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool210.not.i, label %land.lhs.true208.i.if.end212.i_crit_edge, label %land.lhs.true208.i.nla_put_failure.i_crit_edge

land.lhs.true208.i.nla_put_failure.i_crit_edge:   ; preds = %land.lhs.true208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

land.lhs.true208.i.if.end212.i_crit_edge:         ; preds = %land.lhs.true208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212.i

if.end212.i:                                      ; preds = %land.lhs.true208.i.if.end212.i_crit_edge, %if.end206.i.if.end212.i_crit_edge
  br i1 %tobool137.not.i, label %if.end212.i.if.end238.i_crit_edge, label %land.lhs.true214.i

if.end212.i.if.end238.i_crit_edge:                ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.i

land.lhs.true214.i:                               ; preds = %if.end212.i
  %147 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %tobool215.not.i = icmp eq ptr %149, null
  br i1 %tobool215.not.i, label %land.lhs.true214.i.if.end238.i_crit_edge, label %land.lhs.true216.i

land.lhs.true214.i.if.end238.i_crit_edge:         ; preds = %land.lhs.true214.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.i

land.lhs.true216.i:                               ; preds = %land.lhs.true214.i
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %150 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %151)
  %cmp.i68.not.i = icmp eq i16 %151, -1
  br i1 %cmp.i68.not.i, label %land.lhs.true216.i.if.end238.i_crit_edge, label %land.lhs.true219.i

land.lhs.true216.i.if.end238.i_crit_edge:         ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.i

land.lhs.true219.i:                               ; preds = %land.lhs.true216.i
  %network_header.i69.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %152 = ptrtoint ptr %network_header.i69.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %network_header.i69.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %153, i16 %151)
  %cmp221.not.i = icmp eq i16 %153, %151
  br i1 %cmp221.not.i, label %land.lhs.true219.i.if.end238.i_crit_edge, label %if.then223.i

land.lhs.true219.i.if.end238.i_crit_edge:         ; preds = %land.lhs.true219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end238.i

if.then223.i:                                     ; preds = %land.lhs.true219.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %phw.i) #10
  %154 = getelementptr inbounds %struct.nfqnl_msg_packet_hw, ptr %phw.i, i32 0, i32 2
  %155 = call ptr @memset(ptr %phw.i, i32 0, i32 12)
  %156 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %147, align 8
  %header_ops.i.i = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 49
  %158 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %header_ops.i.i, align 4
  %tobool.not.i73.i = icmp eq ptr %159, null
  br i1 %tobool.not.i73.i, label %if.then223.i.cleanup234.thread.i_crit_edge, label %lor.lhs.false.i74.i

if.then223.i.cleanup234.thread.i_crit_edge:       ; preds = %if.then223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup234.thread.i

lor.lhs.false.i74.i:                              ; preds = %if.then223.i
  %parse.i.i = getelementptr inbounds %struct.header_ops, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %parse.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %parse.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %161, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i74.i.cleanup234.thread.i_crit_edge, label %dev_parse_header.exit.i

lor.lhs.false.i74.i.cleanup234.thread.i_crit_edge: ; preds = %lor.lhs.false.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup234.thread.i

dev_parse_header.exit.i:                          ; preds = %lor.lhs.false.i74.i
  %call.i75.i = call i32 %161(ptr noundef %1, ptr noundef %154) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool226.not.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool226.not.i, label %dev_parse_header.exit.i.cleanup234.thread.i_crit_edge, label %if.then227.i

dev_parse_header.exit.i.cleanup234.thread.i_crit_edge: ; preds = %dev_parse_header.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup234.thread.i

if.then227.i:                                     ; preds = %dev_parse_header.exit.i
  %conv228.i = trunc i32 %call.i75.i to i16
  %162 = ptrtoint ptr %phw.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv228.i, ptr %phw.i, align 2
  %call229.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 9, i32 noundef 12, ptr noundef nonnull %phw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i)
  %tobool230.not.i = icmp eq i32 %call229.i, 0
  br i1 %tobool230.not.i, label %if.then227.i.cleanup234.thread.i_crit_edge, label %cleanup234.i

if.then227.i.cleanup234.thread.i_crit_edge:       ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup234.thread.i

cleanup234.thread.i:                              ; preds = %if.then227.i.cleanup234.thread.i_crit_edge, %dev_parse_header.exit.i.cleanup234.thread.i_crit_edge, %lor.lhs.false.i74.i.cleanup234.thread.i_crit_edge, %if.then223.i.cleanup234.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %phw.i) #10
  br label %if.end238.i

cleanup234.i:                                     ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %phw.i) #10
  br label %nla_put_failure.i

if.end238.i:                                      ; preds = %cleanup234.thread.i, %land.lhs.true219.i.if.end238.i_crit_edge, %land.lhs.true216.i.if.end238.i_crit_edge, %land.lhs.true214.i.if.end238.i_crit_edge, %if.end212.i.if.end238.i_crit_edge
  %163 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %skb2.i, align 4
  %165 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %pf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %166)
  %cmp.not.i79.i = icmp eq i8 %166, 7
  br i1 %cmp.not.i79.i, label %lor.lhs.false.i82.i, label %if.end238.i.if.end243.i_crit_edge

if.end238.i.if.end243.i_crit_edge:                ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243.i

lor.lhs.false.i82.i:                              ; preds = %if.end238.i
  %mac_header.i.i80.i = getelementptr inbounds %struct.sk_buff, ptr %164, i32 0, i32 15, i32 0, i32 21
  %167 = ptrtoint ptr %mac_header.i.i80.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %mac_header.i.i80.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %168)
  %cmp.i.not.i81.i = icmp eq i16 %168, -1
  br i1 %cmp.i.not.i81.i, label %lor.lhs.false.i82.i.if.end243.i_crit_edge, label %if.end.i85.i

lor.lhs.false.i82.i.if.end243.i_crit_edge:        ; preds = %lor.lhs.false.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243.i

if.end.i85.i:                                     ; preds = %lor.lhs.false.i82.i
  %vlan_present.i83.i = getelementptr inbounds %struct.sk_buff, ptr %164, i32 0, i32 15, i32 0, i32 3
  %169 = ptrtoint ptr %vlan_present.i83.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %bf.load.i84.i = load i32, ptr %vlan_present.i83.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i84.i)
  %tobool4.not.i.i = icmp sgt i32 %bf.load.i84.i, -1
  br i1 %tobool4.not.i.i, label %if.end.i85.i.if.end18.i.i_crit_edge, label %if.then5.i.i

if.end.i85.i.if.end18.i.i_crit_edge:              ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

if.then5.i.i:                                     ; preds = %if.end.i85.i
  %170 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 32787, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool7.not60.i.i = icmp eq ptr %171, null
  %tobool7.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool7.not60.i.i
  br i1 %tobool7.not.i.i, label %if.then5.i.i.nla_put_failure.i_crit_edge, label %if.end9.i.i

if.then5.i.i.nla_put_failure.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end9.i.i:                                      ; preds = %if.then5.i.i
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %164, i32 0, i32 15, i32 0, i32 10
  %172 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %vlan_tci.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #10
  %174 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool11.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %if.end9.i.i.nla_put_failure.i_crit_edge

if.end9.i.i.nla_put_failure.i_crit_edge:          ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

lor.lhs.false12.i.i:                              ; preds = %if.end9.i.i
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %164, i32 0, i32 15, i32 0, i32 9
  %175 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %vlan_proto.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i54.i.i) #10
  %177 = ptrtoint ptr %tmp.i54.i.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %tmp.i54.i.i, align 2
  %call.i55.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i54.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i54.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i55.i.i, 0
  br i1 %tobool14.not.i.i, label %cleanup.i.i, label %lor.lhs.false12.i.i.nla_put_failure.i_crit_edge

lor.lhs.false12.i.i.nla_put_failure.i_crit_edge:  ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

cleanup.i.i:                                      ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %179 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %171 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i86.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %180 = ptrtoint ptr %171 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i.i86.i, ptr %171, align 2
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %cleanup.i.i, %if.end.i85.i.if.end18.i.i_crit_edge
  %181 = ptrtoint ptr %mac_header.i.i80.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %mac_header.i.i80.i, align 2
  %network_header.i87.i = getelementptr inbounds %struct.sk_buff, ptr %164, i32 0, i32 15, i32 0, i32 20
  %183 = ptrtoint ptr %network_header.i87.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %network_header.i87.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %184, i16 %182)
  %cmp21.i.i = icmp ugt i16 %184, %182
  br i1 %cmp21.i.i, label %if.then23.i.i, label %if.end18.i.i.if.end243.i_crit_edge

if.end18.i.i.if.end243.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243.i

if.then23.i.i:                                    ; preds = %if.end18.i.i
  %conv19.i.i = zext i16 %182 to i32
  %conv20.i.i = zext i16 %184 to i32
  %sub.i88.i = sub nsw i32 %conv20.i.i, %conv19.i.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %164, i32 0, i32 18
  %185 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %head.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %186, i32 %conv19.i.i
  %call29.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 20, i32 noundef %sub.i88.i, ptr noundef %add.ptr.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.not.i.i, label %if.then23.i.i.if.end243.i_crit_edge, label %if.then23.i.i.nla_put_failure.i_crit_edge

if.then23.i.i.nla_put_failure.i_crit_edge:        ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.then23.i.i.if.end243.i_crit_edge:              ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243.i

if.end243.i:                                      ; preds = %if.then23.i.i.if.end243.i_crit_edge, %if.end18.i.i.if.end243.i_crit_edge, %lor.lhs.false.i82.i.if.end243.i_crit_edge, %if.end238.i.if.end243.i_crit_edge
  %187 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %188)
  %cmp247.i = icmp ult i8 %188, 3
  br i1 %cmp247.i, label %land.lhs.true249.i, label %if.end243.i.if.end261.i_crit_edge

if.end243.i.if.end261.i_crit_edge:                ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end261.i

land.lhs.true249.i:                               ; preds = %if.end243.i
  %189 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %190)
  %tobool250.not.i = icmp eq i64 %190, 0
  br i1 %tobool250.not.i, label %land.lhs.true249.i.if.end261.i_crit_edge, label %if.then251.i

land.lhs.true249.i.if.end261.i_crit_edge:         ; preds = %land.lhs.true249.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end261.i

if.then251.i:                                     ; preds = %land.lhs.true249.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %191 = getelementptr inbounds %struct.nfqnl_msg_packet_timestamp, ptr %ts.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kts.i) #10
  %192 = call ptr @memset(ptr %kts.i, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %kts.i, i64 noundef %190) #10
  %193 = ptrtoint ptr %kts.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %kts.i, align 8
  %195 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %194, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %kts.i, i32 0, i32 1
  %196 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %197, 1000
  %conv252.i = sext i32 %div.i to i64
  %198 = ptrtoint ptr %191 to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %conv252.i, ptr %191, align 8
  %call253.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 16, ptr noundef nonnull %ts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %tobool254.not.i = icmp eq i32 %call253.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kts.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  br i1 %tobool254.not.i, label %if.then251.i.if.end261.i_crit_edge, label %if.then251.i.nla_put_failure.i_crit_edge

if.then251.i.nla_put_failure.i_crit_edge:         ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.then251.i.if.end261.i_crit_edge:               ; preds = %if.then251.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end261.i

if.end261.i:                                      ; preds = %if.then251.i.if.end261.i_crit_edge, %land.lhs.true249.i.if.end261.i_crit_edge, %if.end243.i.if.end261.i_crit_edge
  %199 = ptrtoint ptr %flags82.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %flags82.i, align 8
  %and263.i = and i32 %200, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263.i)
  %tobool264.not.i = icmp eq i32 %and263.i, 0
  br i1 %tobool264.not.i, label %if.end261.i.if.end272.i_crit_edge, label %land.lhs.true265.i

if.end261.i.if.end272.i_crit_edge:                ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end272.i

land.lhs.true265.i:                               ; preds = %if.end261.i
  %201 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %tobool266.not.i = icmp eq ptr %203, null
  br i1 %tobool266.not.i, label %land.lhs.true265.i.if.end272.i_crit_edge, label %land.lhs.true267.i

land.lhs.true265.i.if.end272.i_crit_edge:         ; preds = %land.lhs.true265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end272.i

land.lhs.true267.i:                               ; preds = %land.lhs.true265.i
  %call268.i = call fastcc i32 @nfqnl_put_sk_uidgid(ptr noundef nonnull %call.i.i, ptr noundef nonnull %203) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268.i)
  %cmp269.i = icmp slt i32 %call268.i, 0
  br i1 %cmp269.i, label %land.lhs.true267.i.nla_put_failure.i_crit_edge, label %land.lhs.true267.i.if.end272.i_crit_edge

land.lhs.true267.i.if.end272.i_crit_edge:         ; preds = %land.lhs.true267.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end272.i

land.lhs.true267.i.nla_put_failure.i_crit_edge:   ; preds = %land.lhs.true267.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end272.i:                                      ; preds = %land.lhs.true267.i.if.end272.i_crit_edge, %land.lhs.true265.i.if.end272.i_crit_edge, %if.end261.i.if.end272.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seclen.0.i)
  %tobool273.not.i = icmp eq i32 %seclen.0.i, 0
  br i1 %tobool273.not.i, label %if.end272.i.if.end278.i_crit_edge, label %land.lhs.true274.i

if.end272.i.if.end278.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end278.i

land.lhs.true274.i:                               ; preds = %if.end272.i
  %204 = ptrtoint ptr %secdata.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %secdata.i, align 4
  %call275.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 18, i32 noundef %seclen.0.i, ptr noundef %205) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i)
  %tobool276.not.i = icmp eq i32 %call275.i, 0
  br i1 %tobool276.not.i, label %land.lhs.true274.i.if.end278.i_crit_edge, label %land.lhs.true274.i.nla_put_failure.i_crit_edge

land.lhs.true274.i.nla_put_failure.i_crit_edge:   ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

land.lhs.true274.i.if.end278.i_crit_edge:         ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end278.i

if.end278.i:                                      ; preds = %land.lhs.true274.i.if.end278.i_crit_edge, %if.end272.i.if.end278.i_crit_edge
  %tobool279.not.i = icmp eq ptr %ct.0.i, null
  br i1 %tobool279.not.i, label %if.end278.i.if.end285.i_crit_edge, label %land.lhs.true280.i

if.end278.i.if.end285.i_crit_edge:                ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end285.i

land.lhs.true280.i:                               ; preds = %if.end278.i
  %build.i = getelementptr inbounds %struct.nfnl_ct_hook, ptr %46, i32 0, i32 1
  %206 = ptrtoint ptr %build.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %build.i, align 4
  %call281.i = call i32 %207(ptr noundef nonnull %call.i.i, ptr noundef nonnull %ct.0.i, i32 noundef %ctinfo.0.i, i16 noundef zeroext 11, i16 noundef zeroext 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281.i)
  %cmp282.i = icmp slt i32 %call281.i, 0
  br i1 %cmp282.i, label %land.lhs.true280.i.nla_put_failure.i_crit_edge, label %land.lhs.true280.i.if.end285.i_crit_edge

land.lhs.true280.i.if.end285.i_crit_edge:         ; preds = %land.lhs.true280.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end285.i

land.lhs.true280.i.nla_put_failure.i_crit_edge:   ; preds = %land.lhs.true280.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end285.i:                                      ; preds = %land.lhs.true280.i.if.end285.i_crit_edge, %if.end278.i.if.end285.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cap_len.0.i, i32 %data_len.1.i)
  %cmp286.i = icmp ugt i32 %cap_len.0.i, %data_len.1.i
  br i1 %cmp286.i, label %land.lhs.true288.i, label %if.end285.i.if.end292.i_crit_edge

if.end285.i.if.end292.i_crit_edge:                ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end292.i

land.lhs.true288.i:                               ; preds = %if.end285.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i90.i) #10
  %208 = ptrtoint ptr %tmp.i90.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %cap_len.0.i, ptr %tmp.i90.i, align 4
  %call.i91.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i90.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i90.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool290.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool290.not.i, label %land.lhs.true288.i.if.end292.i_crit_edge, label %land.lhs.true288.i.nla_put_failure.i_crit_edge

land.lhs.true288.i.nla_put_failure.i_crit_edge:   ; preds = %land.lhs.true288.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

land.lhs.true288.i.if.end292.i_crit_edge:         ; preds = %land.lhs.true288.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end292.i

if.end292.i:                                      ; preds = %land.lhs.true288.i.if.end292.i_crit_edge, %if.end285.i.if.end292.i_crit_edge
  %call294.i = call fastcc i32 @nfqnl_put_packet_info(ptr noundef nonnull %call.i.i, ptr noundef %1, i1 noundef zeroext %csum_verify.0.off0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294.i)
  %tobool295.not.i = icmp eq i32 %call294.i, 0
  br i1 %tobool295.not.i, label %if.end297.i, label %if.end292.i.nla_put_failure.i_crit_edge

if.end292.i.nla_put_failure.i_crit_edge:          ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end297.i:                                      ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1.i)
  %tobool298.not.i = icmp eq i32 %data_len.1.i, 0
  br i1 %tobool298.not.i, label %if.end297.i.if.end317.i_crit_edge, label %if.then299.i

if.end297.i.if.end317.i_crit_edge:                ; preds = %if.end297.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317.i

if.then299.i:                                     ; preds = %if.end297.i
  %209 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.i.not.i92.i = icmp eq i32 %210, 0
  br i1 %tobool.i.not.i92.i, label %cond.false.i.i, label %if.then299.i.skb_tailroom.exit.i_crit_edge

if.then299.i.skb_tailroom.exit.i_crit_edge:       ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #12
  %211 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %end.i.i.i.i, align 4
  %213 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %212 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %214 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.then299.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.then299.i.skb_tailroom.exit.i_crit_edge ]
  %add302.i = add i32 %hlen.0.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %add302.i)
  %cmp303.i = icmp ult i32 %cond.i.i, %add302.i
  br i1 %cmp303.i, label %skb_tailroom.exit.i.nla_put_failure.i_crit_edge, label %if.end306.i

skb_tailroom.exit.i.nla_put_failure.i_crit_edge:  ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end306.i:                                      ; preds = %skb_tailroom.exit.i
  %call307.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #10
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %call307.i, i32 0, i32 1
  %215 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 10, ptr %nla_type.i, align 2
  %216 = trunc i32 %data_len.1.i to i16
  %conv309.i = add i16 %216, 4
  %217 = ptrtoint ptr %call307.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv309.i, ptr %call307.i, align 2
  %call310.i = call i32 @skb_zerocopy(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef %data_len.1.i, i32 noundef %hlen.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310.i)
  %tobool311.not.i = icmp eq i32 %call310.i, 0
  br i1 %tobool311.not.i, label %if.end306.i.if.end317.i_crit_edge, label %if.end306.i.nla_put_failure.i_crit_edge

if.end306.i.nla_put_failure.i_crit_edge:          ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure.i

if.end306.i.if.end317.i_crit_edge:                ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end317.i

if.end317.i:                                      ; preds = %if.end306.i.if.end317.i_crit_edge, %if.end297.i.if.end317.i_crit_edge
  %len318.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %218 = ptrtoint ptr %len318.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %len318.i, align 4
  %220 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %call3.i.i.i, align 4
  br i1 %tobool273.not.i, label %nfqnl_build_packet_message.exit.thread73, label %nfqnl_build_packet_message.exit

nfqnl_build_packet_message.exit.thread73:         ; preds = %if.end317.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secdata.i) #10
  br label %if.end

nla_put_failure.i:                                ; preds = %if.end306.i.nla_put_failure.i_crit_edge, %skb_tailroom.exit.i.nla_put_failure.i_crit_edge, %if.end292.i.nla_put_failure.i_crit_edge, %land.lhs.true288.i.nla_put_failure.i_crit_edge, %land.lhs.true280.i.nla_put_failure.i_crit_edge, %land.lhs.true274.i.nla_put_failure.i_crit_edge, %land.lhs.true267.i.nla_put_failure.i_crit_edge, %if.then251.i.nla_put_failure.i_crit_edge, %if.then23.i.i.nla_put_failure.i_crit_edge, %lor.lhs.false12.i.i.nla_put_failure.i_crit_edge, %if.end9.i.i.nla_put_failure.i_crit_edge, %if.then5.i.i.nla_put_failure.i_crit_edge, %cleanup234.i, %land.lhs.true208.i.nla_put_failure.i_crit_edge, %land.lhs.true197.i.nla_put_failure.i_crit_edge, %if.else189.i.nla_put_failure.i_crit_edge, %br_port_get_rcu.exit45.i.nla_put_failure.i_crit_edge, %if.then176.i.nla_put_failure.i_crit_edge, %land.lhs.true162.i.nla_put_failure.i_crit_edge, %if.else154.i.nla_put_failure.i_crit_edge, %br_port_get_rcu.exit.i.nla_put_failure.i_crit_edge, %if.then144.i.nla_put_failure.i_crit_edge
  call void @skb_tx_error(ptr noundef %1) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  %call323.i = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.i)
  %tobool324.not.i = icmp eq i32 %call323.i, 0
  br i1 %tobool324.not.i, label %nla_put_failure.i.nlmsg_failure.i_crit_edge, label %do.end328.i

nla_put_failure.i.nlmsg_failure.i_crit_edge:      ; preds = %nla_put_failure.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_failure.i

do.end328.i:                                      ; preds = %nla_put_failure.i
  call void @__sanitizer_cov_trace_pc() #12
  %call330.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %nlmsg_failure.i

nlmsg_failure.i:                                  ; preds = %do.end328.i, %nla_put_failure.i.nlmsg_failure.i_crit_edge, %if.then129.i, %if.then122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seclen.0.i)
  %tobool334.not.i = icmp eq i32 %seclen.0.i, 0
  br i1 %tobool334.not.i, label %nlmsg_failure.i.nfqnl_build_packet_message.exit.thread_crit_edge, label %nfqnl_build_packet_message.exit.thread79

nlmsg_failure.i.nfqnl_build_packet_message.exit.thread_crit_edge: ; preds = %nlmsg_failure.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfqnl_build_packet_message.exit.thread

nfqnl_build_packet_message.exit.thread79:         ; preds = %nlmsg_failure.i
  call void @__sanitizer_cov_trace_pc() #12
  %221 = ptrtoint ptr %secdata.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %.sink.i82 = load ptr, ptr %secdata.i, align 4
  call void @security_release_secctx(ptr noundef %.sink.i82, i32 noundef %seclen.0.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secdata.i) #10
  br label %cleanup

nfqnl_build_packet_message.exit.thread:           ; preds = %nlmsg_failure.i.nfqnl_build_packet_message.exit.thread_crit_edge, %land.lhs.true44.i.nfqnl_build_packet_message.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secdata.i) #10
  br label %cleanup

nfqnl_build_packet_message.exit:                  ; preds = %if.end317.i
  call void @__sanitizer_cov_trace_pc() #12
  %222 = ptrtoint ptr %secdata.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %.sink.i = load ptr, ptr %secdata.i, align 4
  call void @security_release_secctx(ptr noundef %.sink.i, i32 noundef %seclen.0.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secdata.i) #10
  br label %if.end

if.end:                                           ; preds = %nfqnl_build_packet_message.exit, %nfqnl_build_packet_message.exit.thread73
  %lock = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %223 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %skb2.i, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %224, i32 0, i32 5
  %225 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i62 = and i32 %226, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool.not.i63 = icmp eq i32 %and.i.i62, 0
  br i1 %tobool.not.i63, label %if.end.if.end4_crit_edge, label %land.lhs.true.i66

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true.i66:                                ; preds = %if.end
  %227 = inttoptr i32 %and.i.i62 to ptr
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %227, i32 0, i32 5
  %228 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %status.i, align 8
  %and.i64 = and i32 %229, 520
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i64)
  %cmp.i65 = icmp eq i32 %and.i64, 512
  br i1 %cmp.i65, label %land.lhs.true.i66.err_out_unlock_crit_edge, label %land.lhs.true.i66.if.end4_crit_edge

land.lhs.true.i66.if.end4_crit_edge:              ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true.i66.err_out_unlock_crit_edge:       ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

if.end4:                                          ; preds = %land.lhs.true.i66.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %queue_total = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 12
  %230 = ptrtoint ptr %queue_total to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %queue_total, align 4
  %queue_maxlen = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 3
  %232 = ptrtoint ptr %queue_maxlen to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %queue_maxlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %233)
  %cmp5.not = icmp ult i32 %231, %233
  br i1 %cmp5.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %if.end4
  %234 = ptrtoint ptr %flags82.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %flags82.i, align 8
  %and = and i32 %235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then6.err_out_unlock_crit_edge

if.then6.err_out_unlock_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

if.else:                                          ; preds = %if.then6
  %queue_dropped = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 5
  %236 = ptrtoint ptr %queue_dropped to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %queue_dropped, align 4
  %inc = add i32 %237, 1
  store i32 %inc, ptr %queue_dropped, align 4
  %call8 = call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.err_out_unlock_crit_edge, label %do.end

if.else.err_out_unlock_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_unlock

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %238 = ptrtoint ptr %queue_total to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %queue_total, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %239) #13
  br label %err_out_unlock

if.end18:                                         ; preds = %if.end4
  %id_sequence = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 13
  %240 = ptrtoint ptr %id_sequence to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %id_sequence, align 16
  %inc19 = add i32 %241, 1
  store i32 %inc19, ptr %id_sequence, align 16
  %id = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 2
  %242 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %inc19, ptr %id, align 4
  %243 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %inc19, ptr %add.ptr.i.i, align 4
  %peer_portid = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 2
  %244 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %peer_portid, align 16
  %call21 = call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %net, i32 noundef %245) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end18
  %246 = ptrtoint ptr %flags82.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flags82.i, align 8
  %and25 = and i32 %247, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %err_out_unlock.thread, label %err_out_unlock.thread88

err_out_unlock.thread88:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.then35

err_out_unlock.thread:                            ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %queue_user_dropped = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 6
  %248 = ptrtoint ptr %queue_user_dropped to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %queue_user_dropped, align 32
  %inc29 = add i32 %249, 1
  store i32 %inc29, ptr %queue_user_dropped, align 32
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %queue_list.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.nfqnl_instance, ptr %queue, i32 0, i32 14, i32 1
  %250 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i68 = call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %251, ptr noundef %queue_list.i) #10
  br i1 %call.i.i.i68, label %if.end.i.i.i, label %if.end31.__enqueue_entry.exit_crit_edge

if.end31.__enqueue_entry.exit_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %__enqueue_entry.exit

if.end.i.i.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %252 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %entry1, ptr %prev.i.i, align 4
  %253 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %queue_list.i, ptr %entry1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %254 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %251, ptr %prev3.i.i.i, align 4
  %255 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile ptr %entry1, ptr %251, align 4
  br label %__enqueue_entry.exit

__enqueue_entry.exit:                             ; preds = %if.end.i.i.i, %if.end31.__enqueue_entry.exit_crit_edge
  %256 = ptrtoint ptr %queue_total to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %queue_total, align 4
  %inc.i = add i32 %257, 1
  store i32 %inc.i, ptr %queue_total, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

err_out_unlock:                                   ; preds = %do.end, %if.else.err_out_unlock_crit_edge, %if.then6.err_out_unlock_crit_edge, %land.lhs.true.i66.err_out_unlock_crit_edge
  %err.0 = phi i32 [ -105, %do.end ], [ -105, %if.else.err_out_unlock_crit_edge ], [ 0, %if.then6.err_out_unlock_crit_edge ], [ -105, %land.lhs.true.i66.err_out_unlock_crit_edge ]
  %tobool34.not = phi i1 [ true, %do.end ], [ true, %if.else.err_out_unlock_crit_edge ], [ false, %if.then6.err_out_unlock_crit_edge ], [ true, %land.lhs.true.i66.err_out_unlock_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br i1 %tobool34.not, label %err_out_unlock.cleanup_crit_edge, label %err_out_unlock.if.then35_crit_edge

err_out_unlock.if.then35_crit_edge:               ; preds = %err_out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

err_out_unlock.cleanup_crit_edge:                 ; preds = %err_out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %err_out_unlock.if.then35_crit_edge, %err_out_unlock.thread88
  %err.192 = phi i32 [ 0, %err_out_unlock.thread88 ], [ %err.0, %err_out_unlock.if.then35_crit_edge ]
  call fastcc void @nfqnl_reinject(ptr noundef %entry1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %err_out_unlock.cleanup_crit_edge, %__enqueue_entry.exit, %err_out_unlock.thread, %nfqnl_build_packet_message.exit.thread, %nfqnl_build_packet_message.exit.thread79
  %retval.0 = phi i32 [ 0, %__enqueue_entry.exit ], [ %err.192, %if.then35 ], [ %err.0, %err_out_unlock.cleanup_crit_edge ], [ -12, %nfqnl_build_packet_message.exit.thread ], [ -12, %nfqnl_build_packet_message.exit.thread79 ], [ %call21, %err_out_unlock.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_queue_entry_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy_headlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tx_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfqnl_put_sk_uidgid(ptr noundef %skb, ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  %tmp.i30 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %land.lhs.true

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end
  %file = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %if.then3

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then3:                                         ; preds = %land.lhs.true
  %f_cred = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_cred, align 8
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %fsuid, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call6 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call6, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.then3.nla_put_failure_crit_edge

if.then3.nla_put_failure_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end10:                                         ; preds = %if.then3
  %fsgid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 11
  %11 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack29 = load i32, ptr %fsgid, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack29, 0
  %call12 = call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %12) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30) #10
  %13 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call12, ptr %tmp.i30, align 4
  %call.i31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i30) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool14.not = icmp eq i32 %call.i31, 0
  br i1 %tobool14.not, label %if.end10.cleanup.sink.split_crit_edge, label %if.end10.nla_put_failure_crit_edge

if.end10.nla_put_failure_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

nla_put_failure:                                  ; preds = %if.end10.nla_put_failure_crit_edge, %if.then3.nla_put_failure_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %nla_put_failure, %if.end10.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end10.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfqnl_put_packet_info(ptr noundef %nlskb, ptr nocapture noundef readonly %packet, i1 noundef zeroext %csum_verify) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %packet, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  %spec.select = select i1 %csum_verify, i32 4, i32 0
  %flags.0 = select i1 %cmp, i32 1, i32 %spec.select
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %packet, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  %or = or i32 %flags.0, 2
  %spec.select11 = select i1 %tobool.i.not, i32 %flags.0, i32 %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select11)
  %tobool6.not = icmp eq i32 %spec.select11, 0
  br i1 %tobool6.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select11, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call.i, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_queue_entry_get_refs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !106}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__UNIQUE_ID_description782, !1, !"__UNIQUE_ID_description782", i1 false, i1 false}
!1 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1591, i32 1}
!2 = !{ptr @__UNIQUE_ID_author783, !3, !"__UNIQUE_ID_author783", i1 false, i1 false}
!3 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1592, i32 1}
!4 = !{ptr @__UNIQUE_ID_file784, !5, !"__UNIQUE_ID_file784", i1 false, i1 false}
!5 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1593, i32 1}
!6 = !{ptr @__UNIQUE_ID_license785, !5, !"__UNIQUE_ID_license785", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias786, !8, !"__UNIQUE_ID_alias786", i1 false, i1 false}
!8 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1594, i32 1}
!9 = !{ptr @__initcall__kmod_nfnetlink_queue__787_1596_nfnetlink_queue_init6, !10, !"__initcall__kmod_nfnetlink_queue__787_1596_nfnetlink_queue_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1596, i32 1}
!11 = !{ptr @__exitcall_nfnetlink_queue_fini, !12, !"__exitcall_nfnetlink_queue_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1597, i32 1}
!13 = !{ptr @nfqnl_dev_notifier, !14, !"nfqnl_dev_notifier", i1 false, i1 false}
!14 = !{!"../net/netfilter/nfnetlink_queue.c", i32 952, i32 30}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/netfilter/nfnetlink_queue.c", i32 933, i32 3}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nfnl_queue_net_id, !24, !"nfnl_queue_net_id", i1 false, i1 false}
!24 = !{!"../net/netfilter/nfnetlink_queue.c", i32 83, i32 21}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/netfilter/nfnetlink_queue.c", i32 235, i32 13}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1408, i32 11}
!36 = !{ptr @nfqnl_subsys, !37, !"nfqnl_subsys", i1 false, i1 false}
!37 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1407, i32 41}
!38 = !{ptr @nfqnl_cb, !39, !"nfqnl_cb", i1 false, i1 false}
!39 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1381, i32 35}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1205, i32 12}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/netfilter/nfnetlink_queue.c", i32 108, i32 2}
!44 = !{ptr @nfqa_vlan_policy, !45, !"nfqa_vlan_policy", i1 false, i1 false}
!45 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1011, i32 32}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!48 = !{ptr @nfqa_verdict_policy, !49, !"nfqa_verdict_policy", i1 false, i1 false}
!49 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1016, i32 32}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1302, i32 4}
!52 = !{ptr @instance_create.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../net/netfilter/nfnetlink_queue.c", i32 139, i32 2}
!54 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @nfqa_cfg_policy, !56, !"nfqa_cfg_policy", i1 false, i1 false}
!56 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1244, i32 32}
!57 = !{ptr @nfqa_verdict_batch_policy, !58, !"nfqa_verdict_batch_policy", i1 false, i1 false}
!58 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1025, i32 32}
!59 = !{ptr @nfqnl_rtnl_notifier, !60, !"nfqnl_rtnl_notifier", i1 false, i1 false}
!60 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1007, i32 30}
!61 = !{ptr @nfnl_queue_net_ops, !62, !"nfnl_queue_net_ops", i1 false, i1 false}
!62 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1537, i32 33}
!63 = !{ptr @nfnl_queue_net_init.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1515, i32 2}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1518, i32 7}
!68 = !{ptr @nfqnl_seq_ops, !69, !"nfqnl_seq_ops", i1 false, i1 false}
!69 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1499, i32 36}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1490, i32 16}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1534, i32 3}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1550, i32 3}
!76 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @nfnetlink_queue_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @nfnetlink_queue_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1557, i32 3}
!81 = !{ptr @nfnetlink_queue_init._entry.17, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nfnetlink_queue_init._entry_ptr.19, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1563, i32 3}
!85 = !{ptr @nfnetlink_queue_init._entry.20, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @nfnetlink_queue_init._entry_ptr.22, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @nfqh, !88, !"nfqh", i1 false, i1 false}
!88 = !{!"../net/netfilter/nfnetlink_queue.c", i32 1252, i32 38}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/netfilter/nfnetlink_queue.c", i32 674, i32 4}
!91 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__nfqnl_enqueue_packet._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @__nfqnl_enqueue_packet._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/netfilter/nfnetlink_queue.c", i32 444, i32 12}
!96 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/netfilter/nfnetlink_queue.c", i32 630, i32 2}
!98 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @nfqnl_build_packet_message._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @nfqnl_build_packet_message._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../net/netfilter/../bridge/br_private.h", i32 416, i32 9}
!103 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !105, !"flags", i1 false, i1 false}
!105 = !{!"../net/netfilter/nfnetlink_queue.c", i32 640, i32 29}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/netfilter/nfnetlink_queue.c", i32 975, i32 3}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2149393489}
!119 = !{i64 2149393755}
!120 = !{!"auto-init"}
!121 = !{i64 2151985277}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2154602087, i64 2154602575, i64 2154602124, i64 2154602180, i64 2154602214, i64 2154602238, i64 2154602279, i64 2154602300, i64 2154602328, i64 2154602362}
