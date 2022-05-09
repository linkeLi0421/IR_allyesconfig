; ModuleID = '/llk/IR_all_yes/net/netfilter/nfnetlink_log.c_pt.bc'
source_filename = "../net/netfilter/nfnetlink_log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nf_logger = type { ptr, i32, ptr, ptr }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.nf_loginfo = type { i8, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { i32, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nfgenmsg = type { i8, i8, i16 }
%struct.nfulnl_instance = type { %struct.hlist_node, %struct.spinlock, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i8, %struct.callback_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.110, %union.anon.112, %union.anon.113, i16, i8, i8, i32, %union.anon.115, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon.110 = type { i64 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.115 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.122 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.42, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.42 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.54 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.54 = type { %struct.callback_head }
%struct.nfnl_log_net = type { %struct.spinlock, [16 x %struct.hlist_head], %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.rb_root = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.104, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.104 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlink_notify = type { ptr, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.iter_state = type { %struct.seq_net_private, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.nfulnl_msg_packet_hdr = type { i16, i8, i8 }
%struct.nfulnl_msg_packet_hw = type { i16, i16, [8 x i8] }
%struct.nfulnl_msg_packet_timestamp = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.136 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.173, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.173 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.174, %union.anon.175, i16, i16 }
%union.anon.174 = type { %struct.in6_addr }
%union.anon.175 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_bridge_info = type { i16, i16, ptr, ptr, %union.anon.179 }
%union.anon.179 = type { %struct.in6_addr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfnl_ct_hook = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlattr = type { i16, i16 }

@nfulnl_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str, i8 4, i8 2, ptr @nfulnl_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfulnl_rtnl_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @nfulnl_rcv_nl_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nfnl_log_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nfnl_log_net_init, ptr null, ptr @nfnl_log_net_exit, ptr null, ptr @nfnl_log_net_id, i32 112 }, [32 x i8] zeroinitializer }, align 32
@nfulnl_logger = internal global %struct.nf_logger { ptr @.str.16, i32 1, ptr @nfulnl_log_packet, ptr null }, section ".data..read_mostly", align 4
@__UNIQUE_ID_description667 = internal constant [54 x i8] c"nfnetlink_log.description=netfilter userspace logging\00", section ".modinfo", align 1
@__UNIQUE_ID_author668 = internal constant [58 x i8] c"nfnetlink_log.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file669 = internal constant [47 x i8] c"nfnetlink_log.file=net/netfilter/nfnetlink_log\00", section ".modinfo", align 1
@__UNIQUE_ID_license670 = internal constant [26 x i8] c"nfnetlink_log.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias671 = internal constant [39 x i8] c"nfnetlink_log.alias=nfnetlink-subsys-4\00", section ".modinfo", align 1
@__UNIQUE_ID_alias672 = internal constant [34 x i8] c"nfnetlink_log.alias=nf-logger-2-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias673 = internal constant [35 x i8] c"nfnetlink_log.alias=nf-logger-10-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias674 = internal constant [34 x i8] c"nfnetlink_log.alias=nf-logger-7-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias675 = internal constant [34 x i8] c"nfnetlink_log.alias=nf-logger-3-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias676 = internal constant [34 x i8] c"nfnetlink_log.alias=nf-logger-5-1\00", section ".modinfo", align 1
@__initcall__kmod_nfnetlink_log__677_1206_nfnetlink_log_init6 = internal global ptr @nfnetlink_log_init, section ".initcall6.init", align 4
@__exitcall_nfnetlink_log_fini = internal global ptr @nfnetlink_log_fini, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@nfulnl_cb = internal constant { [2 x %struct.nfnl_callback], [32 x i8] } { [2 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @nfulnl_recv_unsupp, ptr null, i32 1, i16 21 }, %struct.nfnl_callback { ptr @nfulnl_recv_config, ptr @nfula_cfg_policy, i32 1, i16 6 }], [32 x i8] zeroinitializer }, align 32
@nfula_cfg_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 1, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nfnl_ct_hook = external dso_local global ptr, align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_conntrack_netlink\00", [43 x i8] zeroinitializer }, align 32
@nfnl_log_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@__instance_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/nfnetlink_log.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@instance_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&inst->lock\00", [20 x i8] zeroinitializer }, align 32
@instance_create.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&inst->timer)\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__nfulnl_send.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad nlskb size: %u, tailroom %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nfnl_log_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&log->instances_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfnetlink_log\00", [18 x i8] zeroinitializer }, align 32
@nful_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @seq_start, ptr @seq_stop, ptr @seq_next, ptr @seq_show }, [16 x i8] zeroinitializer }, align 32
@get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_next.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%5u %6u %5u %1u %5u %6u %2u\0A\00", [35 x i8] zeroinitializer }, align 32
@nfnl_log_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@default_loginfo = internal constant { %struct.nf_loginfo, [16 x i8] } { %struct.nf_loginfo { i8 1, %union.anon.105 { %struct.anon.106 { i32 65535, i16 0, i16 1, i16 0 } } }, [16 x i8] zeroinitializer }, align 32
@nfulnl_log_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__build_packet_message._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.8, i32 657, ptr null, ptr null }, align 1
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nfnetlink_log: error creating log nlmsg\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__build_packet_message\00", [41 x i8] zeroinitializer }, align 32
@__build_packet_message._entry_ptr = internal global ptr @__build_packet_message._entry, section ".printk_index", align 4
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/netfilter/../bridge/br_private.h\00", [59 x i8] zeroinitializer }, align 32
@nfnetlink_log_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013nfnetlink_log: failed to register pernet ops\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfnetlink_log_init\00", [45 x i8] zeroinitializer }, align 32
@nfnetlink_log_init._entry_ptr = internal global ptr @nfnetlink_log_init._entry, section ".printk_index", align 4
@nfnetlink_log_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.8, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nfnetlink_log: failed to create netlink socket\0A\00", [46 x i8] zeroinitializer }, align 32
@nfnetlink_log_init._entry_ptr.26 = internal global ptr @nfnetlink_log_init._entry.24, section ".printk_index", align 4
@nfnetlink_log_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.8, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nfnetlink_log: failed to register logger\0A\00", [52 x i8] zeroinitializer }, align 32
@nfnetlink_log_init._entry_ptr.29 = internal global ptr @nfnetlink_log_init._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 7]
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"nfulnl_subsys\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1006, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"nfulnl_rtnl_notifier\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 846, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"nfnl_log_net_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1147, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1007, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"nfulnl_cb\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 992, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"nfula_cfg_policy\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 863, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 912, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 45, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 749, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 112, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 760, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 185, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 189, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 358, i32 7 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1118, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1121, i32 9 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"nful_seq_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1098, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1089, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"default_loginfo\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 661, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 657, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [40 x i8] c"../net/netfilter/../bridge/br_private.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 416, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1160, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1167, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [33 x i8] c"../net/netfilter/nfnetlink_log.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1173, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias671, ptr @__UNIQUE_ID_alias672, ptr @__UNIQUE_ID_alias673, ptr @__UNIQUE_ID_alias674, ptr @__UNIQUE_ID_alias675, ptr @__UNIQUE_ID_alias676, ptr @__UNIQUE_ID_author668, ptr @__UNIQUE_ID_description667, ptr @__UNIQUE_ID_file669, ptr @__UNIQUE_ID_license670, ptr @__build_packet_message._entry, ptr @__build_packet_message._entry_ptr, ptr @__exitcall_nfnetlink_log_fini, ptr @__initcall__kmod_nfnetlink_log__677_1206_nfnetlink_log_init6, ptr @nfnetlink_log_fini, ptr @nfnetlink_log_init._entry, ptr @nfnetlink_log_init._entry.24, ptr @nfnetlink_log_init._entry.27, ptr @nfnetlink_log_init._entry_ptr, ptr @nfnetlink_log_init._entry_ptr.26, ptr @nfnetlink_log_init._entry_ptr.29, ptr @nfulnl_subsys, ptr @nfulnl_rtnl_notifier, ptr @nfnl_log_net_ops, ptr @.str, ptr @nfulnl_cb, ptr @nfula_cfg_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @instance_create.__key, ptr @.str.11, ptr @instance_create.__key.12, ptr @.str.13, ptr @.str.14, ptr @nfnl_log_net_init.__key, ptr @.str.15, ptr @.str.16, ptr @nful_seq_ops, ptr @.str.18, ptr @default_loginfo, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfulnl_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfulnl_rtnl_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_log_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfulnl_cb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfula_cfg_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instance_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @instance_create.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_log_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nful_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_loginfo to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnetlink_log_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnetlink_log_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnetlink_log_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfnetlink_log_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfulnl_subsys) #12
  %call1 = tail call i32 @netlink_unregister_notifier(ptr noundef nonnull @nfulnl_rtnl_notifier) #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfnl_log_net_ops) #12
  tail call void @nf_log_unregister(ptr noundef nonnull @nfulnl_logger) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unregister_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnetlink_log_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nfnl_log_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @netlink_register_notifier(ptr noundef nonnull @nfulnl_rtnl_notifier) #12
  %call3 = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @nfulnl_subsys) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %cleanup_netlink_notifier

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @nf_log_register(i8 noundef zeroext 0, ptr noundef nonnull @nfulnl_logger) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  %call21 = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfulnl_subsys) #12
  br label %cleanup_netlink_notifier

cleanup_netlink_notifier:                         ; preds = %do.end17, %do.end8
  %status.0 = phi i32 [ %call3, %do.end8 ], [ %call12, %do.end17 ]
  %call22 = tail call i32 @netlink_unregister_notifier(ptr noundef nonnull @nfulnl_rtnl_notifier) #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfnl_log_net_ops) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup_netlink_notifier, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call12, %if.end11.cleanup_crit_edge ], [ %call, %do.end ], [ %status.0, %cleanup_netlink_notifier ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfulnl_recv_unsupp(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %nfula) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfulnl_recv_config(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %nfula) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %1)
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nfmsg, align 4
  %res_id = getelementptr inbounds %struct.nfgenmsg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %res_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %res_id, align 2
  %arrayidx = getelementptr ptr, ptr %nfula, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 2
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.then.if.end_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb6
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %call5 = tail call i32 @nf_log_bind_pf(ptr noundef %14, i8 noundef zeroext %9, ptr noundef nonnull @nfulnl_logger) #12
  br label %cleanup94

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  tail call void @nf_log_unbind_pf(ptr noundef %16, i8 noundef zeroext %9) #12
  br label %cleanup94

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr.i, %if.then.if.end_crit_edge ]
  %call8 = tail call fastcc ptr @instance_lookup_get(ptr noundef %call, i16 noundef zeroext %5)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %peer_portid = getelementptr inbounds %struct.nfulnl_instance, ptr %call8, i32 0, i32 9
  %17 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %peer_portid, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %19 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %portid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not = icmp eq i32 %18, %20
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.land.lhs.true.i_crit_edge

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %arrayidx13 = getelementptr ptr, ptr %nfula, i32 6
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %if.end12.if.end34_crit_edge, label %if.then15

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then15:                                        ; preds = %if.end12
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i, align 2
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool19.not = icmp eq i16 %25, 0
  br i1 %tobool19.not, label %if.then15.if.end34_crit_edge, label %land.lhs.true20

if.then15.if.end34_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true20:                                  ; preds = %if.then15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  %26 = load volatile ptr, ptr @nfnl_ct_hook, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true20.if.end34_crit_edge

land.lhs.true20.if.end34_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfnl_unlock(i8 noundef zeroext 4) #12
  %call24 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #12
  tail call void @nfnl_lock(i8 noundef zeroext 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  %27 = load volatile ptr, ptr @nfnl_ct_hook, align 4
  %tobool30.not = icmp eq ptr %27, null
  %. = select i1 %tobool30.not, i32 -95, i32 -11
  br label %out_put

if.end34:                                         ; preds = %land.lhs.true20.if.end34_crit_edge, %if.then15.if.end34_crit_edge, %if.end12.if.end34_crit_edge
  %flags.0 = phi i16 [ %24, %land.lhs.true20.if.end34_crit_edge ], [ %24, %if.then15.if.end34_crit_edge ], [ 0, %if.end12.if.end34_crit_edge ]
  %cmp35.not = icmp eq ptr %cmd.0, null
  br i1 %cmp35.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end34
  %28 = ptrtoint ptr %cmd.0 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cmd.0, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %29, label %if.then37.out_put_crit_edge [
    i8 1, label %sw.bb40
    i8 2, label %sw.bb54
  ]

if.then37.out_put_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put

sw.bb40:                                          ; preds = %if.then37
  br i1 %tobool9.not, label %if.end43, label %sw.bb40.land.lhs.true.i_crit_edge

sw.bb40.land.lhs.true.i_crit_edge:                ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end43:                                         ; preds = %sw.bb40
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 4
  %portid46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %33 = ptrtoint ptr %portid46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %portid46, align 4
  %sk = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %35 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 71
  %37 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %32) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %call.i) #12
  %45 = and i16 %5, 15
  %conv1.i.i.i = zext i16 %45 to i32
  %arrayidx.i.i = getelementptr %struct.nfnl_log_net, ptr %call.i, i32 0, i32 1, i32 %conv1.i.i.i
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end43.for.cond.i.i.preheader_crit_edge

if.end43.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end43
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.preheader

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b42.i.i = load i1, ptr @__instance_lookup.__warned, align 1
  br i1 %.b42.i.i, label %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__instance_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 112, ptr noundef nonnull @.str.9) #12
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %if.end43.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %inst.0.in.i.i = phi ptr [ %inst.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %arrayidx.i.i, %for.cond.i.i.preheader ]
  %46 = ptrtoint ptr %inst.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %inst.0.i.i = load volatile ptr, ptr %inst.0.in.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %inst.0.i.i, null
  br i1 %tobool13.not.i.i, label %if.end.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %group_num14.i.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %group_num14.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %group_num14.i.i, align 4
  %cmp.i.i = icmp eq i16 %48, %5
  br i1 %cmp.i.i, label %for.body.i.i.instance_create.exit.thread_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

for.body.i.i.instance_create.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_create.exit.thread

if.end.i:                                         ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 2848, i32 noundef 164) #16
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.instance_create.exit.thread_crit_edge, label %if.end5.i

if.end.i.instance_create.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_create.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %call6.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %instance_create.exit.thread

if.end8.i:                                        ; preds = %if.end5.i
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %pprev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @instance_create.__key, i16 noundef signext 3) #12
  %use.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use.i, i32 noundef 4) #12
  %52 = ptrtoint ptr %use.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 2, ptr %use.i, align 4
  %timer.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @nfulnl_timer, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @instance_create.__key.12) #12
  %ns_tracker.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 7
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #12
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end8.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !124

if.end8.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end8.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %54 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %.not.i.i.i.i.i.i = icmp sgt i32 %54, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_net_track.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_net_track.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_net_track.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end8.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end8.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %get_net_track.exit.i

get_net_track.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_net_track.exit.i_crit_edge
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i, i32 noundef 2592) #12
  %net14.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %net14.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %32, ptr %net14.i, align 8
  %peer_user_ns.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %peer_user_ns.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %44, ptr %peer_user_ns.i, align 8
  %peer_portid.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 9
  %57 = ptrtoint ptr %peer_portid.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %34, ptr %peer_portid.i, align 4
  %group_num15.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 15
  %58 = ptrtoint ptr %group_num15.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %5, ptr %group_num15.i, align 4
  %qthreshold.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 12
  %59 = ptrtoint ptr %qthreshold.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 100, ptr %qthreshold.i, align 8
  %flushtimeout.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 10
  %60 = ptrtoint ptr %flushtimeout.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 100, ptr %flushtimeout.i, align 8
  %nlbufsiz.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 11
  %61 = ptrtoint ptr %nlbufsiz.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3840, ptr %nlbufsiz.i, align 4
  %copy_mode.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 17
  %62 = ptrtoint ptr %copy_mode.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %copy_mode.i, align 8
  %copy_range.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call7.i.i.i, i32 0, i32 13
  %63 = ptrtoint ptr %copy_range.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 65531, ptr %copy_range.i, align 4
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i, align 4
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %call7.i.i.i, align 8
  %67 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !126
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i48.i = icmp eq ptr %65, null
  br i1 %tobool.not.i48.i, label %get_net_track.exit.i.instance_create.exit_crit_edge, label %do.body49.i.i

get_net_track.exit.i.instance_create.exit_crit_edge: ; preds = %get_net_track.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_create.exit

do.body49.i.i:                                    ; preds = %get_net_track.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  %69 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i, align 4
  br label %instance_create.exit

instance_create.exit.thread:                      ; preds = %if.then7.i, %if.end.i.instance_create.exit.thread_crit_edge, %for.body.i.i.instance_create.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.instance_create.exit.thread_crit_edge ], [ inttoptr (i32 -11 to ptr), %if.then7.i ], [ inttoptr (i32 -17 to ptr), %for.body.i.i.instance_create.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %call.i) #12
  br label %if.then51

instance_create.exit:                             ; preds = %do.body49.i.i, %get_net_track.exit.i.instance_create.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %call.i) #12
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %instance_create.exit.if.then51_crit_edge, label %instance_create.exit.if.end62_crit_edge

instance_create.exit.if.end62_crit_edge:          ; preds = %instance_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

instance_create.exit.if.then51_crit_edge:         ; preds = %instance_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

if.then51:                                        ; preds = %instance_create.exit.if.then51_crit_edge, %instance_create.exit.thread
  %retval.0.i164 = phi ptr [ %retval.0.i.ph, %instance_create.exit.thread ], [ %call7.i.i.i, %instance_create.exit.if.then51_crit_edge ]
  %70 = ptrtoint ptr %retval.0.i164 to i32
  br label %cleanup94

sw.bb54:                                          ; preds = %if.then37
  br i1 %tobool9.not, label %sw.bb54.cleanup94_crit_edge, label %if.end57

sw.bb54.cleanup94_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup94

if.end57:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock_bh(ptr noundef %call) #12
  tail call fastcc void @__instance_destroy(ptr noundef nonnull %call8) #12
  br label %land.lhs.true.i.sink.split

if.else:                                          ; preds = %if.end34
  br i1 %tobool9.not, label %if.else.cleanup94_crit_edge, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.else.cleanup94_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup94

if.end62:                                         ; preds = %if.else.if.end62_crit_edge, %instance_create.exit.if.end62_crit_edge
  %inst.0 = phi ptr [ %call7.i.i.i, %instance_create.exit.if.end62_crit_edge ], [ %call8, %if.else.if.end62_crit_edge ]
  %arrayidx63 = getelementptr ptr, ptr %nfula, i32 2
  %71 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %72, null
  br i1 %tobool64.not, label %if.end62.if.end69_crit_edge, label %if.then65

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then65:                                        ; preds = %if.end62
  %add.ptr.i144 = getelementptr i8, ptr %72, i32 4
  %copy_mode = getelementptr i8, ptr %72, i32 8
  %73 = ptrtoint ptr %copy_mode to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %copy_mode, align 1
  %75 = ptrtoint ptr %add.ptr.i144 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %add.ptr.i144, align 1
  %lock.i145 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i145) #12
  %77 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %74, label %if.then65.nfulnl_set_mode.exit_crit_edge [
    i8 0, label %if.then65.sw.bb.i_crit_edge
    i8 1, label %if.then65.sw.bb.i_crit_edge171
    i8 2, label %sw.bb1.i
  ]

if.then65.sw.bb.i_crit_edge171:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then65.sw.bb.i_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.then65.nfulnl_set_mode.exit_crit_edge:         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfulnl_set_mode.exit

sw.bb.i:                                          ; preds = %if.then65.sw.bb.i_crit_edge, %if.then65.sw.bb.i_crit_edge171
  %copy_mode.i146 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 17
  %78 = ptrtoint ptr %copy_mode.i146 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %74, ptr %copy_mode.i146, align 4
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %copy_mode2.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 17
  %79 = ptrtoint ptr %copy_mode2.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %copy_mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i147 = icmp eq i32 %76, 0
  %80 = tail call i32 @llvm.umin.i32(i32 %76, i32 65531) #12
  %81 = select i1 %cmp.i147, i32 65531, i32 %80
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %.sink.i = phi i32 [ %81, %sw.bb1.i ], [ 0, %sw.bb.i ]
  %copy_range6.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 13
  %82 = ptrtoint ptr %copy_range6.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink.i, ptr %copy_range6.i, align 4
  br label %nfulnl_set_mode.exit

nfulnl_set_mode.exit:                             ; preds = %sw.epilog.sink.split.i, %if.then65.nfulnl_set_mode.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i145) #12
  br label %if.end69

if.end69:                                         ; preds = %nfulnl_set_mode.exit, %if.end62.if.end69_crit_edge
  %arrayidx70 = getelementptr ptr, ptr %nfula, i32 4
  %83 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx70, align 4
  %tobool71.not = icmp eq ptr %84, null
  br i1 %tobool71.not, label %if.end69.if.end75_crit_edge, label %if.then72

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i148 = getelementptr i8, ptr %84, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i148 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i148, align 4
  %lock.i149 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i149) #12
  %flushtimeout.i150 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 10
  %87 = ptrtoint ptr %flushtimeout.i150 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %flushtimeout.i150, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i149) #12
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end69.if.end75_crit_edge
  %arrayidx76 = getelementptr ptr, ptr %nfula, i32 3
  %88 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %89, null
  br i1 %tobool77.not, label %if.end75.if.end82_crit_edge, label %if.then78

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then78:                                        ; preds = %if.end75
  %add.ptr.i.i151 = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i151 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i151, align 4
  %lock.i152 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i152) #12
  %92 = add i32 %91, -131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127233, i32 %92)
  %93 = icmp ult i32 %92, -127233
  br i1 %93, label %if.then78.nfulnl_set_nlbufsiz.exit_crit_edge, label %if.else3.i

if.then78.nfulnl_set_nlbufsiz.exit_crit_edge:     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfulnl_set_nlbufsiz.exit

if.else3.i:                                       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %nlbufsiz4.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 11
  %94 = ptrtoint ptr %nlbufsiz4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %nlbufsiz4.i, align 4
  br label %nfulnl_set_nlbufsiz.exit

nfulnl_set_nlbufsiz.exit:                         ; preds = %if.else3.i, %if.then78.nfulnl_set_nlbufsiz.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i152) #12
  br label %if.end82

if.end82:                                         ; preds = %nfulnl_set_nlbufsiz.exit, %if.end75.if.end82_crit_edge
  %arrayidx83 = getelementptr ptr, ptr %nfula, i32 5
  %95 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %96, null
  br i1 %tobool84.not, label %if.end82.if.end88_crit_edge, label %if.then85

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i154 = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %add.ptr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i.i154, align 4
  %lock.i155 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i155) #12
  %qthreshold.i156 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 12
  %99 = ptrtoint ptr %qthreshold.i156 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %qthreshold.i156, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i155) #12
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end82.if.end88_crit_edge
  %100 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx13, align 4
  %tobool90.not = icmp eq ptr %101, null
  br i1 %tobool90.not, label %if.end88.land.lhs.true.i_crit_edge, label %if.then91

if.end88.land.lhs.true.i_crit_edge:               ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i157 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i157) #12
  %flags1.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0, i32 0, i32 16
  %102 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %flags.0, ptr %flags1.i, align 2
  br label %land.lhs.true.i.sink.split

out_put:                                          ; preds = %if.then37.out_put_crit_edge, %if.then23
  %ret.0 = phi i32 [ %., %if.then23 ], [ -524, %if.then37.out_put_crit_edge ]
  br i1 %tobool9.not, label %out_put.cleanup94_crit_edge, label %out_put.land.lhs.true.i_crit_edge

out_put.land.lhs.true.i_crit_edge:                ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

out_put.cleanup94_crit_edge:                      ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup94

land.lhs.true.i.sink.split:                       ; preds = %if.then91, %if.end57
  %lock.i157.sink = phi ptr [ %lock.i157, %if.then91 ], [ %call, %if.end57 ]
  %inst.1170.ph = phi ptr [ %inst.0, %if.then91 ], [ %call8, %if.end57 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i157.sink) #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.sink.split, %out_put.land.lhs.true.i_crit_edge, %if.end88.land.lhs.true.i_crit_edge, %sw.bb40.land.lhs.true.i_crit_edge, %land.lhs.true.land.lhs.true.i_crit_edge
  %inst.1170 = phi ptr [ %call8, %out_put.land.lhs.true.i_crit_edge ], [ %call8, %sw.bb40.land.lhs.true.i_crit_edge ], [ %call8, %land.lhs.true.land.lhs.true.i_crit_edge ], [ %inst.0, %if.end88.land.lhs.true.i_crit_edge ], [ %inst.1170.ph, %land.lhs.true.i.sink.split ]
  %ret.0168 = phi i32 [ %ret.0, %out_put.land.lhs.true.i_crit_edge ], [ -16, %sw.bb40.land.lhs.true.i_crit_edge ], [ -1, %land.lhs.true.land.lhs.true.i_crit_edge ], [ 0, %if.end88.land.lhs.true.i_crit_edge ], [ 0, %land.lhs.true.i.sink.split ]
  %use.i158 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.1170, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use.i158, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %use.i158, i32 1, i32 3, i32 1) #12
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use.i158, ptr %use.i158, i32 1, ptr elementtype(i32) %use.i158) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup94_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.cleanup94_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup94

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %use.i158, i32 noundef 3) #12
  br label %cleanup94

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %rcu.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.1170, i32 0, i32 18
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @nfulnl_instance_free_rcu) #12
  br label %cleanup94

cleanup94:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup94_crit_edge, %out_put.cleanup94_crit_edge, %if.else.cleanup94_crit_edge, %sw.bb54.cleanup94_crit_edge, %if.then51, %sw.bb6, %sw.bb
  %retval.1 = phi i32 [ %70, %if.then51 ], [ -19, %sw.bb54.cleanup94_crit_edge ], [ -19, %if.else.cleanup94_crit_edge ], [ %ret.0, %out_put.cleanup94_crit_edge ], [ %ret.0168, %if.end5.i.i.i.i.cleanup94_crit_edge ], [ %ret.0168, %if.then10.i.i.i.i ], [ %ret.0168, %if.then.i ], [ %call5, %sw.bb ], [ 0, %sw.bb6 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfnl_log_pernet(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nfnl_log_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !113) #12
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #12
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #12
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_log_bind_pf(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_unbind_pf(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @instance_lookup_get(ptr noundef %log, i16 noundef zeroext %group_num) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 750, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %0 = and i16 %group_num, 15
  %conv1.i.i = zext i16 %0 to i32
  %arrayidx.i = getelementptr %struct.nfnl_log_net, ptr %log, i32 0, i32 1, i32 %conv1.i.i
  %call1.i4 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6, label %rcu_read_lock_bh.exit.for.cond.i.preheader_crit_edge

rcu_read_lock_bh.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true.i6:                                 ; preds = %rcu_read_lock_bh.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i6.for.cond.i.preheader_crit_edge, label %land.lhs.true4.i

land.lhs.true.i6.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i6
  %.b42.i = load i1, ptr @__instance_lookup.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %if.then.i7

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

if.then.i7:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__instance_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 112, ptr noundef nonnull @.str.9) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i7, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i6.for.cond.i.preheader_crit_edge, %rcu_read_lock_bh.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %inst.0.in.i = phi ptr [ %inst.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i, %for.cond.i.preheader ]
  %1 = ptrtoint ptr %inst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %inst.0.i = load volatile ptr, ptr %inst.0.in.i, align 4
  %tobool13.not.i = icmp eq ptr %inst.0.i, null
  br i1 %tobool13.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %group_num14.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0.i, i32 0, i32 15
  %2 = ptrtoint ptr %group_num14.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %group_num14.i, align 4
  %cmp.i = icmp eq i16 %3, %group_num
  br i1 %cmp.i, label %land.lhs.true, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

land.lhs.true:                                    ; preds = %for.body.i
  %use = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.0.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use, i32 noundef 4) #12
  %4 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %use, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %6 = phi i32 [ %5, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 %9, i32 %add.i.i.i, ptr elementtype(i32) %use) #12, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !125

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !125

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %use, i32 noundef 0) #12
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %14 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.not = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %inst.0.i
  br label %if.end

if.end:                                           ; preds = %refcount_inc_not_zero.exit, %for.cond.i.if.end_crit_edge
  %inst.0 = phi ptr [ %spec.select, %refcount_inc_not_zero.exit ], [ null, %for.cond.i.if.end_crit_edge ]
  %call.i8 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i8, label %if.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i11

if.end.rcu_read_unlock_bh.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i11:                                ; preds = %if.end
  %call1.i9 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 761, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock_bh.exit_crit_edge, %if.end.rcu_read_unlock_bh.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  call fastcc void @local_bh_enable() #12
  ret ptr %inst.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfnl_unlock(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfnl_lock(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfulnl_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -64
  %lock = getelementptr i8, ptr %t, i32 -56
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %skb = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nfulnl_send(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.instance_put.exit_crit_edge, label %land.lhs.true.i

if.end.instance_put.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_put.exit

land.lhs.true.i:                                  ; preds = %if.end
  %use.i = getelementptr i8, ptr %t, i32 -12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %use.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use.i, ptr %use.i, i32 1, ptr elementtype(i32) %use.i) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.instance_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.instance_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %use.i, i32 noundef 3) #12
  br label %instance_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %rcu.i = getelementptr i8, ptr %t, i32 92
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @nfulnl_instance_free_rcu) #12
  br label %instance_put.exit

instance_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.instance_put.exit_crit_edge, %if.end.instance_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfulnl_send(ptr nocapture noundef %inst) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 3
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then:                                          ; preds = %entry
  %skb = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 4
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.then.land.rhs_crit_edge

if.then.land.rhs_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

skb_tailroom.exit.i:                              ; preds = %if.then
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 20
  br i1 %cmp.i, label %skb_tailroom.exit.i.land.rhs_crit_edge, label %nlmsg_put.exit, !prof !124

skb_tailroom.exit.i.land.rhs_crit_edge:           ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef 4, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.land.rhs_crit_edge, label %nlmsg_put.exit.if.end45_crit_edge

nlmsg_put.exit.if.end45_crit_edge:                ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

nlmsg_put.exit.land.rhs_crit_edge:                ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %nlmsg_put.exit.land.rhs_crit_edge, %skb_tailroom.exit.i.land.rhs_crit_edge, %if.then.land.rhs_crit_edge
  %.b61 = load i1, ptr @__nfulnl_send.__already_done, align 1
  br i1 %.b61, label %land.rhs.cleanup_crit_edge, label %if.then9, !prof !125

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %land.rhs
  store i1 true, ptr @__nfulnl_send.__already_done, align 1
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then9.skb_tailroom.exit_crit_edge

if.then9.skb_tailroom.exit_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then9.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then9.skb_tailroom.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 359, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %13, i32 noundef %cond.i) #12
  br label %cleanup

cleanup:                                          ; preds = %skb_tailroom.exit, %land.rhs.cleanup_crit_edge
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %21, i32 noundef 0) #12
  br label %out

if.end45:                                         ; preds = %nlmsg_put.exit.if.end45_crit_edge, %entry.if.end45_crit_edge
  %skb46 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 4
  %22 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb46, align 4
  %net = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 6
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %peer_portid = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 9
  %26 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %peer_portid, align 4
  %call47 = tail call i32 @nfnetlink_unicast(ptr noundef %23, ptr noundef %25, i32 noundef %27) #12
  br label %out

out:                                              ; preds = %if.end45, %cleanup
  %28 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qlen, align 4
  %skb49 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 4
  %29 = ptrtoint ptr %skb49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %skb49, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__instance_destroy(ptr noundef %inst) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %inst, i32 0, i32 1
  %2 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev2.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %6 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %lock = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %copy_mode = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 17
  %7 = ptrtoint ptr %copy_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %copy_mode, align 4
  %skb = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 4
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %hlist_del_rcu.exit.if.end_crit_edge, label %if.then

hlist_del_rcu.exit.if.end_crit_edge:              ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nfulnl_flush(ptr noundef %inst)
  br label %if.end

if.end:                                           ; preds = %if.then, %hlist_del_rcu.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %tobool.not.i = icmp eq ptr %inst, null
  br i1 %tobool.not.i, label %if.end.instance_put.exit_crit_edge, label %land.lhs.true.i

if.end.instance_put.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_put.exit

land.lhs.true.i:                                  ; preds = %if.end
  %use.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %use.i, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use.i, ptr %use.i, i32 1, ptr elementtype(i32) %use.i) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.instance_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.instance_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %use.i, i32 noundef 3) #12
  br label %instance_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %rcu.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 18
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @nfulnl_instance_free_rcu) #12
  br label %instance_put.exit

instance_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.instance_put.exit_crit_edge, %if.end.instance_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nfulnl_flush(ptr noundef %inst) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 5
  %call = tail call i32 @del_timer(ptr noundef %timer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %tobool.not.i = icmp eq ptr %inst, null
  %or.cond = or i1 %tobool.not.i, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %use.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %use.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use.i, ptr %use.i, i32 1, ptr elementtype(i32) %use.i) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %use.i, i32 noundef 3) #12
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %rcu.i = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 18
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @nfulnl_instance_free_rcu) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %skb = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 4
  %1 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nfulnl_send(ptr noundef %inst)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfulnl_instance_free_rcu(ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %head, i32 -44
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %ns_tracker = getelementptr i8, ptr %head, i32 -40
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %ns_tracker) #12
  %count.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_net_track.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !125

if.end5.i.i.i.i.i.put_net_track.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_net_track.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef 3) #12
  br label %put_net_track.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @__put_net(ptr noundef %1) #12
  br label %put_net_track.exit

put_net_track.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_net_track.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -156
  tail call void @kfree(ptr noundef %add.ptr) #12
  tail call void @module_put(ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfulnl_rcv_nl_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp = icmp eq i32 %event, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then:                                          ; preds = %land.lhs.true
  tail call void @_raw_spin_lock_bh(ptr noundef %call) #12
  %portid = getelementptr inbounds %struct.netlink_notify, ptr %ptr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.then
  %i.040 = phi i32 [ 0, %if.then ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfnl_log_net, ptr %call, i32 0, i32 1, i32 %i.040
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not38 = icmp eq ptr %5, null
  br i1 %tobool5.not38, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %inst.039 = phi ptr [ %7, %for.inc.land.rhs_crit_edge ], [ %5, %for.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %inst.039 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inst.039, align 4
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid, align 4
  %peer_portid = getelementptr inbounds %struct.nfulnl_instance, ptr %inst.039, i32 0, i32 9
  %10 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %peer_portid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp9 = icmp eq i32 %9, %11
  br i1 %cmp9, label %if.then10, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__instance_destroy(ptr noundef nonnull %inst.039)
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %land.rhs.for.inc_crit_edge
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end22, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %call) #12
  br label %if.end24

if.end24:                                         ; preds = %for.end22, %land.lhs.true.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_log_net_init(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %net)
  %uglygep = getelementptr i8, ptr %call, i32 44
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  tail call void @__raw_spin_lock_init(ptr noundef %call, ptr noundef nonnull @.str.15, ptr noundef nonnull @nfnl_log_net_init.__key, i16 noundef signext 3) #12
  %nf = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39
  %1 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nf, align 8
  %call2 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.16, i16 noundef zeroext 288, ptr noundef %2, ptr noundef nonnull @nful_seq_ops, i32 noundef 12, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns, align 4
  %call3 = tail call i32 @make_kuid(ptr noundef %4, i32 noundef 0) #12
  %5 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns, align 4
  %call6 = tail call i32 @make_kgid(ptr noundef %6, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp.i.not = icmp eq i32 %call3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp.i36.not = icmp eq i32 %call6, -1
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %cmp.i36.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %.fca.0.insert24 = insertvalue [1 x i32] poison, i32 %call3, 0
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call6, 0
  tail call void @proc_set_user(ptr noundef nonnull %call2, [1 x i32] %.fca.0.insert24, [1 x i32] %.fca.0.insert) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfnl_log_net_exit(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %net)
  %nf = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39
  %0 = ptrtoint ptr %nf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.16, ptr noundef %1) #12
  tail call void @nf_log_unset(ptr noundef %net, ptr noundef nonnull @nfulnl_logger) #12
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %if.end30.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfnl_log_net, ptr %call, i32 0, i32 1, i32 %i.045
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.not, label %for.body.if.end30_crit_edge, label %land.rhs

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %for.body
  %.b44 = load i1, ptr @nfnl_log_net_exit.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !125

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfnl_log_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1144, i32 noundef 9, ptr noundef null) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_user(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @seq_start(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 750, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %private.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %rcu_read_lock_bh.exit.get_idx.exit_crit_edge, label %if.end.i.i

rcu_read_lock_bh.exit.get_idx.exit_crit_edge:     ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_idx.exit

if.end.i.i:                                       ; preds = %rcu_read_lock_bh.exit
  %call.i.i = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %3) #12
  %bucket.i.i = getelementptr inbounds %struct.iter_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bucket.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %storemerge28.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nfnl_log_net, ptr %call.i.i, i32 0, i32 1, i32 %storemerge28.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i.i, label %for.inc.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call7.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %if.then5.i.i.get_first.exit.i_crit_edge

if.then5.i.i.get_first.exit.i_crit_edge:          ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_first.exit.i

land.lhs.true.i.i:                                ; preds = %if.then5.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.get_first.exit.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.get_first.exit.i_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_first.exit.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b26.i.i = load i1, ptr @get_first.__warned, align 1
  br i1 %.b26.i.i, label %land.lhs.true11.i.i.get_first.exit.i_crit_edge, label %if.then13.i.i

land.lhs.true11.i.i.get_first.exit.i_crit_edge:   ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_first.exit.i

if.then13.i.i:                                    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1031, ptr noundef nonnull @.str.3) #12
  br label %get_first.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %11 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bucket.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %bucket.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, 16
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.get_idx.exit_crit_edge

for.inc.i.i.get_idx.exit_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_idx.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

get_first.exit.i:                                 ; preds = %if.then13.i.i, %land.lhs.true11.i.i.get_first.exit.i_crit_edge, %land.lhs.true.i.i.get_first.exit.i_crit_edge, %if.then5.i.i.get_first.exit.i_crit_edge
  %tobool.not.i3 = icmp eq ptr %10, null
  br i1 %tobool.not.i3, label %get_first.exit.i.get_idx.exit_crit_edge, label %while.cond.preheader.i

get_first.exit.i.get_idx.exit_crit_edge:          ; preds = %get_first.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_idx.exit

while.cond.preheader.i:                           ; preds = %get_first.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not23.i = icmp eq i64 %5, 0
  br i1 %tobool1.not23.i, label %while.cond.preheader.i.get_idx.exit_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.get_idx.exit_crit_edge:    ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_idx.exit

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add i64 %pos.addr.024.i, -1
  %tobool1.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool1.not.i, label %while.cond.i.get_idx.exit_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.cond.i.get_idx.exit_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_idx.exit

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %head.025.i = phi ptr [ %call2.i, %while.cond.i.land.rhs.i_crit_edge ], [ %10, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %pos.addr.024.i = phi i64 [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ], [ %5, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %call2.i = tail call fastcc ptr @get_next(ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %head.025.i) #12
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %land.rhs.i.get_idx.exit_crit_edge, label %while.cond.i

land.rhs.i.get_idx.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_idx.exit

get_idx.exit:                                     ; preds = %land.rhs.i.get_idx.exit_crit_edge, %while.cond.i.get_idx.exit_crit_edge, %while.cond.preheader.i.get_idx.exit_crit_edge, %get_first.exit.i.get_idx.exit_crit_edge, %for.inc.i.i.get_idx.exit_crit_edge, %rcu_read_lock_bh.exit.get_idx.exit_crit_edge
  %13 = phi ptr [ null, %rcu_read_lock_bh.exit.get_idx.exit_crit_edge ], [ null, %get_first.exit.i.get_idx.exit_crit_edge ], [ %10, %while.cond.preheader.i.get_idx.exit_crit_edge ], [ %call2.i, %while.cond.i.get_idx.exit_crit_edge ], [ null, %land.rhs.i.get_idx.exit_crit_edge ], [ null, %for.inc.i.i.get_idx.exit_crit_edge ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seq_stop(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock_bh.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 761, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock_bh.exit_crit_edge, %entry.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @seq_next(ptr nocapture noundef readonly %s, ptr noundef %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %call1 = tail call fastcc ptr @get_next(ptr noundef %5, ptr noundef %3, ptr noundef %v)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_show(ptr noundef %s, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %group_num = getelementptr inbounds %struct.nfulnl_instance, ptr %v, i32 0, i32 15
  %0 = ptrtoint ptr %group_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %group_num, align 4
  %conv = zext i16 %1 to i32
  %peer_portid = getelementptr inbounds %struct.nfulnl_instance, ptr %v, i32 0, i32 9
  %2 = ptrtoint ptr %peer_portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peer_portid, align 4
  %qlen = getelementptr inbounds %struct.nfulnl_instance, ptr %v, i32 0, i32 3
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 4
  %copy_mode = getelementptr inbounds %struct.nfulnl_instance, ptr %v, i32 0, i32 17
  %6 = ptrtoint ptr %copy_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %copy_mode, align 4
  %conv1 = zext i8 %7 to i32
  %copy_range = getelementptr inbounds %struct.nfulnl_instance, ptr %v, i32 0, i32 13
  %8 = ptrtoint ptr %copy_range to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %copy_range, align 4
  %flushtimeout = getelementptr inbounds %struct.nfulnl_instance, ptr %v, i32 0, i32 10
  %10 = ptrtoint ptr %flushtimeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flushtimeout, align 4
  %use = getelementptr inbounds %struct.nfulnl_instance, ptr %v, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use, i32 noundef 4) #12
  %12 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %use, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %3, i32 noundef %5, i32 noundef %conv1, i32 noundef %9, i32 noundef %11, i32 noundef %13) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_next(ptr noundef %net, ptr nocapture noundef %st, ptr noundef %h) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %h, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @get_next.__warned, align 1
  br i1 %.b37, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @get_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1039, ptr noundef nonnull @.str.3) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %bucket = getelementptr inbounds %struct.iter_state, ptr %st, i32 0, i32 1
  %tobool9.not40 = icmp eq ptr %1, null
  br i1 %tobool9.not40, label %do.end7.while.body_crit_edge, label %do.end7.return_crit_edge

do.end7.return_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %do.end7.while.body_crit_edge
  %2 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %bucket, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp = icmp ugt i32 %inc, 15
  br i1 %cmp, label %while.body.return_crit_edge, label %if.end11

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end11:                                         ; preds = %while.body
  %call12 = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %net)
  %4 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bucket, align 4
  %arrayidx = getelementptr %struct.nfnl_log_net, ptr %call12, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true21:                                  ; preds = %if.end11
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true24

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b3536 = load i1, ptr @get_next.__warned.17, align 1
  br i1 %.b3536, label %land.lhs.true24.cleanup_crit_edge, label %if.then26

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @get_next.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1049, ptr noundef nonnull @.str.3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %cleanup.while.body_crit_edge, label %cleanup.return_crit_edge

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

return:                                           ; preds = %cleanup.return_crit_edge, %while.body.return_crit_edge, %do.end7.return_crit_edge
  %h.addr.0.lcssa = phi ptr [ %1, %do.end7.return_crit_edge ], [ null, %while.body.return_crit_edge ], [ %7, %cleanup.return_crit_edge ]
  ret ptr %h.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_unset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfulnl_log_packet(ptr noundef %net, i8 noundef zeroext %pf, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef readonly %li_user, ptr noundef %prefix) #3 align 64 {
entry:
  %tmp.i64.i = alloca i32, align 4
  %tmp.i62.i = alloca i32, align 4
  %tmp.i60.i = alloca i32, align 4
  %tmp.i58.i = alloca i32, align 4
  %tmp.i53.i = alloca i16, align 2
  %tmp.i51.i = alloca i16, align 2
  %tmp.i40.i = alloca i32, align 4
  %tmp.i38.i = alloca i32, align 4
  %tmp.i25.i = alloca i32, align 4
  %tmp.i23.i = alloca i32, align 4
  %tmp.i21.i = alloca i32, align 4
  %tmp.i19.i = alloca i32, align 4
  %tmp.i14.i = alloca i32, align 4
  %tmp.i12.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %pmsg.i = alloca %struct.nfulnl_msg_packet_hdr, align 4
  %phw.i = alloca %struct.nfulnl_msg_packet_hw, align 2
  %ts.i = alloca %struct.nfulnl_msg_packet_timestamp, align 8
  %kts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_log_pernet(ptr noundef %net)
  %tobool.not = icmp eq ptr %li_user, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %li_user to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %li_user, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %li.0 = phi ptr [ @default_loginfo, %if.else ], [ %li_user, %land.lhs.true.if.end_crit_edge ]
  %u = getelementptr inbounds %struct.nf_loginfo, ptr %li.0, i32 0, i32 1
  %group = getelementptr inbounds %struct.nf_loginfo, ptr %li.0, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %group, align 4
  %call2 = tail call fastcc ptr @instance_lookup_get(ptr noundef %call, i16 noundef zeroext %3)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %prefix, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @strlen(ptr noundef nonnull %prefix) #17
  %add = add i32 %call8, 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %plen.0 = phi i32 [ %add, %if.then7 ], [ 0, %if.end5.if.end9_crit_edge ]
  %4 = add i32 %plen.0, 135
  %add34 = and i32 %4, -4
  %tobool35.not = icmp eq ptr %in, null
  br i1 %tobool35.not, label %if.end9.if.end47_crit_edge, label %land.lhs.true36

if.end9.if.end47_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true36:                                  ; preds = %if.end9
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp.i.not = icmp eq i16 %6, -1
  br i1 %cmp.i.not, label %land.lhs.true36.if.end47_crit_edge, label %if.then39

land.lhs.true36.if.end47_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  %7 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len, align 2
  %conv40 = zext i16 %11 to i32
  %sub.i256 = add nuw nsw i32 %conv40, 7
  %and.i257 = and i32 %sub.i256, 131068
  %add45 = add i32 %add34, 16
  %add46 = add i32 %add45, %and.i257
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %land.lhs.true36.if.end47_crit_edge, %if.end9.if.end47_crit_edge
  %size.0 = phi i32 [ %add46, %if.then39 ], [ %add34, %land.lhs.true36.if.end47_crit_edge ], [ %add34, %if.end9.if.end47_crit_edge ]
  %lock = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %flags = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 16
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool49.not = icmp eq i16 %14, 0
  %add52 = add i32 %size.0, 8
  %spec.select283 = select i1 %tobool49.not, i32 %size.0, i32 %add52
  %15 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool57.not = icmp eq i16 %15, 0
  %add60 = add i32 %spec.select283, 8
  %size.2 = select i1 %tobool57.not, i32 %spec.select283, i32 %add60
  %16 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool65.not = icmp eq i16 %16, 0
  br i1 %tobool65.not, label %if.end47.if.end91_crit_edge, label %if.then66

if.end47.if.end91_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then66:                                        ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfnl_ct_hook to i32))
  %17 = load volatile ptr, ptr @nfnl_ct_hook, align 4
  %call68 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %if.then66.do.end78_crit_edge

if.then66.do.end78_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

land.lhs.true70:                                  ; preds = %if.then66
  %call71 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true70.do.end78_crit_edge, label %land.lhs.true73

land.lhs.true70.do.end78_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %.b253 = load i1, ptr @nfulnl_log_packet.__warned, align 1
  br i1 %.b253, label %land.lhs.true73.do.end78_crit_edge, label %if.then75

land.lhs.true73.do.end78_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

if.then75:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfulnl_log_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 739, ptr noundef nonnull @.str.3) #12
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %land.lhs.true73.do.end78_crit_edge, %land.lhs.true70.do.end78_crit_edge, %if.then66.do.end78_crit_edge
  %cmp80.not = icmp eq ptr %17, null
  br i1 %cmp80.not, label %do.end78.if.end91_crit_edge, label %if.then82

do.end78.if.end91_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then82:                                        ; preds = %do.end78
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %18 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_nfct.i.i, align 8
  %and.i258 = and i32 %19, 7
  %and1.i = and i32 %19, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp84.not = icmp eq i32 %and1.i, 0
  br i1 %cmp84.not, label %if.then82.if.end91_crit_edge, label %if.then86

if.then82.if.end91_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then86:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %20 = inttoptr i32 %and1.i to ptr
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 4
  %call87 = tail call i32 %22(ptr noundef nonnull %20) #12
  %add88 = add i32 %call87, %size.2
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.then82.if.end91_crit_edge, %do.end78.if.end91_crit_edge, %if.end47.if.end91_crit_edge
  %ctinfo.0 = phi i32 [ -1, %if.end47.if.end91_crit_edge ], [ -1, %do.end78.if.end91_crit_edge ], [ %and.i258, %if.then82.if.end91_crit_edge ], [ %and.i258, %if.then86 ]
  %nfnl_ct.0 = phi ptr [ null, %if.end47.if.end91_crit_edge ], [ null, %do.end78.if.end91_crit_edge ], [ %17, %if.then82.if.end91_crit_edge ], [ %17, %if.then86 ]
  %ct.0 = phi ptr [ null, %if.end47.if.end91_crit_edge ], [ null, %do.end78.if.end91_crit_edge ], [ null, %if.then82.if.end91_crit_edge ], [ %20, %if.then86 ]
  %size.3 = phi i32 [ %size.2, %if.end47.if.end91_crit_edge ], [ %size.2, %do.end78.if.end91_crit_edge ], [ %size.2, %if.then82.if.end91_crit_edge ], [ %add88, %if.then86 ]
  %23 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %pf, label %if.end91.if.end101_crit_edge [
    i8 5, label %if.end91.if.then98_crit_edge
    i8 7, label %if.end91.if.then98_crit_edge284
  ]

if.end91.if.then98_crit_edge284:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

if.end91.if.then98_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

if.end91.if.end101_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then98:                                        ; preds = %if.end91.if.then98_crit_edge, %if.end91.if.then98_crit_edge284
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp.i.not.i = icmp eq i16 %25, -1
  br i1 %cmp.i.not.i, label %if.then98.nfulnl_get_bridge_size.exit_crit_edge, label %if.end.i

if.then98.nfulnl_get_bridge_size.exit_crit_edge:  ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfulnl_get_bridge_size.exit

if.end.i:                                         ; preds = %if.then98
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %26 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool1.not.inv.i = icmp slt i32 %bf.load.i, 0
  %spec.select.i = select i1 %tobool1.not.inv.i, i32 20, i32 0
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %25)
  %cmp.i259 = icmp ugt i16 %28, %25
  br i1 %cmp.i259, label %if.then11.i, label %if.end.i.nfulnl_get_bridge_size.exit_crit_edge

if.end.i.nfulnl_get_bridge_size.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfulnl_get_bridge_size.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv9.i = zext i16 %25 to i32
  %conv.i = zext i16 %28 to i32
  %sub.i260 = sub nsw i32 7, %conv9.i
  %sub.i.i = add nsw i32 %sub.i260, %conv.i
  %and.i.i = and i32 %sub.i.i, -4
  %add17.i = add nsw i32 %and.i.i, %spec.select.i
  br label %nfulnl_get_bridge_size.exit

nfulnl_get_bridge_size.exit:                      ; preds = %if.then11.i, %if.end.i.nfulnl_get_bridge_size.exit_crit_edge, %if.then98.nfulnl_get_bridge_size.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then98.nfulnl_get_bridge_size.exit_crit_edge ], [ %add17.i, %if.then11.i ], [ %spec.select.i, %if.end.i.nfulnl_get_bridge_size.exit_crit_edge ]
  %add100 = add i32 %retval.0.i, %size.3
  br label %if.end101

if.end101:                                        ; preds = %nfulnl_get_bridge_size.exit, %if.end91.if.end101_crit_edge
  %size.4 = phi i32 [ %add100, %nfulnl_get_bridge_size.exit ], [ %size.3, %if.end91.if.end101_crit_edge ]
  %qthreshold102 = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 12
  %29 = ptrtoint ptr %qthreshold102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qthreshold102, align 4
  %qthreshold104 = getelementptr inbounds %struct.nf_loginfo, ptr %li.0, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %qthreshold104 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %qthreshold104, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool105.not = icmp eq i16 %32, 0
  %conv109 = zext i16 %32 to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %conv109)
  %qthreshold.0 = select i1 %tobool105.not, i32 %30, i32 %33
  %copy_mode = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 17
  %34 = ptrtoint ptr %copy_mode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %copy_mode, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %35, label %if.end101.land.lhs.true.i279_crit_edge [
    i8 1, label %if.end101.sw.epilog_crit_edge
    i8 0, label %if.end101.sw.epilog_crit_edge285
    i8 2, label %sw.bb119
  ]

if.end101.sw.epilog_crit_edge285:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end101.sw.epilog_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end101.land.lhs.true.i279_crit_edge:           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i279

sw.bb119:                                         ; preds = %if.end101
  %copy_range = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 13
  %37 = ptrtoint ptr %copy_range to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %copy_range, align 4
  %flags121 = getelementptr inbounds %struct.nf_loginfo, ptr %li.0, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %flags121 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags121, align 4
  %41 = and i16 %40, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool124.not = icmp eq i16 %41, 0
  br i1 %tobool124.not, label %sw.bb119.if.end132_crit_edge, label %land.lhs.true125

sw.bb119.if.end132_crit_edge:                     ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

land.lhs.true125:                                 ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %u, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %38)
  br label %if.end132

if.end132:                                        ; preds = %land.lhs.true125, %sw.bb119.if.end132_crit_edge
  %data_len.0 = phi i32 [ %38, %sw.bb119.if.end132_crit_edge ], [ %44, %land.lhs.true125 ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %data_len.0, i32 %46)
  %sub.i261 = add i32 %47, 7
  %and.i262 = and i32 %sub.i261, -4
  %add139 = add i32 %and.i262, %size.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end132, %if.end101.sw.epilog_crit_edge, %if.end101.sw.epilog_crit_edge285
  %data_len.2 = phi i32 [ %47, %if.end132 ], [ 0, %if.end101.sw.epilog_crit_edge ], [ 0, %if.end101.sw.epilog_crit_edge285 ]
  %size.5 = phi i32 [ %add139, %if.end132 ], [ %size.4, %if.end101.sw.epilog_crit_edge ], [ %size.4, %if.end101.sw.epilog_crit_edge285 ]
  %skb141 = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 4
  %48 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb141, align 4
  %tobool142.not = icmp eq ptr %49, null
  br i1 %tobool142.not, label %sw.epilog.if.then152_crit_edge, label %land.lhs.true143

sw.epilog.if.then152_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then152

land.lhs.true143:                                 ; preds = %sw.epilog
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not.i = icmp eq i32 %51, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %land.lhs.true143.skb_tailroom.exit_crit_edge

land.lhs.true143.skb_tailroom.exit_crit_edge:     ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #14
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %land.lhs.true143.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %land.lhs.true143.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.5, i32 %cond.i)
  %cmp146 = icmp ugt i32 %size.5, %cond.i
  br i1 %cmp146, label %if.then148, label %skb_tailroom.exit.if.end149_crit_edge

skb_tailroom.exit.if.end149_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then148:                                       ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__nfulnl_flush(ptr noundef nonnull %call2)
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %skb_tailroom.exit.if.end149_crit_edge
  %56 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load ptr, ptr %skb141, align 4
  %tobool151.not = icmp eq ptr %.pr, null
  br i1 %tobool151.not, label %if.end149.if.then152_crit_edge, label %if.end149.if.end159_crit_edge

if.end149.if.end159_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

if.end149.if.then152_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then152

if.then152:                                       ; preds = %if.end149.if.then152_crit_edge, %sw.epilog.if.then152_crit_edge
  %nlbufsiz = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 11
  %57 = ptrtoint ptr %nlbufsiz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nlbufsiz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %size.5)
  %cmp.i263 = icmp ule i32 %58, %size.5
  %59 = tail call i32 @llvm.umax.i32(i32 %58, i32 %size.5) #12
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %59, i32 noundef 10784, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %brmerge.i = or i1 %cmp.i263, %tobool.not.i
  br i1 %brmerge.i, label %if.then152.nfulnl_alloc_skb.exit_crit_edge, label %if.then2.i

if.then152.nfulnl_alloc_skb.exit_crit_edge:       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfulnl_alloc_skb.exit

if.then2.i:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  %call.i1.i = tail call ptr @__alloc_skb(i32 noundef %size.5, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  br label %nfulnl_alloc_skb.exit

nfulnl_alloc_skb.exit:                            ; preds = %if.then2.i, %if.then152.nfulnl_alloc_skb.exit_crit_edge
  %skb.0.i = phi ptr [ %call.i.i, %if.then152.nfulnl_alloc_skb.exit_crit_edge ], [ %call.i1.i, %if.then2.i ]
  %60 = ptrtoint ptr %skb141 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %skb.0.i, ptr %skb141, align 4
  %tobool156.not = icmp eq ptr %skb.0.i, null
  br i1 %tobool156.not, label %nfulnl_alloc_skb.exit.land.lhs.true.i279_crit_edge, label %nfulnl_alloc_skb.exit.if.end159_crit_edge

nfulnl_alloc_skb.exit.if.end159_crit_edge:        ; preds = %nfulnl_alloc_skb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

nfulnl_alloc_skb.exit.land.lhs.true.i279_crit_edge: ; preds = %nfulnl_alloc_skb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i279

if.end159:                                        ; preds = %nfulnl_alloc_skb.exit.if.end159_crit_edge, %if.end149.if.end159_crit_edge
  %qlen = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 3
  %61 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qlen, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %qlen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmsg.i) #12
  %63 = getelementptr inbounds %struct.nfulnl_msg_packet_hdr, ptr %pmsg.i, i32 0, i32 1
  %64 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skb141, align 4
  %group_num.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 15
  %66 = ptrtoint ptr %group_num.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %group_num.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 7
  %68 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not.i.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end159.__build_packet_message.exit_crit_edge

if.end159.__build_packet_message.exit_crit_edge:  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %__build_packet_message.exit

skb_tailroom.exit.i.i.i:                          ; preds = %if.end159
  %tail.i264 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 16
  %70 = ptrtoint ptr %tail.i264 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i264, align 8
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 17
  %72 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.__build_packet_message.exit_crit_edge, label %nlmsg_put.exit.i.i, !prof !124

skb_tailroom.exit.i.i.i.__build_packet_message.exit_crit_edge: ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__build_packet_message.exit

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = tail call ptr @__nlmsg_put(ptr noundef %65, i32 noundef 0, i32 noundef 0, i32 noundef 1024, i32 noundef 4, i32 noundef 0) #12
  %tobool.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i, label %nlmsg_put.exit.i.i.__build_packet_message.exit_crit_edge, label %if.end.i265

nlmsg_put.exit.i.i.__build_packet_message.exit_crit_edge: ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__build_packet_message.exit

if.end.i265:                                      ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %74 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %pf, ptr %add.ptr.i.i.i.i, align 2
  %version1.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17
  %75 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %version1.i.i.i, align 1
  %res_id2.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 18
  %76 = ptrtoint ptr %res_id2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %67, ptr %res_id2.i.i.i, align 2
  %77 = ptrtoint ptr %pmsg.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %pmsg.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %78 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %protocol.i, align 8
  store i16 %79, ptr %pmsg.i, align 4
  %conv4.i = trunc i32 %hooknum to i8
  %80 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv4.i, ptr %63, align 2
  %81 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %skb141, align 4
  %call6.i = call i32 @nla_put(ptr noundef %82, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %pmsg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i265.do.body277.i_crit_edge

if.end.i265.do.body277.i_crit_edge:               ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end9.i:                                        ; preds = %if.end.i265
  br i1 %tobool6.not, label %if.end9.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end9.i.if.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %83 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb141, align 4
  %call12.i = call i32 @nla_put(ptr noundef %84, i32 noundef 10, i32 noundef %plen.0, ptr noundef nonnull %prefix) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true.i.do.body277.i_crit_edge

land.lhs.true.i.do.body277.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %if.end9.i.if.end15.i_crit_edge
  br i1 %tobool35.not, label %if.end15.i.if.end47.i_crit_edge, label %if.then17.i

if.end15.i.if.end47.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %pf)
  %cmp.i266 = icmp eq i8 %pf, 7
  %85 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %skb141, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %in, i32 0, i32 17
  %87 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ifindex.i, align 4
  br i1 %cmp.i266, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %89 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %tmp.i.i, align 4
  %call.i.i267 = call i32 @nla_put(ptr noundef %86, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i267)
  %tobool23.not.i = icmp eq i32 %call.i.i267, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i, label %if.then20.i.do.body277.i_crit_edge

if.then20.i.do.body277.i_crit_edge:               ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

lor.lhs.false.i:                                  ; preds = %if.then20.i
  %90 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %skb141, align 4
  %call25.i = call fastcc ptr @br_port_get_rcu(ptr noundef nonnull %in) #12
  %92 = ptrtoint ptr %call25.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call25.i, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  %ifindex26.i = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 17
  %96 = ptrtoint ptr %ifindex26.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ifindex26.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i12.i) #12
  %98 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %tmp.i12.i, align 4
  %call.i13.i = call i32 @nla_put(ptr noundef %91, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i12.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i12.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool28.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool28.not.i, label %if.end47.thread.i, label %lor.lhs.false.i.do.body277.i_crit_edge

lor.lhs.false.i.do.body277.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.else.i:                                        ; preds = %if.then17.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i14.i) #12
  %99 = ptrtoint ptr %tmp.i14.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %88, ptr %tmp.i14.i, align 4
  %call.i15.i = call i32 @nla_put(ptr noundef %86, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i14.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i14.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool34.not.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.else.i.do.body277.i_crit_edge

if.else.i.do.body277.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end36.i:                                       ; preds = %if.else.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %100 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %102 = and i8 %101, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.i.not.i.i.i16.i = icmp eq i8 %102, 0
  br i1 %tobool.i.not.i.i.i16.i, label %if.end36.i.if.end47.i_crit_edge, label %nf_bridge_info_get.exit.i.i

if.end36.i.if.end47.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

nf_bridge_info_get.exit.i.i:                      ; preds = %if.end36.i
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %103 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %extensions.i.i.i.i, align 8
  %offset.i.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %offset.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %106 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i17.i = getelementptr i8, ptr %104, i32 %shl.i.i.i.i
  %tobool.not.i18.i = icmp eq ptr %add.ptr.i.i.i17.i, null
  br i1 %tobool.not.i18.i, label %nf_bridge_info_get.exit.i.i.if.end47.i_crit_edge, label %nf_bridge_get_physindev.exit.i

nf_bridge_info_get.exit.i.i.if.end47.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

nf_bridge_get_physindev.exit.i:                   ; preds = %nf_bridge_info_get.exit.i.i
  %physindev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i17.i, i32 0, i32 2
  %107 = ptrtoint ptr %physindev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %physindev.i.i, align 4
  %tobool38.not.i = icmp eq ptr %108, null
  br i1 %tobool38.not.i, label %nf_bridge_get_physindev.exit.i.if.end47.i_crit_edge, label %land.lhs.true39.i

nf_bridge_get_physindev.exit.i.if.end47.i_crit_edge: ; preds = %nf_bridge_get_physindev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

land.lhs.true39.i:                                ; preds = %nf_bridge_get_physindev.exit.i
  %109 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %skb141, align 4
  %ifindex41.i = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 17
  %111 = ptrtoint ptr %ifindex41.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ifindex41.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i19.i) #12
  %113 = ptrtoint ptr %tmp.i19.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %tmp.i19.i, align 4
  %call.i20.i = call i32 @nla_put(ptr noundef %110, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i19.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i19.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool43.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true39.i.if.end47.i_crit_edge, label %land.lhs.true39.i.do.body277.i_crit_edge

land.lhs.true39.i.do.body277.i_crit_edge:         ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

land.lhs.true39.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.end47.i:                                       ; preds = %land.lhs.true39.i.if.end47.i_crit_edge, %nf_bridge_get_physindev.exit.i.if.end47.i_crit_edge, %nf_bridge_info_get.exit.i.i.if.end47.i_crit_edge, %if.end36.i.if.end47.i_crit_edge, %if.end15.i.if.end47.i_crit_edge
  %tobool48.not.i = icmp eq ptr %out, null
  br i1 %tobool48.not.i, label %if.end47.i.if.end88.i_crit_edge, label %if.then49.i

if.end47.i.if.end88.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.end47.thread.i:                                ; preds = %lor.lhs.false.i
  %tobool48.not78.i = icmp eq ptr %out, null
  br i1 %tobool48.not78.i, label %if.end47.thread.i.if.end88.i_crit_edge, label %if.end47.thread.i.if.then53.i_crit_edge

if.end47.thread.i.if.then53.i_crit_edge:          ; preds = %if.end47.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53.i

if.end47.thread.i.if.end88.i_crit_edge:           ; preds = %if.end47.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.then49.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %pf)
  %cmp51.i = icmp eq i8 %pf, 7
  br i1 %cmp51.i, label %if.then49.i.if.then53.i_crit_edge, label %if.else68.i

if.then49.i.if.then53.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53.i

if.then53.i:                                      ; preds = %if.then49.i.if.then53.i_crit_edge, %if.end47.thread.i.if.then53.i_crit_edge
  %114 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %skb141, align 4
  %ifindex55.i = getelementptr inbounds %struct.net_device, ptr %out, i32 0, i32 17
  %116 = ptrtoint ptr %ifindex55.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ifindex55.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i21.i) #12
  %118 = ptrtoint ptr %tmp.i21.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %tmp.i21.i, align 4
  %call.i22.i = call i32 @nla_put(ptr noundef %115, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i21.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i21.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool57.not.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool57.not.i, label %lor.lhs.false58.i, label %if.then53.i.do.body277.i_crit_edge

if.then53.i.do.body277.i_crit_edge:               ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

lor.lhs.false58.i:                                ; preds = %if.then53.i
  %119 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %skb141, align 4
  %call60.i = call fastcc ptr @br_port_get_rcu(ptr noundef nonnull %out) #12
  %121 = ptrtoint ptr %call60.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call60.i, align 8
  %dev62.i = getelementptr inbounds %struct.net_bridge, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %dev62.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev62.i, align 4
  %ifindex63.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 17
  %125 = ptrtoint ptr %ifindex63.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ifindex63.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i23.i) #12
  %127 = ptrtoint ptr %tmp.i23.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %tmp.i23.i, align 4
  %call.i24.i = call i32 @nla_put(ptr noundef %120, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i23.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i23.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool65.not.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool65.not.i, label %lor.lhs.false58.i.if.end88.i_crit_edge, label %lor.lhs.false58.i.do.body277.i_crit_edge

lor.lhs.false58.i.do.body277.i_crit_edge:         ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

lor.lhs.false58.i.if.end88.i_crit_edge:           ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.else68.i:                                      ; preds = %if.then49.i
  %128 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %skb141, align 4
  %ifindex70.i = getelementptr inbounds %struct.net_device, ptr %out, i32 0, i32 17
  %130 = ptrtoint ptr %ifindex70.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ifindex70.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i25.i) #12
  %132 = ptrtoint ptr %tmp.i25.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %tmp.i25.i, align 4
  %call.i26.i = call i32 @nla_put(ptr noundef %129, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i25.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i25.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool72.not.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.else68.i.do.body277.i_crit_edge

if.else68.i.do.body277.i_crit_edge:               ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end74.i:                                       ; preds = %if.else68.i
  %active_extensions.i.i.i.i27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %133 = ptrtoint ptr %active_extensions.i.i.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %active_extensions.i.i.i.i27.i, align 1
  %135 = and i8 %134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.i.not.i.i.i28.i = icmp eq i8 %135, 0
  br i1 %tobool.i.not.i.i.i28.i, label %if.end74.i.if.end88.i_crit_edge, label %nf_bridge_info_get.exit.i35.i

if.end74.i.if.end88.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

nf_bridge_info_get.exit.i35.i:                    ; preds = %if.end74.i
  %extensions.i.i.i29.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %136 = ptrtoint ptr %extensions.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %extensions.i.i.i29.i, align 8
  %offset.i.i.i30.i = getelementptr inbounds %struct.skb_ext, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %offset.i.i.i30.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %offset.i.i.i30.i, align 1
  %conv.i.i.i31.i = zext i8 %139 to i32
  %shl.i.i.i32.i = shl nuw nsw i32 %conv.i.i.i31.i, 3
  %add.ptr.i.i.i33.i = getelementptr i8, ptr %137, i32 %shl.i.i.i32.i
  %tobool.not.i34.i = icmp eq ptr %add.ptr.i.i.i33.i, null
  br i1 %tobool.not.i34.i, label %nf_bridge_info_get.exit.i35.i.if.end88.i_crit_edge, label %nf_bridge_get_physoutdev.exit.i

nf_bridge_info_get.exit.i35.i.if.end88.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

nf_bridge_get_physoutdev.exit.i:                  ; preds = %nf_bridge_info_get.exit.i35.i
  %physoutdev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i33.i, i32 0, i32 3
  %140 = ptrtoint ptr %physoutdev.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %physoutdev.i.i, align 4
  %tobool76.not.i = icmp eq ptr %141, null
  br i1 %tobool76.not.i, label %nf_bridge_get_physoutdev.exit.i.if.end88.i_crit_edge, label %land.lhs.true77.i

nf_bridge_get_physoutdev.exit.i.if.end88.i_crit_edge: ; preds = %nf_bridge_get_physoutdev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

land.lhs.true77.i:                                ; preds = %nf_bridge_get_physoutdev.exit.i
  %142 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %skb141, align 4
  %ifindex79.i = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 17
  %144 = ptrtoint ptr %ifindex79.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ifindex79.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i38.i) #12
  %146 = ptrtoint ptr %tmp.i38.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %tmp.i38.i, align 4
  %call.i39.i = call i32 @nla_put(ptr noundef %143, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i38.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i38.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool81.not.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool81.not.i, label %land.lhs.true77.i.if.end88.i_crit_edge, label %land.lhs.true77.i.do.body277.i_crit_edge

land.lhs.true77.i.do.body277.i_crit_edge:         ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

land.lhs.true77.i.if.end88.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

if.end88.i:                                       ; preds = %land.lhs.true77.i.if.end88.i_crit_edge, %nf_bridge_get_physoutdev.exit.i.if.end88.i_crit_edge, %nf_bridge_info_get.exit.i35.i.if.end88.i_crit_edge, %if.end74.i.if.end88.i_crit_edge, %lor.lhs.false58.i.if.end88.i_crit_edge, %if.end47.thread.i.if.end88.i_crit_edge, %if.end47.i.if.end88.i_crit_edge
  %147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool89.not.i = icmp eq i32 %149, 0
  br i1 %tobool89.not.i, label %if.end88.i.if.end95.i_crit_edge, label %land.lhs.true90.i

if.end88.i.if.end95.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

land.lhs.true90.i:                                ; preds = %if.end88.i
  %150 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %skb141, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i40.i) #12
  %152 = ptrtoint ptr %tmp.i40.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %149, ptr %tmp.i40.i, align 4
  %call.i41.i = call i32 @nla_put(ptr noundef %151, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i40.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i40.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool93.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool93.not.i, label %land.lhs.true90.i.if.end95.i_crit_edge, label %land.lhs.true90.i.do.body277.i_crit_edge

land.lhs.true90.i.do.body277.i_crit_edge:         ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

land.lhs.true90.i.if.end95.i_crit_edge:           ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

if.end95.i:                                       ; preds = %land.lhs.true90.i.if.end95.i_crit_edge, %if.end88.i.if.end95.i_crit_edge
  br i1 %tobool35.not, label %if.end95.i.if.end154.i_crit_edge, label %land.lhs.true97.i

if.end95.i.if.end154.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i

land.lhs.true97.i:                                ; preds = %if.end95.i
  %153 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %tobool98.not.i = icmp eq ptr %155, null
  br i1 %tobool98.not.i, label %land.lhs.true97.i.land.lhs.true124.i_crit_edge, label %land.lhs.true99.i

land.lhs.true97.i.land.lhs.true124.i_crit_edge:   ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true124.i

land.lhs.true99.i:                                ; preds = %land.lhs.true97.i
  %mac_header.i.i268 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %156 = ptrtoint ptr %mac_header.i.i268 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %mac_header.i.i268, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %157)
  %cmp.i.not.i269 = icmp eq i16 %157, -1
  br i1 %cmp.i.not.i269, label %land.lhs.true99.i.land.lhs.true124.i_crit_edge, label %land.lhs.true102.i

land.lhs.true99.i.land.lhs.true124.i_crit_edge:   ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true124.i

land.lhs.true102.i:                               ; preds = %land.lhs.true99.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %158 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %network_header.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %159, i16 %157)
  %cmp104.not.i = icmp eq i16 %159, %157
  br i1 %cmp104.not.i, label %land.lhs.true102.i.land.lhs.true124.i_crit_edge, label %if.then106.i

land.lhs.true102.i.land.lhs.true124.i_crit_edge:  ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true124.i

if.then106.i:                                     ; preds = %land.lhs.true102.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %phw.i) #12
  %160 = getelementptr inbounds %struct.nfulnl_msg_packet_hw, ptr %phw.i, i32 0, i32 2
  %161 = call ptr @memset(ptr %phw.i, i32 0, i32 12)
  %header_ops.i.i = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 49
  %162 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %header_ops.i.i, align 4
  %tobool.not.i44.i = icmp eq ptr %163, null
  br i1 %tobool.not.i44.i, label %if.then106.i.cleanup118.thread.i_crit_edge, label %lor.lhs.false.i.i

if.then106.i.cleanup118.thread.i_crit_edge:       ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup118.thread.i

lor.lhs.false.i.i:                                ; preds = %if.then106.i
  %parse.i.i = getelementptr inbounds %struct.header_ops, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %parse.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %parse.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %165, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.cleanup118.thread.i_crit_edge, label %dev_parse_header.exit.i

lor.lhs.false.i.i.cleanup118.thread.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup118.thread.i

dev_parse_header.exit.i:                          ; preds = %lor.lhs.false.i.i
  %call.i45.i = call i32 %165(ptr noundef %skb, ptr noundef %160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %cmp108.i = icmp sgt i32 %call.i45.i, 0
  br i1 %cmp108.i, label %if.then110.i, label %dev_parse_header.exit.i.cleanup118.thread.i_crit_edge

dev_parse_header.exit.i.cleanup118.thread.i_crit_edge: ; preds = %dev_parse_header.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup118.thread.i

if.then110.i:                                     ; preds = %dev_parse_header.exit.i
  %conv111.i = trunc i32 %call.i45.i to i16
  %166 = ptrtoint ptr %phw.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv111.i, ptr %phw.i, align 2
  %167 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %skb141, align 4
  %call113.i = call i32 @nla_put(ptr noundef %168, i32 noundef 8, i32 noundef 12, ptr noundef nonnull %phw.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %tobool114.not.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.not.i, label %if.then110.i.cleanup118.thread.i_crit_edge, label %cleanup118.i

if.then110.i.cleanup118.thread.i_crit_edge:       ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup118.thread.i

cleanup118.thread.i:                              ; preds = %if.then110.i.cleanup118.thread.i_crit_edge, %dev_parse_header.exit.i.cleanup118.thread.i_crit_edge, %lor.lhs.false.i.i.cleanup118.thread.i_crit_edge, %if.then106.i.cleanup118.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %phw.i) #12
  br label %land.lhs.true124.i

cleanup118.i:                                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %phw.i) #12
  br label %do.body277.i

land.lhs.true124.i:                               ; preds = %cleanup118.thread.i, %land.lhs.true102.i.land.lhs.true124.i_crit_edge, %land.lhs.true99.i.land.lhs.true124.i_crit_edge, %land.lhs.true97.i.land.lhs.true124.i_crit_edge
  %mac_header.i48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %169 = ptrtoint ptr %mac_header.i48.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %mac_header.i48.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %170)
  %cmp.i49.not.i = icmp eq i16 %170, -1
  br i1 %cmp.i49.not.i, label %land.lhs.true124.i.if.end154.i_crit_edge, label %if.then127.i

land.lhs.true124.i.if.end154.i_crit_edge:         ; preds = %land.lhs.true124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i

if.then127.i:                                     ; preds = %land.lhs.true124.i
  %171 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %skb141, align 4
  %173 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %153, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 32
  %175 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %type.i, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i51.i) #12
  %177 = ptrtoint ptr %tmp.i51.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %tmp.i51.i, align 2
  %call.i52.i = call i32 @nla_put(ptr noundef %172, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i51.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i51.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool130.not.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool130.not.i, label %lor.lhs.false131.i, label %if.then127.i.do.body277.i_crit_edge

if.then127.i.do.body277.i_crit_edge:              ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

lor.lhs.false131.i:                               ; preds = %if.then127.i
  %178 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %skb141, align 4
  %180 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %153, align 8
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %181, i32 0, i32 19
  %182 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %hard_header_len.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i53.i) #12
  %184 = ptrtoint ptr %tmp.i53.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %tmp.i53.i, align 2
  %call.i54.i = call i32 @nla_put(ptr noundef %179, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %tmp.i53.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i53.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool134.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool134.not.i, label %if.end136.i, label %lor.lhs.false131.i.do.body277.i_crit_edge

lor.lhs.false131.i.do.body277.i_crit_edge:        ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end136.i:                                      ; preds = %lor.lhs.false131.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %185 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %head.i.i, align 8
  %187 = ptrtoint ptr %mac_header.i48.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %mac_header.i48.i, align 2
  %conv.i56.i = zext i16 %188 to i32
  %add.ptr.i.i = getelementptr i8, ptr %186, i32 %conv.i56.i
  %189 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %153, align 8
  %type138.i = getelementptr inbounds %struct.net_device, ptr %190, i32 0, i32 32
  %191 = ptrtoint ptr %type138.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %type138.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 776, i16 %192)
  %cmp140.i = icmp eq i16 %192, 776
  %spec.select.idx.i = select i1 %cmp140.i, i32 -14, i32 0
  %spec.select.i270 = getelementptr i8, ptr %add.ptr.i.i, i32 %spec.select.idx.i
  %cmp144.not.i = icmp ult ptr %spec.select.i270, %186
  br i1 %cmp144.not.i, label %if.end136.i.if.end154.i_crit_edge, label %land.lhs.true146.i

if.end136.i.if.end154.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i

land.lhs.true146.i:                               ; preds = %if.end136.i
  %193 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %skb141, align 4
  %hard_header_len148.i = getelementptr inbounds %struct.net_device, ptr %190, i32 0, i32 19
  %195 = ptrtoint ptr %hard_header_len148.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %hard_header_len148.i, align 2
  %conv149.i = zext i16 %196 to i32
  %call150.i = call i32 @nla_put(ptr noundef %194, i32 noundef 16, i32 noundef %conv149.i, ptr noundef %spec.select.i270) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %tobool151.not.i = icmp eq i32 %call150.i, 0
  br i1 %tobool151.not.i, label %land.lhs.true146.i.if.end154.i_crit_edge, label %land.lhs.true146.i.do.body277.i_crit_edge

land.lhs.true146.i.do.body277.i_crit_edge:        ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

land.lhs.true146.i.if.end154.i_crit_edge:         ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i

if.end154.i:                                      ; preds = %land.lhs.true146.i.if.end154.i_crit_edge, %if.end136.i.if.end154.i_crit_edge, %land.lhs.true124.i.if.end154.i_crit_edge, %if.end95.i.if.end154.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %hooknum)
  %cmp155.i = icmp ult i32 %hooknum, 3
  br i1 %cmp155.i, label %land.lhs.true157.i, label %if.end154.i.if.end170.i_crit_edge

if.end154.i.if.end170.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170.i

land.lhs.true157.i:                               ; preds = %if.end154.i
  %197 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %197, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %199)
  %tobool158.not.i = icmp eq i64 %199, 0
  br i1 %tobool158.not.i, label %land.lhs.true157.i.if.end170.i_crit_edge, label %if.then159.i

land.lhs.true157.i.if.end170.i_crit_edge:         ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170.i

if.then159.i:                                     ; preds = %land.lhs.true157.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12
  %200 = getelementptr inbounds %struct.nfulnl_msg_packet_timestamp, ptr %ts.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kts.i) #12
  %201 = call ptr @memset(ptr %kts.i, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %kts.i, i64 noundef %199) #12
  %202 = ptrtoint ptr %kts.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %kts.i, align 8
  %204 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %203, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %kts.i, i32 0, i32 1
  %205 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %206, 1000
  %conv160.i = sext i32 %div.i to i64
  %207 = ptrtoint ptr %200 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %conv160.i, ptr %200, align 8
  %208 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %skb141, align 4
  %call162.i = call i32 @nla_put(ptr noundef %209, i32 noundef 3, i32 noundef 16, ptr noundef nonnull %ts.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %tobool163.not.i = icmp eq i32 %call162.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kts.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12
  br i1 %tobool163.not.i, label %if.then159.i.if.end170.i_crit_edge, label %if.then159.i.do.body277.i_crit_edge

if.then159.i.do.body277.i_crit_edge:              ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.then159.i.if.end170.i_crit_edge:               ; preds = %if.then159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then159.i.if.end170.i_crit_edge, %land.lhs.true157.i.if.end170.i_crit_edge, %if.end154.i.if.end170.i_crit_edge
  %210 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %tobool171.not.i = icmp eq ptr %212, null
  br i1 %tobool171.not.i, label %if.end170.i.if.end207.i_crit_edge, label %land.lhs.true172.i

if.end170.i.if.end207.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207.i

land.lhs.true172.i:                               ; preds = %if.end170.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %212, i32 0, i32 4
  %213 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i57.i = zext i8 %214 to i32
  %shl.i.i = shl nuw i32 1, %conv.i57.i
  %and.i.i271 = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i271)
  %tobool.i.not.i272 = icmp eq i32 %and.i.i271, 0
  br i1 %tobool.i.not.i272, label %land.lhs.true172.i.if.end207.i_crit_edge, label %if.then175.i

land.lhs.true172.i.if.end207.i_crit_edge:         ; preds = %land.lhs.true172.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207.i

if.then175.i:                                     ; preds = %land.lhs.true172.i
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %212, i32 0, i32 50
  call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock.i) #12
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %212, i32 0, i32 71
  %215 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %sk_socket.i, align 8
  %tobool176.not.i = icmp eq ptr %216, null
  br i1 %tobool176.not.i, label %if.then175.i.if.else204.i_crit_edge, label %land.lhs.true177.i

if.then175.i.if.else204.i_crit_edge:              ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else204.i

land.lhs.true177.i:                               ; preds = %if.then175.i
  %file.i = getelementptr inbounds %struct.socket, ptr %216, i32 0, i32 3
  %217 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %file.i, align 4
  %tobool179.not.i = icmp eq ptr %218, null
  br i1 %tobool179.not.i, label %land.lhs.true177.i.if.else204.i_crit_edge, label %if.then180.i

land.lhs.true177.i.if.else204.i_crit_edge:        ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else204.i

if.then180.i:                                     ; preds = %land.lhs.true177.i
  %f_cred.i = getelementptr inbounds %struct.file, ptr %218, i32 0, i32 12
  %219 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %f_cred.i, align 8
  %peer_user_ns.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 8
  %221 = ptrtoint ptr %peer_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %peer_user_ns.i, align 4
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %220, i32 0, i32 10
  %223 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %.unpack.i = load i32, ptr %fsuid.i, align 4
  %224 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call184.i = call i32 @from_kuid_munged(ptr noundef %222, [1 x i32] %224) #12
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %220, i32 0, i32 11
  %225 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %.unpack1.i = load i32, ptr %fsgid.i, align 4
  %226 = insertvalue [1 x i32] undef, i32 %.unpack1.i, 0
  %call186.i = call i32 @from_kgid_munged(ptr noundef %222, [1 x i32] %226) #12
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #12
  %227 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %skb141, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i58.i) #12
  %229 = ptrtoint ptr %tmp.i58.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %call184.i, ptr %tmp.i58.i, align 4
  %call.i59.i = call i32 @nla_put(ptr noundef %228, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i58.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i58.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool190.not.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool190.not.i, label %lor.lhs.false191.i, label %if.then180.i.do.body277.i_crit_edge

if.then180.i.do.body277.i_crit_edge:              ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

lor.lhs.false191.i:                               ; preds = %if.then180.i
  %230 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %skb141, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i60.i) #12
  %232 = ptrtoint ptr %tmp.i60.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %call186.i, ptr %tmp.i60.i, align 4
  %call.i61.i = call i32 @nla_put(ptr noundef %231, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i60.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i60.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool194.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool194.not.i, label %lor.lhs.false191.i.if.end207.i_crit_edge, label %lor.lhs.false191.i.do.body277.i_crit_edge

lor.lhs.false191.i.do.body277.i_crit_edge:        ; preds = %lor.lhs.false191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

lor.lhs.false191.i.if.end207.i_crit_edge:         ; preds = %lor.lhs.false191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207.i

if.else204.i:                                     ; preds = %land.lhs.true177.i.if.else204.i_crit_edge, %if.then175.i.if.else204.i_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #12
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.else204.i, %lor.lhs.false191.i.if.end207.i_crit_edge, %land.lhs.true172.i.if.end207.i_crit_edge, %if.end170.i.if.end207.i_crit_edge
  %233 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %flags, align 2
  %235 = and i16 %234, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %235)
  %tobool209.not.i = icmp eq i16 %235, 0
  br i1 %tobool209.not.i, label %if.end207.i.if.end215.i_crit_edge, label %land.lhs.true210.i

if.end207.i.if.end215.i_crit_edge:                ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215.i

land.lhs.true210.i:                               ; preds = %if.end207.i
  %236 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %skb141, align 4
  %seq.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 14
  %238 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %seq.i, align 4
  %inc.i = add i32 %239, 1
  store i32 %inc.i, ptr %seq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i62.i) #12
  %240 = ptrtoint ptr %tmp.i62.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %tmp.i62.i, align 4
  %call.i63.i = call i32 @nla_put(ptr noundef %237, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i62.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i62.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool213.not.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool213.not.i, label %land.lhs.true210.i.if.end215.i_crit_edge, label %land.lhs.true210.i.do.body277.i_crit_edge

land.lhs.true210.i.do.body277.i_crit_edge:        ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

land.lhs.true210.i.if.end215.i_crit_edge:         ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215.i

if.end215.i:                                      ; preds = %land.lhs.true210.i.if.end215.i_crit_edge, %if.end207.i.if.end215.i_crit_edge
  %241 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %flags, align 2
  %243 = and i16 %242, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool219.not.i = icmp eq i16 %243, 0
  br i1 %tobool219.not.i, label %if.end215.i.if.end226.i_crit_edge, label %land.lhs.true220.i

if.end215.i.if.end226.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end226.i

land.lhs.true220.i:                               ; preds = %if.end215.i
  %244 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %skb141, align 4
  %global_seq.i = getelementptr inbounds %struct.nfnl_log_net, ptr %call, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %global_seq.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  call void @llvm.prefetch.p0(ptr %global_seq.i, i32 1, i32 3, i32 1) #12
  %246 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %global_seq.i, ptr %global_seq.i, i32 1, ptr elementtype(i32) %global_seq.i) #12, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %246, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i64.i) #12
  %247 = ptrtoint ptr %tmp.i64.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %asmresult.i.i.i.i.i, ptr %tmp.i64.i, align 4
  %call.i65.i = call i32 @nla_put(ptr noundef %245, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i64.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i64.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool224.not.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool224.not.i, label %land.lhs.true220.i.if.end226.i_crit_edge, label %land.lhs.true220.i.do.body277.i_crit_edge

land.lhs.true220.i.do.body277.i_crit_edge:        ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

land.lhs.true220.i.if.end226.i_crit_edge:         ; preds = %land.lhs.true220.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end226.i

if.end226.i:                                      ; preds = %land.lhs.true220.i.if.end226.i_crit_edge, %if.end215.i.if.end226.i_crit_edge
  %tobool227.not.i = icmp eq ptr %ct.0, null
  br i1 %tobool227.not.i, label %if.end226.i.if.end234.i_crit_edge, label %land.lhs.true228.i

if.end226.i.if.end234.i_crit_edge:                ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end234.i

land.lhs.true228.i:                               ; preds = %if.end226.i
  %build.i = getelementptr inbounds %struct.nfnl_ct_hook, ptr %nfnl_ct.0, i32 0, i32 1
  %248 = ptrtoint ptr %build.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %build.i, align 4
  %250 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %skb141, align 4
  %call230.i = call i32 %249(ptr noundef %251, ptr noundef nonnull %ct.0, i32 noundef %ctinfo.0, i16 noundef zeroext 18, i16 noundef zeroext 19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230.i)
  %cmp231.i = icmp slt i32 %call230.i, 0
  br i1 %cmp231.i, label %land.lhs.true228.i.do.body277.i_crit_edge, label %land.lhs.true228.i.if.end234.i_crit_edge

land.lhs.true228.i.if.end234.i_crit_edge:         ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end234.i

land.lhs.true228.i.do.body277.i_crit_edge:        ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end234.i:                                      ; preds = %land.lhs.true228.i.if.end234.i_crit_edge, %if.end226.i.if.end234.i_crit_edge
  %252 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %pf, label %if.end234.i.if.end247.i_crit_edge [
    i8 5, label %if.end234.i.land.lhs.true242.i_crit_edge
    i8 7, label %if.end234.i.land.lhs.true242.i_crit_edge286
  ]

if.end234.i.land.lhs.true242.i_crit_edge286:      ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true242.i

if.end234.i.land.lhs.true242.i_crit_edge:         ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true242.i

if.end234.i.if.end247.i_crit_edge:                ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247.i

land.lhs.true242.i:                               ; preds = %if.end234.i.land.lhs.true242.i_crit_edge, %if.end234.i.land.lhs.true242.i_crit_edge286
  %call243.i = call fastcc i32 @nfulnl_put_bridge(ptr noundef nonnull %call2, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243.i)
  %cmp244.i = icmp slt i32 %call243.i, 0
  br i1 %cmp244.i, label %land.lhs.true242.i.do.body277.i_crit_edge, label %land.lhs.true242.i.if.end247.i_crit_edge

land.lhs.true242.i.if.end247.i_crit_edge:         ; preds = %land.lhs.true242.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247.i

land.lhs.true242.i.do.body277.i_crit_edge:        ; preds = %land.lhs.true242.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end247.i:                                      ; preds = %land.lhs.true242.i.if.end247.i_crit_edge, %if.end234.i.if.end247.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.2)
  %tobool248.not.i = icmp eq i32 %data_len.2, 0
  br i1 %tobool248.not.i, label %if.end247.i.if.end274.i_crit_edge, label %if.then249.i

if.end247.i.if.end274.i_crit_edge:                ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274.i

if.then249.i:                                     ; preds = %if.end247.i
  %253 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %skb141, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %254, i32 0, i32 7
  %255 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.i.not.i.i = icmp eq i32 %256, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.then249.i.skb_tailroom.exit.i_crit_edge

if.then249.i.skb_tailroom.exit.i_crit_edge:       ; preds = %if.then249.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.then249.i
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %254, i32 0, i32 17
  %257 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %254, i32 0, i32 16
  %259 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %258 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %260 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.then249.i.skb_tailroom.exit.i_crit_edge
  %cond.i66.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.then249.i.skb_tailroom.exit.i_crit_edge ]
  %sub.i67.i = add i32 %data_len.2, 7
  %and.i68.i = and i32 %sub.i67.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i66.i, i32 %and.i68.i)
  %cmp254.i = icmp slt i32 %cond.i66.i, %and.i68.i
  br i1 %cmp254.i, label %skb_tailroom.exit.i.do.body277.i_crit_edge, label %if.end257.i

skb_tailroom.exit.i.do.body277.i_crit_edge:       ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end257.i:                                      ; preds = %skb_tailroom.exit.i
  %call260.i = call ptr @skb_put(ptr noundef %254, i32 noundef %and.i68.i) #12
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %call260.i, i32 0, i32 1
  %261 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 9, ptr %nla_type.i, align 2
  %262 = trunc i32 %data_len.2 to i16
  %conv261.i = add i16 %262, 4
  %263 = ptrtoint ptr %call260.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv261.i, ptr %call260.i, align 2
  %add.ptr.i71.i = getelementptr i8, ptr %call260.i, i32 4
  %call263.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %add.ptr.i71.i, i32 noundef %data_len.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.i)
  %tobool264.not.i = icmp eq i32 %call263.i, 0
  br i1 %tobool264.not.i, label %if.end257.i.if.end274.i_crit_edge, label %do.body.i

if.end257.i.if.end274.i_crit_edge:                ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274.i

do.body.i:                                        ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nfnetlink_log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

if.end274.i:                                      ; preds = %if.end257.i.if.end274.i_crit_edge, %if.end247.i.if.end274.i_crit_edge
  %264 = ptrtoint ptr %skb141 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %skb141, align 4
  %tail276.i = getelementptr inbounds %struct.sk_buff, ptr %265, i32 0, i32 16
  %266 = ptrtoint ptr %tail276.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %tail276.i, align 8
  %sub.ptr.lhs.cast.i273 = ptrtoint ptr %267 to i32
  %sub.ptr.sub.i274 = sub i32 %sub.ptr.lhs.cast.i273, %sub.ptr.rhs.cast.i.i.i.i
  %268 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %sub.ptr.sub.i274, ptr %call3.i.i.i, align 4
  br label %__build_packet_message.exit

do.body277.i:                                     ; preds = %skb_tailroom.exit.i.do.body277.i_crit_edge, %land.lhs.true242.i.do.body277.i_crit_edge, %land.lhs.true228.i.do.body277.i_crit_edge, %land.lhs.true220.i.do.body277.i_crit_edge, %land.lhs.true210.i.do.body277.i_crit_edge, %lor.lhs.false191.i.do.body277.i_crit_edge, %if.then180.i.do.body277.i_crit_edge, %if.then159.i.do.body277.i_crit_edge, %land.lhs.true146.i.do.body277.i_crit_edge, %lor.lhs.false131.i.do.body277.i_crit_edge, %if.then127.i.do.body277.i_crit_edge, %cleanup118.i, %land.lhs.true90.i.do.body277.i_crit_edge, %land.lhs.true77.i.do.body277.i_crit_edge, %if.else68.i.do.body277.i_crit_edge, %lor.lhs.false58.i.do.body277.i_crit_edge, %if.then53.i.do.body277.i_crit_edge, %land.lhs.true39.i.do.body277.i_crit_edge, %if.else.i.do.body277.i_crit_edge, %lor.lhs.false.i.do.body277.i_crit_edge, %if.then20.i.do.body277.i_crit_edge, %land.lhs.true.i.do.body277.i_crit_edge, %if.end.i265.do.body277.i_crit_edge
  %call278.i = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278.i)
  %tobool279.not.i = icmp eq i32 %call278.i, 0
  br i1 %tobool279.not.i, label %do.body277.i.__build_packet_message.exit_crit_edge, label %do.end283.i

do.body277.i.__build_packet_message.exit_crit_edge: ; preds = %do.body277.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__build_packet_message.exit

do.end283.i:                                      ; preds = %do.body277.i
  call void @__sanitizer_cov_trace_pc() #14
  %call284.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %__build_packet_message.exit

__build_packet_message.exit:                      ; preds = %do.end283.i, %do.body277.i.__build_packet_message.exit_crit_edge, %if.end274.i, %nlmsg_put.exit.i.i.__build_packet_message.exit_crit_edge, %skb_tailroom.exit.i.i.i.__build_packet_message.exit_crit_edge, %if.end159.__build_packet_message.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmsg.i) #12
  %269 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %qthreshold.0)
  %cmp162.not = icmp ult i32 %270, %qthreshold.0
  br i1 %cmp162.not, label %if.else165, label %if.then164

if.then164:                                       ; preds = %__build_packet_message.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @__nfulnl_flush(ptr noundef nonnull %call2)
  br label %land.lhs.true.i279

if.else165:                                       ; preds = %__build_packet_message.exit
  %timer = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 5
  %pprev.i.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 5, i32 0, i32 1
  %271 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i275.not = icmp eq ptr %272, null
  br i1 %tobool.not.i.i275.not, label %if.then168, label %if.else165.land.lhs.true.i279_crit_edge

if.else165.land.lhs.true.i279_crit_edge:          ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i279

if.then168:                                       ; preds = %if.else165
  %use.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %use.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %use.i, i32 1, i32 3, i32 1) #12
  %273 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use.i, ptr %use.i, i32 1, ptr elementtype(i32) %use.i) #12, !srcloc !123
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %273, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then168.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !124

if.then168.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then168
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %274 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %274)
  %.not.i.i.i.i = icmp sgt i32 %274, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.instance_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.instance_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %instance_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then168.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then168.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %use.i, i32 noundef %.sink.i.i.i.i) #12
  br label %instance_get.exit

instance_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.instance_get.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %275 = load volatile i32, ptr @jiffies, align 128
  %flushtimeout = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 10
  %276 = ptrtoint ptr %flushtimeout to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %flushtimeout, align 4
  %mul = mul i32 %277, 100
  %div = udiv i32 %mul, 100
  %add169 = add i32 %div, %275
  %expires = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 5, i32 1
  %278 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %add169, ptr %expires, align 4
  call void @add_timer(ptr noundef %timer) #12
  br label %land.lhs.true.i279

land.lhs.true.i279:                               ; preds = %instance_get.exit, %if.else165.land.lhs.true.i279_crit_edge, %if.then164, %nfulnl_alloc_skb.exit.land.lhs.true.i279_crit_edge, %if.end101.land.lhs.true.i279_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %use.i277 = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 2
  %call.i.i.i.i.i.i278 = call zeroext i1 @__kasan_check_write(ptr noundef %use.i277, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  call void @llvm.prefetch.p0(ptr %use.i277, i32 1, i32 3, i32 1) #12
  %279 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use.i277, ptr %use.i277, i32 1, ptr elementtype(i32) %use.i277) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %279, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i280 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i280, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %use.i277, i32 noundef 3) #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i279
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %rcu.i = getelementptr inbounds %struct.nfulnl_instance, ptr %call2, i32 0, i32 18
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @nfulnl_instance_free_rcu) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @br_port_get_rcu(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %0 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_handler_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 416, ptr noundef nonnull @.str.3) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfulnl_put_bridge(ptr nocapture noundef readonly %inst, ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  %tmp.i50 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not = icmp eq i16 %1, -1
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool1.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool1.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %skb3 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 4
  %3 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb3, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %4, i32 noundef 32788, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool5.not56 = icmp eq ptr %6, null
  %tobool5.not = select i1 %cmp.i.i, i1 true, i1 %tobool5.not56
  br i1 %tobool5.not, label %if.then2.nla_put_failure_crit_edge, label %if.end7

if.then2.nla_put_failure_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end7:                                          ; preds = %if.then2
  %7 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb3, align 4
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %9 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_tci, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %8, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end7.nla_put_failure_crit_edge

if.end7.nla_put_failure_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end7
  %12 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb3, align 4
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %14 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_proto, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i50) #12
  %16 = ptrtoint ptr %tmp.i50 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %tmp.i50, align 2
  %call.i51 = call i32 @nla_put(ptr noundef %13, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i50) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool13.not = icmp eq i32 %call.i51, 0
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb3, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %6, align 2
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %if.end.if.end18_crit_edge
  %22 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i, align 2
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %23)
  %cmp = icmp ugt i16 %25, %23
  br i1 %cmp, label %if.then21, label %if.end18.return_crit_edge

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then21:                                        ; preds = %if.end18
  %conv = zext i16 %23 to i32
  %conv19 = zext i16 %25 to i32
  %sub = sub nsw i32 %conv19, %conv
  %skb26 = getelementptr inbounds %struct.nfulnl_instance, ptr %inst, i32 0, i32 4
  %26 = ptrtoint ptr %skb26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb26, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 8
  %add.ptr.i = getelementptr i8, ptr %29, i32 %conv
  %call28 = call i32 @nla_put(ptr noundef %27, i32 noundef 21, i32 noundef %sub, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then21.return_crit_edge, label %if.then21.nla_put_failure_crit_edge

if.then21.nla_put_failure_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then21.return_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

nla_put_failure:                                  ; preds = %if.then21.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.end7.nla_put_failure_crit_edge, %if.then2.nla_put_failure_crit_edge
  br label %return

return:                                           ; preds = %nla_put_failure, %if.then21.return_crit_edge, %if.end18.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %entry.return_crit_edge ], [ 0, %if.then21.return_crit_edge ], [ 0, %if.end18.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_log_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__UNIQUE_ID_description667, !1, !"__UNIQUE_ID_description667", i1 false, i1 false}
!1 = !{!"../net/netfilter/nfnetlink_log.c", i32 1196, i32 1}
!2 = !{ptr @__UNIQUE_ID_author668, !3, !"__UNIQUE_ID_author668", i1 false, i1 false}
!3 = !{!"../net/netfilter/nfnetlink_log.c", i32 1197, i32 1}
!4 = !{ptr @__UNIQUE_ID_file669, !5, !"__UNIQUE_ID_file669", i1 false, i1 false}
!5 = !{!"../net/netfilter/nfnetlink_log.c", i32 1198, i32 1}
!6 = !{ptr @__UNIQUE_ID_license670, !5, !"__UNIQUE_ID_license670", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias671, !8, !"__UNIQUE_ID_alias671", i1 false, i1 false}
!8 = !{!"../net/netfilter/nfnetlink_log.c", i32 1199, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias672, !10, !"__UNIQUE_ID_alias672", i1 false, i1 false}
!10 = !{!"../net/netfilter/nfnetlink_log.c", i32 1200, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias673, !12, !"__UNIQUE_ID_alias673", i1 false, i1 false}
!12 = !{!"../net/netfilter/nfnetlink_log.c", i32 1201, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias674, !14, !"__UNIQUE_ID_alias674", i1 false, i1 false}
!14 = !{!"../net/netfilter/nfnetlink_log.c", i32 1202, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias675, !16, !"__UNIQUE_ID_alias675", i1 false, i1 false}
!16 = !{!"../net/netfilter/nfnetlink_log.c", i32 1203, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias676, !18, !"__UNIQUE_ID_alias676", i1 false, i1 false}
!18 = !{!"../net/netfilter/nfnetlink_log.c", i32 1204, i32 1}
!19 = !{ptr @__initcall__kmod_nfnetlink_log__677_1206_nfnetlink_log_init6, !20, !"__initcall__kmod_nfnetlink_log__677_1206_nfnetlink_log_init6", i1 false, i1 false}
!20 = !{!"../net/netfilter/nfnetlink_log.c", i32 1206, i32 1}
!21 = !{ptr @__exitcall_nfnetlink_log_fini, !22, !"__exitcall_nfnetlink_log_fini", i1 false, i1 false}
!22 = !{!"../net/netfilter/nfnetlink_log.c", i32 1207, i32 1}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/nfnetlink_log.c", i32 1007, i32 11}
!25 = !{ptr @nfulnl_subsys, !26, !"nfulnl_subsys", i1 false, i1 false}
!26 = !{!"../net/netfilter/nfnetlink_log.c", i32 1006, i32 41}
!27 = !{ptr @nfulnl_cb, !28, !"nfulnl_cb", i1 false, i1 false}
!28 = !{!"../net/netfilter/nfnetlink_log.c", i32 992, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/nfnetlink_log.c", i32 912, i32 4}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nfnl_log_net_id, !43, !"nfnl_log_net_id", i1 false, i1 false}
!43 = !{!"../net/netfilter/nfnetlink_log.c", i32 87, i32 21}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/netfilter/nfnetlink_log.c", i32 112, i32 2}
!49 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!53 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @instance_create.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../net/netfilter/nfnetlink_log.c", i32 185, i32 2}
!56 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @instance_create.__key.12, !58, !"__key", i1 false, i1 false}
!58 = !{!"../net/netfilter/nfnetlink_log.c", i32 189, i32 2}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../net/netfilter/nfnetlink_log.c", i32 358, i32 7}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nfula_cfg_policy, !64, !"nfula_cfg_policy", i1 false, i1 false}
!64 = !{!"../net/netfilter/nfnetlink_log.c", i32 863, i32 32}
!65 = !{ptr @nfulnl_rtnl_notifier, !66, !"nfulnl_rtnl_notifier", i1 false, i1 false}
!66 = !{!"../net/netfilter/nfnetlink_log.c", i32 846, i32 30}
!67 = !{ptr @nfnl_log_net_ops, !68, !"nfnl_log_net_ops", i1 false, i1 false}
!68 = !{!"../net/netfilter/nfnetlink_log.c", i32 1147, i32 33}
!69 = !{ptr @nfnl_log_net_init.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../net/netfilter/nfnetlink_log.c", i32 1118, i32 2}
!71 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/netfilter/nfnetlink_log.c", i32 1121, i32 9}
!74 = !{ptr @nful_seq_ops, !75, !"nful_seq_ops", i1 false, i1 false}
!75 = !{!"../net/netfilter/nfnetlink_log.c", i32 1098, i32 36}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../net/netfilter/nfnetlink_log.c", i32 1031, i32 11}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/netfilter/nfnetlink_log.c", i32 1039, i32 6}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/netfilter/nfnetlink_log.c", i32 1049, i32 7}
!82 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/netfilter/nfnetlink_log.c", i32 1089, i32 16}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../net/netfilter/nfnetlink_log.c", i32 1144, i32 3}
!86 = !{ptr @nfulnl_logger, !87, !"nfulnl_logger", i1 false, i1 false}
!87 = !{!"../net/netfilter/nfnetlink_log.c", i32 856, i32 25}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/netfilter/nfnetlink_log.c", i32 739, i32 13}
!90 = !{ptr @default_loginfo, !91, !"default_loginfo", i1 false, i1 false}
!91 = !{!"../net/netfilter/nfnetlink_log.c", i32 661, i32 32}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/netfilter/nfnetlink_log.c", i32 657, i32 2}
!94 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @__build_packet_message._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @__build_packet_message._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../net/netfilter/../bridge/br_private.h", i32 416, i32 9}
!99 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.22, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/netfilter/nfnetlink_log.c", i32 1160, i32 3}
!102 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nfnetlink_log_init._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @nfnetlink_log_init._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.25, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/netfilter/nfnetlink_log.c", i32 1167, i32 3}
!107 = !{ptr @nfnetlink_log_init._entry.24, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @nfnetlink_log_init._entry_ptr.26, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/netfilter/nfnetlink_log.c", i32 1173, i32 3}
!111 = !{ptr @nfnetlink_log_init._entry.27, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @nfnetlink_log_init._entry_ptr.29, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148369696, i64 2148369728, i64 2148369757, i64 2148369791, i64 2148369822, i64 2148369845}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2151976113}
!127 = !{i64 2148457721}
!128 = !{i64 2148372161, i64 2148372193, i64 2148372222, i64 2148372256, i64 2148372287, i64 2148372310}
!129 = !{i64 2149333835}
!130 = !{i64 2149384325}
!131 = !{i64 2149384591}
!132 = !{i64 852699, i64 852723, i64 852744, i64 852761, i64 852778}
!133 = !{i64 2148453601}
!134 = !{i64 2148368886, i64 2148368918, i64 2148368947, i64 2148368981, i64 2148369012, i64 2148369035}
!135 = !{i64 2148453830}
!136 = !{i64 2158434223, i64 2158434717, i64 2158434260, i64 2158434316, i64 2158434350, i64 2158434374, i64 2158434415, i64 2158434436, i64 2158434464, i64 2158434498}
