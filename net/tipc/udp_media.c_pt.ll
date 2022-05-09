; ModuleID = '/llk/IR_all_yes/net/tipc/udp_media.c_pt.bc'
source_filename = "../net/tipc/udp_media.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tipc_media = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.124 }
%union.anon.124 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.142, i32, i32, i32, i16, i16, %union.anon.144, i32, %union.anon.145, %union.anon.146, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.142 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.tipc_bearer = type { ptr, i32, %struct.tipc_media_addr, [32 x i8], ptr, %struct.tipc_media_addr, %struct.packet_type, %struct.callback_head, i32, i32, i32, i32, i32, i32, ptr, i8, i32, %struct.refcount_struct }
%struct.tipc_media_addr = type { [32 x i8], i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.udp_bearer = type { ptr, ptr, i32, %struct.work_struct, %struct.udp_replicast }
%struct.udp_replicast = type { %struct.udp_media_addr, %struct.dst_cache, %struct.callback_head, %struct.list_head }
%struct.udp_media_addr = type { i16, i16, %union.anon.157 }
%union.anon.157 = type { %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.158 }
%union.anon.158 = type { ptr, [124 x i8] }
%struct.udp_port_cfg = type { i8, %union.anon.160, %union.anon.161, i16, i16, i32, i8 }
%union.anon.160 = type { %struct.in6_addr }
%union.anon.161 = type { %struct.in6_addr }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.135 = type { ptr }
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
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.ip_mreqn = type { %struct.in_addr, %struct.in_addr, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@tipc_nl_bearer_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@tipc_udp_nl_dump_remoteip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/tipc/udp_media.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tipc_udp_nl_dump_remoteip.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_genl_family = external dso_local global %struct.genl_family, align 4
@tipc_udp_nl_add_bearer_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_nl_udp_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@tipc_udp_nl_bearer_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013tipc: Can't add remote ip to TIPC UDP multicast bearer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tipc_udp_nl_bearer_add\00", [41 x i8] zeroinitializer }, align 32
@tipc_udp_nl_bearer_add._entry_ptr = internal global ptr @tipc_udp_nl_bearer_add._entry, section ".printk_index", align 4
@udp_media_info = dso_local global { %struct.tipc_media, [56 x i8] } { %struct.tipc_media { ptr @tipc_udp_send_msg, ptr @tipc_udp_enable, ptr @tipc_udp_disable, ptr @tipc_udp_addr2str, ptr @tipc_udp_addr2msg, ptr @tipc_udp_msg2addr, ptr null, i32 10, i32 1500, i32 50, i32 50, i32 14000, i32 3, i32 0, [16 x i8] c"udp\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@tipc_udp_is_known_peer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_udp_is_known_peer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tipc_udp_is_known_peer = private unnamed_addr constant [23 x i8] c"tipc_udp_is_known_peer\00", align 1
@tipc_udp_is_known_peer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.tipc_udp_is_known_peer, ptr @.str, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013tipc: UDP bearer instance not found\0A\00", [57 x i8] zeroinitializer }, align 32
@tipc_udp_is_known_peer._entry_ptr = internal global ptr @tipc_udp_is_known_peer._entry, section ".printk_index", align 4
@tipc_udp_rcast_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_udp_rcast_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016tipc: New replicast peer: %pI4\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_udp_rcast_add\00", [45 x i8] zeroinitializer }, align 32
@tipc_udp_rcast_add._entry_ptr = internal global ptr @tipc_udp_rcast_add._entry, section ".printk_index", align 4
@tipc_udp_rcast_add._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016tipc: New replicast peer: %pI6\0A\00", [62 x i8] zeroinitializer }, align 32
@tipc_udp_rcast_add._entry_ptr.17 = internal global ptr @tipc_udp_rcast_add._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tipc_udp_send_msg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_udp_send_msg.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@tipc_udp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013tipc: Invalid UDP bearer configuration\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tipc_udp_enable\00", [16 x i8] zeroinitializer }, align 32
@tipc_udp_enable._entry_ptr = internal global ptr @tipc_udp_enable._entry, section ".printk_index", align 4
@tipc_udp_enable._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014tipc: Failed to set node id, please configure manually\0A\00", [38 x i8] zeroinitializer }, align 32
@tipc_udp_enable._entry_ptr.24 = internal global ptr @tipc_udp_enable._entry.22, section ".printk_index", align 4
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MTU too low for tipc bearer\0A\00", [35 x i8] zeroinitializer }, align 32
@tipc_udp_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_udp_recv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tipc_udp_recv = private unnamed_addr constant [14 x i8] c"tipc_udp_recv\00", align 1
@tipc_udp_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.tipc_udp_recv, ptr @.str, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013tipc: Failed to get UDP bearer reference\00", [53 x i8] zeroinitializer }, align 32
@tipc_udp_recv._entry_ptr = internal global ptr @tipc_udp_recv._entry, section ".printk_index", align 4
@tipc_udp_recv.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_udp_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_udp_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.28, ptr @.str, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tipc_udp_disable\00", [47 x i8] zeroinitializer }, align 32
@tipc_udp_disable._entry_ptr = internal global ptr @tipc_udp_disable._entry, section ".printk_index", align 4
@tipc_udp_disable.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&ub->work)\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%pI4:%u\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%pI6:%u\00", [24 x i8] zeroinitializer }, align 32
@tipc_udp_addr2str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013tipc: Invalid UDP media address\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_udp_addr2str\00", [46 x i8] zeroinitializer }, align 32
@tipc_udp_addr2str._entry_ptr = internal global ptr @tipc_udp_addr2str._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 499, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 642, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"udp_media_info\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 843, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 45, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 723, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 991, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 287, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 321, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 324, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 259, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 688, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 716, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"../net/tipc/bearer.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 261, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 378, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 831, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 839, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 135, i32 23 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 137, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [24 x i8] c"../net/tipc/udp_media.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 139, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @tipc_udp_addr2str._entry, ptr @tipc_udp_addr2str._entry_ptr, ptr @tipc_udp_disable._entry, ptr @tipc_udp_disable._entry_ptr, ptr @tipc_udp_enable._entry, ptr @tipc_udp_enable._entry.22, ptr @tipc_udp_enable._entry_ptr, ptr @tipc_udp_enable._entry_ptr.24, ptr @tipc_udp_is_known_peer._entry, ptr @tipc_udp_is_known_peer._entry_ptr, ptr @tipc_udp_nl_bearer_add._entry, ptr @tipc_udp_nl_bearer_add._entry_ptr, ptr @tipc_udp_rcast_add._entry, ptr @tipc_udp_rcast_add._entry.15, ptr @tipc_udp_rcast_add._entry_ptr, ptr @tipc_udp_rcast_add._entry_ptr.17, ptr @tipc_udp_recv._entry, ptr @tipc_udp_recv._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @udp_media_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @tipc_udp_is_known_peer._rs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @tipc_udp_recv._rs, ptr @.str.26, ptr @.str.28, ptr @tipc_udp_disable.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_nl_bearer_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_media_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_is_known_peer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_is_known_peer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_rcast_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_rcast_add._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_enable._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_recv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_disable.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_udp_addr2str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_udp_nl_dump_remoteip(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %ip4.i = alloca %struct.sockaddr_in, align 4
  %ip6.i = alloca %struct.sockaddr_in6, align 4
  %battrs = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb, align 4
  %portid4 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %portid4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portid4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %attrs6 = getelementptr inbounds %struct.genl_dumpit_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %attrs6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs6, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %battrs) #11
  %18 = getelementptr inbounds [5 x ptr], ptr %battrs, i32 0, i32 1
  %arrayidx8 = getelementptr ptr, ptr %12, i32 1
  %19 = call ptr @memset(ptr %battrs, i32 255, i32 20)
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %if.then.cleanup.thread_crit_edge, label %if.end

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv.i.i = zext i16 %23 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %battrs, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_bearer_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool13.not = icmp eq i32 %call2.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end15:                                         ; preds = %if.end
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %18, align 4
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %if.end15.cleanup.thread_crit_edge, label %if.end19

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end19:                                         ; preds = %if.end15
  %add.ptr.i = getelementptr i8, ptr %25, i32 4
  call void @rtnl_lock() #11
  %call22 = call ptr @tipc_bearer_find(ptr noundef %17, ptr noundef %add.ptr.i) #11
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %cleanup

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @rtnl_unlock() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then24, %if.end15.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.end15.cleanup.thread_crit_edge ], [ %call2.i, %if.end.cleanup.thread_crit_edge ], [ -22, %if.then.cleanup.thread_crit_edge ], [ -22, %if.then24 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %battrs) #11
  br label %cleanup93

cleanup:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %call22, i32 0, i32 13
  %26 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %identity, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %battrs) #11
  br label %do.body50

if.else:                                          ; preds = %entry
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %skc_net.i142 = getelementptr inbounds %struct.sock_common, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %skc_net.i142 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skc_net.i142, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %33 = load i32, ptr @tipc_net_id, align 4
  %call31 = tail call fastcc ptr @net_generic(ptr noundef %32, i32 noundef %33)
  tail call void @rtnl_lock() #11
  %call32 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call32, label %if.else.do.end_crit_edge, label %land.lhs.true33

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true33:                                  ; preds = %if.else
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b140 = load i1, ptr @tipc_udp_nl_dump_remoteip.__warned, align 1
  br i1 %.b140, label %land.lhs.true36.do.end_crit_edge, label %if.then38

land.lhs.true36.do.end_crit_edge:                 ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_nl_dump_remoteip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 499, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then38, %land.lhs.true36.do.end_crit_edge, %land.lhs.true33.do.end_crit_edge, %if.else.do.end_crit_edge
  %arrayidx41 = getelementptr %struct.tipc_net, ptr %call31, i32 0, i32 15, i32 %2
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %35, null
  br i1 %tobool42.not, label %if.then43, label %do.end.do.body50_crit_edge

do.end.do.body50_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body50

if.then43:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtnl_unlock() #11
  br label %cleanup93

do.body50:                                        ; preds = %do.end.do.body50_crit_edge, %cleanup
  %b.1 = phi ptr [ %call22, %cleanup ], [ %35, %do.end.do.body50_crit_edge ]
  %bid.1 = phi i32 [ %27, %cleanup ], [ %2, %do.end.do.body50_crit_edge ]
  %call51 = call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call51, label %do.body50.do.end60_crit_edge, label %land.lhs.true52

do.body50.do.end60_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

land.lhs.true52:                                  ; preds = %do.body50
  %call53 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b138139 = load i1, ptr @tipc_udp_nl_dump_remoteip.__warned.2, align 1
  br i1 %.b138139, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_nl_dump_remoteip.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true52.do.end60_crit_edge, %do.body50.do.end60_crit_edge
  %36 = ptrtoint ptr %b.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b.1, align 4
  %tobool62.not = icmp eq ptr %37, null
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  call void @rtnl_unlock() #11
  br label %cleanup93

if.end64:                                         ; preds = %do.end60
  %list = getelementptr inbounds %struct.udp_bearer, ptr %37, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list, align 4
  %cmp.not156 = icmp eq ptr %39, %list
  br i1 %cmp.not156, label %if.end64.done_crit_edge, label %for.body.lr.ph

if.end64.done_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

for.body.lr.ph:                                   ; preds = %if.end64
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %40 = getelementptr inbounds %struct.sockaddr_in6, ptr %ip6.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.sockaddr_in6, ptr %ip6.i, i32 0, i32 3
  %42 = getelementptr inbounds i8, ptr %ip6.i, i32 4
  %43 = getelementptr inbounds %struct.sockaddr_in, ptr %ip4.i, i32 0, i32 1
  %44 = getelementptr inbounds %struct.sockaddr_in, ptr %ip4.i, i32 0, i32 2
  %45 = getelementptr inbounds i8, ptr %ip4.i, i32 8
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %count.for.body_crit_edge, %for.body.lr.ph
  %.pn.in160 = phi ptr [ %39, %for.body.lr.ph ], [ %.pn162, %count.for.body_crit_edge ]
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %count.for.body_crit_edge ]
  %rcast.0161 = getelementptr i8, ptr %.pn.in160, i32 -36
  %46 = ptrtoint ptr %.pn.in160 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn162 = load ptr, ptr %.pn.in160, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0157, i32 %4)
  %cmp75 = icmp ult i32 %i.0157, %4
  br i1 %cmp75, label %for.body.count_crit_edge, label %if.end77

for.body.count_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %count

if.end77:                                         ; preds = %for.body
  %47 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nlmsg_seq, align 4
  %call78 = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %8, i32 noundef %50, ptr noundef nonnull @tipc_genl_family, i32 noundef 2, i8 noundef zeroext 4) #11
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.done_crit_edge, label %if.end81

if.end77.done_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end81:                                         ; preds = %if.end77
  %51 = ptrtoint ptr %rcast.0161 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %rcast.0161, align 4
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i16 %52, label %if.end81.if.end85_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then8.i
  ]

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then.i:                                        ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip4.i) #11
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 0, ptr %45, align 4
  %55 = ptrtoint ptr %ip4.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %ip4.i, align 4
  %port.i = getelementptr i8, ptr %.pn.in160, i32 -34
  %56 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %port.i, align 2
  %58 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %43, align 2
  %59 = getelementptr i8, ptr %.pn.in160, i32 -32
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %62 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %44, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef nonnull %ip4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip4.i) #11
  br i1 %tobool.not.i, label %if.then.i.if.end85_crit_edge, label %if.then.i.if.then.i144_crit_edge

if.then.i.if.then.i144_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i144

if.then.i.if.end85_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then8.i:                                       ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ip6.i) #11
  %63 = call ptr @memset(ptr %42, i32 0, i32 24)
  %64 = ptrtoint ptr %ip6.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 10, ptr %ip6.i, align 4
  %port9.i = getelementptr i8, ptr %.pn.in160, i32 -34
  %65 = ptrtoint ptr %port9.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %port9.i, align 2
  %67 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %40, align 2
  %68 = getelementptr i8, ptr %.pn.in160, i32 -32
  %69 = call ptr @memcpy(ptr %41, ptr %68, i32 16)
  %call10.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 28, ptr noundef nonnull %ip6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ip6.i) #11
  br i1 %tobool11.not.i, label %if.then8.i.if.end85_crit_edge, label %if.then8.i.if.then.i144_crit_edge

if.then8.i.if.then.i144_crit_edge:                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i144

if.then8.i.if.end85_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then.i144:                                     ; preds = %if.then8.i.if.then.i144_crit_edge, %if.then.i.if.then.i144_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call78, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i144.done_crit_edge, label %if.then.i.i.i

if.then.i144.done_crit_edge:                      ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then.i.i.i:                                    ; preds = %if.then.i144
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %71, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !102

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %72 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #11
  br label %done

if.end85:                                         ; preds = %if.then8.i.if.end85_crit_edge, %if.then.i.if.end85_crit_edge, %if.end81.if.end85_crit_edge
  %add.ptr1.i145 = getelementptr i8, ptr %call78, i32 -20
  %74 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i145 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %76 = ptrtoint ptr %add.ptr1.i145 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i145, align 4
  br label %count

count:                                            ; preds = %if.end85, %for.body.count_crit_edge
  %inc = add i32 %i.0157, 1
  %cmp.not = icmp eq ptr %.pn162, %list
  br i1 %cmp.not, label %count.done_crit_edge, label %count.for.body_crit_edge

count.for.body_crit_edge:                         ; preds = %count
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

count.done_crit_edge:                             ; preds = %count
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

done:                                             ; preds = %count.done_crit_edge, %if.end.i.i.i, %if.then.i144.done_crit_edge, %if.end77.done_crit_edge, %if.end64.done_crit_edge
  %i.0153 = phi i32 [ %i.0157, %if.end.i.i.i ], [ %i.0157, %if.then.i144.done_crit_edge ], [ 0, %if.end64.done_crit_edge ], [ %i.0157, %if.end77.done_crit_edge ], [ %inc, %count.done_crit_edge ]
  call void @rtnl_unlock() #11
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %bid.1, ptr %0, align 4
  %78 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %i.0153, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %done, %if.then63, %if.then43, %cleanup.thread
  %retval.2 = phi i32 [ %80, %done ], [ -22, %if.then63 ], [ -22, %if.then43 ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_bearer_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.6) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_udp_nl_add_bearer_data(ptr nocapture noundef readonly %msg, ptr nocapture noundef readonly %b) local_unnamed_addr #0 align 64 {
entry:
  %ip4.i48 = alloca %struct.sockaddr_in, align 4
  %ip6.i49 = alloca %struct.sockaddr_in6, align 4
  %ip4.i = alloca %struct.sockaddr_in, align 4
  %ip6.i = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @tipc_udp_nl_add_bearer_data.__warned, align 1
  br i1 %.b47, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_nl_add_bearer_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 548, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %3, i32 noundef 4, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool8.not69 = icmp eq ptr %5, null
  %tobool8.not = select i1 %cmp.i, i1 true, i1 %tobool8.not69
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %9, label %if.end10.if.end15_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then8.i
  ]

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then.i:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip4.i) #11
  %11 = getelementptr inbounds %struct.sockaddr_in, ptr %ip4.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sockaddr_in, ptr %ip4.i, i32 0, i32 2
  %13 = getelementptr inbounds i8, ptr %ip4.i, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %13, align 4
  %15 = ptrtoint ptr %ip4.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %ip4.i, align 4
  %port.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %port.i, align 2
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %11, align 2
  %19 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %12, align 4
  %call.i = call i32 @nla_put(ptr noundef %7, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %ip4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip4.i) #11
  br i1 %tobool.not.i, label %if.then.i.if.end15_crit_edge, label %if.then.i.if.then.i.i_crit_edge

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.if.end15_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then8.i:                                       ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ip6.i) #11
  %23 = getelementptr inbounds %struct.sockaddr_in6, ptr %ip6.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.sockaddr_in6, ptr %ip6.i, i32 0, i32 3
  %25 = getelementptr inbounds i8, ptr %ip6.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 24)
  %27 = ptrtoint ptr %ip6.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 10, ptr %ip6.i, align 4
  %port9.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %port9.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %port9.i, align 2
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %23, align 2
  %31 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2, i32 0, i32 4
  %32 = call ptr @memcpy(ptr %24, ptr %31, i32 16)
  %call10.i = call i32 @nla_put(ptr noundef %7, i32 noundef 1, i32 noundef 28, ptr noundef nonnull %ip6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ip6.i) #11
  br i1 %tobool11.not.i, label %if.then8.i.if.end15_crit_edge, label %if.then8.i.if.then.i.i_crit_edge

if.then8.i.if.then.i.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then8.i.if.end15_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %if.then8.i.if.end15_crit_edge, %if.then.i.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %bcast_addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %msg, align 4
  %35 = ptrtoint ptr %bcast_addr to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bcast_addr, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %36, label %if.end15.if.end21_crit_edge [
    i16 2048, label %if.then.i53
    i16 -31011, label %if.then8.i57
  ]

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then.i53:                                      ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip4.i48) #11
  %38 = getelementptr inbounds %struct.sockaddr_in, ptr %ip4.i48, i32 0, i32 1
  %39 = getelementptr inbounds %struct.sockaddr_in, ptr %ip4.i48, i32 0, i32 2
  %40 = getelementptr inbounds i8, ptr %ip4.i48, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %40, align 4
  %42 = ptrtoint ptr %ip4.i48 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %ip4.i48, align 4
  %port.i50 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 0, i32 2
  %43 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %port.i50, align 2
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %38, align 2
  %46 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %39, align 4
  %call.i51 = call i32 @nla_put(ptr noundef %34, i32 noundef 2, i32 noundef 16, ptr noundef nonnull %ip4.i48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip4.i48) #11
  br i1 %tobool.not.i52, label %if.then.i53.if.end21_crit_edge, label %if.then.i53.if.then.i.i_crit_edge

if.then.i53.if.then.i.i_crit_edge:                ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i53.if.end21_crit_edge:                   ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then8.i57:                                     ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ip6.i49) #11
  %50 = getelementptr inbounds %struct.sockaddr_in6, ptr %ip6.i49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.sockaddr_in6, ptr %ip6.i49, i32 0, i32 3
  %52 = getelementptr inbounds i8, ptr %ip6.i49, i32 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 24)
  %54 = ptrtoint ptr %ip6.i49 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 10, ptr %ip6.i49, align 4
  %port9.i54 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 0, i32 2
  %55 = ptrtoint ptr %port9.i54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %port9.i54, align 2
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %50, align 2
  %58 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 0, i32 4
  %59 = call ptr @memcpy(ptr %51, ptr %58, i32 16)
  %call10.i55 = call i32 @nla_put(ptr noundef %34, i32 noundef 2, i32 noundef 28, ptr noundef nonnull %ip6.i49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i55)
  %tobool11.not.i56 = icmp eq i32 %call10.i55, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ip6.i49) #11
  br i1 %tobool11.not.i56, label %if.then8.i57.if.end21_crit_edge, label %if.then8.i57.if.then.i.i_crit_edge

if.then8.i57.if.then.i.i_crit_edge:               ; preds = %if.then8.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then8.i57.if.end21_crit_edge:                  ; preds = %if.then8.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %if.then8.i57.if.end21_crit_edge, %if.then.i53.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %list = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 4, i32 3
  %60 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %list, align 4
  %cmp.i61.not = icmp eq ptr %61, %list
  br i1 %cmp.i61.not, label %if.end21.if.end30_crit_edge, label %if.then24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  %62 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %msg, align 4
  %call.i62 = call i32 @nla_put(ptr noundef %63, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool27.not = icmp eq i32 %call.i62, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %if.then24.if.then.i.i_crit_edge

if.then24.if.then.i.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %64 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg, align 4
  %tail.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i.i63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i63, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i64 = trunc i32 %sub.ptr.sub.i to i16
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i64, ptr %5, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then24.if.then.i.i_crit_edge, %if.then8.i57.if.then.i.i_crit_edge, %if.then.i53.if.then.i.i_crit_edge, %if.then8.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %69 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %msg, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %72, %5
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !102

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %70, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end30, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -19, %do.end.cleanup_crit_edge ], [ -90, %if.end.i.i ], [ -90, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_udp_nl_bearer_add(ptr noundef %b, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  %sa.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %addr = alloca %struct.udp_media_addr, align 4
  %opts = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %addr) #11
  %0 = call ptr @memset(ptr %addr, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opts) #11
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %1 = call ptr @memset(ptr %opts, i32 255, i32 16)
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %3 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %opts, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_udp_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [4 x ptr], ptr %opts, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sa.i) #11
  %7 = call ptr @memset(ptr %sa.i, i32 255, i32 128)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %sa.i, ptr noundef nonnull %6, i32 noundef 128) #11
  %8 = ptrtoint ptr %sa.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sa.i, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %9, label %tipc_parse_udp_addr.exit [
    i16 2, label %if.then.i
    i16 10, label %if.then7.i
  ]

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2048, ptr %addr, align 4
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa.i, i32 0, i32 1
  %12 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sin_port.i, align 2
  %port.i = getelementptr inbounds %struct.udp_media_addr, ptr %addr, i32 0, i32 1
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %port.i, align 2
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa.i, i32 0, i32 2
  %15 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sin_addr.i, align 4
  %17 = getelementptr inbounds %struct.udp_media_addr, ptr %addr, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 4
  br label %if.end8

if.then7.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -31011, ptr %addr, align 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i, i32 0, i32 1
  %20 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sin6_port.i, align 2
  %port9.i = getelementptr inbounds %struct.udp_media_addr, ptr %addr, i32 0, i32 1
  %22 = ptrtoint ptr %port9.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %port9.i, align 2
  %23 = getelementptr inbounds %struct.udp_media_addr, ptr %addr, i32 0, i32 2
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %23, ptr %sin6_addr.i, i32 16)
  br label %if.end8

tipc_parse_udp_addr.exit:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sa.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.then7.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sa.i) #11
  %bcast_addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5
  %25 = ptrtoint ptr %bcast_addr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bcast_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %26)
  %cmp.i = icmp eq i16 %26, 2048
  %27 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and.i.i = and i32 %29, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %29)
  %cmp.i7.i = icmp ult i32 %29, -16777216
  %retval.0.in.i = select i1 %cmp.i, i1 %cmp.i.i, i1 %cmp.i7.i
  br i1 %retval.0.in.i, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = call fastcc zeroext i1 @tipc_udp_is_known_peer(ptr noundef %b, ptr noundef nonnull %addr)
  br i1 %call14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call fastcc i32 @tipc_udp_rcast_add(ptr noundef %b, ptr noundef nonnull %addr)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end13.cleanup_crit_edge, %do.end, %tipc_parse_udp_addr.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call17, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -99, %tipc_parse_udp_addr.exit ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opts) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tipc_udp_is_known_peer(ptr noundef %b, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %b, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call, label %entry.do.end9_crit_edge, label %lor.lhs.false

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @tipc_udp_is_known_peer.__warned, align 1
  br i1 %.b50, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_is_known_peer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 285, ptr noundef nonnull @.str.6) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %if.then12, label %if.end22

if.then12:                                        ; preds = %do.end9
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_udp_is_known_peer._rs, ptr noundef nonnull @__func__.tipc_udp_is_known_peer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  br label %cleanup

if.end22:                                         ; preds = %do.end9
  %list = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 4, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end22
  %.pn.in.in = phi ptr [ %list, %if.end22 ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %list
  br i1 %cmp.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %rcast.0 = getelementptr i8, ptr %.pn.in, i32 -36
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %rcast.0, ptr noundef dereferenceable(20) %addr, i32 20) #15
  %tobool35.not = icmp eq i32 %bcmp, 0
  br i1 %tobool35.not, label %for.body.cleanup.loopexit_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  %3 = xor i1 %cmp.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end18, %if.then12.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end18 ], [ false, %if.then12.cleanup_crit_edge ], [ %3, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_udp_rcast_add(ptr noundef %b, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %b, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call, label %entry.do.end8_crit_edge, label %lor.lhs.false

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @tipc_udp_rcast_add.__warned, align 1
  br i1 %.b56, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_rcast_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.6) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %lor.lhs.false.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 44) #16
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %dst_cache = getelementptr inbounds %struct.udp_replicast, ptr %call7.i, i32 0, i32 1
  %call17 = tail call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %3 = call ptr @memcpy(ptr %call7.i, ptr %addr, i32 20)
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %5, label %if.end20.if.end42_crit_edge [
    i16 2048, label %if.end20.if.end42.sink.split_crit_edge
    i16 -31011, label %do.end37
  ]

if.end20.if.end42.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split

if.end20.if.end42_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.end37:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %do.end37, %if.end20.if.end42.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %do.end37 ], [ @.str.13, %if.end20.if.end42.sink.split_crit_edge ]
  %7 = getelementptr inbounds %struct.udp_media_addr, ptr %call7.i, i32 0, i32 2
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink, ptr noundef %7) #14
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.end20.if.end42_crit_edge
  %broadcast = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %broadcast to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %broadcast, align 1
  %list = getelementptr inbounds %struct.udp_replicast, ptr %call7.i, i32 0, i32 3
  %list44 = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %list44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list44, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %list44, ptr noundef %10) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.udp_replicast, ptr %call7.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list44, ptr %prev2.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  %13 = ptrtoint ptr %list44 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %list44, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end42.cleanup_crit_edge, %if.then19, %if.end12.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then19 ], [ -19, %do.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_udp_send_msg(ptr noundef %net, ptr noundef %skb, ptr noundef %b, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 48
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 48, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -30518, ptr %4, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -4194305
  store i32 %bf.clear.i, ptr %inner_protocol_type.i, align 2
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %b, align 4
  %call7 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end5.do.end16_crit_edge

if.end5.do.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true:                                    ; preds = %if.end5
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b96 = load i1, ptr @tipc_udp_send_msg.__warned, align 1
  br i1 %.b96, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_send_msg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @.str.6) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %if.end5.do.end16_crit_edge
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %do.end16.out_crit_edge, label %if.end20

do.end16.out_crit_edge:                           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end20:                                         ; preds = %do.end16
  %broadcast = getelementptr inbounds %struct.tipc_media_addr, ptr %addr, i32 0, i32 2
  %9 = ptrtoint ptr %broadcast to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %broadcast, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp21.not = icmp eq i8 %10, 2
  br i1 %cmp21.not, label %do.body27, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %dst_cache = getelementptr inbounds %struct.udp_bearer, ptr %8, i32 0, i32 4, i32 1
  %call25 = tail call fastcc i32 @tipc_udp_xmit(ptr noundef %net, ptr noundef %skb, ptr noundef nonnull %8, ptr noundef %addr1, ptr noundef %addr, ptr noundef %dst_cache)
  br label %cleanup69

do.body27:                                        ; preds = %if.end20
  %call28 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %do.body27.do.end38_crit_edge

do.body27.do.end38_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

land.lhs.true30:                                  ; preds = %do.body27
  %call31 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.do.end38_crit_edge, label %land.lhs.true33

land.lhs.true30.do.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %.b9495 = load i1, ptr @tipc_udp_send_msg.__warned.18, align 1
  br i1 %.b9495, label %land.lhs.true33.do.end38_crit_edge, label %if.then35

land.lhs.true33.do.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_send_msg.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 259, ptr noundef nonnull @.str.19) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %land.lhs.true33.do.end38_crit_edge, %land.lhs.true30.do.end38_crit_edge, %do.body27.do.end38_crit_edge
  %list = getelementptr inbounds %struct.udp_bearer, ptr %8, i32 0, i32 4, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end53.for.cond_crit_edge, %do.end38
  %.pn.in = phi ptr [ %list, %do.end38 ], [ %.pn, %if.end53.for.cond_crit_edge ]
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %rcast.0 = getelementptr i8, ptr %.pn, i32 -36
  %cmp48.not = icmp eq ptr %.pn, %list
  br i1 %cmp48.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body:                                         ; preds = %for.cond
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #11
  %tobool51.not = icmp eq ptr %call.i.i, null
  br i1 %tobool51.not, label %for.body.out_crit_edge, label %if.end53

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end53:                                         ; preds = %for.body
  %dst_cache55 = getelementptr i8, ptr %.pn, i32 -16
  %call56 = tail call fastcc i32 @tipc_udp_xmit(ptr noundef %net, ptr noundef nonnull %call.i.i, ptr noundef nonnull %8, ptr noundef %addr1, ptr noundef %rcast.0, ptr noundef %dst_cache55)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end53.for.cond_crit_edge, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end53.for.cond_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

out:                                              ; preds = %if.end53.out_crit_edge, %for.body.out_crit_edge, %for.cond.out_crit_edge, %do.end16.out_crit_edge, %if.then.out_crit_edge
  %err.1 = phi i32 [ %call3, %if.then.out_crit_edge ], [ -19, %do.end16.out_crit_edge ], [ -12, %for.body.out_crit_edge ], [ %call56, %if.end53.out_crit_edge ], [ 0, %for.cond.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup69

cleanup69:                                        ; preds = %out, %if.then23
  %retval.0 = phi i32 [ %err.1, %out ], [ %call25, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_udp_enable(ptr noundef %net, ptr noundef %b, ptr nocapture noundef readonly %attrs) #0 align 64 {
entry:
  %sa.i262 = alloca %struct.__kernel_sockaddr_storage, align 4
  %sa.i = alloca %struct.__kernel_sockaddr_storage, align 4
  %remote = alloca %struct.udp_media_addr, align 4
  %local = alloca %struct.udp_media_addr, align 4
  %udp_conf = alloca %struct.udp_port_cfg, align 4
  %tuncfg = alloca %struct.udp_tunnel_sock_cfg, align 4
  %opts = alloca [4 x ptr], align 4
  %node_id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %remote) #11
  %0 = call ptr @memset(ptr %remote, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %local) #11
  %1 = call ptr @memset(ptr %local, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %udp_conf) #11
  %2 = call ptr @memset(ptr %udp_conf, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tuncfg) #11
  %3 = call ptr @memset(ptr %tuncfg, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opts) #11
  %4 = getelementptr inbounds [4 x ptr], ptr %opts, i32 0, i32 1
  %5 = getelementptr inbounds [4 x ptr], ptr %opts, i32 0, i32 2
  %6 = call ptr @memset(ptr %opts, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_id) #11
  %7 = call ptr @memset(ptr %node_id, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 100) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.udp_bearer, ptr %call7.i.i, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.udp_bearer, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 8
  %arrayidx = getelementptr ptr, ptr %attrs, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %if.end.err205_crit_edge, label %if.end3

if.end.err205_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %opts, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tipc_nl_udp_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.err205_crit_edge

if.end3.err205_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.end8:                                          ; preds = %if.end3
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %tobool10.not = icmp eq ptr %16, null
  br i1 %tobool10.not, label %if.end8.do.end_crit_edge, label %lor.lhs.false

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %lor.lhs.false.do.end_crit_edge, label %if.end15

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end8.do.end_crit_edge
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %err205

if.end15:                                         ; preds = %lor.lhs.false
  %ifindex = getelementptr inbounds %struct.udp_bearer, ptr %call7.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sa.i) #11
  %19 = call ptr @memset(ptr %sa.i, i32 255, i32 128)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %sa.i, ptr noundef nonnull %16, i32 noundef 128) #11
  %20 = ptrtoint ptr %sa.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sa.i, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %21, label %if.end15.tipc_parse_udp_addr.exit_crit_edge [
    i16 2, label %if.then.i
    i16 10, label %if.then7.i
  ]

if.end15.tipc_parse_udp_addr.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_parse_udp_addr.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %local to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2048, ptr %local, align 4
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa.i, i32 0, i32 1
  %24 = ptrtoint ptr %sin_port.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sin_port.i, align 2
  %port.i = getelementptr inbounds %struct.udp_media_addr, ptr %local, i32 0, i32 1
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %port.i, align 2
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa.i, i32 0, i32 2
  %27 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin_addr.i, align 4
  %29 = getelementptr inbounds %struct.udp_media_addr, ptr %local, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  br label %if.end20

if.then7.i:                                       ; preds = %if.end15
  %31 = ptrtoint ptr %local to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -31011, ptr %local, align 4
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i, i32 0, i32 1
  %32 = ptrtoint ptr %sin6_port.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sin6_port.i, align 2
  %port9.i = getelementptr inbounds %struct.udp_media_addr, ptr %local, i32 0, i32 1
  %34 = ptrtoint ptr %port9.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %port9.i, align 2
  %35 = getelementptr inbounds %struct.udp_media_addr, ptr %local, i32 0, i32 2
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i, i32 0, i32 3
  %36 = call ptr @memcpy(ptr %35, ptr %sin6_addr.i, i32 16)
  %tobool.not.i = icmp eq ptr %ifindex, null
  br i1 %tobool.not.i, label %if.then7.i.if.end20_crit_edge, label %if.then10.i

if.then7.i.if.end20_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then10.i:                                      ; preds = %if.then7.i
  %call.i.i = call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i) #11
  %and.i36.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool.not.i.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.then10.i.land.lhs.true.i_crit_edge

if.then10.i.land.lhs.true.i_crit_edge:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.rhs.i.i:                                      ; preds = %if.then10.i
  %and1.i.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %and3.i.i = and i32 %call.i.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %or.cond.i = and i1 %tobool2.not.i.i, %tobool4.i.i
  br i1 %or.cond.i, label %lor.rhs.i.i.land.lhs.true.i_crit_edge, label %lor.rhs.i.i.if.end.i_crit_edge

lor.rhs.i.i.if.end.i_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.rhs.i.i.land.lhs.true.i_crit_edge:            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.rhs.i.i.land.lhs.true.i_crit_edge, %if.then10.i.land.lhs.true.i_crit_edge
  %sin6_scope_id.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i, i32 0, i32 4
  %37 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sin6_scope_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool15.not.i = icmp eq i32 %38, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.tipc_parse_udp_addr.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.tipc_parse_udp_addr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_parse_udp_addr.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.rhs.i.i.if.end.i_crit_edge
  %sin6_scope_id17.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i, i32 0, i32 4
  %39 = ptrtoint ptr %sin6_scope_id17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sin6_scope_id17.i, align 4
  %41 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ifindex, align 8
  br label %if.end20

tipc_parse_udp_addr.exit:                         ; preds = %land.lhs.true.i.tipc_parse_udp_addr.exit_crit_edge, %if.end15.tipc_parse_udp_addr.exit_crit_edge
  %retval.2.i = phi i32 [ -22, %land.lhs.true.i.tipc_parse_udp_addr.exit_crit_edge ], [ -99, %if.end15.tipc_parse_udp_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sa.i) #11
  br label %err205

if.end20:                                         ; preds = %if.end.i, %if.then7.i.if.end20_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sa.i) #11
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sa.i262) #11
  %44 = call ptr @memset(ptr %sa.i262, i32 255, i32 128)
  %call.i263 = call i32 @nla_memcpy(ptr noundef nonnull %sa.i262, ptr noundef %43, i32 noundef 128) #11
  %45 = ptrtoint ptr %sa.i262 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sa.i262, align 4
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %46, label %tipc_parse_udp_addr.exit273 [
    i16 2, label %if.then.i267
    i16 10, label %if.then7.i271
  ]

if.then.i267:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %remote to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2048, ptr %remote, align 4
  %sin_port.i264 = getelementptr inbounds %struct.sockaddr_in, ptr %sa.i262, i32 0, i32 1
  %49 = ptrtoint ptr %sin_port.i264 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sin_port.i264, align 2
  %port.i265 = getelementptr inbounds %struct.udp_media_addr, ptr %remote, i32 0, i32 1
  %51 = ptrtoint ptr %port.i265 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %port.i265, align 2
  %sin_addr.i266 = getelementptr inbounds %struct.sockaddr_in, ptr %sa.i262, i32 0, i32 2
  %52 = ptrtoint ptr %sin_addr.i266 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sin_addr.i266, align 4
  %54 = getelementptr inbounds %struct.udp_media_addr, ptr %remote, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %54, align 4
  br label %if.end25

if.then7.i271:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %remote to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -31011, ptr %remote, align 4
  %sin6_port.i268 = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i262, i32 0, i32 1
  %57 = ptrtoint ptr %sin6_port.i268 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sin6_port.i268, align 2
  %port9.i269 = getelementptr inbounds %struct.udp_media_addr, ptr %remote, i32 0, i32 1
  %59 = ptrtoint ptr %port9.i269 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %port9.i269, align 2
  %60 = getelementptr inbounds %struct.udp_media_addr, ptr %remote, i32 0, i32 2
  %sin6_addr.i270 = getelementptr inbounds %struct.sockaddr_in6, ptr %sa.i262, i32 0, i32 3
  %61 = call ptr @memcpy(ptr %60, ptr %sin6_addr.i270, i32 16)
  br label %if.end25

tipc_parse_udp_addr.exit273:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sa.i262) #11
  br label %err205

if.end25:                                         ; preds = %if.then7.i271, %if.then.i267
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sa.i262) #11
  %62 = ptrtoint ptr %remote to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %remote, align 4
  %64 = ptrtoint ptr %local to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %local, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp.not = icmp eq i16 %63, %65
  br i1 %cmp.not, label %if.end30, label %if.end25.err205_crit_edge

if.end25.err205_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %63)
  %cmp.i = icmp eq i16 %63, 2048
  %66 = getelementptr inbounds %struct.udp_media_addr, ptr %remote, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %and.i.i = and i32 %68, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %68)
  %cmp.i7.i = icmp ugt i32 %68, -16777217
  %retval.0.in.i = select i1 %cmp.i, i1 %cmp.i.i, i1 %cmp.i7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %69 = load i32, ptr @tipc_net_id, align 4
  %call.i.i274 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %69) #11
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i274, i32 0, i32 4
  %70 = ptrtoint ptr %node_id_string.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %char0.i = load i8, ptr %node_id_string.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i275 = icmp eq i8 %char0.i, 0
  %tobool33.not290 = icmp eq ptr %call.i.i274, null
  %tobool33.not = select i1 %tobool.not.i275, i1 true, i1 %tobool33.not290
  br i1 %tobool33.not, label %if.then34, label %if.end30.if.end39_crit_edge

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %71 = getelementptr inbounds %struct.udp_media_addr, ptr %local, i32 0, i32 2
  %72 = call ptr @memcpy(ptr %node_id, ptr %71, i32 16)
  %call38 = call i32 @tipc_net_init(ptr noundef %net, ptr noundef nonnull %node_id, i32 noundef 0) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end30.if.end39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %73 = load i32, ptr @tipc_net_id, align 4
  %call.i.i276 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %73) #11
  %node_id_string.i277 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i276, i32 0, i32 4
  %74 = ptrtoint ptr %node_id_string.i277 to i32
  call void @__asan_load1_noabort(i32 %74)
  %char0.i278 = load i8, ptr %node_id_string.i277, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i278)
  %tobool.not.i279 = icmp eq i8 %char0.i278, 0
  %tobool41.not291 = icmp eq ptr %call.i.i276, null
  %tobool41.not = select i1 %tobool.not.i279, i1 true, i1 %tobool41.not291
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %err205

if.end48:                                         ; preds = %if.end39
  %bcast_addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5
  %media_id = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 1
  %75 = ptrtoint ptr %media_id to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %media_id, align 4
  %broadcast = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 2
  %76 = ptrtoint ptr %broadcast to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %broadcast, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %77 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call7.i.i, ptr %b, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %b, ptr %call7.i.i, align 8
  %addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %79 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2, i32 0, i32 20
  %80 = call ptr @memset(ptr %79, i32 0, i32 14)
  %media_id.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %media_id.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 3, ptr %media_id.i, align 1
  %82 = call ptr @memcpy(ptr %addr, ptr %local, i32 20)
  %83 = ptrtoint ptr %local to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %local, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %84)
  %cmp.i.i281 = icmp eq i16 %84, 2048
  %85 = getelementptr inbounds %struct.udp_media_addr, ptr %local, i32 0, i32 2
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %and.i.i.i = and i32 %87, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %87)
  %cmp.i7.i.i = icmp ult i32 %87, -16777216
  %retval.0.in.i.i = select i1 %cmp.i.i281, i1 %cmp.i.i.i, i1 %cmp.i7.i.i
  br i1 %retval.0.in.i.i, label %if.end48.tipc_udp_media_addr_set.exit_crit_edge, label %if.then.i282

if.end48.tipc_udp_media_addr_set.exit_crit_edge:  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %tipc_udp_media_addr_set.exit

if.then.i282:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %broadcast.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2, i32 2
  %88 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %broadcast.i, align 1
  br label %tipc_udp_media_addr_set.exit

tipc_udp_media_addr_set.exit:                     ; preds = %if.then.i282, %if.end48.tipc_udp_media_addr_set.exit_crit_edge
  %89 = zext i16 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %84, label %tipc_udp_media_addr_set.exit.err205_crit_edge [
    i16 2048, label %if.then133
    i16 -31011, label %if.then156
  ]

tipc_udp_media_addr_set.exit.err205_crit_edge:    ; preds = %tipc_udp_media_addr_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.then133:                                       ; preds = %tipc_udp_media_addr_set.exit
  %call134 = call ptr @__ip_dev_find(ptr noundef %net, i32 noundef %87, i1 noundef zeroext false) #11
  %tobool135.not = icmp eq ptr %call134, null
  br i1 %tobool135.not, label %if.then133.err205_crit_edge, label %if.end137

if.then133.err205_crit_edge:                      ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.end137:                                        ; preds = %if.then133
  %90 = ptrtoint ptr %udp_conf to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %udp_conf, align 4
  br i1 %retval.0.in.i, label %if.end137.if.end144_crit_edge, label %if.else141

if.end137.if.end144_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

if.else141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %85, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.else141, %if.end137.if.end144_crit_edge
  %.sink = phi i32 [ %92, %if.else141 ], [ 0, %if.end137.if.end144_crit_edge ]
  %93 = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %.sink, ptr %93, align 4
  %use_udp_checksums = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 6
  %95 = ptrtoint ptr %use_udp_checksums to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load = load i8, ptr %use_udp_checksums, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %use_udp_checksums, align 4
  %ifindex145 = getelementptr inbounds %struct.net_device, ptr %call134, i32 0, i32 17
  %96 = ptrtoint ptr %ifindex145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ifindex145, align 4
  %98 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %ifindex, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %call134, i32 0, i32 20
  %99 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %100)
  %cmp.i284 = icmp ugt i32 %100, 127
  br i1 %cmp.i284, label %if.end149, label %tipc_mtu_bad.exit.thread

tipc_mtu_bad.exit.thread:                         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call134, ptr noundef nonnull @.str.25) #14
  br label %err205

if.end149:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %101 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %media, align 4
  %mtu = getelementptr inbounds %struct.tipc_media, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mtu, align 4
  br label %if.end181

if.then156:                                       ; preds = %tipc_udp_media_addr_set.exit
  %105 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool158.not = icmp eq i32 %106, 0
  br i1 %tobool158.not, label %if.then156.cond.end_crit_edge, label %cond.true

if.then156.cond.end_crit_edge:                    ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  %call160 = call ptr @__dev_get_by_index(ptr noundef %net, i32 noundef %106) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then156.cond.end_crit_edge
  %cond = phi ptr [ %call160, %cond.true ], [ null, %if.then156.cond.end_crit_edge ]
  %call161 = call ptr @ipv6_dev_find(ptr noundef %net, ptr noundef %85, ptr noundef %cond) #11
  %tobool162.not = icmp eq ptr %call161, null
  br i1 %tobool162.not, label %cond.end.err205_crit_edge, label %if.end164

cond.end.err205_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.end164:                                        ; preds = %cond.end
  %107 = ptrtoint ptr %udp_conf to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 10, ptr %udp_conf, align 4
  %use_udp6_tx_checksums = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 6
  %108 = ptrtoint ptr %use_udp6_tx_checksums to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load166 = load i8, ptr %use_udp6_tx_checksums, align 4
  %bf.set171 = or i8 %bf.load166, 96
  store i8 %bf.set171, ptr %use_udp6_tx_checksums, align 4
  %109 = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 1
  br i1 %retval.0.in.i, label %if.then173, label %if.else174

if.then173:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  %110 = call ptr @memcpy(ptr %109, ptr @in6addr_any, i32 16)
  br label %if.end175

if.else174:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  %111 = call ptr @memcpy(ptr %109, ptr %85, i32 16)
  br label %if.end175

if.end175:                                        ; preds = %if.else174, %if.then173
  %ifindex176 = getelementptr inbounds %struct.net_device, ptr %call161, i32 0, i32 17
  %112 = ptrtoint ptr %ifindex176 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ifindex176, align 4
  %114 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %ifindex, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.end175, %if.end149
  %.sink292 = phi i32 [ 1280, %if.end175 ], [ %104, %if.end149 ]
  %mtu178 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 1
  %115 = ptrtoint ptr %mtu178 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %.sink292, ptr %mtu178, align 4
  %port = getelementptr inbounds %struct.udp_media_addr, ptr %local, i32 0, i32 1
  %116 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %port, align 2
  %local_udp_port = getelementptr inbounds %struct.udp_port_cfg, ptr %udp_conf, i32 0, i32 3
  %118 = ptrtoint ptr %local_udp_port to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %local_udp_port, align 4
  %ubsock = getelementptr inbounds %struct.udp_bearer, ptr %call7.i.i, i32 0, i32 1
  %call182 = call fastcc i32 @udp_sock_create(ptr noundef %net, ptr noundef nonnull %udp_conf, ptr noundef %ubsock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.end181.err205_crit_edge

if.end181.err205_crit_edge:                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  br label %err205

if.end185:                                        ; preds = %if.end181
  %119 = ptrtoint ptr %tuncfg to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call7.i.i, ptr %tuncfg, align 4
  %encap_type = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 1
  %120 = ptrtoint ptr %encap_type to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %encap_type, align 4
  %encap_rcv = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 2
  %121 = ptrtoint ptr %encap_rcv to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @tipc_udp_recv, ptr %encap_rcv, align 4
  %encap_destroy = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tuncfg, i32 0, i32 4
  %122 = ptrtoint ptr %encap_destroy to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %encap_destroy, align 4
  %123 = ptrtoint ptr %ubsock to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ubsock, align 4
  call void @setup_udp_tunnel_sock(ptr noundef %net, ptr noundef %124, ptr noundef nonnull %tuncfg) #11
  %dst_cache = getelementptr inbounds %struct.udp_bearer, ptr %call7.i.i, i32 0, i32 4, i32 1
  %call188 = call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end191, label %if.end185.free_crit_edge

if.end185.free_crit_edge:                         ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end191:                                        ; preds = %if.end185
  %125 = call ptr @memcpy(ptr %bcast_addr, ptr %remote, i32 20)
  br i1 %retval.0.in.i, label %if.then194, label %if.else196

if.then194:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  %call195 = call fastcc i32 @enable_mcast(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %remote)
  br label %if.end198

if.else196:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  %call197 = call fastcc i32 @tipc_udp_rcast_add(ptr noundef %b, ptr noundef nonnull %remote)
  br label %if.end198

if.end198:                                        ; preds = %if.else196, %if.then194
  %err.0 = phi i32 [ %call195, %if.then194 ], [ %call197, %if.else196 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool199.not = icmp eq i32 %err.0, 0
  br i1 %tobool199.not, label %if.end198.cleanup_crit_edge, label %if.end198.free_crit_edge

if.end198.free_crit_edge:                         ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

free:                                             ; preds = %if.end198.free_crit_edge, %if.end185.free_crit_edge
  %err.1 = phi i32 [ %call188, %if.end185.free_crit_edge ], [ %err.0, %if.end198.free_crit_edge ]
  call void @dst_cache_destroy(ptr noundef %dst_cache) #11
  %126 = ptrtoint ptr %ubsock to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ubsock, align 4
  call void @udp_tunnel_sock_release(ptr noundef %127) #11
  br label %err205

err205:                                           ; preds = %free, %if.end181.err205_crit_edge, %cond.end.err205_crit_edge, %tipc_mtu_bad.exit.thread, %if.then133.err205_crit_edge, %tipc_udp_media_addr_set.exit.err205_crit_edge, %do.end45, %if.end25.err205_crit_edge, %tipc_parse_udp_addr.exit273, %tipc_parse_udp_addr.exit, %do.end, %if.end3.err205_crit_edge, %if.end.err205_crit_edge
  %err.2 = phi i32 [ -22, %if.end3.err205_crit_edge ], [ %retval.2.i, %tipc_parse_udp_addr.exit ], [ -99, %tipc_parse_udp_addr.exit273 ], [ %call182, %if.end181.err205_crit_edge ], [ %err.1, %free ], [ -22, %do.end45 ], [ -22, %do.end ], [ -22, %if.end.err205_crit_edge ], [ -22, %if.end25.err205_crit_edge ], [ -19, %if.then133.err205_crit_edge ], [ -19, %cond.end.err205_crit_edge ], [ -97, %tipc_udp_media_addr_set.exit.err205_crit_edge ], [ -22, %tipc_mtu_bad.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err205, %if.end198.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err205 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end198.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_id) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opts) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tuncfg) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %udp_conf) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %local) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %remote) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_udp_disable(ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @tipc_udp_disable.__warned, align 1
  br i1 %.b47, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 829, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %ubsock = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ubsock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ubsock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  %6 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %or.i.i = or i32 %8, 1
  store i32 %or.i.i, ptr %6, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %1, align 4
  %10 = load ptr, ptr %ubsock, align 4
  %sk25 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk25, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %15 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %14, i32 noundef %15) #11
  %wq_count = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wq_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %wq_count, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wq_count, ptr %wq_count, i32 1, ptr elementtype(i32) %wq_count) #11, !srcloc !108
  %work = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %17 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @tipc_udp_disable.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry32 = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 3, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.udp_bearer, ptr %1, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cleanup_bearer, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i48 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_udp_addr2str(ptr noundef %a, ptr nocapture noundef writeonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %a, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %1, label %do.end [
    i16 2048, label %if.then
    i16 -31011, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = getelementptr inbounds %struct.udp_media_addr, ptr %a, i32 0, i32 2
  %port = getelementptr inbounds %struct.udp_media_addr, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port, align 2
  %conv2 = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.30, ptr noundef %3, i32 noundef %conv2)
  br label %if.end13

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = getelementptr inbounds %struct.udp_media_addr, ptr %a, i32 0, i32 2
  %port8 = getelementptr inbounds %struct.udp_media_addr, ptr %a, i32 0, i32 1
  %7 = ptrtoint ptr %port8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port8, align 2
  %conv9 = zext i16 %8 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.31, ptr noundef %6, i32 noundef %conv9)
  br label %if.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then7, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tipc_udp_addr2msg(ptr nocapture noundef writeonly %msg, ptr nocapture noundef readonly %a) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %msg, i32 0, i32 32)
  %arrayidx = getelementptr i8, ptr %msg, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %msg, i32 4
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %a, i32 20)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tipc_udp_msg2addr(ptr nocapture noundef readnone %b, ptr nocapture noundef writeonly %a, ptr nocapture noundef readonly %msg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %msg, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %a, i32 0, i32 34)
  %media_id.i = getelementptr inbounds %struct.tipc_media_addr, ptr %a, i32 0, i32 1
  %3 = ptrtoint ptr %media_id.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %media_id.i, align 1
  %4 = call ptr @memcpy(ptr %a, ptr %add.ptr, i32 20)
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %6)
  %cmp.i.i = icmp eq i16 %6, 2048
  %7 = getelementptr i8, ptr %msg, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i.i = and i32 %9, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %9)
  %cmp.i7.i.i = icmp ult i32 %9, -16777216
  %retval.0.in.i.i = select i1 %cmp.i.i, i1 %cmp.i.i.i, i1 %cmp.i7.i.i
  br i1 %retval.0.in.i.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %broadcast.i = getelementptr inbounds %struct.tipc_media_addr, ptr %a, i32 0, i32 2
  %10 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %broadcast.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_udp_xmit(ptr noundef %net, ptr noundef %skb, ptr nocapture noundef readonly %ub, ptr noundef %src, ptr noundef %dst, ptr noundef %cache) unnamed_addr #0 align 64 {
entry:
  %fl = alloca %struct.flowi4, align 8
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %call = tail call ptr @dst_cache_get(ptr noundef %cache) #11
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  %tobool.not = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then2, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl) #11
  %2 = call ptr @memset(ptr %fl, i32 0, i32 56)
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %flowic_mark, align 8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %7 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 17, ptr %flowic_proto, align 2
  %saddr = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %8 = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %saddr, align 8
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %12 = getelementptr inbounds %struct.udp_media_addr, ptr %dst, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %daddr, align 4
  %call.i = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup17, label %cleanup

cleanup:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saddr, align 8
  call void @dst_cache_set_ip4(ptr noundef %cache, ptr noundef %call.i, i32 noundef %17) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl) #11
  br label %if.end10

if.end10:                                         ; preds = %cleanup, %if.then.if.end10_crit_edge
  %rt.0 = phi ptr [ %call, %if.then.if.end10_crit_edge ], [ %call.i, %cleanup ]
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.0, i32 0, i32 2
  %18 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %19, -4
  %20 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %20, i32 9
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i86 = icmp eq i32 %22, 0
  br i1 %cmp.i86, label %if.then.i, label %if.end10.cleanup17.thread_crit_edge

if.end10.cleanup17.thread_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17.thread

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %rt.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rt.0, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 35, i32 37
  %27 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %conv.i = zext i8 %28 to i32
  br label %cleanup17.thread

cleanup17.thread:                                 ; preds = %if.then.i, %if.end10.cleanup17.thread_crit_edge
  %hoplimit.0.i = phi i32 [ %conv.i, %if.then.i ], [ %22, %if.end10.cleanup17.thread_crit_edge ]
  %ubsock = getelementptr inbounds %struct.udp_bearer, ptr %ub, i32 0, i32 1
  %29 = ptrtoint ptr %ubsock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ubsock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk, align 16
  %33 = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = getelementptr inbounds %struct.udp_media_addr, ptr %dst, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %conv15 = trunc i32 %hoplimit.0.i to i8
  %port = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 1
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %port, align 2
  %port16 = getelementptr inbounds %struct.udp_media_addr, ptr %dst, i32 0, i32 1
  %41 = ptrtoint ptr %port16 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %port16, align 2
  call void @udp_tunnel_xmit_skb(ptr noundef %rt.0, ptr noundef %32, ptr noundef %skb, i32 noundef %35, i32 noundef %38, i8 noundef zeroext 0, i8 noundef zeroext %conv15, i16 noundef zeroext 0, i16 noundef zeroext %40, i16 noundef zeroext %42, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %if.end46

cleanup17:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl) #11
  br label %tx_error

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then21, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #11
  %43 = getelementptr inbounds i8, ptr %fl6, i32 80
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %43, align 8, !annotation !109
  %45 = call ptr @memset(ptr %fl6, i32 0, i32 40)
  %ifindex = getelementptr inbounds %struct.udp_bearer, ptr %ub, i32 0, i32 2
  %46 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ifindex, align 4
  %48 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %fl6, align 8
  %flowic_proto24 = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %49 = ptrtoint ptr %flowic_proto24 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 17, ptr %flowic_proto24, align 2
  %daddr25 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %50 = getelementptr inbounds %struct.udp_media_addr, ptr %dst, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %daddr25, ptr %50, i32 16)
  %saddr26 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %52 = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 2
  %53 = call ptr @memcpy(ptr %saddr26, ptr %52, i32 16)
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %54 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %flowlabel, align 8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %55 = ptrtoint ptr %uli to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %uli, align 4
  %mp_hash = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 5
  %56 = ptrtoint ptr %mp_hash to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %mp_hash, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %57 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow = getelementptr inbounds %struct.ipv6_stub, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %ipv6_dst_lookup_flow to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ipv6_dst_lookup_flow, align 4
  %ubsock27 = getelementptr inbounds %struct.udp_bearer, ptr %ub, i32 0, i32 1
  %60 = ptrtoint ptr %ubsock27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ubsock27, align 4
  %sk28 = getelementptr inbounds %struct.socket, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %sk28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sk28, align 16
  %call29 = call ptr %59(ptr noundef %net, ptr noundef %63, ptr noundef nonnull %fl6, ptr noundef null) #11
  %cmp.i87 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %cleanup35, label %cleanup35.thread

cleanup35.thread:                                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  call void @dst_cache_set_ip6(ptr noundef %cache, ptr noundef %call29, ptr noundef %saddr26) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  br label %if.end38

cleanup35:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  br label %tx_error

if.end38:                                         ; preds = %cleanup35.thread, %if.else.if.end38_crit_edge
  %ndst.0 = phi ptr [ %call, %if.else.if.end38_crit_edge ], [ %call29, %cleanup35.thread ]
  %call39 = call i32 @ip6_dst_hoplimit(ptr noundef %ndst.0) #11
  %ubsock40 = getelementptr inbounds %struct.udp_bearer, ptr %ub, i32 0, i32 1
  %64 = ptrtoint ptr %ubsock40 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ubsock40, align 4
  %sk41 = getelementptr inbounds %struct.socket, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %sk41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk41, align 16
  %68 = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 2
  %69 = getelementptr inbounds %struct.udp_media_addr, ptr %dst, i32 0, i32 2
  %conv42 = trunc i32 %call39 to i8
  %port43 = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 1
  %70 = ptrtoint ptr %port43 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %port43, align 2
  %port44 = getelementptr inbounds %struct.udp_media_addr, ptr %dst, i32 0, i32 1
  %72 = ptrtoint ptr %port44 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %port44, align 2
  %call45 = call i32 @udp_tunnel6_xmit_skb(ptr noundef %ndst.0, ptr noundef %67, ptr noundef %skb, ptr noundef null, ptr noundef %68, ptr noundef %69, i8 noundef zeroext 0, i8 noundef zeroext %conv42, i32 noundef 0, i16 noundef zeroext %71, i16 noundef zeroext %73, i1 noundef zeroext false) #11
  br label %if.end46

if.end46:                                         ; preds = %if.end38, %cleanup17.thread
  %err.4 = phi i32 [ %call45, %if.end38 ], [ 0, %cleanup17.thread ]
  call fastcc void @local_bh_enable()
  br label %cleanup47

tx_error:                                         ; preds = %cleanup35, %cleanup17
  %err.5.in = phi ptr [ %call.i, %cleanup17 ], [ %call29, %cleanup35 ]
  %err.5 = ptrtoint ptr %err.5.in to i32
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup47

cleanup47:                                        ; preds = %tx_error, %if.end46
  %retval.0 = phi i32 [ %err.5, %tx_error ], [ %err.4, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_xmit_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_tunnel6_xmit_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_net_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_dev_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udp_sock_create(ptr noundef %net, ptr noundef %cfg, ptr noundef %sockp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfg, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %1, label %entry.return_crit_edge [
    i8 2, label %if.then
    i8 10, label %if.then6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @udp_sock_create4(ptr noundef %net, ptr noundef %cfg, ptr noundef %sockp) #11
  br label %return

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @udp_sock_create6(ptr noundef %net, ptr noundef %cfg, ptr noundef %sockp) #11
  br label %return

return:                                           ; preds = %if.then6, %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ %call7, %if.then6 ], [ -96, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_udp_recv(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_user_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @tipc_udp_recv.__warned, align 1
  br i1 %.b77, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 376, ptr noundef nonnull @.str.6) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.end21

if.then11:                                        ; preds = %do.end7
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_udp_recv._rs, ptr noundef nonnull @__func__.tipc_udp_recv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.out_crit_edge, label %do.end17

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %out

if.end21:                                         ; preds = %do.end7
  %3 = inttoptr i32 %and to ptr
  %call22 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %3, align 4
  %call29 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end21.do.end39_crit_edge

if.end21.do.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

land.lhs.true31:                                  ; preds = %if.end21
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b7576 = load i1, ptr @tipc_udp_recv.__warned.27, align 1
  br i1 %.b7576, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tipc_udp_recv.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 384, ptr noundef nonnull @.str.6) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %if.end21.do.end39_crit_edge
  %tobool41.not = icmp eq ptr %7, null
  br i1 %tobool41.not, label %do.end39.out_crit_edge, label %land.lhs.true45

do.end39.out_crit_edge:                           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true45:                                  ; preds = %do.end39
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %up, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool47.not = icmp eq i32 %and1.i, 0
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %10, align 2
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  tail call void @tipc_rcv(ptr noundef %13, ptr noundef %skb, ptr noundef nonnull %7) #11
  br label %cleanup

if.end50:                                         ; preds = %land.lhs.true45
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 436207616, i32 %16)
  %cmp = icmp eq i32 %16, 436207616
  br i1 %cmp, label %if.then54, label %if.end50.out_crit_edge, !prof !102

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @tipc_udp_rcast_disc(ptr noundef nonnull %7, ptr noundef %skb)
  br label %out

out:                                              ; preds = %if.then54, %if.end50.out_crit_edge, %do.end39.out_crit_edge, %do.end17, %if.then11.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then48
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_mcast(ptr nocapture noundef readonly %ub, ptr noundef %remote) unnamed_addr #0 align 64 {
entry:
  %mreqn = alloca %struct.ip_mreqn, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mreqn) #11
  %0 = getelementptr inbounds %struct.ip_mreqn, ptr %mreqn, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !109
  %ubsock = getelementptr inbounds %struct.udp_bearer, ptr %ub, i32 0, i32 1
  %2 = ptrtoint ptr %ubsock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ubsock, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1, align 16
  %6 = ptrtoint ptr %remote to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %remote, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %7)
  %cmp = icmp eq i16 %7, 2048
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = getelementptr inbounds %struct.ip_mreqn, ptr %mreqn, i32 0, i32 2
  %9 = getelementptr inbounds %struct.udp_media_addr, ptr %remote, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %mreqn to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mreqn, align 4
  %ifindex = getelementptr inbounds %struct.udp_bearer, ptr %ub, i32 0, i32 2
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %8, align 4
  %call = call i32 @ip_mc_join_group(ptr noundef %5, ptr noundef nonnull %mreqn) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %16 = load ptr, ptr @ipv6_stub, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %ifindex3 = getelementptr inbounds %struct.udp_bearer, ptr %ub, i32 0, i32 2
  %19 = ptrtoint ptr %ifindex3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex3, align 4
  %21 = getelementptr inbounds %struct.udp_media_addr, ptr %remote, i32 0, i32 2
  %call4 = tail call i32 %18(ptr noundef %5, i32 noundef %20, ptr noundef %21) #11
  tail call void @release_sock(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mreqn) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_udp_rcast_disc(ptr noundef %b, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.udp_media_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src) #11
  %0 = call ptr @memset(ptr %src, i32 0, i32 20)
  %bcast_addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5
  %1 = ptrtoint ptr %bcast_addr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bcast_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %2)
  %cmp.i = icmp eq i16 %2, 2048
  %3 = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %5)
  %cmp.i7.i = icmp ult i32 %5, -16777216
  %retval.0.in.i = select i1 %cmp.i, i1 %cmp.i.i, i1 %cmp.i7.i
  br i1 %retval.0.in.i, label %if.end, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  %port = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %port, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i2 = zext i16 %14 to i32
  %add.ptr.i.i3 = getelementptr i8, ptr %7, i32 %conv.i.i2
  %15 = ptrtoint ptr %add.ptr.i.i3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %add.ptr.i.i3, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  %16 = zext i8 %bf.lshr.mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %bf.lshr.mask, label %if.end.cleanup36_crit_edge [
    i8 64, label %if.then4
    i8 96, label %if.then15
  ]

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then4:                                         ; preds = %if.end
  %17 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2048, ptr %src, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3, i32 0, i32 8
  %18 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saddr, align 4
  %20 = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %20, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i3, i32 0, i32 9
  %22 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %daddr, align 4
  %and.i = and i32 %23, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i8 = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i8, label %if.then4.cleanup36_crit_edge, label %if.then4.if.end29_crit_edge

if.then4.if.end29_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then4.cleanup36_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then15:                                        ; preds = %if.end
  %24 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -31011, ptr %src, align 4
  %25 = getelementptr inbounds %struct.udp_media_addr, ptr %src, i32 0, i32 2
  %saddr19 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i3, i32 0, i32 5
  %26 = call ptr @memcpy(ptr %25, ptr %saddr19, i32 16)
  %daddr20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i3, i32 0, i32 6
  %27 = ptrtoint ptr %daddr20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %daddr20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %28)
  %cmp.i17 = icmp ugt i32 %28, -16777217
  br i1 %cmp.i17, label %if.then15.cleanup36_crit_edge, label %if.then15.if.end29_crit_edge

if.then15.if.end29_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then15.cleanup36_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.end29:                                         ; preds = %if.then15.if.end29_crit_edge, %if.then4.if.end29_crit_edge
  %call30 = call fastcc zeroext i1 @tipc_udp_is_known_peer(ptr noundef %b, ptr noundef nonnull %src)
  br i1 %call30, label %if.end29.cleanup36_crit_edge, label %if.end34, !prof !110

if.end29.cleanup36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call fastcc i32 @tipc_udp_rcast_add(ptr noundef %b, ptr noundef nonnull %src)
  br label %cleanup36

cleanup36:                                        ; preds = %if.end34, %if.end29.cleanup36_crit_edge, %if.then15.cleanup36_crit_edge, %if.then4.cleanup36_crit_edge, %if.end.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_join_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_bearer(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr i8, ptr %work, i32 80
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not41 = icmp eq ptr %1, %list
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn44, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn44 = load ptr, ptr %.pn.in42, align 4
  %rcast.0 = getelementptr i8, ptr %.pn.in42, i32 -36
  %dst_cache = getelementptr i8, ptr %.pn.in42, i32 -16
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #11
  %call.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42) #11
  br i1 %call.i.i39, label %if.end.i.i, label %for.body.list_del_rcu.exit_crit_edge

for.body.list_del_rcu.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not = icmp eq ptr %rcast.0, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %do.end

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rcu = getelementptr i8, ptr %.pn.in42, i32 -8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del_rcu.exit.if.end_crit_edge
  %cmp.not = icmp eq ptr %.pn44, %list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %ubsock = getelementptr i8, ptr %work, i32 -8
  %10 = ptrtoint ptr %ubsock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ubsock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %16 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %15, i32 noundef %16) #11
  %wq_count = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wq_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %wq_count, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wq_count, ptr %wq_count, i32 1, ptr elementtype(i32) %wq_count) #11, !srcloc !111
  %dst_cache25 = getelementptr i8, ptr %work, i32 64
  tail call void @dst_cache_destroy(ptr noundef %dst_cache25) #11
  %18 = ptrtoint ptr %ubsock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ubsock, align 4
  tail call void @udp_tunnel_sock_release(ptr noundef %19) #11
  tail call void @synchronize_net() #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !72, !74, !76, !78, !79, !80, !82, !83, !85, !87, !89, !90, !91}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/tipc/udp_media.c", i32 499, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/tipc/udp_media.c", i32 506, i32 7}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/tipc/udp_media.c", i32 548, i32 7}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/tipc/udp_media.c", i32 642, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tipc_udp_nl_bearer_add._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @tipc_udp_nl_bearer_add._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @udp_media_info, !14, !"udp_media_info", i1 false, i1 false}
!14 = !{!"../net/tipc/udp_media.c", i32 843, i32 19}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/net/netlink.h", i32 991, i32 3}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/tipc/udp_media.c", i32 285, i32 7}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/tipc/udp_media.c", i32 287, i32 3}
!32 = !{ptr @tipc_udp_is_known_peer._rs, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @__func__.tipc_udp_is_known_peer, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tipc_udp_is_known_peer._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @tipc_udp_is_known_peer._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/tipc/udp_media.c", i32 305, i32 7}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/tipc/udp_media.c", i32 321, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tipc_udp_rcast_add._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @tipc_udp_rcast_add._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/tipc/udp_media.c", i32 324, i32 3}
!46 = !{ptr @tipc_udp_rcast_add._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tipc_udp_rcast_add._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/tipc/udp_media.c", i32 248, i32 7}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/tipc/udp_media.c", i32 259, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/tipc/udp_media.c", i32 688, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tipc_udp_enable._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tipc_udp_enable._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/tipc/udp_media.c", i32 716, i32 3}
!60 = !{ptr @tipc_udp_enable._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tipc_udp_enable._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/tipc/bearer.h", i32 261, i32 19}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/tipc/udp_media.c", i32 376, i32 7}
!66 = !{ptr @tipc_udp_recv._rs, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../net/tipc/udp_media.c", i32 378, i32 3}
!68 = !{ptr @__func__.tipc_udp_recv, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tipc_udp_recv._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @tipc_udp_recv._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../net/tipc/udp_media.c", i32 384, i32 6}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/tipc/udp_media.c", i32 829, i32 7}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/tipc/udp_media.c", i32 831, i32 3}
!78 = !{ptr @tipc_udp_disable._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tipc_udp_disable._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @tipc_udp_disable.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../net/tipc/udp_media.c", i32 839, i32 2}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/tipc/udp_media.c", i32 135, i32 23}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/tipc/udp_media.c", i32 137, i32 23}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/tipc/udp_media.c", i32 139, i32 3}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tipc_udp_addr2str._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @tipc_udp_addr2str._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2149343259}
!104 = !{i64 2149343525}
!105 = !{i64 2150379821}
!106 = !{i64 2158441369}
!107 = !{i64 2158448727}
!108 = !{i64 2148265420, i64 2148265446, i64 2148265475, i64 2148265509, i64 2148265540, i64 2148265563}
!109 = !{!"auto-init"}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148267885, i64 2148267911, i64 2148267940, i64 2148267974, i64 2148268005, i64 2148268028}
