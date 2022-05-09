; ModuleID = '/llk/IR_all_yes/net/l2tp/l2tp_ip6.c_pt.bc'
source_filename = "../net/l2tp/l2tp_ip6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.151, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.151 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.6 }
%union.anon.6 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.static_key_false_deferred = type { %struct.static_key_false, i32, %struct.delayed_work }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.112 }
%struct.atomic_t = type { i32 }
%union.anon.112 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.125, [0 x i32], %union.anon.126, i16, i16, %union.anon.127, %struct.refcount_struct, [0 x i32], %union.anon.128 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { %struct.hlist_node }
%union.anon.127 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.128 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.129, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.130, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.131, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.129 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.130 = type { ptr }
%union.anon.131 = type { ptr }
%struct.sk_buff_head = type { %union.anon.114, i32, %struct.spinlock }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.21 }
%union.anon.21 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sockaddr_l2tpip6 = type { i16, i16, i32, %struct.in6_addr, i32, i32 }
%struct.l2tp_ip6_sock = type { %struct.inet_sock, i32, i32, %struct.ipv6_pinfo }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.157, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.28 = type { ptr, ptr, %union.anon.29 }
%union.anon.29 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.134, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.134 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.27, %union.anon.30, %union.anon.31, [48 x i8], %union.anon.32, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.34, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.27 = type { %struct.anon.28 }
%union.anon.30 = type { ptr }
%union.anon.31 = type { i64 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i32, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.36, i32, i32, i32, i16, i16, %union.anon.38, i32, %union.anon.39, %union.anon.40, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.36 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.39 = type { i32 }
%union.anon.40 = type { i16 }
%struct.l2tp_session = type { i32, i32, ptr, i32, i32, [8 x i8], i32, [8 x i8], i32, i16, i16, i32, i32, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.hlist_node, %struct.refcount_struct, [32 x i8], [16 x i8], i8, i32, i32, i32, %struct.l2tp_stats, %struct.hlist_node, ptr, ptr, ptr, [0 x i8] }
%struct.l2tp_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
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
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.124, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.124 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.anon.2 = type { i16, i16 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.132, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.103, %union.anon.104 }
%union.anon.103 = type { ptr }
%union.anon.104 = type { i64 }
%union.anon.132 = type { ptr }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.159, i32, i32, ptr }
%union.anon.159 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@l2tp_ip6_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 115, ptr @l2tp_ip6_prot, ptr @l2tp_ip6_ops, i8 0 }, [40 x i8] zeroinitializer }, align 32
@l2tp_ip6_protocol = internal global %struct.inet6_protocol { ptr null, ptr null, ptr @l2tp_ip6_recv, ptr null, i32 0 }, section ".data..read_mostly", align 4
@l2tp_ip6_prot = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr @l2tp_ip6_close, ptr null, ptr @l2tp_ip6_connect, ptr @l2tp_ip6_disconnect, ptr null, ptr @l2tp_ioctl, ptr @l2tp_ip6_open, ptr @l2tp_ip6_destroy_sock, ptr null, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr null, ptr @l2tp_ip6_sendmsg, ptr @l2tp_ip6_recvmsg, ptr null, ptr @l2tp_ip6_bind, ptr null, ptr @l2tp_ip6_backlog_recv, ptr null, ptr null, ptr @l2tp_ip6_hash, ptr @l2tp_ip6_unhash, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1264, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.151 zeroinitializer, ptr null, [32 x i8] c"L2TP/IPv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_l2tp_ip6__574_800_l2tp_ip6_init6 = internal global ptr @l2tp_ip6_init, section ".initcall6.init", align 4
@__exitcall_l2tp_ip6_exit = internal global ptr @l2tp_ip6_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file575 = internal constant [32 x i8] c"l2tp_ip6.file=net/l2tp/l2tp_ip6\00", section ".modinfo", align 1
@__UNIQUE_ID_license576 = internal constant [21 x i8] c"l2tp_ip6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author577 = internal constant [51 x i8] c"l2tp_ip6.author=Chris Elston <celston@katalix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description578 = internal constant [52 x i8] c"l2tp_ip6.description=L2TP IP encapsulation for IPv6\00", section ".modinfo", align 1
@__UNIQUE_ID_version579 = internal constant [21 x i8] c"l2tp_ip6.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l2tp_ip6\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias580 = internal constant [42 x i8] c"l2tp_ip6.alias=net-pf-10-proto-2-type-115\00", section ".modinfo", align 1
@__UNIQUE_ID_alias581 = internal constant [35 x i8] c"l2tp_ip6.alias=net-pf-10-proto-115\00", section ".modinfo", align 1
@l2tp_ip6_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 10, ptr null, ptr @inet6_release, ptr @inet6_bind, ptr @inet_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @l2tp_ip6_getname, ptr @datagram_poll, ptr @inet6_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@l2tp_ip6_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2tp_ip6_lock\00", [18 x i8] zeroinitializer }, align 32
@l2tp_ip6_bind_table = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@txopt_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/ipv6.h\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@l2tp_ip6_table = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@l2tp_ip6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016l2tp_ip6: L2TP IP encapsulation support for IPv6 (L2TPv3)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2tp_ip6_init\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/l2tp/l2tp_ip6.c\00", [44 x i8] zeroinitializer }, align 32
@l2tp_ip6_init._entry_ptr = internal global ptr @l2tp_ip6_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 10]
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"l2tp_ip6_protosw\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 759, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"l2tp_ip6_prot\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 714, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 806, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"l2tp_ip6_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 734, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"l2tp_ip6_lock\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 45, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"l2tp_ip6_bind_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 47, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 1011, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 729, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"../include/net/ipv6.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 379, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 695, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 723, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 271, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"l2tp_ip6_table\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 46, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [23 x i8] c"../net/l2tp/l2tp_ip6.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 774, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias580, ptr @__UNIQUE_ID_alias581, ptr @__UNIQUE_ID_author577, ptr @__UNIQUE_ID_description578, ptr @__UNIQUE_ID_file575, ptr @__UNIQUE_ID_license576, ptr @__UNIQUE_ID_version579, ptr @__exitcall_l2tp_ip6_exit, ptr @__initcall__kmod_l2tp_ip6__574_800_l2tp_ip6_init6, ptr @__modver_attr, ptr @l2tp_ip6_exit, ptr @l2tp_ip6_init._entry, ptr @l2tp_ip6_init._entry_ptr, ptr @l2tp_ip6_protosw, ptr @l2tp_ip6_prot, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @l2tp_ip6_ops, ptr @l2tp_ip6_lock, ptr @.str.3, ptr @l2tp_ip6_bind_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @l2tp_ip6_table, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip6_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip6_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip6_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip6_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip6_bind_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip6_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_ip6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @l2tp_ip6_protosw) #10
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @l2tp_ip6_protocol, i8 noundef zeroext 115) #10
  tail call void @proto_unregister(ptr noundef nonnull @l2tp_ip6_prot) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  %call1 = tail call i32 @proto_register(ptr noundef nonnull @l2tp_ip6_prot, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @l2tp_ip6_protocol, i8 noundef zeroext 115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %out1

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @l2tp_ip6_protosw) #10
  br label %cleanup

out1:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @proto_unregister(ptr noundef nonnull @l2tp_ip6_prot) #10
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %out1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dgram_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_getname(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %peer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 10, ptr %uaddr, align 4
  %l2tp_flowinfo = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 2
  %7 = ptrtoint ptr %l2tp_flowinfo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %l2tp_flowinfo, align 4
  %l2tp_scope_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 4
  %8 = ptrtoint ptr %l2tp_scope_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %l2tp_scope_id, align 4
  %l2tp_unused = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 1
  %9 = ptrtoint ptr %l2tp_unused to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %l2tp_unused, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %inet6_sk.exit
  %peer_conn_id = getelementptr inbounds %struct.l2tp_ip6_sock, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %peer_conn_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %peer_conn_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %l2tp_conn_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 5
  %12 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %l2tp_conn_id, align 4
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 3
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %13 = call ptr @memcpy(ptr %l2tp_addr, ptr %skc_v6_daddr, i32 16)
  %sndflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %14 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %sndflow, align 2
  %15 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not = icmp eq i16 %15, 0
  br i1 %tobool6.not, label %if.end.if.end20_crit_edge, label %if.then7

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %16 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flow_label, align 4
  %18 = ptrtoint ptr %l2tp_flowinfo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %l2tp_flowinfo, align 4
  br label %if.end20

if.else:                                          ; preds = %inet6_sk.exit
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %arrayidx2.i = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %22, %20
  %arrayidx4.i = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %24
  %arrayidx7.i = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  %l2tp_addr13 = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 3
  br i1 %cmp.i, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %27 = call ptr @memcpy(ptr %l2tp_addr13, ptr %cond.i, i32 16)
  br label %if.end18

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %28 = call ptr @memcpy(ptr %l2tp_addr13, ptr %skc_v6_rcv_saddr, i32 16)
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then12
  %conn_id = getelementptr inbounds %struct.l2tp_ip6_sock, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %conn_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %conn_id, align 8
  %l2tp_conn_id19 = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 5
  %31 = ptrtoint ptr %l2tp_conn_id19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %l2tp_conn_id19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.then7, %if.end.if.end20_crit_edge
  %l2tp_addr21 = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %l2tp_addr21) #10
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skc_bound_dev_if, align 4
  %34 = ptrtoint ptr %l2tp_scope_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %l2tp_scope_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %if.then.cleanup_crit_edge ], [ 32, %if.then24 ], [ 32, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sendmsg(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_recv(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.28, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !70

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp3.i = icmp ult i32 %6, 4
  br i1 %cmp3.i, label %if.end.i.discard_crit_edge, label %pskb_may_pull.exit, !prof !70

if.end.i.discard_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.discard_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_may_pull.exit.discard_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i, align 4
  %sub.i74 = add i32 %14, -4
  store i32 %sub.i74, ptr %len.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i74, i32 %16)
  %cmp.i = icmp ult i32 %sub.i74, %16
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !70

do.body4.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

__skb_pull.exit:                                  ; preds = %if.then3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %data, align 4
  %sub.i.i77 = sub i32 %sub.i74, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i77)
  %cmp.not.i78 = icmp ult i32 %sub.i.i77, 12
  br i1 %cmp.not.i78, label %if.end.i80, label %__skb_pull.exit.if.end19_crit_edge, !prof !70

__skb_pull.exit.if.end19_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.i80:                                       ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i74)
  %cmp3.i79 = icmp ult i32 %sub.i74, 12
  br i1 %cmp3.i79, label %if.end.i80.discard_crit_edge, label %pskb_may_pull.exit86, !prof !70

if.end.i80.discard_crit_edge:                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

pskb_may_pull.exit86:                             ; preds = %if.end.i80
  %sub.i81 = sub nuw nsw i32 12, %sub.i.i77
  %call13.i82 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i81) #10
  %cmp14.i83.not = icmp eq ptr %call13.i82, null
  br i1 %cmp14.i83.not, label %pskb_may_pull.exit86.discard_crit_edge, label %pskb_may_pull.exit86.if.end19_crit_edge

pskb_may_pull.exit86.if.end19_crit_edge:          ; preds = %pskb_may_pull.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

pskb_may_pull.exit86.discard_crit_edge:           ; preds = %pskb_may_pull.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @l2tp_session_get(ptr noundef %4, i32 noundef %12) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.discard_crit_edge, label %if.end8

if.end5.discard_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end8:                                          ; preds = %if.end5
  %tunnel9 = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 0, i32 2
  %18 = ptrtoint ptr %tunnel9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tunnel9, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end8.discard_sess_crit_edge, label %if.end12

if.end8.discard_sess_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_sess

if.end12:                                         ; preds = %if.end8
  %peer_cookie_len.i = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 0, i32 8
  %20 = ptrtoint ptr %peer_cookie_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %peer_cookie_len.i, align 4
  %l2specific_type.i.i = getelementptr inbounds %struct.l2tp_session, ptr %call6, i32 0, i32 9
  %22 = ptrtoint ptr %l2specific_type.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l2specific_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cond.i.i = icmp eq i16 %23, 1
  %..i.i = select i1 %cond.i.i, i32 4, i32 0
  %add.i = add i32 %..i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i87 = icmp sgt i32 %add.i, 0
  br i1 %cmp.i87, label %if.then.i, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then.i:                                        ; preds = %if.end12
  %add1.i = add nuw i32 %add.i, 4
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add1.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i90_crit_edge, !prof !70

if.then.i.if.end.i90_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i90

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add1.i)
  %cmp3.i.i = icmp ult i32 %25, %add1.i
  br i1 %cmp3.i.i, label %if.end.i.i.discard_sess_crit_edge, label %pskb_may_pull.exit.i, !prof !70

if.end.i.i.discard_sess_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_sess

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i88 = sub i32 %add1.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i88) #10
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.discard_sess_crit_edge, label %pskb_may_pull.exit.i.if.end.i90_crit_edge

pskb_may_pull.exit.i.if.end.i90_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i90

pskb_may_pull.exit.i.discard_sess_crit_edge:      ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard_sess

if.end.i90:                                       ; preds = %pskb_may_pull.exit.i.if.end.i90_crit_edge, %if.then.i.if.end.i90_crit_edge
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %cmp4.not.i = icmp eq ptr %29, %10
  %add.ptr.i91 = getelementptr i8, ptr %29, i32 4
  %spec.select = select i1 %cmp4.not.i, ptr %add.ptr, ptr %add.ptr.i91
  br label %if.end16

if.end16:                                         ; preds = %if.end.i90, %if.end12.if.end16_crit_edge
  %ptr.0.ph = phi ptr [ %add.ptr, %if.end12.if.end16_crit_edge ], [ %spec.select, %if.end.i90 ]
  %optr.0.ph = phi ptr [ %10, %if.end12.if.end16_crit_edge ], [ %29, %if.end.i90 ]
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  tail call void @l2tp_recv_common(ptr noundef nonnull %call6, ptr noundef %skb, ptr noundef %ptr.0.ph, ptr noundef %optr.0.ph, i16 noundef zeroext 0, i32 noundef %31) #10
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %call6) #10
  br label %cleanup

if.end19:                                         ; preds = %pskb_may_pull.exit86.if.end19_crit_edge, %__skb_pull.exit.if.end19_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %35)
  %cmp21.not = icmp ugt i8 %35, -65
  br i1 %cmp21.not, label %if.end24, label %if.end19.discard_crit_edge

if.end19.discard_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end24:                                         ; preds = %if.end19
  %arrayidx26 = getelementptr i8, ptr %33, i32 4
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx26, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %41 to i32
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %conv.i.i
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags.i, align 8
  %44 = and i16 %43, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.i.not.i = icmp eq i16 %44, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %45 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %call29 = tail call fastcc ptr @__l2tp_ip6_bind_lookup(ptr noundef %4, ptr noundef %daddr, ptr noundef %saddr, i32 noundef %cond.i, i32 noundef %37)
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  br label %discard

if.end32:                                         ; preds = %if.end24
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call29, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end32.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.end32.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end32
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end32.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end32.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.land.lhs.true.i.i.i_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 8
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 127
  %50 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %sk_policy.i.i.i = getelementptr inbounds %struct.sock, ptr %call29, i32 0, i32 18
  %52 = ptrtoint ptr %sk_policy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk_policy.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %call29, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  br label %xfrm6_policy_check.exit

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %policy_default.i.i.i.i = getelementptr inbounds %struct.net, ptr %51, i32 0, i32 46, i32 23
  %54 = ptrtoint ptr %policy_default.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %policy_default.i.i.i.i, align 16
  %56 = and i8 %55, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool1.i.i.i.i = icmp eq i8 %56, 0
  br i1 %tobool1.i.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  %policy_count.i.i.i = getelementptr inbounds %struct.net, ptr %51, i32 0, i32 46, i32 13
  %57 = ptrtoint ptr %policy_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %policy_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool7.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then5.i.i.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %59 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %61 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool10.not.i.i.i = icmp eq i8 %61, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end36_crit_edge, label %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge

land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i.if.end36_crit_edge:          ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %and.i.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i92 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i92, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, !prof !70

land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exitthread-pre-split.i.i.i

skb_dst.exitthread-pre-split.i.i.i:               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr.i.i.i = load i32, ptr %62, align 8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %skb_dst.exitthread-pre-split.i.i.i, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %66 = phi i32 [ %.pr.i.i.i, %skb_dst.exitthread-pre-split.i.i.i ], [ %64, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %tobool12.not.i.i.i = icmp ult i32 %66, 2
  br i1 %tobool12.not.i.i.i, label %skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge, label %land.lhs.true13.i.i.i

skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge:       ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i.i

land.lhs.true13.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %and.i2.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i

land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

land.lhs.true.i6.i.i.i:                           ; preds = %land.lhs.true13.i.i.i
  %call.i4.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool1.not.i5.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool1.not.i5.i.i.i, label %land.rhs.i9.i.i.i, label %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge

land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

land.rhs.i9.i.i.i:                                ; preds = %land.lhs.true.i6.i.i.i
  %call2.i7.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i.i)
  %tobool3.not.i8.i.i.i = icmp eq i32 %call2.i7.i.i.i, 0
  br i1 %tobool3.not.i8.i.i.i, label %do.end.i10.i.i.i, label %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, !prof !70

land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

do.end.i10.i.i.i:                                 ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit12.i.i.i

skb_dst.exit12.i.i.i:                             ; preds = %do.end.i10.i.i.i, %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %62, align 8
  %and25.i11.i.i.i = and i32 %68, -2
  %69 = inttoptr i32 %and25.i11.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flags.i.i.i, align 4
  %72 = and i16 %71, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool16.not.i.i.i = icmp eq i16 %72, 0
  br i1 %tobool16.not.i.i.i, label %skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge, label %skb_dst.exit12.i.i.i.if.end36_crit_edge

skb_dst.exit12.i.i.i.if.end36_crit_edge:          ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge:     ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i.i

lor.rhs.i.i.i:                                    ; preds = %skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge, %skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge
  %call18.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %call29, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %tobool19.i.i.i = icmp ne i32 %call18.i.i.i, 0
  %phi.cast1.i.i.i = zext i1 %tobool19.i.i.i to i32
  br label %xfrm6_policy_check.exit

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %and.i13.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge, label %land.lhs.true.i17.i.i.i

if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23.i.i.i

land.lhs.true.i17.i.i.i:                          ; preds = %if.else.i.i.i
  %call.i15.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i.i)
  %tobool1.not.i16.i.i.i = icmp eq i32 %call.i15.i.i.i, 0
  br i1 %tobool1.not.i16.i.i.i, label %land.rhs.i20.i.i.i, label %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge

land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i.i

land.rhs.i20.i.i.i:                               ; preds = %land.lhs.true.i17.i.i.i
  %call2.i18.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i.i)
  %tobool3.not.i19.i.i.i = icmp eq i32 %call2.i18.i.i.i, 0
  br i1 %tobool3.not.i19.i.i.i, label %do.end.i21.i.i.i, label %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, !prof !70

land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i.i

do.end.i21.i.i.i:                                 ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit23thread-pre-split.i.i.i

skb_dst.exit23thread-pre-split.i.i.i:             ; preds = %do.end.i21.i.i.i, %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr35.i.i.i = load i32, ptr %73, align 8
  br label %skb_dst.exit23.i.i.i

skb_dst.exit23.i.i.i:                             ; preds = %skb_dst.exit23thread-pre-split.i.i.i, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge
  %77 = phi i32 [ %.pr35.i.i.i, %skb_dst.exit23thread-pre-split.i.i.i ], [ %75, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %tobool21.not.i.i.i = icmp ult i32 %77, 2
  br i1 %tobool21.not.i.i.i, label %skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge, label %land.lhs.true22.i.i.i

skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge:   ; preds = %skb_dst.exit23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i.i

land.lhs.true22.i.i.i:                            ; preds = %skb_dst.exit23.i.i.i
  %and.i24.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool.not.i25.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool.not.i25.i.i.i, label %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge, label %land.lhs.true.i28.i.i.i

land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

land.lhs.true.i28.i.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %call.i26.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool1.not.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool1.not.i27.i.i.i, label %land.rhs.i31.i.i.i, label %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge

land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

land.rhs.i31.i.i.i:                               ; preds = %land.lhs.true.i28.i.i.i
  %call2.i29.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i.i)
  %tobool3.not.i30.i.i.i = icmp eq i32 %call2.i29.i.i.i, 0
  br i1 %tobool3.not.i30.i.i.i, label %do.end.i32.i.i.i, label %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, !prof !70

land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

do.end.i32.i.i.i:                                 ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit34.i.i.i

skb_dst.exit34.i.i.i:                             ; preds = %do.end.i32.i.i.i, %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %73, align 8
  %and25.i33.i.i.i = and i32 %79, -2
  %80 = inttoptr i32 %and25.i33.i.i.i to ptr
  %flags24.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flags24.i.i.i, align 4
  %83 = and i16 %82, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool27.not.i.i.i = icmp eq i16 %83, 0
  br i1 %tobool27.not.i.i.i, label %skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge, label %skb_dst.exit34.i.i.i.if.end36_crit_edge

skb_dst.exit34.i.i.i.if.end36_crit_edge:          ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge:   ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i.i

lor.rhs28.i.i.i:                                  ; preds = %skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge, %skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge
  %call30.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %call29, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.i.i.i = icmp ne i32 %call30.i.i.i, 0
  %phi.cast.i.i.i = zext i1 %tobool31.i.i.i to i32
  br label %xfrm6_policy_check.exit

xfrm6_policy_check.exit:                          ; preds = %lor.rhs28.i.i.i, %lor.rhs.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i ], [ %phi.cast1.i.i.i, %lor.rhs.i.i.i ], [ %phi.cast.i.i.i, %lor.rhs28.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool34.not = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool34.not, label %discard_put, label %xfrm6_policy_check.exit.if.end36_crit_edge

xfrm6_policy_check.exit.if.end36_crit_edge:       ; preds = %xfrm6_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %xfrm6_policy_check.exit.if.end36_crit_edge, %skb_dst.exit34.i.i.i.if.end36_crit_edge, %skb_dst.exit12.i.i.i.if.end36_crit_edge, %land.lhs.true8.i.i.i.if.end36_crit_edge
  tail call fastcc void @nf_reset_ct(ptr noundef %skb)
  %call.i = tail call i32 @__sk_receive_skb(ptr noundef nonnull %call29, ptr noundef %skb, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true) #10
  br label %cleanup

discard_sess:                                     ; preds = %pskb_may_pull.exit.i.discard_sess_crit_edge, %if.end.i.i.discard_sess_crit_edge, %if.end8.discard_sess_crit_edge
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %call6) #10
  br label %discard

discard_put:                                      ; preds = %xfrm6_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sock_put(ptr noundef nonnull %call29)
  br label %discard

discard:                                          ; preds = %discard_put, %discard_sess, %if.then31, %if.end19.discard_crit_edge, %if.end5.discard_crit_edge, %pskb_may_pull.exit86.discard_crit_edge, %if.end.i80.discard_crit_edge, %pskb_may_pull.exit.discard_crit_edge, %if.end.i.discard_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %discard, %if.end36, %if.end16
  %retval.0 = phi i32 [ 0, %discard ], [ %call.i, %if.end36 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_recv_common(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_dec_refcount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__l2tp_ip6_bind_lookup(ptr noundef readnone %net, ptr nocapture noundef readonly %laddr, ptr noundef readonly %raddr, i32 noundef %dif, i32 noundef %tunnel_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2tp_ip6_bind_table, align 4
  %tobool.not = icmp eq ptr %0, null
  %add.ptr = getelementptr i8, ptr %0, i32 -24
  %tobool2.not118122 = icmp eq ptr %add.ptr, null
  %tobool2.not118 = or i1 %tobool.not, %tobool2.not118122
  br i1 %tobool2.not118, label %entry.cleanup49_crit_edge, label %for.body.lr.ph

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dif)
  %tobool9.not = icmp eq i32 %dif, 0
  %arrayidx2.i75 = getelementptr [4 x i32], ptr %laddr, i32 0, i32 1
  %arrayidx4.i77 = getelementptr [4 x i32], ptr %laddr, i32 0, i32 2
  %arrayidx7.i79 = getelementptr [4 x i32], ptr %laddr, i32 0, i32 3
  %tobool26.not = icmp eq ptr %raddr, null
  %arrayidx2.i92 = getelementptr [4 x i32], ptr %raddr, i32 0, i32 1
  %arrayidx4.i94 = getelementptr [4 x i32], ptr %raddr, i32 0, i32 2
  %arrayidx7.i96 = getelementptr [4 x i32], ptr %raddr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sk.0119 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr45, %for.inc.for.body_crit_edge ]
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk.0119, i32 0, i32 3
  %1 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %2)
  %cmp.i = icmp eq i16 %2, 10
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %sk.0119, i32 0, i32 11
  %retval.0.i = select i1 %cmp.i, ptr %skc_v6_rcv_saddr.i, ptr null
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk.0119, i32 0, i32 10
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk.0119, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %cmp.i73.not = icmp eq ptr %4, %net
  br i1 %cmp.i73.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk.0119, i32 0, i32 6
  %5 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  %or.cond = or i1 %tobool9.not, %tobool8.not
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %dif)
  %cmp.not = icmp eq i32 %6, %dif
  %or.cond69 = or i1 %cmp.not, %or.cond
  br i1 %or.cond69, label %if.end14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %if.end
  %tobool15.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool15.not, label %if.end14.if.end23_crit_edge, label %land.lhs.true16

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true16:                                  ; preds = %if.end14
  %7 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %retval.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %10, %8
  %arrayidx4.i = getelementptr [4 x i32], ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %12
  %arrayidx7.i = getelementptr [4 x i32], ptr %retval.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i74 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i74, label %land.lhs.true16.if.end23_crit_edge, label %land.lhs.true18

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %15 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %laddr, align 4
  %17 = ptrtoint ptr %arrayidx2.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i75, align 4
  %or.i76 = or i32 %18, %16
  %19 = ptrtoint ptr %arrayidx4.i77 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i77, align 4
  %or5.i78 = or i32 %or.i76, %20
  %21 = ptrtoint ptr %arrayidx7.i79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i79, align 4
  %or8.i80 = or i32 %or5.i78, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i80)
  %cmp.i81 = icmp eq i32 %or8.i80, 0
  br i1 %cmp.i81, label %land.lhs.true18.if.end23_crit_edge, label %land.lhs.true20

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %xor.i = xor i32 %16, %8
  %xor7.i = xor i32 %18, %10
  %or.i83 = or i32 %xor7.i, %xor.i
  %xor12.i = xor i32 %20, %12
  %or13.i = or i32 %or.i83, %xor12.i
  %xor18.i = xor i32 %22, %14
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i84 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i84, label %land.lhs.true20.if.end23_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true20.if.end23_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true20.if.end23_crit_edge, %land.lhs.true18.if.end23_crit_edge, %land.lhs.true16.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %23 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skc_v6_daddr, align 4
  %arrayidx2.i85 = getelementptr %struct.sock_common, ptr %sk.0119, i32 0, i32 10, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx2.i85 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i85, align 4
  %or.i86 = or i32 %26, %24
  %arrayidx4.i87 = getelementptr %struct.sock_common, ptr %sk.0119, i32 0, i32 10, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx4.i87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i87, align 4
  %or5.i88 = or i32 %or.i86, %28
  %arrayidx7.i89 = getelementptr %struct.sock_common, ptr %sk.0119, i32 0, i32 10, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx7.i89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.i89, align 4
  %or8.i90 = or i32 %or5.i88, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i90)
  %cmp.i91 = icmp eq i32 %or8.i90, 0
  %or.cond70 = or i1 %tobool26.not, %cmp.i91
  br i1 %or.cond70, label %if.end23.cleanup_crit_edge, label %land.lhs.true27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true27:                                  ; preds = %if.end23
  %31 = ptrtoint ptr %raddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %raddr, align 4
  %33 = ptrtoint ptr %arrayidx2.i92 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i92, align 4
  %or.i93 = or i32 %34, %32
  %35 = ptrtoint ptr %arrayidx4.i94 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i94, align 4
  %or5.i95 = or i32 %or.i93, %36
  %37 = ptrtoint ptr %arrayidx7.i96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx7.i96, align 4
  %or8.i97 = or i32 %or5.i95, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i97)
  %cmp.i98 = icmp eq i32 %or8.i97, 0
  br i1 %cmp.i98, label %land.lhs.true27.cleanup_crit_edge, label %land.lhs.true29

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %xor.i99 = xor i32 %32, %24
  %xor7.i102 = xor i32 %34, %26
  %or.i103 = or i32 %xor7.i102, %xor.i99
  %xor12.i106 = xor i32 %36, %28
  %or13.i107 = or i32 %or.i103, %xor12.i106
  %xor18.i110 = xor i32 %38, %30
  %or19.i111 = or i32 %or13.i107, %xor18.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i111)
  %cmp.i112 = icmp eq i32 %or19.i111, 0
  br i1 %cmp.i112, label %land.lhs.true29.cleanup_crit_edge, label %land.lhs.true29.for.inc_crit_edge

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true29.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %if.end23.cleanup_crit_edge
  %conn_id = getelementptr inbounds %struct.l2tp_ip6_sock, ptr %sk.0119, i32 0, i32 1
  %39 = ptrtoint ptr %conn_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %conn_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %tunnel_id)
  %cmp33.not = icmp eq i32 %40, %tunnel_id
  br i1 %cmp33.not, label %cleanup.cleanup49_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup.cleanup49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %land.lhs.true29.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %41 = getelementptr inbounds %struct.sock_common, ptr %sk.0119, i32 0, i32 7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %tobool41.not = icmp eq ptr %43, null
  %add.ptr45 = getelementptr i8, ptr %43, i32 -24
  %tobool2.not123 = icmp eq ptr %add.ptr45, null
  %tobool2.not = or i1 %tobool41.not, %tobool2.not123
  br i1 %tobool2.not, label %for.inc.cleanup49_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup49_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

cleanup49:                                        ; preds = %for.inc.cleanup49_crit_edge, %cleanup.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %sk.0.lcssa = phi ptr [ null, %entry.cleanup49_crit_edge ], [ %sk.0119, %cleanup.cleanup49_crit_edge ], [ null, %for.inc.cleanup49_crit_edge ]
  ret ptr %sk.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_reset_ct(ptr nocapture noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nf_conntrack_put.exit_crit_edge, label %land.lhs.true.i

entry.nf_conntrack_put.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #10
  br label %nf_conntrack_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %2) #10
  br label %nf_conntrack_put.exit

nf_conntrack_put.exit:                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, %entry.nf_conntrack_put.exit_crit_edge
  %4 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %_nfct.i, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !73

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @sk_free(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip6_close(ptr noundef %sk, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i3.i = icmp eq ptr %4, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %0, align 4
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i.i.not.i, label %hlist_del_init.exit.sk_del_node_init.exit_crit_edge, label %if.then.i.i

hlist_del_init.exit.sk_del_node_init.exit_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %hlist_del_init.exit
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %10, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i3_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i3_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i3

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %10, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i3

if.then.i3:                                       ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i3_crit_edge
  %16 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i3.if.end.i_crit_edge, !prof !70

if.then.i3.if.end.i_crit_edge:                    ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 729, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i3.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !70

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %hlist_del_init.exit.sk_del_node_init.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  tail call void @sk_common_release(ptr noundef %sk) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp1.not = icmp eq i16 %1, 10
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %and7 = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end14_crit_edge, label %if.then9

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %if.end6
  %arrayidx = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i41 = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i41)
  %cmp.i = icmp eq i32 %and.i41, -536870912
  br i1 %cmp.i, label %if.then9.cleanup_crit_edge, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end17, label %if.end14.out_sk_crit_edge

if.end14.out_sk_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_sk

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i32 @__ip6_datagram_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.out_sk_crit_edge, label %if.end22

if.end17.out_sk_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_sk

if.end22:                                         ; preds = %if.end17
  %l2tp_conn_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 5
  %8 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l2tp_conn_id, align 4
  %peer_conn_id = getelementptr inbounds %struct.l2tp_ip6_sock, ptr %sk, i32 0, i32 2
  %10 = ptrtoint ptr %peer_conn_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %peer_conn_id, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %11 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.i, label %if.end22.hlist_del_init.exit_crit_edge, label %if.then.i

if.end22.hlist_del_init.exit_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end22
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %13, align 4
  %tobool.not.i3.i = icmp eq ptr %15, null
  br i1 %tobool.not.i3.i, label %if.then.i.hlist_del_init.exit_crit_edge, label %do.body13.i.i

if.then.i.hlist_del_init.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %pprev14.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %do.body13.i.i, %if.then.i.hlist_del_init.exit_crit_edge, %if.end22.hlist_del_init.exit_crit_edge
  %18 = load ptr, ptr @l2tp_ip6_bind_table, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %11, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %hlist_del_init.exit.sk_add_bind_node.exit_crit_edge, label %do.body12.i.i

hlist_del_init.exit.sk_add_bind_node.exit_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_add_bind_node.exit

do.body12.i.i:                                    ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i42 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i.i42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %11, ptr %pprev.i.i42, align 4
  br label %sk_add_bind_node.exit

sk_add_bind_node.exit:                            ; preds = %do.body12.i.i, %hlist_del_init.exit.sk_add_bind_node.exit_crit_edge
  store volatile ptr %11, ptr @l2tp_ip6_bind_table, align 4
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr @l2tp_ip6_bind_table, ptr %pprev.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  br label %out_sk

out_sk:                                           ; preds = %sk_add_bind_node.exit, %if.end17.out_sk_crit_edge, %if.end14.out_sk_crit_edge
  %rc.0 = phi i32 [ %call18, %if.end17.out_sk_crit_edge ], [ %call18, %sk_add_bind_node.exit ], [ -22, %if.end14.out_sk_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %out_sk, %if.then9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_sk ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_disconnect(ptr noundef %sk, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @__udp_disconnect(ptr noundef %sk, i32 noundef %flags) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_open(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 115, ptr %skc_num, align 2
  %call2 = tail call i32 @l2tp_ip6_hash(ptr noundef %sk)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip6_destroy_sock(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @l2tp_sk_to_tunnel(ptr noundef %sk) #10
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  tail call void @ip6_flush_pending_frames(ptr noundef %sk) #10
  tail call void @release_sock(ptr noundef %sk) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @l2tp_tunnel_delete(ptr noundef nonnull %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @inet6_destroy_sock(ptr noundef %sk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %opt_space = alloca %struct.ipv6_txoptions, align 4
  %final = alloca %struct.in6_addr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  %ipc6 = alloca %struct.ipcm6_cookie, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt_space) #10
  %0 = call ptr @memset(ptr %opt_space, i32 255, i32 36)
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #10
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = call ptr @memset(ptr %final, i32 255, i32 16)
  %4 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6) #10
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_namelen, align 4
  %add = add i32 %len, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %inet6_sk.exit.cleanup_crit_edge, label %if.end

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %10 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %12 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %13 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_mark, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %15 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flowic_mark, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %16 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_uid, align 4
  %18 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flowic_uid, align 4
  %19 = call ptr @memset(ptr %ipc6, i32 0, i32 16)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 16
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 18
  %21 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 20
  %22 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.41.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 22
  %23 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 23
  %24 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 9)
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp6 = icmp slt i32 %9, 24
  br i1 %cmp6, label %if.then5.cleanup_crit_edge, label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %2, align 4
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i16 %26, label %if.end8.cleanup_crit_edge [
    i16 0, label %if.end8.if.end15_crit_edge
    i16 10, label %if.end8.if.end15_crit_edge391
  ]

if.end8.if.end15_crit_edge391:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end8.if.end15_crit_edge, %if.end8.if.end15_crit_edge391
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %2, i32 0, i32 3
  %sndflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %28 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %sndflow, align 2
  %29 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool16.not = icmp eq i16 %29, 0
  br i1 %tobool16.not, label %if.end15.if.end30_crit_edge, label %if.then17

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then17:                                        ; preds = %if.end15
  %l2tp_flowinfo = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %2, i32 0, i32 2
  %30 = ptrtoint ptr %l2tp_flowinfo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l2tp_flowinfo, align 4
  %and18 = and i32 %31, 268435455
  %flowlabel19 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %32 = ptrtoint ptr %flowlabel19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and18, ptr %flowlabel19, align 8
  %and21 = and i32 %31, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then17.if.end30_crit_edge, label %if.then23

if.then17.if.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then23:                                        ; preds = %if.then17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipv6_flowlabel_exclusive, ptr blockaddress(@l2tp_ip6_sendmsg, %do.end.i)) #10
          to label %fl6_sock_lookup.exit [label %do.end.i], !srcloc !77

do.end.i:                                         ; preds = %if.then23
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %33 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skc_net.i.i, align 4
  %flowlabel_has_excl.i = getelementptr inbounds %struct.net, ptr %34, i32 0, i32 36, i32 17
  %35 = ptrtoint ptr %flowlabel_has_excl.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %flowlabel_has_excl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool5.not.i = icmp eq i8 %36, 0
  br i1 %tobool5.not.i, label %do.end.i.if.end30_crit_edge, label %if.then.i

do.end.i.if.end30_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then.i:                                        ; preds = %do.end.i
  %call6.i = tail call ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %and18) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.fl6_sock_lookup.exit_crit_edge

if.then.i.fl6_sock_lookup.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fl6_sock_lookup.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fl6_sock_lookup.exit:                             ; preds = %if.then.i.fl6_sock_lookup.exit_crit_edge, %if.then23
  %retval.0.i = phi ptr [ null, %if.then23 ], [ %call6.i, %if.then.i.fl6_sock_lookup.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fl6_sock_lookup.exit.cleanup_crit_edge, label %fl6_sock_lookup.exit.if.end30_crit_edge

fl6_sock_lookup.exit.if.end30_crit_edge:          ; preds = %fl6_sock_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

fl6_sock_lookup.exit.cleanup_crit_edge:           ; preds = %fl6_sock_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %fl6_sock_lookup.exit.if.end30_crit_edge, %do.end.i.if.end30_crit_edge, %if.then17.if.end30_crit_edge, %if.end15.if.end30_crit_edge
  %flowlabel.0 = phi ptr [ %retval.0.i, %fl6_sock_lookup.exit.if.end30_crit_edge ], [ null, %if.then17.if.end30_crit_edge ], [ null, %if.end15.if.end30_crit_edge ], [ null, %do.end.i.if.end30_crit_edge ]
  %37 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp32 = icmp eq i8 %38, 1
  br i1 %cmp32, label %land.lhs.true34, label %if.end30.if.end41_crit_edge

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %39 = ptrtoint ptr %l2tp_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %l2tp_addr, align 4
  %41 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %skc_v6_daddr, align 4
  %xor.i = xor i32 %42, %40
  %arrayidx4.i = getelementptr %struct.sockaddr_l2tpip6, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %46, %44
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr %struct.sockaddr_l2tpip6, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %50, %48
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr %struct.sockaddr_l2tpip6, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %54, %52
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i315 = icmp eq i32 %or19.i, 0
  %spec.select = select i1 %cmp.i315, ptr %skc_v6_daddr, ptr %l2tp_addr
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true34, %if.end30.if.end41_crit_edge
  %daddr.0 = phi ptr [ %l2tp_addr, %if.end30.if.end41_crit_edge ], [ %spec.select, %land.lhs.true34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %9)
  %cmp42 = icmp ugt i32 %9, 27
  br i1 %cmp42, label %land.lhs.true44, label %if.end41.if.end64thread-pre-split_crit_edge

if.end41.if.end64thread-pre-split_crit_edge:      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64thread-pre-split

land.lhs.true44:                                  ; preds = %if.end41
  %l2tp_scope_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %2, i32 0, i32 4
  %55 = ptrtoint ptr %l2tp_scope_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %l2tp_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool45.not = icmp eq i32 %56, 0
  br i1 %tobool45.not, label %land.lhs.true44.if.end64thread-pre-split_crit_edge, label %land.lhs.true46

land.lhs.true44.if.end64thread-pre-split_crit_edge: ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64thread-pre-split

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %daddr.0) #10
  %and48 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.end64thread-pre-split_crit_edge, label %if.then50

land.lhs.true46.if.end64thread-pre-split_crit_edge: ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64thread-pre-split

if.then50:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %l2tp_scope_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %l2tp_scope_id, align 4
  %59 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fl6, align 8
  br label %if.end64

if.else:                                          ; preds = %if.end2
  %60 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp57.not = icmp eq i8 %61, 1
  br i1 %cmp57.not, label %if.end60, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end60:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %skc_v6_daddr62 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %62 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flow_label, align 4
  %flowlabel63 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %64 = ptrtoint ptr %flowlabel63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %flowlabel63, align 8
  br label %if.end64thread-pre-split

if.end64thread-pre-split:                         ; preds = %if.end60, %land.lhs.true46.if.end64thread-pre-split_crit_edge, %land.lhs.true44.if.end64thread-pre-split_crit_edge, %if.end41.if.end64thread-pre-split_crit_edge
  %daddr.1.ph = phi ptr [ %skc_v6_daddr62, %if.end60 ], [ %daddr.0, %if.end41.if.end64thread-pre-split_crit_edge ], [ %daddr.0, %land.lhs.true44.if.end64thread-pre-split_crit_edge ], [ %daddr.0, %land.lhs.true46.if.end64thread-pre-split_crit_edge ]
  %flowlabel.1.ph = phi ptr [ null, %if.end60 ], [ %flowlabel.0, %if.end41.if.end64thread-pre-split_crit_edge ], [ %flowlabel.0, %land.lhs.true44.if.end64thread-pre-split_crit_edge ], [ %flowlabel.0, %land.lhs.true46.if.end64thread-pre-split_crit_edge ]
  %65 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %fl6, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.end64thread-pre-split, %if.then50
  %66 = phi i32 [ %.pr, %if.end64thread-pre-split ], [ %58, %if.then50 ]
  %daddr.1 = phi ptr [ %daddr.1.ph, %if.end64thread-pre-split ], [ %daddr.0, %if.then50 ]
  %flowlabel.1 = phi ptr [ %flowlabel.1.ph, %if.end64thread-pre-split ], [ %flowlabel.0, %if.then50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp67 = icmp eq i32 %66, 0
  br i1 %cmp67, label %if.then69, label %if.end64.if.end73_crit_edge

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %67 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %skc_bound_dev_if, align 4
  %69 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %fl6, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end64.if.end73_crit_edge
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %70 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool74.not = icmp eq i32 %71, 0
  br i1 %tobool74.not, label %if.end73.if.then102_crit_edge, label %if.then75

if.end73.if.then102_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.then75:                                        ; preds = %if.end73
  %72 = call ptr @memset(ptr %opt_space, i32 0, i32 36)
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 1
  %73 = ptrtoint ptr %tot_len to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 36, ptr %tot_len, align 4
  %opt76 = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %74 = ptrtoint ptr %opt76 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %opt_space, ptr %opt76, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %75 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skc_net.i, align 4
  %call78 = call i32 @ip6_datagram_send_ctl(ptr noundef %76, ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %fl6, ptr noundef nonnull %ipc6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then75
  %tobool.not.i = icmp eq ptr %flowlabel.1, null
  br i1 %tobool.not.i, label %if.then81.cleanup_crit_edge, label %if.then.i316

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i316:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %flowlabel.1, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !78
  br label %cleanup

if.end82:                                         ; preds = %if.then75
  %flowlabel83 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %78 = ptrtoint ptr %flowlabel83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flowlabel83, align 8
  %and84 = and i32 %79, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp ne i32 %and84, 0
  %tobool87.not = icmp eq ptr %flowlabel.1, null
  %or.cond = and i1 %tobool87.not, %tobool85.not
  br i1 %or.cond, label %if.then88, label %if.end82.if.end94_crit_edge

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then88:                                        ; preds = %if.end82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipv6_flowlabel_exclusive, ptr blockaddress(@l2tp_ip6_sendmsg, %do.end.i320)) #10
          to label %fl6_sock_lookup.exit326 [label %do.end.i320], !srcloc !77

do.end.i320:                                      ; preds = %if.then88
  %80 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skc_net.i, align 4
  %flowlabel_has_excl.i318 = getelementptr inbounds %struct.net, ptr %81, i32 0, i32 36, i32 17
  %82 = ptrtoint ptr %flowlabel_has_excl.i318 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load volatile i8, ptr %flowlabel_has_excl.i318, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool5.not.i319 = icmp eq i8 %83, 0
  br i1 %tobool5.not.i319, label %do.end.i320.if.end94_crit_edge, label %if.then.i324

do.end.i320.if.end94_crit_edge:                   ; preds = %do.end.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then.i324:                                     ; preds = %do.end.i320
  %call6.i321 = call ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %79) #10
  %tobool7.not.i322 = icmp eq ptr %call6.i321, null
  br i1 %tobool7.not.i322, label %if.then.i324.cleanup_crit_edge, label %if.then.i324.fl6_sock_lookup.exit326_crit_edge

if.then.i324.fl6_sock_lookup.exit326_crit_edge:   ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #12
  br label %fl6_sock_lookup.exit326

if.then.i324.cleanup_crit_edge:                   ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fl6_sock_lookup.exit326:                          ; preds = %if.then.i324.fl6_sock_lookup.exit326_crit_edge, %if.then88
  %retval.0.i325 = phi ptr [ null, %if.then88 ], [ %call6.i321, %if.then.i324.fl6_sock_lookup.exit326_crit_edge ]
  %cmp.i327 = icmp ugt ptr %retval.0.i325, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %fl6_sock_lookup.exit326.cleanup_crit_edge, label %fl6_sock_lookup.exit326.if.end94_crit_edge

fl6_sock_lookup.exit326.if.end94_crit_edge:       ; preds = %fl6_sock_lookup.exit326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

fl6_sock_lookup.exit326.cleanup_crit_edge:        ; preds = %fl6_sock_lookup.exit326
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94:                                         ; preds = %fl6_sock_lookup.exit326.if.end94_crit_edge, %do.end.i320.if.end94_crit_edge, %if.end82.if.end94_crit_edge
  %flowlabel.2 = phi ptr [ %retval.0.i325, %fl6_sock_lookup.exit326.if.end94_crit_edge ], [ %flowlabel.1, %if.end82.if.end94_crit_edge ], [ null, %do.end.i320.if.end94_crit_edge ]
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 3
  %84 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %opt_nflen, align 2
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 2
  %86 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %opt_flen, align 4
  %or313 = or i16 %87, %85
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or313)
  %tobool97.not = icmp eq i16 %or313, 0
  br i1 %tobool97.not, label %if.end94.if.then102_crit_edge, label %if.end94.if.end104_crit_edge

if.end94.if.end104_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.end94.if.then102_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.then102:                                       ; preds = %if.end94.if.then102_crit_edge, %if.end73.if.then102_crit_edge
  %flowlabel.3.ph = phi ptr [ %flowlabel.1, %if.end73.if.then102_crit_edge ], [ %flowlabel.2, %if.end94.if.then102_crit_edge ]
  %88 = call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %91, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then102.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then102.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then102
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then102.rcu_read_lock.exit.i_crit_edge
  %opt1.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %92 = ptrtoint ptr %opt1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %opt1.i, align 4
  %call.i328 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %tobool.not.i329 = icmp eq i32 %call.i328, 0
  br i1 %tobool.not.i329, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b19.i = load i1, ptr @txopt_get.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i330

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8.i

if.then.i330:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @txopt_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 379, ptr noundef nonnull @.str.7) #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i330, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %93, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end15.i_crit_edge, label %if.then11.i

do.end8.i.if.end15.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %93, i32 noundef 4) #10
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then11.i
  %96 = phi i32 [ %95, %if.then11.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %97 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i.i.i.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i20.i = add i32 %96, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %93, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %98 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %93, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %100 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %93, ptr nonnull %93, i32 %99, i32 %add.i.i.i20.i, ptr nonnull elementtype(i32) %93) #10, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %100, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %100, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %99
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !73

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %101 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %102, 1
  %103 = or i32 %add5.i.i.i.i, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %.not.i.i.i.i = icmp sgt i32 %103, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %93, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %104 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool12.i.i.i.not.i = icmp eq i32 %105, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %..i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %93
  br label %if.end15.i

if.end15.i:                                       ; preds = %refcount_inc_not_zero.exit.i, %do.end8.i.if.end15.i_crit_edge
  %opt.0.i = phi ptr [ null, %do.end8.i.if.end15.i_crit_edge ], [ %..i, %refcount_inc_not_zero.exit.i ]
  %call.i21.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i21.i, label %if.end15.i.txopt_get.exit_crit_edge, label %land.lhs.true.i24.i

if.end15.i.txopt_get.exit_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %txopt_get.exit

land.lhs.true.i24.i:                              ; preds = %if.end15.i
  %call1.i22.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool.not.i23.i, label %land.lhs.true.i24.i.txopt_get.exit_crit_edge, label %land.lhs.true2.i26.i

land.lhs.true.i24.i.txopt_get.exit_crit_edge:     ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %txopt_get.exit

land.lhs.true2.i26.i:                             ; preds = %land.lhs.true.i24.i
  %.b4.i25.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25.i, label %land.lhs.true2.i26.i.txopt_get.exit_crit_edge, label %if.then.i27.i

land.lhs.true2.i26.i.txopt_get.exit_crit_edge:    ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %txopt_get.exit

if.then.i27.i:                                    ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %txopt_get.exit

txopt_get.exit:                                   ; preds = %if.then.i27.i, %land.lhs.true2.i26.i.txopt_get.exit_crit_edge, %land.lhs.true.i24.i.txopt_get.exit_crit_edge, %if.end15.i.txopt_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %106 = call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i28.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i28.i to ptr
  %preempt_count.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i29.i, align 4
  %sub.i.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i29.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end104

if.end104:                                        ; preds = %txopt_get.exit, %if.end94.if.end104_crit_edge
  %flowlabel.3387 = phi ptr [ %flowlabel.3.ph, %txopt_get.exit ], [ %flowlabel.2, %if.end94.if.end104_crit_edge ]
  %opt_to_free.0 = phi ptr [ %opt.0.i, %txopt_get.exit ], [ null, %if.end94.if.end104_crit_edge ]
  %opt.1 = phi ptr [ %opt.0.i, %txopt_get.exit ], [ %opt_space, %if.end94.if.end104_crit_edge ]
  %tobool105.not = icmp eq ptr %flowlabel.3387, null
  br i1 %tobool105.not, label %if.end104.if.end108_crit_edge, label %if.then106

if.end104.if.end108_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %call107 = call ptr @fl6_merge_options(ptr noundef nonnull %opt_space, ptr noundef nonnull %flowlabel.3387, ptr noundef %opt.1) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end104.if.end108_crit_edge
  %opt.2 = phi ptr [ %call107, %if.then106 ], [ %opt.1, %if.end104.if.end108_crit_edge ]
  %call109 = call ptr @ipv6_fixup_options(ptr noundef nonnull %opt_space, ptr noundef %opt.2) #10
  %opt110 = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %110 = ptrtoint ptr %opt110 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call109, ptr %opt110, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %111 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %sk_protocol, align 4
  %conv111 = trunc i16 %112 to i8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %113 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv111, ptr %flowic_proto, align 2
  %114 = ptrtoint ptr %daddr.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %daddr.1, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %daddr.1, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx2.i, align 4
  %or.i331 = or i32 %117, %115
  %arrayidx4.i332 = getelementptr [4 x i32], ptr %daddr.1, i32 0, i32 2
  %118 = ptrtoint ptr %arrayidx4.i332 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx4.i332, align 4
  %or5.i = or i32 %or.i331, %119
  %arrayidx7.i = getelementptr [4 x i32], ptr %daddr.1, i32 0, i32 3
  %120 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i333 = icmp eq i32 %or8.i, 0
  %daddr117 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  br i1 %cmp.i333, label %if.else116, label %if.then114

if.then114:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %122 = call ptr @memcpy(ptr %daddr117, ptr %daddr.1, i32 16)
  br label %if.end118

if.else116:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr inbounds [16 x i8], ptr %daddr117, i32 0, i32 15
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %arrayidx, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.else116, %if.then114
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %124 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %saddr, align 8
  %arrayidx2.i334 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %126 = ptrtoint ptr %arrayidx2.i334 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx2.i334, align 4
  %or.i335 = or i32 %127, %125
  %arrayidx4.i336 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %128 = ptrtoint ptr %arrayidx4.i336 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx4.i336, align 8
  %or5.i337 = or i32 %or.i335, %129
  %arrayidx7.i338 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %130 = ptrtoint ptr %arrayidx7.i338 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx7.i338, align 4
  %or8.i339 = or i32 %or5.i337, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i339)
  %cmp.i340 = icmp eq i32 %or8.i339, 0
  br i1 %cmp.i340, label %land.lhs.true121, label %if.end118.if.end127_crit_edge

if.end118.if.end127_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

land.lhs.true121:                                 ; preds = %if.end118
  %132 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cond.i, align 4
  %arrayidx2.i341 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx2.i341 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx2.i341, align 4
  %or.i342 = or i32 %135, %133
  %arrayidx4.i343 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 2
  %136 = ptrtoint ptr %arrayidx4.i343 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx4.i343, align 4
  %or5.i344 = or i32 %or.i342, %137
  %arrayidx7.i345 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 3
  %138 = ptrtoint ptr %arrayidx7.i345 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx7.i345, align 4
  %or8.i346 = or i32 %or5.i344, %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i346)
  %cmp.i347 = icmp eq i32 %or8.i346, 0
  br i1 %cmp.i347, label %land.lhs.true121.if.end127_crit_edge, label %if.then124

land.lhs.true121.if.end127_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then124:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  %140 = call ptr @memcpy(ptr %saddr, ptr %cond.i, i32 16)
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %land.lhs.true121.if.end127_crit_edge, %if.end118.if.end127_crit_edge
  %call128 = call ptr @fl6_update_dst(ptr noundef nonnull %fl6, ptr noundef %call109, ptr noundef nonnull %final) #10
  %141 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool131.not = icmp eq i32 %142, 0
  br i1 %tobool131.not, label %land.lhs.true132, label %if.end127.if.end147_crit_edge

if.end127.if.end147_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

land.lhs.true132:                                 ; preds = %if.end127
  %daddr133 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %143 = ptrtoint ptr %daddr133 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %daddr133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %144)
  %cmp.i348 = icmp ugt i32 %144, -16777217
  br i1 %cmp.i348, label %if.then136, label %if.then143

if.then136:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  %145 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mcast_oif, align 4
  %147 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %fl6, align 8
  br label %if.end147

if.then143:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 7
  %148 = ptrtoint ptr %ucast_oif to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ucast_oif, align 4
  %150 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %fl6, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.then136, %if.end127.if.end147_crit_edge
  call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef nonnull %fl6) #10
  %151 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %cmp150 = icmp slt i16 %152, 0
  br i1 %cmp150, label %if.then152, label %if.end147.if.end156_crit_edge

if.end147.if.end156_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then152:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  %tclass153 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %153 = ptrtoint ptr %tclass153 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %tclass153, align 1
  %conv154 = zext i8 %154 to i16
  %155 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv154, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %if.end147.if.end156_crit_edge
  %156 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %conv158390 = zext i16 %157 to i32
  %flowlabel159 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %158 = ptrtoint ptr %flowlabel159 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flowlabel159, align 8
  %shl.i = shl i32 %conv158390, 20
  %or.i349 = or i32 %shl.i, %159
  store i32 %or.i349, ptr %flowlabel159, align 8
  %skc_net.i350 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %160 = ptrtoint ptr %skc_net.i350 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %skc_net.i350, align 4
  %call163 = call ptr @ip6_dst_lookup_flow(ptr noundef %161, ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %call128) #10
  %cmp.i351 = icmp ugt ptr %call163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  %162 = ptrtoint ptr %call163 to i32
  br label %out

if.end167:                                        ; preds = %if.end156
  %163 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %cmp169 = icmp slt i16 %164, 0
  br i1 %cmp169, label %if.then171, label %if.end167.if.end175_crit_edge

if.end167.if.end175_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

if.then171:                                       ; preds = %if.end167
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %165 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %daddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %166)
  %cmp.i.i = icmp ugt i32 %166, -16777217
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %167 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %bf.load.i = load i32, ptr %mcast_hops.i, align 4
  %bf.shl.i = shl i32 %bf.load.i, 16
  %hlimit.0.in.i = select i1 %cmp.i.i, i32 %bf.shl.i, i32 %bf.load.i
  %hlimit.0.i = ashr i32 %hlimit.0.in.i, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hlimit.0.in.i)
  %cmp.i352 = icmp slt i32 %hlimit.0.in.i, 0
  br i1 %cmp.i352, label %if.then6.i, label %if.then171.ip6_sk_dst_hoplimit.exit_crit_edge

if.then171.ip6_sk_dst_hoplimit.exit_crit_edge:    ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip6_sk_dst_hoplimit.exit

if.then6.i:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = call i32 @ip6_dst_hoplimit(ptr noundef %call163) #10
  br label %ip6_sk_dst_hoplimit.exit

ip6_sk_dst_hoplimit.exit:                         ; preds = %if.then6.i, %if.then171.ip6_sk_dst_hoplimit.exit_crit_edge
  %hlimit.1.i = phi i32 [ %call7.i, %if.then6.i ], [ %hlimit.0.i, %if.then171.ip6_sk_dst_hoplimit.exit_crit_edge ]
  %conv173 = trunc i32 %hlimit.1.i to i16
  %168 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv173, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  br label %if.end175

if.end175:                                        ; preds = %ip6_sk_dst_hoplimit.exit, %if.end167.if.end175_crit_edge
  %169 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp177 = icmp slt i8 %170, 0
  br i1 %cmp177, label %if.then179, label %if.end175.if.end186_crit_edge

if.end175.if.end186_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then179:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  %dontfrag180 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %171 = ptrtoint ptr %dontfrag180 to i32
  call void @__asan_load2_noabort(i32 %171)
  %bf.load181 = load i16, ptr %dontfrag180, align 2
  %172 = trunc i16 %bf.load181 to i8
  %173 = lshr i8 %172, 5
  %conv184 = and i8 %173, 1
  %174 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv184, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  br label %if.end186

if.end186:                                        ; preds = %if.then179, %if.end175.if.end186_crit_edge
  %175 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %msg_flags, align 4
  %and188 = and i32 %176, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end186.back_from_confirm_crit_edge, label %do_confirm

if.end186.back_from_confirm_crit_edge:            ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %back_from_confirm

back_from_confirm:                                ; preds = %if.end211.back_from_confirm_crit_edge, %if.end186.back_from_confirm_crit_edge
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %177 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %msg_flags, align 4
  %call193 = call i32 @ip6_append_data(ptr noundef %sk, ptr noundef nonnull @ip_generic_getfrag, ptr noundef %msg, i32 noundef %add, i32 noundef 4, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %call163, i32 noundef %178) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.else196, label %if.then195

if.then195:                                       ; preds = %back_from_confirm
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_flush_pending_frames(ptr noundef %sk) #10
  br label %if.end203

if.else196:                                       ; preds = %back_from_confirm
  %179 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %msg_flags, align 4
  %and198 = and i32 %180, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.then200, label %if.else196.if.end203_crit_edge

if.else196.if.end203_crit_edge:                   ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then200:                                       ; preds = %if.else196
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %181 = ptrtoint ptr %sk_write_queue.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sk_write_queue.i, align 4
  %cmp.i.i353 = icmp eq ptr %182, %sk_write_queue.i
  %tobool.not5.i = icmp eq ptr %182, null
  %tobool.not.i354 = or i1 %cmp.i.i353, %tobool.not5.i
  br i1 %tobool.not.i354, label %if.then200.if.end203_crit_edge, label %if.end.i

if.then200.if.end203_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.end.i:                                         ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %182, i32 0, i32 18
  %183 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %182, i32 0, i32 15, i32 0, i32 19
  %185 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i355 = zext i16 %186 to i32
  %add.ptr.i.i = getelementptr i8, ptr %184, i32 %conv.i.i355
  %187 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %add.ptr.i.i, align 4
  %call2.i = call i32 @ip6_push_pending_frames(ptr noundef %sk) #10
  br label %if.end203

if.end203:                                        ; preds = %if.end.i, %if.then200.if.end203_crit_edge, %if.else196.if.end203_crit_edge, %if.then195
  %err.0 = phi i32 [ %call193, %if.then195 ], [ 0, %if.else196.if.end203_crit_edge ], [ %call2.i, %if.end.i ], [ 0, %if.then200.if.end203_crit_edge ]
  call void @release_sock(ptr noundef %sk) #10
  br label %done

done:                                             ; preds = %if.end211.done_crit_edge, %if.end203
  %err.1 = phi i32 [ %err.0, %if.end203 ], [ 0, %if.end211.done_crit_edge ]
  call void @dst_release(ptr noundef %call163) #10
  br label %out

out:                                              ; preds = %done, %if.then165
  %err.2 = phi i32 [ %162, %if.then165 ], [ %err.1, %done ]
  br i1 %tobool105.not, label %out.fl6_sock_release.exit361_crit_edge, label %if.then.i359

out.fl6_sock_release.exit361_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %fl6_sock_release.exit361

if.then.i359:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %users.i357 = getelementptr inbounds %struct.ip6_flowlabel, ptr %flowlabel.3387, i32 0, i32 2
  %call.i.i.i358 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i357, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %users.i357, i32 1, i32 3, i32 1) #10
  %188 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i357, ptr %users.i357, i32 1, ptr elementtype(i32) %users.i357) #10, !srcloc !78
  br label %fl6_sock_release.exit361

fl6_sock_release.exit361:                         ; preds = %if.then.i359, %out.fl6_sock_release.exit361_crit_edge
  %tobool.not.i362 = icmp eq ptr %opt_to_free.0, null
  br i1 %tobool.not.i362, label %fl6_sock_release.exit361.txopt_put.exit_crit_edge, label %land.lhs.true.i365

fl6_sock_release.exit361.txopt_put.exit_crit_edge: ; preds = %fl6_sock_release.exit361
  call void @__sanitizer_cov_trace_pc() #12
  br label %txopt_put.exit

land.lhs.true.i365:                               ; preds = %fl6_sock_release.exit361
  %call.i.i.i.i.i.i363 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt_to_free.0, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @llvm.prefetch.p0(ptr nonnull %opt_to_free.0, i32 1, i32 3, i32 1) #10
  %189 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %opt_to_free.0, ptr nonnull %opt_to_free.0, i32 1, ptr nonnull elementtype(i32) %opt_to_free.0) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i364 = extractvalue { i32, i32, i32 } %189, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i364)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i364, 1
  br i1 %cmp.i.i.i.i, label %do.end.i368, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i365
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i364)
  %.not.i.i.i.i366 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i364, 0
  br i1 %.not.i.i.i.i366, label %if.end5.i.i.i.i.txopt_put.exit_crit_edge, label %if.then10.i.i.i.i367, !prof !73

if.end5.i.i.i.i.txopt_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %txopt_put.exit

if.then10.i.i.i.i367:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %opt_to_free.0, i32 noundef 3) #10
  br label %txopt_put.exit

do.end.i368:                                      ; preds = %land.lhs.true.i365
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_to_free.0, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #10
  br label %txopt_put.exit

txopt_put.exit:                                   ; preds = %do.end.i368, %if.then10.i.i.i.i367, %if.end5.i.i.i.i.txopt_put.exit_crit_edge, %fl6_sock_release.exit361.txopt_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp204 = icmp slt i32 %err.2, 0
  %err.2.len = select i1 %cmp204, i32 %err.2, i32 %len
  br label %cleanup

do_confirm:                                       ; preds = %if.end186
  %and207 = and i32 %176, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %do_confirm.if.end211_crit_edge, label %if.then209

do_confirm.if.end211_crit_edge:                   ; preds = %do_confirm
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then209:                                       ; preds = %do_confirm
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call163, i32 0, i32 1
  %190 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ops.i, align 4
  %confirm_neigh.i = getelementptr inbounds %struct.dst_ops, ptr %191, i32 0, i32 15
  %192 = ptrtoint ptr %confirm_neigh.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %confirm_neigh.i, align 4
  %tobool.not.i369 = icmp eq ptr %193, null
  br i1 %tobool.not.i369, label %if.then209.if.end211_crit_edge, label %if.then.i370

if.then209.if.end211_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then.i370:                                     ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #12
  %daddr210 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  call void %193(ptr noundef %call163, ptr noundef %daddr210) #10
  br label %if.end211

if.end211:                                        ; preds = %if.then.i370, %if.then209.if.end211_crit_edge, %do_confirm.if.end211_crit_edge
  %194 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %msg_flags, align 4
  %and213 = and i32 %195, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp ne i32 %and213, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool215.not = icmp eq i32 %len, 0
  %or.cond314 = and i1 %tobool215.not, %tobool214.not
  br i1 %or.cond314, label %if.end211.done_crit_edge, label %if.end211.back_from_confirm_crit_edge

if.end211.back_from_confirm_crit_edge:            ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %back_from_confirm

if.end211.done_crit_edge:                         ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

cleanup:                                          ; preds = %txopt_put.exit, %fl6_sock_lookup.exit326.cleanup_crit_edge, %if.then.i324.cleanup_crit_edge, %if.then.i316, %if.then81.cleanup_crit_edge, %if.else.cleanup_crit_edge, %fl6_sock_lookup.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %inet6_sk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2.len, %txopt_put.exit ], [ -90, %inet6_sk.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -97, %if.end8.cleanup_crit_edge ], [ -22, %fl6_sock_lookup.exit.cleanup_crit_edge ], [ -89, %if.else.cleanup_crit_edge ], [ -22, %fl6_sock_lookup.exit326.cleanup_crit_edge ], [ %call78, %if.then81.cleanup_crit_edge ], [ %call78, %if.then.i316 ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.then.i324.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt_space) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr noundef %addr_len) #2 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -95, ptr %err, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %inet6_sk.exit.out_crit_edge

inet6_sk.exit.out_crit_edge:                      ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %inet6_sk.exit
  %and1 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @ipv6_recv_error(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %err) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end5
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 6
  %7 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %len)
  %cmp = icmp ugt i32 %8, %len
  br i1 %cmp, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_flags, align 4
  %or = or i32 %10, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %copied.0 = phi i32 [ %len, %if.then11 ], [ %8, %if.end9.if.end12_crit_edge ]
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call6, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #10
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.done_crit_edge

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end16:                                         ; preds = %if.end12
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 7
  %17 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i78 = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i78, label %lor.lhs.false.i, label %if.end16.if.then.i_crit_edge

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end16
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %21 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sk_tsflags.i, align 8
  %conv.i = zext i16 %22 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool3.not.i = icmp eq i64 %14, 0
  %and6.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %lor.lhs.false8.i, label %lor.lhs.false2.i.if.then.i_crit_edge

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false2.i
  %23 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hwtstamps.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool9.not.i = icmp eq i64 %24, 0
  %25 = and i16 %22, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool14.not.i = icmp eq i16 %25, 0
  %or.cond36.i = select i1 %tobool9.not.i, i1 true, i1 %tobool14.not.i
  br i1 %or.cond36.i, label %if.else.i, label %lor.lhs.false8.i.if.then.i_crit_edge

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge
  call void @__sock_recv_timestamp(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call6) #10
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_stamp_seq.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #10
  %26 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %28 = call ptr @llvm.returnaddress(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %29) #10
  %sk_stamp.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %30 = ptrtoint ptr %sk_stamp.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %14, ptr %sk_stamp.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %29) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  %31 = ptrtoint ptr %sk_stamp_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sk_stamp_seq.i.i, align 4
  %inc.i.i.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %17, align 4
  %35 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i35.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i35.not.i, label %if.end.i.sock_recv_timestamp.exit_crit_edge, label %land.lhs.true17.i

if.end.i.sock_recv_timestamp.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_recv_timestamp.exit

land.lhs.true17.i:                                ; preds = %if.end.i
  %wifi_acked_valid.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15
  %36 = ptrtoint ptr %wifi_acked_valid.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %wifi_acked_valid.i, align 8
  %37 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool19.not.i = icmp eq i16 %37, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, label %if.then20.i

land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge: ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_recv_timestamp.exit

if.then20.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sock_recv_wifi_status(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call6) #10
  br label %sock_recv_timestamp.exit

sock_recv_timestamp.exit:                         ; preds = %if.then20.i, %land.lhs.true17.i.sock_recv_timestamp.exit_crit_edge, %if.end.i.sock_recv_timestamp.exit_crit_edge
  %tobool17.not = icmp eq ptr %5, null
  br i1 %tobool17.not, label %sock_recv_timestamp.exit.if.end28_crit_edge, label %if.then18

sock_recv_timestamp.exit.if.end28_crit_edge:      ; preds = %sock_recv_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then18:                                        ; preds = %sock_recv_timestamp.exit
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 10, ptr %5, align 4
  %l2tp_unused = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %l2tp_unused to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %l2tp_unused, align 2
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %5, i32 0, i32 3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i79 = zext i16 %43 to i32
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %conv.i.i79
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %44 = call ptr @memcpy(ptr %l2tp_addr, ptr %saddr, i32 16)
  %l2tp_flowinfo = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %l2tp_flowinfo to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %l2tp_flowinfo, align 4
  %l2tp_scope_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %5, i32 0, i32 4
  %46 = ptrtoint ptr %l2tp_scope_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %l2tp_scope_id, align 4
  %l2tp_conn_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %5, i32 0, i32 5
  %47 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %l2tp_conn_id, align 4
  %call.i80 = call i32 @__ipv6_addr_type(ptr noundef %l2tp_addr) #10
  %and22 = and i32 %call.i80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then18.if.end27_crit_edge, label %if.then24

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 3, i32 16
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i, align 8
  %50 = and i16 %49, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.i.not.i82 = icmp eq i16 %50, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i82, ptr %cb.i, ptr %skb_iif.i
  %51 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %cond.i83 = load i32, ptr %cond.in.i, align 8
  %52 = ptrtoint ptr %l2tp_scope_id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i83, ptr %l2tp_scope_id, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then18.if.end27_crit_edge
  %53 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 32, ptr %addr_len, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %sock_recv_timestamp.exit.if.end28_crit_edge
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %54 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rxopt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool29.not = icmp eq i16 %55, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_datagram_recv_ctl(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %call6) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %and32 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.done_crit_edge, label %if.then34

if.end31.done_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len10, align 4
  br label %done

done:                                             ; preds = %if.then34, %if.end31.done_crit_edge, %if.end12.done_crit_edge
  %copied.1 = phi i32 [ %copied.0, %if.end12.done_crit_edge ], [ %57, %if.then34 ], [ %copied.0, %if.end31.done_crit_edge ]
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %call6) #10
  br label %out

out:                                              ; preds = %done, %if.end5.out_crit_edge, %inet6_sk.exit.out_crit_edge
  %copied.2 = phi i32 [ 0, %inet6_sk.exit.out_crit_edge ], [ %copied.1, %done ], [ 0, %if.end5.out_crit_edge ]
  %58 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool37.not = icmp eq i32 %59, 0
  %copied.2. = select i1 %tobool37.not, i32 %copied.2, i32 %59
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3
  %retval.0 = phi i32 [ %copied.2., %out ], [ %call4, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_bind(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %6 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp.not = icmp ne i16 %7, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %addr_len)
  %cmp4 = icmp ult i32 %addr_len, 32
  %or.cond = or i1 %cmp4, %cmp.not
  br i1 %or.cond, label %inet6_sk.exit.cleanup65_crit_edge, label %if.end7

inet6_sk.exit.cleanup65_crit_edge:                ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65

if.end7:                                          ; preds = %inet6_sk.exit
  %l2tp_addr = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 3
  %call.i108 = tail call i32 @__ipv6_addr_type(ptr noundef %l2tp_addr) #10
  %and.i = and i32 %call.i108, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp9 = icmp ne i32 %and.i, 4096
  %and = and i32 %call.i108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond107 = and i1 %cmp9, %tobool.not
  br i1 %or.cond107, label %if.end14, label %if.end7.cleanup65_crit_edge

if.end7.cleanup65_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65

if.end14:                                         ; preds = %if.end7
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end14.cleanup65.sink.split_crit_edge, label %if.end17

if.end14.cleanup65.sink.split_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65.sink.split

if.end17:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp19.not = icmp eq i8 %13, 7
  br i1 %cmp19.not, label %if.end22, label %if.end17.cleanup65.sink.split_crit_edge

if.end17.cleanup65.sink.split_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65.sink.split

if.end22:                                         ; preds = %if.end17
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %14 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %skc_bound_dev_if, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end22.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end22.rcu_read_lock.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end22
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end22.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp24.not = icmp eq i32 %and.i, 0
  br i1 %cmp24.not, label %rcu_read_lock.exit.if.end49_crit_edge, label %if.then26

rcu_read_lock.exit.if.end49_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then26:                                        ; preds = %rcu_read_lock.exit
  %and27 = and i32 %call.i108, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then26.if.end42_crit_edge, label %if.then29

if.then26.if.end42_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then29:                                        ; preds = %if.then26
  %l2tp_scope_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 4
  %20 = ptrtoint ptr %l2tp_scope_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %l2tp_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool30.not = icmp eq i32 %21, 0
  %spec.select = select i1 %tobool30.not, i32 %15, i32 %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool34.not = icmp eq i32 %spec.select, 0
  br i1 %tobool34.not, label %if.then29.out_unlock_rcu_crit_edge, label %if.end36

if.then29.out_unlock_rcu_crit_edge:               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_rcu

if.end36:                                         ; preds = %if.then29
  %22 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i, align 4
  %call38 = tail call ptr @dev_get_by_index_rcu(ptr noundef %23, i32 noundef %spec.select) #10
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end36.out_unlock_rcu_crit_edge, label %if.end36.if.end42_crit_edge

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end36.out_unlock_rcu_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_rcu

if.end42:                                         ; preds = %if.end36.if.end42_crit_edge, %if.then26.if.end42_crit_edge
  %bound_dev_if.1 = phi i32 [ %spec.select, %if.end36.if.end42_crit_edge ], [ %15, %if.then26.if.end42_crit_edge ]
  %dev.0 = phi ptr [ %call38, %if.end36.if.end42_crit_edge ], [ null, %if.then26.if.end42_crit_edge ]
  %24 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i, align 4
  %call45 = tail call i32 @ipv6_chk_addr(ptr noundef %25, ptr noundef %l2tp_addr, ptr noundef %dev.0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end42.out_unlock_rcu_crit_edge, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end42.out_unlock_rcu_crit_edge:                ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_rcu

if.end49:                                         ; preds = %if.end42.if.end49_crit_edge, %rcu_read_lock.exit.if.end49_crit_edge
  %v4addr.1 = phi i32 [ 0, %rcu_read_lock.exit.if.end49_crit_edge ], [ 2130706438, %if.end42.if.end49_crit_edge ]
  %bound_dev_if.3 = phi i32 [ %15, %rcu_read_lock.exit.if.end49_crit_edge ], [ %bound_dev_if.1, %if.end42.if.end49_crit_edge ]
  %call.i111 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i111, label %if.end49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i114

if.end49.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i114:                               ; preds = %if.end49
  %call1.i112 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i112)
  %tobool.not.i113 = icmp eq i32 %call1.i112, 0
  br i1 %tobool.not.i113, label %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i116

land.lhs.true.i114.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i116:                              ; preds = %land.lhs.true.i114
  %.b4.i115 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i115, label %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, label %if.then.i117

land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i117:                                     ; preds = %land.lhs.true2.i116
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i117, %land.lhs.true2.i116.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i114.rcu_read_unlock.exit_crit_edge, %if.end49.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i118 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i118 to ptr
  %preempt_count.i.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i119, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i119, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %l2tp_conn_id = getelementptr inbounds %struct.sockaddr_l2tpip6, ptr %uaddr, i32 0, i32 5
  %30 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l2tp_conn_id, align 4
  %call51 = tail call fastcc ptr @__l2tp_ip6_bind_lookup(ptr noundef %5, ptr noundef %l2tp_addr, ptr noundef null, i32 noundef %bound_dev_if.3, i32 noundef %31)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  br label %cleanup65.sink.split

if.end54:                                         ; preds = %rcu_read_unlock.exit
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %32 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %v4addr.1, ptr %inet_saddr, align 4
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %33 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %v4addr.1, ptr %skc_rcv_saddr, align 4
  %34 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bound_dev_if.3, ptr %skc_bound_dev_if, align 4
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %35 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %l2tp_addr, i32 16)
  %36 = call ptr @memcpy(ptr %cond.i, ptr %l2tp_addr, i32 16)
  %37 = ptrtoint ptr %l2tp_conn_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %l2tp_conn_id, align 4
  %conn_id = getelementptr inbounds %struct.l2tp_ip6_sock, ptr %sk, i32 0, i32 1
  %39 = ptrtoint ptr %conn_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %conn_id, align 8
  %40 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7
  %41 = load ptr, ptr @l2tp_ip6_bind_table, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %41, ptr %40, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end54.sk_add_bind_node.exit_crit_edge, label %do.body12.i.i

if.end54.sk_add_bind_node.exit_crit_edge:         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_add_bind_node.exit

do.body12.i.i:                                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %40, ptr %pprev.i.i, align 4
  br label %sk_add_bind_node.exit

sk_add_bind_node.exit:                            ; preds = %do.body12.i.i, %if.end54.sk_add_bind_node.exit_crit_edge
  store volatile ptr %40, ptr @l2tp_ip6_bind_table, align 4
  %pprev34.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 7, i32 0, i32 1
  %44 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr @l2tp_ip6_bind_table, ptr %pprev34.i.i, align 4
  tail call fastcc void @sk_del_node_init(ptr noundef %sk)
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %8, align 4
  %and.i.i120 = and i32 %46, -257
  store i32 %and.i.i120, ptr %8, align 4
  br label %cleanup65.sink.split

out_unlock_rcu:                                   ; preds = %if.end42.out_unlock_rcu_crit_edge, %if.end36.out_unlock_rcu_crit_edge, %if.then29.out_unlock_rcu_crit_edge
  %err.0.ph = phi i32 [ -19, %if.end36.out_unlock_rcu_crit_edge ], [ -22, %if.then29.out_unlock_rcu_crit_edge ], [ -99, %if.end42.out_unlock_rcu_crit_edge ]
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup65.sink.split

cleanup65.sink.split:                             ; preds = %out_unlock_rcu, %sk_add_bind_node.exit, %if.then53, %if.end17.cleanup65.sink.split_crit_edge, %if.end14.cleanup65.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %sk_add_bind_node.exit ], [ -22, %if.end17.cleanup65.sink.split_crit_edge ], [ %err.0.ph, %out_unlock_rcu ], [ -98, %if.then53 ], [ -22, %if.end14.cleanup65.sink.split_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #10
  br label %cleanup65

cleanup65:                                        ; preds = %cleanup65.sink.split, %if.end7.cleanup65_crit_edge, %inet6_sk.exit.cleanup65_crit_edge
  %retval.0 = phi i32 [ -22, %inet6_sk.exit.cleanup65_crit_edge ], [ -99, %if.end7.cleanup65_crit_edge ], [ %retval.0.ph, %cleanup65.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_backlog_recv(ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mib, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %11, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %do.body.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

do.body.u64_stats_update_begin.exit_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %do.body
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %15 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, ptrtoint (ptr @lockdep_recursion to i32)
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %24 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i7.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i9.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %35, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %36 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %39, ptrtoint (ptr @hardirqs_enabled to i32)
  %40 = inttoptr i32 %add47.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %43 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i12.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %46, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool54.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !73

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %do.body.u64_stats_update_begin.exit_crit_edge
  %47 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %11, i32 0, i32 1, i32 0, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #10
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %50) #10
  %arrayidx6 = getelementptr [37 x i64], ptr %11, i32 0, i32 13
  %51 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx6, align 8
  %add7 = add i64 %52, 1
  store i64 %add7, ptr %arrayidx6, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  %53 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %u64_stats_update_begin.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %u64_stats_update_begin.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_ip6_hash(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #10, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !70

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %5 = load ptr, ptr @l2tp_ip6_table, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %4, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %4, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  store volatile ptr %4, ptr @l2tp_ip6_table, align 4
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr @l2tp_ip6_table, ptr %pprev.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  br label %if.end

if.end:                                           ; preds = %sk_add_node.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_ip6_unhash(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i.i.not.i, label %if.end.sk_del_node_init.exit_crit_edge, label %if.then.i.i

if.end.sk_del_node_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %if.end
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %3, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %3, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !70

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 729, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !70

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %if.end.sk_del_node_init.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @l2tp_ip6_lock) #10
  br label %return

return:                                           ; preds = %sk_del_node_init.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_del_node_init(ptr noundef %sk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not, label %entry.if.end22_crit_edge, label %if.then.i

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.if.then_crit_edge, label %do.body13.i.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.body13.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i, align 4
  br label %if.then

if.then:                                          ; preds = %do.body13.i.i.i, %if.then.i.if.then_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #10
  %8 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge, !prof !70

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 729, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end.if.end22_crit_edge, !prof !70

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then3.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 4) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then3.i.i.i, %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip6_datagram_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_sk_to_tunnel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_merge_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_fixup_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_push_pending_frames(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !56, !57, !58, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_l2tp_ip6__574_800_l2tp_ip6_init6, !1, !"__initcall__kmod_l2tp_ip6__574_800_l2tp_ip6_init6", i1 false, i1 false}
!1 = !{!"../net/l2tp/l2tp_ip6.c", i32 800, i32 1}
!2 = !{ptr @__exitcall_l2tp_ip6_exit, !3, !"__exitcall_l2tp_ip6_exit", i1 false, i1 false}
!3 = !{!"../net/l2tp/l2tp_ip6.c", i32 801, i32 1}
!4 = !{ptr @__UNIQUE_ID_file575, !5, !"__UNIQUE_ID_file575", i1 false, i1 false}
!5 = !{!"../net/l2tp/l2tp_ip6.c", i32 803, i32 1}
!6 = !{ptr @__UNIQUE_ID_license576, !5, !"__UNIQUE_ID_license576", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author577, !8, !"__UNIQUE_ID_author577", i1 false, i1 false}
!8 = !{!"../net/l2tp/l2tp_ip6.c", i32 804, i32 1}
!9 = !{ptr @__UNIQUE_ID_description578, !10, !"__UNIQUE_ID_description578", i1 false, i1 false}
!10 = !{!"../net/l2tp/l2tp_ip6.c", i32 805, i32 1}
!11 = !{ptr @__UNIQUE_ID_version579, !12, !"__UNIQUE_ID_version579", i1 false, i1 false}
!12 = !{!"../net/l2tp/l2tp_ip6.c", i32 806, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias580, !18, !"__UNIQUE_ID_alias580", i1 false, i1 false}
!18 = !{!"../net/l2tp/l2tp_ip6.c", i32 811, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias581, !20, !"__UNIQUE_ID_alias581", i1 false, i1 false}
!20 = !{!"../net/l2tp/l2tp_ip6.c", i32 812, i32 1}
!21 = !{ptr @l2tp_ip6_protosw, !22, !"l2tp_ip6_protosw", i1 false, i1 false}
!22 = !{!"../net/l2tp/l2tp_ip6.c", i32 759, i32 28}
!23 = !{ptr @l2tp_ip6_ops, !24, !"l2tp_ip6_ops", i1 false, i1 false}
!24 = !{!"../net/l2tp/l2tp_ip6.c", i32 734, i32 31}
!25 = !{ptr @l2tp_ip6_protocol, !26, !"l2tp_ip6_protocol", i1 false, i1 false}
!26 = !{!"../net/l2tp/l2tp_ip6.c", i32 766, i32 30}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/l2tp/l2tp_ip6.c", i32 45, i32 8}
!29 = !{ptr @l2tp_ip6_lock, !28, !"l2tp_ip6_lock", i1 false, i1 false}
!30 = !{ptr @l2tp_ip6_bind_table, !31, !"l2tp_ip6_bind_table", i1 false, i1 false}
!31 = !{!"../net/l2tp/l2tp_ip6.c", i32 47, i32 26}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!34 = !{ptr @l2tp_ip6_prot, !35, !"l2tp_ip6_prot", i1 false, i1 false}
!35 = !{!"../net/l2tp/l2tp_ip6.c", i32 714, i32 21}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/sock.h", i32 729, i32 3}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/net/ipv6.h", i32 379, i32 8}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @l2tp_ip6_table, !53, !"l2tp_ip6_table", i1 false, i1 false}
!53 = !{!"../net/l2tp/l2tp_ip6.c", i32 46, i32 26}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/l2tp/l2tp_ip6.c", i32 774, i32 2}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @l2tp_ip6_init._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @l2tp_ip6_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2154583465, i64 2154583953, i64 2154583502, i64 2154583558, i64 2154583592, i64 2154583616, i64 2154583657, i64 2154583678, i64 2154583706, i64 2154583740}
!72 = !{i64 2148368942, i64 2148368974, i64 2148369003, i64 2148369037, i64 2148369068, i64 2148369091}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2148456943}
!75 = !{i64 2148371407, i64 2148371439, i64 2148371468, i64 2148371502, i64 2148371533, i64 2148371556}
!76 = !{i64 2150538596}
!77 = !{i64 2148849227, i64 2148849232, i64 2148849245, i64 2148849289, i64 2148849323, i64 2148849344}
!78 = !{i64 2148369877, i64 2148369903, i64 2148369932, i64 2148369966, i64 2148369997, i64 2148370020}
!79 = !{i64 2149664049}
!80 = !{i64 851148, i64 851172, i64 851193, i64 851210, i64 851227}
!81 = !{i64 2149664315}
!82 = !{i64 2150280743}
!83 = !{i64 2150281068}
!84 = !{i64 2150172670}
!85 = !{i64 2150177604}
!86 = !{i64 2150199322}
!87 = !{i64 2150204216}
